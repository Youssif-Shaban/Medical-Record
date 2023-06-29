import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'package:newapp/BmiResult.dart';

class LoginScreen extends StatelessWidget {
  var name = TextEditingController();
  var password = TextEditingController();
  var email = TextEditingController();
  var carNumber = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Form(
            key: formKey,
            child: Column(children: [
              SizedBox(
                height: 30,
              ),
              const Text(
                'Log In',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: name,
                onFieldSubmitted: (String value) {
                  print(value);
                },
                onChanged: (String value) {
                  print(value);
                },
                validator: (value) {
                  if (value == null) {
                    return "enter your name";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Your Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: password,

                keyboardType: TextInputType.visiblePassword,
                obscureText: true, //make the input un visible
                onFieldSubmitted: (password) {},
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(
                    //pre Icon
                    Icons.lock,
                  ),
                  suffixIcon: Icon(
                    //post icon
                    Icons.remove_red_eye,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: email,

                keyboardType: TextInputType
                    .emailAddress, //make the @ sign visible in the keyboard during writing the email
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: carNumber,
                decoration: InputDecoration(
                  labelText: 'Car Numbers',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                color: Colors.blue,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BmiResult(
                          name: name.text,
                          pass: password.text,
                          mail: email.text,
                          car: carNumber.text,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'don\'t have an account? ',
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Register ',
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
