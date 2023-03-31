import 'dart:async';
import 'dart:io';
import 'dart:math';

const kPlaceholder = '_';

void main() {
  bool isGameComplete = false;

  Stream<String> messageStream = MessageController().getStream;
  messageStream.listen((event) {
    print(event);
  });

  Stream<bool> gameStream = Hangman().getStream;
  gameStream.listen((event) {
    isGameComplete = event;
  });

  WordGenerator generator = WordGenerator();
  while (!isGameComplete) {
    print(generator.choosenWord);
    generator.chooseLetter(getUserInput());
  }
}

String getUserInput() {
  List<String> alphabet =
      List.generate(26, (index) => String.fromCharCode(index + 65));

  String? input;
  while (input == null) {
    print('Choose one letter please');
    input = stdin.readLineSync() ?? null;
    if (input != null &&
        !alphabet.any((element) => element == input!.toUpperCase())) {
      print('Your input invalid. Try one more time please');
      input = null;
    }
  }

  return input.toLowerCase();
}

class MessageController {
  StreamController<String> _controller = StreamController();

  // Getter
  Stream<String> get getStream => _controller.stream.asBroadcastStream();

  void sink(String message) {
    _controller.sink.add(message);
  }
}

class Hangman {
  int _lives = 10;

  StreamController<bool> _gameController = StreamController();

  MessageController messageController = MessageController();
  WordGenerator generator = WordGenerator();

  Hangman() {
    Stream<List<String>> stream = generator.getStream;
    stream.listen(
      (choosenWord) {
        if (!choosenWord.any((element) => element == kPlaceholder)) {
          messageController.sink('You win! Wish you all best!');
          _gameController.sink.add(true);
        }
      },
      onError: (e) {
        --_lives;
        messageController.sink('You lost 1 life. Now you have $_lives lives');
        if (_lives == 0) {
          _gameController.sink.add(true);
        }
      },
    );

    print('Lets play Hangman. You have $_lives lives');
  }

  // Getter
  Stream<bool> get getStream => _gameController.stream.asBroadcastStream();
}

class WordGenerator {
  final List<String> _words = [
    'fascinated',
    'true',
    'spectacular',
    'lie',
    'unusual',
    'end',
    'harbor',
    'food',
    'ink',
    'friendly',
  ];

  late final String _word;
  late List<String> _choosenWord;

  StreamController<List<String>> _controller = StreamController<List<String>>();

  WordGenerator() {
    _word = _words[Random().nextInt(10)];
    _choosenWord = List.generate(_word.length, (e) => kPlaceholder);
  }

  // Getters
  Stream<List<String>> get getStream => _controller.stream.asBroadcastStream();
  String get choosenWord => _choosenWord.join();

  void chooseLetter(String letter) {
    bool isLetterFound = false;
    for (int i = 0; i < _word.length; i++) {
      if (_word[i] == letter && _choosenWord[i] == kPlaceholder) {
        isLetterFound = true;
        _choosenWord[i] = letter;
      }
    }
    if (isLetterFound) {
      _controller.sink.add(_choosenWord);
    } else {
      _controller.sink.addError([]);
    }
  }
}
