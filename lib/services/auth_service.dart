import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  //google sign in
  signInWithGoogle() async {
    //begin interactive sign in process
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    //obtain authentication detailsfrom request
    // ignore: unnecessary_nullable_for_final_variable_declarations
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    //create a new credential for the user
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );
    //sign in
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
