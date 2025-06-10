import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
//keytool -list -v -alias androiddebugkey -keystore C:\Users\DTI-Laboratorios\.android\debug.keystore
//keytool -list -v -alias androiddebugkey -keystore C:\Users\DELL\.android\debug.keystore
GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
//bool _isLoggedIn = false;
String? name;
String? email;
String imageUrl="";
String error="";

Future<String> signInWithGoogle() async {
  try {
    await _googleSignIn.signIn();
  } catch (err) {
    print(err);
    error=err.toString();

    print("Error al ingresar:${err.toString()} ");
  }
  final GoogleSignInAccount? user = _googleSignIn.currentUser;

  if (user != null) {
    // Checking if email and name is null
    assert(user.email != null);
    assert(user.displayName != null);
    //assert(user.photoUrl != null);

    name = user.displayName;
    email = user.email;
    imageUrl = user.photoUrl==null?"":user.photoUrl!;
    print('signInWithGoogle succeeded: $user');
    return '$user';
  }
  Fluttertoast.showToast(
      msg: "Error al ingresar: $error",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      fontSize: 16.0);
  return null!!;
}

Future<void> signOutGoogle() async {
  await _googleSignIn.signOut();
  print("User Signed Out");
}
