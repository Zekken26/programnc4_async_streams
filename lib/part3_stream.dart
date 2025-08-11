// Stream function that emits numbers 1–5 with 1-second delays
Stream<int> numberStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

// Main function that listens to the stream and prints each value
Future<void> main() async {
  print('Starting number stream...');
  await for (int number in numberStream()) {
    print('Received: $number');
  }
  print('Stream completed.');
}
