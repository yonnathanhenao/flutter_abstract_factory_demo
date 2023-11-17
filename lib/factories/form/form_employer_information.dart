part of com.flutter_abstract_factory_demo.factories;

class FormEmployerInformation implements IForm {
  @override
  String getTitle() {
    return 'Employer Information';
  }

  @override
  List<Widget> createInputs() {
    Map<String, dynamic> form =
        formDataSource.firstWhere((e) => e['type'] == 'EMPLOYER_INFORMATION');
    return (form['data'] as List<dynamic>).map(
      (e) {
        IFormInput inputFactory = FormInputFactory().getInputByType(e['type']);
        return inputFactory.render(e['label'].toString(), e['controller']);
      },
    ).toList();
  }

  @override
  String? getPreviusForm() => 'BASIC_INFORMATION';

  @override
  String getNextForm() => 'FINANCIAL_INFORMATION';
}
