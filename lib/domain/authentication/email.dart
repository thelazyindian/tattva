import 'package:formz/formz.dart';
import 'package:tattva/utils/others.dart';

enum EmailError { empty, invalid }

class Email extends FormzInput<String, EmailError> {
  const Email.pure() : super.pure('');

  const Email.dirty({String value = ''}) : super.dirty(value);

  @override
  EmailError? validator(String? value) {
    return value?.isNotEmpty ?? false
        ? emailRegex.hasMatch(value!)
            ? null
            : EmailError.invalid
        : EmailError.empty;
  }
}
