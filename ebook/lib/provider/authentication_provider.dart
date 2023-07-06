import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod/riverpod.dart';
import 'package:ebook/services/authentication.dart';

final authenticationProvider = Provider<Authentication>((ref) {
  return Authentication();
});



final authStateProvider = StreamProvider<User?>((ref) {
  return ref.read(authenticationProvider).authStateChange;
});