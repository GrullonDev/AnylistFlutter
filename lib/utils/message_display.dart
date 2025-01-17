import 'package:flutter/material.dart';

class MessageDisplay {
  const MessageDisplay._();

  static void hideSnackbar(BuildContext context) {
    try {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
    } catch (e) {}
  }

  @Deprecated('Replace with [failure] implementation')
  static void display(
    BuildContext context, [
    String errorMessage = 'Verifica tu conexión a internet',
  ]) {}

  static void failure(BuildContext context, String message) {
    hideSnackbar(context);

    try {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red[600],
          duration: const Duration(seconds: 5),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.error),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    message.trim(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } catch (e) {}
  }

  static void success(BuildContext context, String message) {
    hideSnackbar(context);

    try {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          action: SnackBarAction(
            label: 'Cerrar',
            onPressed: () {},
          ),
        ),
      );
    } catch (e) {}
  }

/*   static void noInternet(BuildContext context) {
    AppDialogs.showConfirmation(
      context,
      'Verifica tu conexión a internet',
      (context) {},
      hideCancelButton: true,
      okText: 'Aceptar',
      dialogType: DialogType.Error,
    );
  } */
}
