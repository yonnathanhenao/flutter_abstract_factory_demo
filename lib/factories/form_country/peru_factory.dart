part of com.flutter_abstract_factory_demo.factories;

class PeruFactory implements IFormCountry {
  @override
  IForm getForm(String type) {
    switch (type) {
      case 'BASIC_INFORMATION':
        return FormBasicInformation();
      case 'EMPLOYER_INFORMATION':
        return FormEmployerInformation();
      default:
        throw UnimplementedError();
    }
  }
}
