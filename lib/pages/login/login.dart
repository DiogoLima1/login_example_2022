import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:login_example/pages/forgot_password/forgot_password.dart';
import 'package:login_example/pages/home/home.dart';
import 'package:login_example/utilities/widgets/button.dart';
import 'package:login_example/utilities/widgets/textformfield_widget.dart';
import 'package:validatorless/validatorless.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                              'LOGIN',
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
                                label: 'Senha',
                                obscureText: true,
                                controller: _passwordController,
                                validator: Validatorless.multiple([
                                  Validatorless.required('Password Required'),
                                  Validatorless.min(6,
                                      'Password must be at least 6 characters long'),
                                ]),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Center(
                                  child: Button(
                                      buttonText: 'ENTER',
                                      onPressed: () {
                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        const Home()));
                                      })),
                              const SizedBox(
                                height: 10,
                              ),
                              const Center(
                                child: Text('Or',
                                    style: TextStyle(color: Color(0xFF1D1D1B))),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: SignInButton(
                                  Buttons.Google,
                                  onPressed: () {},
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                  verticalDirection: VerticalDirection.down,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text('Forgot password?',
                                        style: TextStyle(
                                            color: Color(0xFF1D1D1B))),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ForgotPassword()));
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
