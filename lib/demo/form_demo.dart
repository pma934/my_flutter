import 'package:flutter/material.dart';

class FromDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.red,
        ),
        child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RegisterFrom(),
              ],
            )),
      ),
    );
  }
}

class RegisterFrom extends StatefulWidget {
  @override
  _RegisterFromState createState() => _RegisterFromState();
}

class _RegisterFromState extends State<RegisterFrom> {
  final registerFormKey = GlobalKey<FormState>();
  String username, password;
  bool autovalidate = false;

  void submitRegisterForm() {
    if (registerFormKey.currentState.validate()) {
      registerFormKey.currentState.save();
      debugPrint('username:$username');
      debugPrint('password:$password');
      Scaffold.of(context)
          .showSnackBar(SnackBar(content: Text('Registering...')));
    } else {
      setState(() {
        autovalidate = true;
      });
    }
  }

  String validateUsername(value) {
    if (value.isEmpty) {
      return 'Username is required';
    }
    return null;
  }

  String validatePassword(value) {
    if (value.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: registerFormKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Username',
                helperText: '',
              ),
              onSaved: (value) {
                username = value;
              },
              validator: validateUsername,
              autovalidate: autovalidate,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                helperText: '',
              ),
              onSaved: (value) {
                password = value;
              },
              validator: validatePassword,
              autovalidate: autovalidate,
            ),
            SizedBox(height: 32.0),
            Container(
              width: double.infinity,
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                child: Text('Register', style: TextStyle(color: Colors.white)),
                elevation: 0.0,
                onPressed: submitRegisterForm,
              ),
            )
          ],
        ));
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // textEditingController.text = 'hi';
    textEditingController.addListener(() {
      debugPrint('input: ${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      onChanged: (value) {
        // debugPrint('input:$value');
      },
      onSubmitted: (value) {
        // debugPrint('submit:$value');
      },
      decoration: InputDecoration(
          icon: Icon(Icons.subject),
          labelText: 'Title',
          hintText: 'Enter the post title',
          // border: InputBorder.none,
          // border: OutlineInputBorder(),
          filled: true,
          fillColor: Colors.yellow[100]),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}
