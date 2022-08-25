void longRunningOperation(sleep) {
  for (int i = 0; i < 5; i++) {
    sleep(Duration(seconds: 1));
    print("index: $i");
  }
}

Future<void> newLongRunningOperation(sleep) async {
  for (int i = 0; i < 5; i++) {
    sleep(Duration(seconds: 1));
    print("index: $i");
  }
}

Future<void> otherLongRunningOperation(String message) async {
  for (int i = 0; i < 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    print("$message: $i");
  }
}
