import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:p/Layout/carta/carta_layout.dart';
import 'package:p/Layout/carta/cubit/States.dart';
import 'package:p/network/local/cache_helper.dart';
import 'package:p/pages/Home/home.dart';
import 'package:p/pages/Login/cubit/login_cubit.dart';
import 'package:p/pages/Login/cubit/login_states.dart';
import 'package:p/shared/Components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formfield = GlobalKey<FormState>();
    var emailController = TextEditingController();
    var messageController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Contact Us"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formfield,
          child: Column(children: [
            Image.asset(
              'assets/logo.png',
              width: 250,
              height: 250,
            ),
            Text(
              "Welcome to our application, we hope to help you as much as we can, if you have any question or request please do not hisitate to ask us > ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: emailController,

              keyboardType: TextInputType.emailAddress,
              //make the @ sign visible in the keyboard during writing the email
              onFieldSubmitted: (String value) {},
              validator: (value) {
                // bool emailvalid = RegExp(
                //         r"^[a-zA-Z0-9.a-zA-z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\/[a-zA-Z]+")
                //     .hasMatch(value!);
                if (value!.isEmpty) {
                  return "please enter your email Address";
                }
                // else if (!emailvalid) {
                //   return "enter valid email";
                // }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'Email',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                prefixIcon: Icon(
                  Icons.email,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: TextField(
                controller: messageController,
                minLines: 2,
                maxLines: 5,
                style: TextStyle(
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                    label: Text("enter your message"),
                    border: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ]),
        ),
      ),
    );
  }
}
