import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Auth with ChangeNotifier {
  Timer? _authTimer;

  String _idToken = '';
  String userId = '';
  DateTime? _expiryDate;

  String _tempidToken = '';
  String tempuserId = '';
  DateTime? _tempexpiryDate;

  Future<void> tempData() async {
  _idToken = _tempidToken;
  userId = tempuserId;
  _expiryDate = _tempexpiryDate;

  if (_idToken.isEmpty || userId.isEmpty || _expiryDate == null) {
    print("Gagal simpan: data temp belum lengkap");
    return;
  }

  final sharedPref = await SharedPreferences.getInstance();

  final myMapsPref = json.encode({
    'token': _idToken,
    'userId': userId,
    'expiryDate': _expiryDate!.toIso8601String(),
  });

  sharedPref.setString('authData', myMapsPref);

  _autologout();
  notifyListeners();
}

  bool get isAuth {
    return token.isNotEmpty;
  }

  String get token {
    if (_idToken != null &&
        _expiryDate != null &&
        _expiryDate!.isAfter(DateTime.now())) {
      return _idToken;
    } else {
      return '';
    }
  }

  Future<void> signup(String email, String password) async {
    Uri url = Uri.parse(
      "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyBLO1OZ-Lil489qehnsTrguRm_jaCvaaQE",
    );
    try {
      var response = await http.post(
        url,
        body: json.encode({
          "email": email,
          "password": password,
          "returnSecureToken": true,
        }),
      );

      var responseData = json.decode(response.body);

      if (responseData['error'] != null) {
        throw responseData['error']['message'];
      }

      _idToken = responseData['idToken'];
      userId = responseData['localId'];
      _expiryDate = DateTime.now().add(
        Duration(seconds: int.parse(responseData['expiresIn'])),
      );

      _autologout();
      notifyListeners();
    } catch (err) {
      throw (err);
    }
  }

  Future<void> login(String email, String password) async {
  Uri url = Uri.parse(
    "https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyBLO1OZ-Lil489qehnsTrguRm_jaCvaaQE",
  );
  try {
    var response = await http.post(
      url,
      body: json.encode({
        "email": email,
        "password": password,
        "returnSecureToken": true,
      }),
    );

    var responseData = json.decode(response.body);

    if (responseData['error'] != null) {
      throw responseData['error']['message'];
    }

    _tempidToken = responseData['idToken'];
    tempuserId = responseData['localId'];
    _tempexpiryDate = DateTime.now().add(
      Duration(seconds: int.parse(responseData['expiresIn'])),
    );

    await tempData();
  } catch (err) {
    throw (err);
  }
}


  Future<void> logout() async {
    _idToken = '';
    userId = '';
    _expiryDate = null;

    if (_authTimer != null) {
      _authTimer!.cancel();
      _authTimer = null;
    }
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
    notifyListeners();
  }

  void _autologout() {
    if (_authTimer != null) {
      _authTimer!.cancel();
    }
    final timeToExpiry = _expiryDate!.difference(DateTime.now()).inSeconds;
    print(timeToExpiry);
    _authTimer = Timer(Duration(seconds: timeToExpiry), logout);
  }

  Future<bool> autoLogin() async {
    final prefs = await SharedPreferences.getInstance();
    final authData = prefs.getString('authData');

    if (authData == null) return false;

    final extractedData = json.decode(authData) as Map<String, dynamic>;
    final expiryDate = DateTime.parse(extractedData['expiryDate']);

    if (expiryDate.isBefore(DateTime.now())) return false;

    _idToken = extractedData['token'];
    userId = extractedData['userId'];
    _expiryDate = expiryDate;

    notifyListeners();

    return true;
  }
}
