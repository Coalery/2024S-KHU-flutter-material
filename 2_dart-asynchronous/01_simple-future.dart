void main() {
  print('Start of main function');

  Future.delayed(Duration(seconds: 3)).then((value) {
    print('Async task executed after 3 seconds');
  });

  print('End of main function');
}
