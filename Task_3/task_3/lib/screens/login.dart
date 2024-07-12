import 'package:flutter/material.dart';
import 'package:task_3/screens/categories.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            const Spacer(),
            Center(
              child: Image.asset(
                'assets/images/alien.png',
                height: 100,
                width: 100,
              ),
            ),
            const Spacer(),
            Container(
              height: MediaQuery.of(context).size.height * 2 / 3,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextFormField(
                        validator: (value) {
                          RegExp regex = RegExp(r'^[A-Z][a-z0-9]+$');
                          if (value!.isEmpty) {
                            return "Please ener your Username";
                          } else if (value.length < 4) {
                            return "Username must be 4 characters at lease";
                          } else if (!regex.hasMatch(value)) {
                            return "First character must be Uppercase";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 0),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          label: Text('Username'),
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a password';
                            } else if (!RegExp(r'^[A-Za-z0-9_.@#$%^&*]{9,}$')
                                .hasMatch(value) &&
                                value.length < 9) {
                              return 'password must be 9 characters at least and must\ncontain at least one uppercase letter , one lowercase\nletter, one number, and one special character';
                            } else if (!RegExp(r'^[A-Za-z0-9_.@#$%^&*]{9,}$')
                                .hasMatch(value) &&
                                value.length > 9) {
                              return "password must contain at least one uppercase letter\none lowercase letter, one number, and one special character";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 0),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            label: Text('Password'),
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility_off),
                          ),
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'New to quizz app?  ',
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            'Register',
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              elevation: 10,
                            ),
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                    const CategoryScreen(),
                                  ),
                                );
                              }
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/images/fingerprint.png',
                        width: 50,
                      ),
                      const Text(
                        'Use Touch ID',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            activeColor: Colors.green,
                            value: true,
                            onChanged: (bool? value) {},
                          ),
                          const Text('Remeber me'),
                          const Spacer(),
                          const Text(
                            'Forget Password?',
                            style: TextStyle(color: Colors.green),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}