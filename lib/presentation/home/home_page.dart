import 'package:polaris_meter/application/internet/internet_bloc.dart';
import 'package:polaris_meter/common_libs.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,

        /// Using Internet Bloc Listen Internet changes
        ///
        /// It Also Work in the background
        ///
        /// And Data Will be sync with Backend
        ///
        title: BlocConsumer<InternetBloc, InternetState>(
          bloc: sl<InternetBloc>(),
          listener: (context, state) => state.maybeMap(orElse: () {
            return null;
          }, connected: (state) {
            /// Use Of the Home Bloc Update the data
            context.read<HomeBloc>().add(const HomeEvent.update());
            return print("======Internet Connected======");
          }),
          builder: (context, state) => state.map(
            /// On the base of the internet connection Showing the UI
            ///
            /// When Internet is connected it show red Container  green
            ///
            /// When Internet is disconnected it show red Container  red

            initial: (state) => const SizedBox.shrink(),
            loading: (state) => const SizedBox.shrink(),
            connected: (state) => Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(10)),
            ),
            disconnected: (state) => Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ),
      ),
      body: BlocProvider(
        /// Add Read Event to get the Form data from Server Or Local json file
        create: (context) => sl<HomeBloc>()..add(const HomeEvent.read()),
        child: const SafeArea(
          bottom: false,

          /// Home Page HomeOverView Widget
          ///
          /// It's contain all the Body Widget and some logic
          ///
          ///
          child: HomeOverView(),
        ),
      ),
    );
  }
}
