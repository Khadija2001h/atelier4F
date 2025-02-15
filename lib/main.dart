import 'package:atelier4_a_aboufaresse_iirg6/presentation/login_ecran.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:atelier4_a_aboufaresse_iirg6/presentation/PostListScreen.dart';
import 'firebase_options.dart';

Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();

await Firebase.initializeApp(
options: DefaultFirebaseOptions.currentPlatform,
);
FirebaseUIAuth.configureProviders([
EmailAuthProvider(), // Correct usage
]);
runApp(const MyApp());
}
class MyApp extends StatelessWidget {
const MyApp({super.key});
@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: const LoginEcran(),
  );
}
}
