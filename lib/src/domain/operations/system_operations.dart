import '../repositories/system_repository.dart';
import '../entities/exports.dart';

class SystemOperations {
  final SystemRepository _repository;

  SystemOperations(this._repository);

  Future<List<Country>> getAvailableCountries() {
    return _repository.getAvailableCountries();
  }

  Future<FacetList> getFacets({FacetListOptions? options}) {
    return _repository.getFacets(options: options);
  }

  Future<Facet> getFacet({required String id}) {
    return _repository.getFacet(id: id);
  }
}
