import 'package:flutter/material.dart';

class Form1 extends StatefulWidget {
  const Form1({super.key});

  @override
  State<Form1> createState() => _Form1State();
}

class _Form1State extends State<Form1> {
  final loginkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: loginkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(hintText: 'enter your email',label: Text('Email'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      label: Text('password'),
                      hintText: 'enter your password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter your password';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      if (loginkey.currentState!.validate()) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text('success')));
                      }
                    },
                    child: Text('submit')),
              )
            ],
          )),
    );
  }
}
