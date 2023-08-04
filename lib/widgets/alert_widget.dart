


import '../index.dart';

void alertRed(String content) async {
  Flushbar(
    margin: const EdgeInsets.fromLTRB(40, 0, 40, 90),
    backgroundColor: Colors.red,
    borderRadius: BorderRadius.circular(37),
    padding: const EdgeInsets.symmetric(vertical: 18),

    //title:  "Hey Ninja",
    messageText: Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: Image.asset(
                'assets/images/ic_warning.png'),
          ),
          const SizedBox(
            width: 8,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 133,
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Text(
              content,
                style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(255, 255, 255, 1.0),
            letterSpacing: 0.2,
            height: 1.38,
          ),
              textAlign: TextAlign.start,
              maxLines: 3,
            ),
          ),
        ],
      ),
    ),
    duration: const Duration(milliseconds: 3700),
  ).show(context);
}

void alertGreen( String content,
    {int duration = 1700,bool long = false}) async {
  Flushbar(
    margin: const EdgeInsets.fromLTRB(40, 0, 40, 90),
    backgroundColor: Colors.green,
    padding: const EdgeInsets.symmetric(vertical: 18),

    borderRadius: BorderRadius.circular(37),

    messageText: Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: Image.asset(
              'assets/images/ic_check.png',
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 133,
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Text(
              content,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(255, 255, 255, 1.0),
                letterSpacing: 0.2,
                height: 1.38,
              ),
              textAlign: TextAlign.start,
              maxLines: 3,
            ),
          ),
        ],
      ),
    ),

    duration:
    long ? const Duration(seconds: 100000) : Duration(milliseconds: duration),
  ).show(context);
}