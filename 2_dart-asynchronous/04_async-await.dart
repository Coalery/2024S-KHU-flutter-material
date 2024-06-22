Future<void> fetchData() async {
  print('Fetching data...');
  await Future.delayed(Duration(seconds: 2));
  print('Data fetched!');
}

void main() {
  print('Before calling fetchData');
  fetchData();
  print('After calling fetchData');
}
