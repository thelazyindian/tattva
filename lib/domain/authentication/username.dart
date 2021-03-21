import 'package:formz/formz.dart';
import 'package:tattva/utils/others.dart';

enum UsernameError { empty, invalid }

class Username extends FormzInput<String, UsernameError> {
  const Username.pure() : super.pure('');

  const Username.dirty({String value = ''}) : super.dirty(value);

  @override
  UsernameError? validator(String? value) {
    return value?.isNotEmpty ?? false
        ? usernameRegex.hasMatch(value!)
            ? null
            : UsernameError.invalid
        : UsernameError.empty;
  }
}
