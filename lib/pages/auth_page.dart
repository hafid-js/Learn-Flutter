import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:learn_flutter_1/pages/home_page.dart';
import 'package:learn_flutter_1/providers/auth.dart' as myAuth;
import 'package:provider/provider.dart';

const users = {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
};

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Duration get loginTime => const Duration(milliseconds: 2250);

  // Future<String?> _authUser(LoginData data) async {
  //   debugPrint('Login -> Name: ${data.name}, Password: ${data.password}');

  //   return Future.delayed(loginTime).then((_) {
  //     if (!users.containsKey(data.name)) {
  //       return 'User does not exist';
  //     }
  //     if (users[data.name] != data.password) {
  //       return 'Password does not match';
  //     }
  //     return null;
  //   });
  // }

  Future<String?> _authUserSignUp(SignupData data) async {

    final name = data.name ?? '';
    final password = data.password ?? '';

    return Future.delayed(loginTime).then((_) async {
      try {
        await Provider.of<myAuth.Auth>(context, listen: false).signup(name, password);
        return null; 
      } catch (error) {
        return error.toString();
      }
    });
  }

  Future<String?> _authUserLogin(LoginData data) async {

    final name = data.name ?? '';
    final password = data.password ?? '';

    return Future.delayed(loginTime).then((_) async {
      try {
        await Provider.of<myAuth.Auth>(context, listen: false).login(name, password);
        return null; 
      } catch (error) {
        return error.toString();
      }
    });
  }


  Future<String?> _recoverPassword(String name) async {

    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User does not exist';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'ECORP',
      onLogin: _authUserLogin,
      onSignup: _authUserSignUp,
      onRecoverPassword: _recoverPassword,
      onSubmitAnimationCompleted: () {
        
      },
    );
  }
}
