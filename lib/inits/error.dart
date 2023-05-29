import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:flutter/foundation.dart';

// TODO: Переписать на ключ ногтей
AppMetricaConfig get configMetrica => const AppMetricaConfig(
      '591f341f-dcd8-4e34-a8d0-dd4b931d6bbe',
      logs: true,
    );

void initCatchErrors() {
  FlutterError.onError = (details) {
    if (!kReleaseMode) {
      FlutterError.presentError(details);
    }

    AppMetrica.reportError(
      message: 'Error message',
      errorDescription: AppMetricaErrorDescription.fromCurrentStackTrace(
        message: details.exceptionAsString(),
        type: 'Error type',
      ),
    ).ignore();
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    if (!kReleaseMode) {
      FlutterError.presentError(FlutterErrorDetails(
        exception: error.toString(),
        stack: stack,
      ));
    }

    AppMetrica.reportUnhandledException(
      AppMetricaErrorDescription.fromCurrentStackTrace(
        message: error.toString(),
        type: stack.toString(),
      ),
    ).ignore();

    return true;
  };
}
