import 'package:flutter/material.dart';

class MessageSnackWidget {
  void showInfoMessage(message, context) {
    _showMessage(message, false, context);
  }

  void showErrorMessage(error, context) {
    _showMessage(error.message, true, context);
  }

  void showErrorMessageString(message, context) {
    _showMessage(message, true, context);
  }

  void _showMessage(message, isError, context) {
    // if one is open, close it
    // _context.currentState
    //     .hideCurrentSnackBar(reason: SnackBarClosedReason.action);

    SnackBar snackBar = SnackBar(
      key: const Key('error_Snackbar'),
      content: Text(message, key: const Key('error_message')),
      duration: const Duration(seconds: 5),
      backgroundColor: isError ? Colors.redAccent : Colors.grey,
      action: SnackBarAction(
        label: 'Close',
        textColor: Colors.white,
        onPressed: () {
          // Some code to undo the change!
          ScaffoldMessenger.of(context)
              .hideCurrentSnackBar(reason: SnackBarClosedReason.action);
        },
      ),
    );

    // Find the Scaffold in the Widget tree and use it to show a SnackBar!
    ScaffoldMessenger.of(context).showSnackBar(snackBar).closed.then((reason) {
      // snackbar is now closed, close window
    });
  }
}
