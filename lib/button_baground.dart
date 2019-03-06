import 'package:flutter/material.dart';

class SwitchButtonColor extends StatefulWidget {
  @override
  _SwitchButtonColorState createState() => _SwitchButtonColorState();
}

class _SwitchButtonColorState extends State<SwitchButtonColor> {
  // GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static bool _individualActive = false;
  bool _businessActivity = !_individualActive;

  void _handleTap() {
    setState(() {
      _individualActive = !_individualActive;
      _businessActivity = !_individualActive;
    });
  }

  void _handleTapBus() {
    setState(() {
      _businessActivity = !_businessActivity;
      _individualActive = !_businessActivity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            "Flutter demo",
            style: TextStyle(
              color: Colors.black,
              fontSize: 34.0,
            ),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 100.0, left: 40.0, right: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    "click on the button to change switch the buttoncolors",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          height: 55.0,
                          width: 134.0,
                          decoration: BoxDecoration(
                              color: _businessActivity
                                  ? Colors.orange
                                  : Colors.blueAccent,
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: InkWell(
                            onTap: _handleTapBus,
                            child: Center(
                              child: Text(
                                "button1",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 5.0,
                      ),
                      Container(
                          height: 55.0,
                          width: 134.0,
                          decoration: BoxDecoration(
                              color: _individualActive
                                  ? Colors.orange
                                  : Colors.blueAccent,
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: InkWell(
                              onTap: _handleTap,
                              child: Center(
                                child: Text(
                                  "button2",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                              ))),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
