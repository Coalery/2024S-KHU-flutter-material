Future<int> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => 1);
}

Future<int> fetchDataWithError() {
  return Future.delayed(
      Duration(seconds: 2), () => throw Exception('Something went wrong'));
}

void main() {
  fetchData().then((value) {
    print('Data fetched: $value');
  }).catchError((error) {
    print('Error occurred: $error');
  });

  fetchDataWithError().then((value) {
    print('Data fetched: $value');
  }).catchError((error) {
    print('Error occurred: $error');
  });
}
