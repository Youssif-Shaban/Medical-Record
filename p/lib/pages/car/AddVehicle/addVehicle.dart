import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:p/Layout/carta/carta_layout.dart';
import 'package:p/Layout/carta/cubit/States.dart';
import 'package:p/network/local/cache_helper.dart';
import 'package:p/pages/Home/home.dart';
import 'package:p/pages/Login/cubit/login_cubit.dart';
import 'package:p/pages/Login/cubit/login_states.dart';
import 'package:p/pages/car/AddVehicle/vehicleCubit.dart';
import 'package:p/pages/car/AddVehicle/vehicleStates.dart';
import 'package:p/shared/Components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../Layout/carta/cubit/carta_cubit.dart';

class AddCarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(),
    // );

    final addVehicleformfield = GlobalKey<FormState>();

    var vIdcontroller = TextEditingController();
    var licenceIdcontroller = TextEditingController();
    var vClasscontroller = TextEditingController();
    var trafficunitController = TextEditingController();
    var licenceCreatecontroller = TextEditingController();
    var licenceExpirecontroller = TextEditingController();
    var manufacController = TextEditingController();
    var modelController = TextEditingController();
    var manufacYearcontroller = TextEditingController();
    var colorController = TextEditingController();

    return BlocConsumer<CartaCubit, CartaStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: addVehicleformfield,
                child: Column(children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 250,
                    height: 250,
                  ),
                  Text(
                    "Enter your Car Details",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: vIdcontroller,

                    keyboardType: TextInputType.text,
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
                      labelText: 'v_idController',
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
                    controller: licenceIdcontroller,

                    keyboardType: TextInputType
                        .visiblePassword, //make the @ sign visible in the keyboard during writing the email
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your password";
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'licence_idController',
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffix: InkWell(
                        onTap: () {
                          // CartaLoginCubit.get(context)
                          //     .changePasswordVisiibility();
                        },
                        // child: Icon(passToggle
                        //     ? Icons.visibility
                        //     : Icons.visibility_off),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: vClasscontroller,

                    keyboardType: TextInputType.text,
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
                      labelText: 'v_classController',
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
                    controller: trafficunitController,

                    keyboardType: TextInputType.text,
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
                      labelText: 'trafficunitController',
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
                    controller: licenceCreatecontroller,

                    keyboardType: TextInputType.text,
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
                      labelText: 'licence_createController',
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
                    controller: licenceExpirecontroller,

                    keyboardType: TextInputType.text,
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
                      labelText: 'licence_expireController',
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
                    controller: manufacController,

                    keyboardType: TextInputType.text,
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
                      labelText: 'manufacController',
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
                    controller: modelController,

                    keyboardType: TextInputType.text,
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
                    },
                    decoration: InputDecoration(
                      labelText: 'modelController',
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
                    controller: manufacYearcontroller,

                    keyboardType: TextInputType.text,
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
                    },
                    decoration: InputDecoration(
                      labelText: 'manufac_yearController',
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
                    controller: colorController,

                    keyboardType: TextInputType.text,
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
                    },
                    decoration: InputDecoration(
                      labelText: 'colorController',
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
                  ConditionalBuilder(
                    condition: state is! CartaAddVehicleLoadingState,
                    builder: (context) => ElevatedButton(
                        onPressed: () {
                          // if (_formfield.currentState!.validate()) {
                          //   //verify backend
                          //   CartaLoginCubit.get(context).userLogin(
                          //       // email: emailController.text,
                          //       // password: passwordController.text);

                          //   // Navigator.push(
                          //   //     context,
                          //   //     MaterialPageRoute(
                          //   //         builder: (context) => CartaLayout()));
                          // }
                        },
                        child: Text(
                          "submit",
                        )),
                    fallback: (context) =>
                        Center(child: CircularProgressIndicator()),
                  ),
                ]),
              ),
            ),
          ),
        );
      },
    );
  }
}
