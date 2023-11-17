part of com.flutter_abstract_factory_demo.factories;

class FormFinancialInformation implements IForm {
  @override
  String getTitle() {
    return 'Financial Information';
  }

  @override
  List<Widget> createInputs() {
    Map<String, dynamic> form =
        formDataSource.firstWhere((e) => e['type'] == 'FINANCIAL_INFORMATION');
    return (form['data'] as List<dynamic>).map(
      (e) {
        IFormInput inputFactory = FormInputFactory().getInputByType(e['type']);
        return inputFactory.render(e['label'].toString(), e['controller']);
      },
    ).toList();
  }

  @override
  String? getPreviusForm() => 'EMPLOYER_INFORMATION';

  @override
  String? getNextForm() => null;
}
