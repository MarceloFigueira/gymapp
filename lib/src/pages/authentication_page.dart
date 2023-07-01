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
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        decoration: getAuthenticationInputDecoration("Senha"),
                      ),
                      const SizedBox(height: 8),
                      Visibility(
                          visible: !toEnter,
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: getAuthenticationInputDecoration(
                                    "Confirme a Senha"),
                              ),
                              const SizedBox(height: 8),
                              TextFormField(
                                decoration:
                                    getAuthenticationInputDecoration("Nome"),
                              ),
                            ],
                          )),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {},
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
}
