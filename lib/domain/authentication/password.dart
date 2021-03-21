import 'package:formz/formz.dart';
import 'package:tattva/utils/others.dart';

enum PasswordError { empty, invalid }

class Password extends FormzInput<String, PasswordError> {
  const Password.pure() : super.pure('');

  const Password.dirty({String value = ''}) : super.dirty(value);

  @override
  PasswordError? validator(String? value) {
    return value?.isNotEmpty ?? false
        ? passRegex.hasMatch(value!)
            ? null
            : PasswordError.invalid
        : PasswordError.empty;
  }
}
