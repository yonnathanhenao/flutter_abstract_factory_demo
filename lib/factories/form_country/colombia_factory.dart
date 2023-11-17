part of com.flutter_abstract_factory_demo.factories;

class ColombiaFactory implements IFormCountry {
  @override
  IForm getForm(String type) {
    switch (type) {
      case 'BASIC_INFORMATION':
        return FormBasicInformation();
      case 'EMPLOYER_INFORMATION':
        return FormEmployerInformation();
      case 'FINANCIAL_INFORMATION':
        return FormFinancialInformation();
      default:
        throw UnimplementedError();
    }
  }
}
