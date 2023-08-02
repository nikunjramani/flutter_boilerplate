import 'dart:async';
import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/app_themes.dart';

class NetworkCheck {
  // ignore: cancel_subscriptions
  StreamSubscription<DataConnectionStatus>? listener;
  var InternetStatus = "Unknown";
  var contentmessage = "Unknown";

  void _showDialog(String title, String content,BuildContext context) {
    showGeneralDialog(
        barrierColor: const Color.fromRGBO(0, 0, 0, 0),
        barrierDismissible: false,
        context: context,
        transitionBuilder: (context, a1, a2, widget) {
          final curvedValue = Curves.ease.transform(a1.value) - 1.0;
          return Transform(
            transform: Matrix4.translationValues(0.0, curvedValue * -100, 0.0),
            child: Opacity(
              opacity: a1.value,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Dialog(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    insetPadding: const EdgeInsets.all(0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Colors.grey.withOpacity(0)),
                        ],
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 41),
                      child: Padding(
                        padding: EdgeInsets.zero,
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              const ImageIcon(AssetImage("assets/alert.png"),
                                  color: Colors.white),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 40,
                                width: 250,
                                child: Center(
                                  child: Text(
                                    content,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 71)
                ],
              ),
            ),
          );
        },
        transitionDuration: const Duration(milliseconds: 1000),
        barrierLabel: '',
        pageBuilder: (context, animation1, animation2) {
          return Container();
        });

    Timer(const Duration(seconds: 5), () {
      Navigator.pop(context);
    });
  }

  checkConnection(BuildContext context) async {
    listener = DataConnectionChecker().onStatusChange.listen((status) {
      switch (status) {
        case DataConnectionStatus.connected:
          InternetStatus = "Connected to the Internet";
          contentmessage = "Connected to the Internet";
          break;
        case DataConnectionStatus.disconnected:
          InternetStatus = "offlineError ";
          contentmessage =
          "No network connection. \n Please check your internet connection";
          _showDialog(InternetStatus, contentmessage , context);
          break;
      }
    });
    return await DataConnectionChecker().connectionStatus;
  }
}
