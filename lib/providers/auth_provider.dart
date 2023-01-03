import 'package:flutter/material.dart';
import 'package:shamos/models/user_model.dart';
import 'package:shamos/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  // objec
  UserModel _user;

  // menambahkan getter dan setter
  // getter =>
  UserModel get user => _user;

  // setter =>
  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  // REGISTRASI - PENDAFTARAN
  // function intuk melakukan register
  // dan memberikan kondisi
  Future<bool> register({
    String name,
    String username,
    String email,
    String password,
  }) async {
    try {
      UserModel user = await AuthServices().register(
        name: name,
        username: username,
        email: email,
        password: password,
      );

      //  _ user => dari class UserModel | user => data yang di isi
      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
  // END

  // LOGIN - MASUK AKUN
  // function intuk melakukan lagin akun yang telah dibuat
  // dan memberikan kondisi
  Future<bool> login({
    String email,
    String password,
  }) async {
    try {
      UserModel user = await AuthServices().login(
        email: email,
        password: password,
      );

      //  _ user => dari class UserModel | user => data yang di isi
      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
  // END

  //
}
