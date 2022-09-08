import 'package:ant_design_flutter/ant_design_flutter.dart';
// import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/text_form_field.dart';

class EmailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: const Text("Title"),
      // ),
      body: Container(
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Digite seu e-mail abaixo:',
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Cadastre um e-mail para receber informações importantes como pagamentos recebidos e avisos ligados à sua conta.',
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Form(
                child: CustomTextFormField(
                  labelText: 'E-mail',
                  hintText: '',
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ),
            const Spacer(),
            Button(
              child: const Text('CONTINUAR'),
              onClick: () {},
            ),
          ],
        ),
      ),
    );
  }
}
