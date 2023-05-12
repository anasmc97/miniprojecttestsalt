import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miniprojectsalt/core/extensions/context_extensions.dart';
import 'package:miniprojectsalt/core/utils/constants.dart';
import 'package:miniprojectsalt/feature/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:miniprojectsalt/feature/presentation/pages/login_page.dart';
import 'package:miniprojectsalt/injector.dart';
import 'package:miniprojectsalt/shared/flash/presentation/blocs/cubit/flash_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<FlashCubit>(),
        ),
      ],
      child: BlocListener<FlashCubit, FlashState>(
        listener: (context, state) {
          state.when(
            disappeared: () => null,
            appeared: (message) => context.showSnackbar(
              message: message,
            ),
          );
        },
        child: MaterialApp(
          scaffoldMessengerKey: rootScaffoldMessengerKey,
          title: 'Mini Project App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: LoginPage(),
        ),
      ),
    );
  }
}
