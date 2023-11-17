part of com.flutter_abstract_factory_demo.factories;

class TextInput implements IFormInput {
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
    );
  }
}
