import 'dart:io';

void main() {
  var contacts = <String, String,>{};

  while (true) {
    print('Enter a command (add, remove, view, quit):');
    var command = stdin.readLineSync()?.toLowerCase() ?? '';

    switch (command) {
      case 'add':
        print('Enter name:');
        var name = stdin.readLineSync() ?? '';
        print('Enter mobile number:');
        var phone = stdin.readLineSync() ?? '';
        contacts[name] = phone;
        print('Enter adress number:');
        var adress = stdin.readLineSync() ?? '';
        contacts[name] = adress;
        print('Enter email adress:');
        var email = stdin.readLineSync() ?? '';
        contacts[name] = email;
        break;

      case 'remove':
        print('Enter name:');
        var name = stdin.readLineSync() ?? '';
        if (contacts.containsKey(name)) {
          contacts.remove(name);
          print('$name has been removed from your contacts.');
        } else {
          print('$name was not found in your contacts.');
        }
        break;

      case 'view':
        if (contacts.isEmpty) {
          print('Your contacts list is empty.');
        } else {
          print('Your contacts:');
          contacts.forEach((name, phone, adress, email) => print('$name: $phone''$adress' '$email'));
        }
        break;

      case 'quit':
        print('Goodbye!');
        return;

      default:
        print('Invalid command.');
        break;
    }
  }
}
