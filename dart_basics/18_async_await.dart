void main() async {
  DataService dataService = DataService();
  String data = await dataService.getData();
  print(data);
}

class DataService {
  Future<String> _getDataFromCloud() async {
    await Future.delayed(Duration(seconds: 4));
    print('get data finished');
    return 'fake data';
  }

  Future<String> _parseDataFromCloud({required String dataFromCloud}) async {
    await Future.delayed(Duration(seconds: 4));
    print('parse data finished');
    return 'fake data';
  }

  Future getData() async {
    final String dataFromCloud = await _getDataFromCloud();
    final String parsedData =
        await _parseDataFromCloud(dataFromCloud: dataFromCloud);

    return parsedData;
  }
}
