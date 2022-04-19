import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task1/screens/contact_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  late SharedPreferences prefs;
  late bool isLogin;
  bool isAccount = false;

  @override
  void initState() {
    checkLogin();
    super.initState();
  }

  void checkLogin() async {
    prefs = await SharedPreferences.getInstance();
    isLogin = prefs.getBool('isLogin') ?? false;

    prefs.setString('username', 'dwiqy');
    prefs.setString('password', '12345');

    if (isLogin) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const ContactScreen(),
        ),
        (route) => false,
      );
    }
  }

  void checkAccount(String newUsername, String newPassword) {
    String username = prefs.getString('username') ?? '';
    String password = prefs.getString('password') ?? '';

    if (newUsername == username && newPassword == password) {
      isAccount = true;
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 18.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Login',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8.0,
              ),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  label: const Text('Username'),
                  border: const OutlineInputBorder(),
                  hintText: 'Enter your username',
                  suffixIcon: IconButton(
                    onPressed: _usernameController.clear,
                    icon: const Icon(
                      Icons.clear,
                      color: Colors.grey,
                    ),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Your Username';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8.0,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  label: const Text('Password'),
                  border: const OutlineInputBorder(),
                  hintText: 'Enter your Password',
                  suffixIcon: IconButton(
                    onPressed: _passwordController.clear,
                    icon: const Icon(
                      Icons.clear,
                      color: Colors.grey,
                    ),
                  ),
                ),
                obscureText: true,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Your Password';
                  } else if (value.length < 5) {
                    return 'Password min. 5 character';
                  }
                  return null;
                },
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (!_formKey.currentState!.validate()) return;

                    checkAccount(
                        _usernameController.text, _passwordController.text);

                    if (isAccount) {
                      prefs.setBool('isLogin', true);

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Login Successfull')),
                      );

                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ContactScreen()),
                          (route) => false);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Wrong username or password!')),
                      );
                      return;
                    }
                  },
                  child: const SizedBox(
                      width: 100,
                      height: 15,
                      child: Text(
                        'Submit',
                        textAlign: TextAlign.center,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
