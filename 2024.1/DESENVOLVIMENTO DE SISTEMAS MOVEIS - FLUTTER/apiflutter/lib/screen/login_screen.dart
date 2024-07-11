import 'package:apiflutter/screen/register_screen.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import '../services/firebase/auth/firebase_auth_service.dart';
import '../utils/results.dart'; // Certifique-se de importar seu arquivo de resultados corretamente

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuthService _auth = FirebaseAuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? _errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: StreamBuilder<Results>(
          stream: _auth.resultsLogin,
          builder: (context, snapshot) {
            ErrorResult result = ErrorResult(code: "");
            if (snapshot.data is ErrorResult) {
              result = snapshot.data as ErrorResult;
            }
            if (snapshot.data is LoadingResult) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.data is SucessResult) {
              WidgetsBinding.instance!.addPostFrameCallback((_) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CharacterListScreen(),
                  ),
                );
              });
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                _buildTextField(
                  controller: _emailController,
                  labelText: 'Email',
                  icon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20),
                _buildTextField(
                  controller: _passwordController,
                  labelText: 'Password',
                  icon: Icons.lock,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    final String email = _emailController.text.trim();
                    final String password = _passwordController.text.trim();
                    if (email.isEmpty || password.isEmpty) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('ATENÇÃO'),
                          content: Text('Por favor, preencha todos os campos: Email e Senha.'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                      );
                      return;
                    }

                    String? errorMessage = await _auth.signIn(email, password);

                    setState(() {
                      _errorMessage = errorMessage;
                    });

                    if (errorMessage == null) {

                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Cadastrar-se',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                if (result.code.isNotEmpty) ...[
                  _buildErrorWidget(result.code),
                ],
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
    IconData? icon,
    bool obscureText = false,
    TextInputType? keyboardType,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: icon != null ? Icon(icon) : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }

  Widget _buildErrorWidget(String errorCode) {
    String errorMessage = 'Erro desconhecido.';
    switch (errorCode) {
      case "invalid-credential":
        errorMessage = "Email/senha inválido.";
        break;
      default:
        errorMessage = "Erro desconhecido.";
        break;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        errorMessage,
        style: TextStyle(color: Colors.red),
      ),
    );
  }
}
