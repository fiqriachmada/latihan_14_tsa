import 'dart:io';
import 'dart:async';
import 'dart:isolate';

import 'package:latihan_14_tsa/latihan_14_tsa.dart';

void main(List<String> arguments) async {
  print('\nDart Futures 1\n');

  print("start of long running operation");
  longRunningOperation(sleep);
  print("continuing main body");

  for (int i = 10; i < 15; i++) {
    sleep(Duration(seconds: 1));
    print("index from main: $i");
  }
  print("end of main");

  print('\nDart Futures 2\n');

  print("start of long running operation");
  newLongRunningOperation(sleep);
  print("continuing main body");

  for (int i = 10; i < 15; i++) {
    sleep(Duration(seconds: 1));
    print("index from main: $i");
  }
  print("end of main");

  print('\nDart Futures 3\n');

  print("start of long running operation");
  newLongRunningOperation(sleep);
  print("continuing main body");
  for (int i = 10; i < 15; i++) {
    await Future.delayed(Duration(seconds: 1));
    print("index from main: $i");
  }
  print("end of main");

  print('\nDart Isolates\n');
  print("start of long running operation");
  Isolate.spawn(otherLongRunningOperation, "Hello");
  print("continuing main body");
  for (int i = 10; i < 15; i++) {
    await Future.delayed(Duration(seconds: 1));
    print("index from main: $i");
  }
  print("end of main");
}
