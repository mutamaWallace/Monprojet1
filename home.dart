import 'package:flutter/material.dart';
import 'package:project/homePages/page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class LogData {
  String email = "";
  String password = "";
}

class _LoginPageState extends State<LoginPage> {
  LogData _logData = new LogData();
  GlobalKey<FormState> _keyform = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome in ICT Group',
          style: TextStyle(
              fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Form(
          key: this._keyform,
          child: Column(
            children: [
              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (invalue) {
                    // ignore: prefer_is_empty
                    if (invalue!.length == 0) {
                      return "Please type your email!!!! ";
                    }
                    return null;
                  },
                  onSaved: (inValue) => this._logData.email = inValue!,
                  decoration: const InputDecoration(
                    hintText: "example@gmail.com",
                    labelText: "Email",
                    icon: Icon(Icons.email),
                  )),
              const SizedBox(height: 10.0),
              TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (invalue) {
                    // ignore: prefer_is_empty
                    if (invalue!.length == 0) {
                      return "Please type your password!!!! ";
                    }
                    return null;
                  },
                  onSaved: (inValue) => this._logData.password = inValue!,
                  decoration: const InputDecoration(
                    hintText: "Type Your password",
                    labelText: "Password",
                    icon: Icon(Icons.password),
                  )),
              const SizedBox(height: 10.0),
              ElevatedButton(
                  onPressed: () {
                    const homepage();
                  },
                  child: const Text('Log-In'))
            ],
          ),
        ),
      ),
    );
  }
}
