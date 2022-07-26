
abstract class GetListRepository {

  Future<List<String>> getListString(int requestCount);

  Future<List<int>> getListInt(int requestCount);

}