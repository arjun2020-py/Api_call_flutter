import 'package:flutter/material.dart';
import 'package:task/homeScreen/view/home_screen.dart';

import '../widget/button_widget.dart';
import '../widget/fromfiled_widget.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({super.key});

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  String? value;
  final fromKey = GlobalKey<FormState>();
  TextEditingController userController = TextEditingController(),
      passwrodController = TextEditingController(),
      mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back)),
        title: const Text('Form Validation'),
      ),
      body: Form(
        key: fromKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              textfromWidget(
                controller: userController,
                text: 'Enter username',
                obText: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter a valid name';
                  }
                  return null;
                },
                // funcs: ,
              ),
              const SizedBox(
                height: 10,
              ),
              textfromWidget(
                controller: passwrodController,
                text: 'Passwrod',
                obText: true,
                validator: (value) {
                  if (value!.isEmpty || value.length <= 6) {
                    return 'Enter a valid passwrod';
                  }
                  return null;
                },
                // funcs: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              textfromWidget(
                controller: mobileController,
                text: 'Mobno',
                obText: false,
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^(?:[+0][1-9])?[0-9]{10,12}$')
                          .hasMatch(value)) {
                    return 'Enter  a  mobile number';
                  }
                  return null;
                },
                // funcs: () {},
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttton_widget(
                      txt: 'Submit',
                      color: Colors.green,
                      onPress: () {
                        fromValidation();
                      }),
                  const SizedBox(
                    width: 20,
                  ),
                  buttton_widget(
                    txt: 'Clear',
                    color: Colors.red,
                    onPress: ClearText,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void fromValidation() {
    if (fromKey.currentState!.validate()) {
  
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
    }
  }

  void ClearText() {
    userController.clear();
    passwrodController.clear();
    mobileController.clear();
  }
}
