import 'package:polaris_meter/common_libs.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final router = sl<AppRouter>();
    return MultiBlocProvider(
      providers: [
        // BlocProvider(
        //   create: (context) => sl<InternetBloc>(),
        // ),
        BlocProvider(
          create: (context) => sl<HomeBloc>()..add(const HomeEvent.read()),
        ),
      ],
      child: MaterialApp.router(routerConfig: router.config()),
    );
  }
}
