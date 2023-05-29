import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:mobx/mobx.dart';
import 'package:pro_sport/constants.dart';
import 'package:pro_sport/store/app_store.dart';
import 'package:pro_sport/ui/widgets/dialogs/push.dart';
import 'package:vibration/vibration.dart';

class Push extends AppStore with Store {
  final Observable<String> title = ''.obs();
  final Observable<String> body = ''.obs();

  Push() {
    reaction(
      (_) => isChanged.value,
      (val) async => val ? await showPush() : null,
    );
  }

  Future<void> showPush() async {
    setChanged(false);

    FlutterRingtonePlayer.playNotification();
    Vibration.vibrate();

    return pushDialog(
      navigatorKey.currentState!.context,
      title.value,
      body.value,
    );
  }
}
