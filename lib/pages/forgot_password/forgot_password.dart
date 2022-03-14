import 'package:flutter/material.dart';
import 'package:login_example/pages/login/login.dart';
import 'package:login_example/utilities/widgets/button.dart';
import 'package:login_example/utilities/widgets/textformfield_widget.dart';
import 'package:validatorless/validatorless.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (_, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF591FF8),
                    Colors.white,
                  ],
                )),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.api,
                            size: 30,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              'FORGOT PASSWORD',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Textformfield(
                                  label: 'Login',
                                  controller: _loginController,
                                  validator: Validatorless.multiple([
                                    Validatorless.required('Login Required'),
                                  ])),
                              const SizedBox(
                                height: 25,
                              ),
                              Textformfield(
                                  label: 'Email',
                                  obscureText: true,
                                  controller: _passwordController,
                                  validator: Validatorless.multiple([
                                    Validatorless.required('Email Required'),
                                    Validatorless.email('Email invalid')
                                  ])),
                              const SizedBox(
                                height: 25,
                              ),
                              Center(
                                  child: Button(
                                buttonText: 'ENTER',
                                onPressed: () {},
                              )),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                  verticalDirection: VerticalDirection.down,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text('Already have an account?',
                                        style: TextStyle(
                                            color: Color(0xFF1D1D1B))),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Login()));
                                        },
                                        child: const Text(
                                          'Click here',
                                          style: TextStyle(
                                              color: Color(0xFF591FF8)),
                                        )),
                                  ])
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
