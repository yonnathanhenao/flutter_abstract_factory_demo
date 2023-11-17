part of com.flutter_abstract_factory_demo.factories;

class FormInputFactory {
  IFormInput getInputByType(
    String type,
  ) {
    switch (type) {
      case 'TEXT_INPUT':
        return TextInput();
      case 'NUMERIC_INPUT':
        return NumericInput();
      default:
        throw UnimplementedError();
    }
  }
}
