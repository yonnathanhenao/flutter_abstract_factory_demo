part of com.flutter_abstract_factory_demo.factories;

abstract class IForm {
  String getTitle();
  String? getPreviusForm();
  String? getNextForm();
  List<Widget> createInputs();
}
