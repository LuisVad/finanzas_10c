import 'package:flutter/material.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({super.key});

  @override
  State<EmailVerification> createState() => _EmailVerification();
}

class _EmailVerification extends State<EmailVerification> {
  final TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inicio de Sesión'),
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset('assets/index.jfif', width: 200, height: 200),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Correo Electrónico',
                //label: Text('Correo Electrónico'),
                labelStyle: TextStyle(color: Colors.black),
              ),
              keyboardType: TextInputType.emailAddress,
              controller: _email,
            ),
            const SizedBox(height: 16),
            SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    print('Email: ${_email.text}');
                  },
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      )),
                  child: const Text('Enviar Código'),
                ))
          ]),
        ));
  }
}
