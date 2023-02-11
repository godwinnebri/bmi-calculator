import 'package:flutter/material.dart';
import 'constants.dart';
//import 'main.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.interpretation,
      @required this.bmiResult,
      @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    // double resultValue = 28.4;
    // String resultResponse;

    // resultResponse =
    //     'You have a higher than normal body weight, Try to excercise more.';

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('BMI CALCULATOR'),
      //   backgroundColor: Color(0xFF0A0E21),
      // ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Your Result',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 30.0,
            ),

            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: cardColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          color: Colors.grey[800],
                        ),
                      ),
                      child: Text(
                        resultText,
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      bmiResult.toString(),
                      style: TextStyle(
                          fontSize: 80.0, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                      child: Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey[300],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 30.0,
            ),

            //button
            GestureDetector(
              onTap: (() {
                Navigator.pop(context);
              }),
              child: Container(
                child: Center(
                  child: Text(
                    'Re-Calculate',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                height: buttonheight,
                width: double.infinity,
                //width: 800.0,
                margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 30.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Color(0xFFE31555),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
