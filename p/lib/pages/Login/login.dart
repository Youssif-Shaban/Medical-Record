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

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formfield = GlobalKey<FormState>();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    bool passToggle = true;
    bool isPassword;

    return BlocProvider(
      create: (BuildContext context) => CartaLoginCubit(),
      child: BlocConsumer<CartaLoginCubit, CartaLoginStates>(
        listener: (context, State) {
          // if (State is CartaLoginSuccessState) {
          //   if (State.loginmodel.status == "succeed") {
          //     print(State.loginmodel.status);
          //     print(State.loginmodel.token);
          //     //     CacheHelper.saveData(
          //     //             key: CartaConstants.accesstoken,
          //     //             value: State.loginmodel.token)
          //     //         .then((value) {
          //     //       Navigator.push(
          //     //         context,
          //     //         MaterialPageRoute(
          //     //           builder: (context) => CartaLayout(),
          //     //         ),
          //     //       );
          //     //     });
          //     //     // Navigator.push(
          //     //     //   context,
          //     //     //   MaterialPageRoute(
          //     //     //     builder: (context) => CartaLayout(),
          //     //     //   ),
          //     //     // );
          //   } else {
          //     print("enter a valid email");
          //   }
          // }
        },
        builder: (context, state) {
          bool isPassword;

          return Scaffold(
            body: SingleChildScrollView(
              child: Padding(
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
                      "Login",
                      style: TextStyle(
                        fontSize: 40,
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
                        // if (value!.isEmpty) {
                        //   return "please enter your email Address";
                        // }
                        // // else if (!emailvalid) {
                        // //   return "enter valid email";
                        // // }
                        // return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Email',
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: passwordController,

                      keyboardType: TextInputType
                          .visiblePassword, //make the @ sign visible in the keyboard during writing the email
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please enter your password";
                        }
                        //return null;
                      },

                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        prefixIcon: Icon(
                          Icons.lock,
                        ),
                        suffix: InkWell(
                          onTap: () {
                            CartaLoginCubit.get(context)
                                .changePasswordVisiibility();
                          },
                          child: Icon(passToggle
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ConditionalBuilder(
                      condition: true,
                      //state is! CartaLoginLoadingState,
                      builder: (context) => ElevatedButton(
                          onPressed: () {
                            if (_formfield.currentState!.validate()) {
                              //verify backend
                              CartaLoginCubit.get(context).userLogin(
                                  email: emailController.text,
                                  password: passwordController.text);

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CartaLayout()));
                            }
                          },
                          child: Text(
                            "submit",
                          )),
                      //  defaultButton(
                      //   function: () {
                      //
                      //   },
                      //   text: "Login",
                      // ),
                      //InkWell(
                      //   onTap: () {
                      //     //validation
                      //
                      //   },
                      //   child: Container(
                      //     height: 50,
                      //     decoration: BoxDecoration(
                      //       color: Colors.teal,
                      //       borderRadius: BorderRadius.circular(30),
                      //     ),
                      //     child: Center(
                      //       child: Text(
                      //         "submit",
                      //         style: TextStyle(
                      //           color: Colors.white,
                      //           fontSize: 20,
                      //           fontWeight: FontWeight.bold,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      fallback: (context) =>
                          Center(child: CircularProgressIndicator()),
                    ),
                  ]),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
