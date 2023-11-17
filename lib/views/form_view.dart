import 'package:flutter/material.dart';

import '../factories/factories.dart';

class FormView extends StatefulWidget {
  const FormView({
    required this.formFactory,
    super.key,
  });
  final IFormCountry formFactory;

  @override
  State<FormView> createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {
  late IForm currentForm;
  late String title;
  late List<Widget> inputs;

  @override
  void initState() {
    setForm('BASIC_INFORMATION');
    super.initState();
  }

  void onPreviusButtonPressed() {
    String? currentFormType = currentForm.getPreviusForm();
    if (currentFormType != null) {
      setForm(currentFormType);
    }
  }

  void onNextButtonPressed() {
    String? currentFormType = currentForm.getNextForm();
    if (currentFormType != null) {
      setForm(currentFormType);
    }
  }

  void setForm(String type) {
    currentForm = widget.formFactory.getForm(type);
    title = currentForm.getTitle();
    inputs = currentForm.createInputs();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: inputs,
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: currentForm.getPreviusForm() != null
                  ? onPreviusButtonPressed
                  : null,
              child: const Text('Previus'),
            ),
            ElevatedButton(
              onPressed: currentForm.getNextForm() != null
                  ? onNextButtonPressed
                  : null,
              child: const Text('Next'),
            )
          ],
        ),
      ),
    );
  }
}
