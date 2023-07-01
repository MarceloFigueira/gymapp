import 'package:flutter/material.dart';
import 'package:gymapp/components/form_decoration.dart';
import 'package:gymapp/core/my_colors.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
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
                        validator: (String? value) {
                          if (value == null) {
                            return "O E-mail não pode estar vazio";
                          }
                          if (value.length < 5) {
                            return "O e-mail é muito curto";
                          }
                          if (!value.contains("@")) {
                            return "O e-mail não é válido";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        decoration: getAuthenticationInputDecoration("Senha"),
                        validator: (String? value) {
                          if (value == null) {
                            return "A senha não pode estar vazio";
                          }
                          if (value.length < 3) {
                            return "A senha é muito curto";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 8),
                      Visibility(
                          visible: !toEnter,
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: getAuthenticationInputDecoration(
                                    "Confirme a Senha"),
                                validator: (String? value) {
                                  if (value == null) {
                                    return "A nova senha não pode estar vazio";
                                  }
                                  if (value.length < 3) {
                                    return "A nova senha é muito curto";
                                  }

                                  return null;
                                },
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                decoration:
                                    getAuthenticationInputDecoration("Nome"),
                                validator: (String? value) {
                                  if (value == null) {
                                    return "O Nome não pode estar vazio";
                                  }
                                  if (value.length < 3) {
                                    return "O Nome é muito curto";
                                  }
                                  return null;
                                },
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
