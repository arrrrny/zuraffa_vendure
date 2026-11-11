import 'dart:io';

import 'package:test/test.dart';

/// Issue 9 — an isolated `/tmp` clone must run `dart pub get` without a
/// sibling checkout of `zuraffa` beside it. Regression guard: any
/// fleet-layout path pin lives in an UNTRACKED `pubspec_overrides.yaml`,
/// never in the committed `pubspec.yaml`.
void main() {
  group('isolated-clone dependency resolution (issue 9)', () {
    test('pubspec.yaml never pins zuraffa to a sibling path', () {
      final pubspec = File('pubspec.yaml').readAsStringSync();
      expect(
        pubspec.contains(RegExp(r'path:\s*\.\./zuraffa')),
        isFalse,
        reason:
            'the committed pubspec.yaml must resolve hosted zuraffa; a '
            'local fleet-layout pin belongs in an untracked '
            'pubspec_overrides.yaml',
      );
    });

    test('.gitignore keeps pubspec_overrides.yaml untracked', () {
      final gitignore = File('.gitignore').readAsStringSync();
      final lines = gitignore.split('\n').map((line) => line.trim());
      expect(
        lines.contains('pubspec_overrides.yaml'),
        isTrue,
        reason:
            'the local path pin must stay untracked so a bare clone '
            'resolves hosted zuraffa by default',
      );
    });
  });
}
