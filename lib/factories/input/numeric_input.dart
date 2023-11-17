part of com.flutter_abstract_factory_demo.factories;

class NumericInput implements IFormInput {
  @override
  Widget render(
    String label,
    TextEditingController controller,
  ) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
      ),
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
    );
  }
}
