import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:polaris_meter/domain/core/network/network_info.dart';

import '../../common_libs.dart';

part 'internet_bloc.freezed.dart';
part 'internet_event.dart';
part 'internet_state.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  final INetworkInfo networkInfo;
  final Connectivity connectivity;
  InternetBloc(this.networkInfo, this.connectivity)
      : super(const InternetState.initial()) {
    StreamSubscription<List<ConnectivityResult>> subscription = Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> result) {
      add(const InternetEvent.checkInternet());
    });

    on<CheckInternet>((event, emit) => _checkInternet(event, emit));
  }

  _checkInternet(CheckInternet event, Emitter<InternetState> emit) async {
    if (await networkInfo.isConnected == true) {
      print("Is Internet Connected");

      emit(const InternetState.connected());
    } else {
      print("Not Internet Connected");
      emit(const InternetState.disconnected());
    }
  }

  @override
  Future<void> close() {
    // subscription.cancel();
    return super.close();
  }
}
