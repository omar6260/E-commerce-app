import 'package:riverpod/riverpod.dart';


final authRepoProvider = Provider<AuthenticationRepository>(
  (_) => AuthenticationRepository(),
);