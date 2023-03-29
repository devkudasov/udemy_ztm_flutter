import 'dart:io';

int contactId = 1;
Map<String, Contact> contacts = {};

void main() {
  print('Welcome to your contacts book');
  print('To exit from application enter exit');

  bool isRunning = true;
  while (isRunning) {
    String input = getUserInput(
      'What do you want to do? add/del/show/exit?',
      isRequired: true,
    );

    switch (input) {
      case 'add':
        addContact();
        break;
      case 'del':
        deleteContact();
        break;
      case 'show':
        showContacts();
        break;
      case 'exit':
        isRunning = false;
        break;
      default:
        showWrongChoiceHint();
    }
  }
}

void showWrongChoiceHint() {
  print('You can selecte only add or del or show');
}

void showSuccessDeleteHint(String name) {
  print('Contact $name successfully deleted');
}

void showWrongDeleteHint(String name) {
  print('Contact $name doesn\'t exists...');
}

String getUserInput(String hint, {bool isRequired = false}) {
  print(hint);

  String input = '';
  while (input == '') {
    try {
      input = stdin.readLineSync() ?? '';
    } catch (e) {
      input = '';
    }

    if (isRequired && input == '') {
      print('This is required input. Type something pls');
    }

    if (!isRequired) {
      break;
    }
  }

  return input;
}

void addContact() {
  String name = getUserInput(
    'Enter contact name pls (required)',
    isRequired: true,
  );

  String? email = getUserInput('Enter contact email pls (can be empty)');
  if (email == '') {
    email = null;
  }

  String? phone = getUserInput('Enter contact phone pls (can be empty)');
  if (phone == '') {
    phone = null;
  }

  contacts.addEntries([
    MapEntry(
      name,
      Contact(name: name, email: email, phone: phone),
    ),
  ]);
}

void deleteContact() {
  String name = getUserInput(
    'Enter contact name which you want to delete pls',
    isRequired: true,
  );

  if (contacts.containsKey(name)) {
    contacts.remove(name);
    showSuccessDeleteHint(name);
  } else {
    showWrongDeleteHint(name);
  }
}

void showContacts() {
  contacts.forEach((key, value) {
    print(value);
  });
}

class Contact {
  final int _id;
  String _name;
  String? _email;
  String? _phone;

  Contact({required String name, String? email, String? phone})
      : this._id = contactId++,
        this._name = name,
        this._email = email,
        this._phone = phone;

  @override
  String toString() {
    String result = 'Contact $_name with id $_id';

    if (_email != null) {
      result = '$result has email $_email';
    }
    if (_phone != null) {
      result = '$result has phone $_phone';
    }
    return result;
  }
}
