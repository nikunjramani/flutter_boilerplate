import 'package:flutter/material.dart';

  Widget customAlertBox(String alertMessage,String negativeBtnText,String positiveBtnText,BuildContext context, Function()? onTap){
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: cupertinoTextAlert(alertMessage,negativeBtnText,positiveBtnText,context,onTap),
    );
  }
 cupertinoTextAlert(alertMessage,negativeBtnText,positiveBtnText,BuildContext context, Function()? onTap) async {
    return showDialog(
        barrierColor: Colors.black,
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Material(
            color: Colors.black,
            child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
                  return Center(
                    child: Dialog(
                      elevation: 0,
                      backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
                      insetPadding: const EdgeInsets.all(0),
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100))),
                        width: 268,
                        height: 148,
                        child: Stack(
                          children: [
                            Container(
                                width: 268,
                                height: 148,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                                child: Image.asset(
                                    "assets/background.png")),
                            Positioned(
                                child: Container(
                                    width: 268,
                                    height: 108,
                                    padding: const EdgeInsets.symmetric(horizontal: 24),
                                    child: Center(
                                      child: Text(
                                         alertMessage,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(color: Colors.black)),
                                    ))),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 43,
                                width: 268,
                                decoration: const BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            color: Color.fromRGBO(60, 60, 67, 0.29),
                                            width: 0.5))),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Container(
                                          width: 134,
                                          decoration: const BoxDecoration(
                                              border: Border(
                                                  right: BorderSide(
                                                      color: Color.fromRGBO(
                                                          60, 60, 67, 0.29),
                                                      width: 0.25))),
                                          child: Center(
                                              child: Text(
                                              negativeBtnText,
                                                style: const TextStyle(
                                                    color: Colors.lightBlue,
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 0),
                                              ))),
                                    ),
                                    GestureDetector(
                                      onTap: onTap,
                                      child: Container(
                                          width: 134,
                                          decoration: const BoxDecoration(
                                              border: Border(
                                                  left: BorderSide(
                                                      color: Color.fromRGBO(
                                                          60, 60, 67, 0.29),
                                                      width: 0.25))),
                                          child: Center(
                                              child: Text(
                                              positiveBtnText,
                                                  style: const TextStyle(
                                                      color: Colors.lightBlue,
                                                      fontSize: 19,
                                                      fontWeight: FontWeight.w600,
                                                      letterSpacing: 0)))),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          );
        });
  }
