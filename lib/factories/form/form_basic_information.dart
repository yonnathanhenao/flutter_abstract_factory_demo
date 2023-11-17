part of com.flutter_abstract_factory_demo.factories;

class FormBasicInformation implements IForm {
  @override
  String getTitle() {
    return 'Basic Information';
  }

  @override
  List<Widget> createInputs() {
    Map<String, dynamic> form =
        formDataSource.firstWhere((e) => e['type'] == 'BASIC_INFORMATION');
    return (form['data'] as List<dynamic>).map(
      (e) {
        IFormInput inputFactory = FormInputFactory().getInputByType(e['type']);
        return inputFactory.render(e['label'].toString(), e['controller']);
      },
    ).toList();
  }

  @override
  String? getPreviusForm() => null;

  @override
  String getNextForm() => 'EMPLOYER_INFORMATION';
}
