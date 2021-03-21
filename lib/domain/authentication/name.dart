import 'package:formz/formz.dart';
import 'package:tattva/utils/others.dart';

enum NameError { empty, invalid }

class Name extends FormzInput<String, NameError> {
  const Name.pure() : super.pure('');

  const Name.dirty({String value = ''}) : super.dirty(value);

  @override
  NameError? validator(String? value) {
    return value?.isNotEmpty ?? false
        ? nameRegex.hasMatch(value!)
            ? null
            : NameError.invalid
        : NameError.empty;
  }
}
