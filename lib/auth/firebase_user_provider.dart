import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FabiStartupFirebaseUser {
  FabiStartupFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

FabiStartupFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FabiStartupFirebaseUser> fabiStartupFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<FabiStartupFirebaseUser>(
        (user) => currentUser = FabiStartupFirebaseUser(user));
