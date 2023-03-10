

import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram_app/shared/snackbar.dart';

class AuthMethods {
    register({ required emailll, required pasworddd, required context}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailll,
        password:pasworddd,
      );
    } on FirebaseAuthException catch (e) {
       showSnackBar(context, "ERROR :  ${e.code} ");
     }
 catch (e) {
      print(e);
    }
  }
}