import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Log In',
                      style: TextStyle(
                        fontFamily: 'Monospace',
                        fontSize: 24
                      ),
                    ),
                    const SizedBox(
                      height:20.0
                    ),
                    _usernameTextField(),
                    const SizedBox(
                      height:15.0
                    ),
                    _passwordTextField(),
                    Row(
                      children: const [
                        Text(
                          'Error',
                          style: TextStyle(
                            color: Colors.red
                          ),
                        ),
                        TextButton(
                          onPressed: null, 
                          child: Text('Forgot Password?')
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {}, 
                      style: const ButtonStyle(
                        elevation: MaterialStatePropertyAll(0.0),
                        minimumSize: MaterialStatePropertyAll(Size.fromHeight(50)),
                      ),
                      child: const Text('Login'),
                    ),
                    const SizedBox(
                      height: 25.0
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: Divider(
                            height: 0.5, 
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 40.0),
                        Text('OR'),
                        SizedBox(width: 40.0),
                        Expanded(
                          child: Divider(
                            height: 0.5, 
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("Don't have an account?"),
                        TextButton(
                          onPressed: () {}, 
                          child: const Text('Sign Up')
                        )
                      ],
                    )
                  ],
                ),
              )
            ),
          ]
        ),
      ),
    );
  }

  Widget _usernameTextField() {
    return const TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 18.0, horizontal: 16.0
        ),
        filled: true,
        fillColor: Colors.black,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(5.0)
          )
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(5.0)
          )
        ),
        hintText: 'Email',
      ),
    );
  }

    Widget _passwordTextField() {
    return const TextField(
      obscureText: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 18.0, horizontal: 16.0
        ),
        filled: true,
        fillColor: Colors.black,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(5.0)
          )
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(5.0)
          )
        ),
        hintText: 'Password',
      ),
    );
  }
}