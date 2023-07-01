import 'package:flutter/material.dart';
import 'package:gymapp/components/form_decoration.dart';
import 'package:gymapp/core/my_colors.dart';
import 'package:gymapp/validators/form_validators.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  FormValidators formValidators = FormValidators();
  bool toEnter = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  MyColors.topBlue,
                  MyColors.bottomBlue,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        'assets/logo.png',
                        height: 128,
                      ),
                      TextFormField(
                        decoration: getAuthenticationInputDecoration("E-mail"),
                        validator: formValidators.validatorEmail,
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        decoration: getAuthenticationInputDecoration("Senha"),
                        validator: formValidators.validatorPassword,
                      ),
                      const SizedBox(height: 8),
                      Visibility(
                          visible: !toEnter,
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: getAuthenticationInputDecoration(
                                    "Confirme a Senha"),
                                validator: formValidators.validatorNewPassword,
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                decoration:
                                    getAuthenticationInputDecoration("Nome"),
                                validator: formValidators.validatorName,
                              ),
                            ],
                          )),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          primaryButtonCliked();
                        },
                        child: Text(
                          toEnter ? "Entrar" : "Cadastrar",
                        ),
                      ),
                      const Divider(),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            toEnter = !toEnter;
                          });
                        },
                        child: Text(toEnter
                            ? "Ainda não tem uma conta? Cadastre-se"
                            : "Já tem uma conta? Entre"),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  primaryButtonCliked() {
    if (_formKey.currentState!.validate()) {
      print("valido");
    } else {
      print("invalido");
    }
  }
}
