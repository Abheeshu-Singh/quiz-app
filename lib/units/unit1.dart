import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:login_page/homePage.dart';
import '../renewable.dart';

var finalScore = 0;
var questionNumber = 0;
var unit1 = new RERUnit1();

class RERUnit1 {
  var questions = [
    "1-Which of the following is (are) renewable resources",
    "2-Which of the following country generate all their electricity using renewable energy?",
    "3-Renwable energy often displaces conventional fuel in which of the following area",
    "4-Which of the following is used as fuel for transportation",
    "5-Biodiesel is produced from oils or fats using",
    "6-Photovoltaic cell converts solar energy into",
    "7-In which of the following region winds are stronger and constant",
    "8-Following country met more than 40% of its electricity demand from wind energy",
    "9-Concentrated solar power (CSP) systems use ____ to focus a large area of sunlight into a small beam.",
    "10-The difference, in temperature between the core of the planet and its surface, is known as",
    "11-Biomass can be converted to",
    "12-The International Renewable Energy Agency (IRENA) was formed in",
    "13-Which of the following was the first solar powered aircraft to complete a circumnavigation of the world?",
    "14-Following is true for biomass and biofuels",
    "15-Which process is responsible for production of energy in the sun",
    "16-Air mass ratio is minimum",
    "17-The percentage of the incoming radiation reflected back to space by the earth is",
    "18-For 1 degree change in longitude, the change in solar time is",
    "19-In extraterrestrial radiation, what is the approximatepercentage content of infra-red component?",
    "20-Diffused radiation radiation",
  ];

  var choices = [
    ["wind", "tides", "geothermal heat", "all of the above"],
    ["Iceland", "England", "USA", "China"],
    [
      "space heating",
      "transportation",
      "electricity generation",
      "all of the above"
    ],
    ["ethanol", "aldehyde", "ketone", "all of the above"],
    ["fementation", "transesterification", "distillation", "none of the above"],
    ["heat energy", "electric energy", "mechanical energy", "chemical energy"],
    ["desert", "offshore", "low altitude sites", "all of the above"],
    ["Denmark", "Portugal", "Ireland", "Spain"],
    ["lense", "mirrors", "tracking systems", "all of the above"],
    [
      "geothermal coefficient",
      "geothermal gradient",
      "geothermal constant",
      "none of the above"
    ],
    ["methane gas", "ethanol", "biodiesel", "all of the above"],
    ["2008", "2009", "2010", "2011"],
    ["Solar impulse", "Solar impulse 2", "Solar impulse 3", "Solar impulse 4"],
    [
      "their contribution in reduction in CO2 emissions is limited",
      "both emit large amount of air pollution when burned",
      "they consume large amounts of water",
      "all of the above"
    ],
    [
      "Nuclear fission reaction",
      "Nuclear fusion reaction",
      "Exothermal chemical reaction",
      "all of the above"
    ],
    ["When the sun is at zenith", "At sunrise", "At sunset", " At 06:00GMT"],
    ["10%", "20%", "30%", "40%"],
    ["4 minutes", "4 seconds", "1 minute", " 1 hour"],
    ["45.5%", "55.5%", "20%", "80%"],
    [
      "Has no unique direction",
      "Has a unique direction",
      "Has short wavelength as compared to beam radiation",
      "Has larger magnitude as compared to beam radiation"
    ],
  ];

  var correctAnswers = [
    "all of the above",
    "Iceland",
    "all of the above",
    "ethanol",
    "transesterification",
    "electric energy",
    "offshore",
    "Denmark",
    "all of the above",
    "geothermal gradient",
    "all of the above",
    "2009",
    "Solar impulse 2",
    "all of the above",
    "Nuclear fusion reaction",
    "When the sun is at zenith",
    "30%",
    "4 minutes",
    "45.5%",
    "Has no unique direction"
  ];
}

class TEST1 extends StatefulWidget {
  @override
  _TEST1State createState() => _TEST1State();
}

class _TEST1State extends State<TEST1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: null,
                        child: Text(
                          'Quit',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.purple),
                        ),
                      ),
                      Text(
                        "Score: $finalScore",
                        style: new TextStyle(fontSize: 22.0),
                      )
                    ],
                  ),
                  Text(
                    "Question ${questionNumber + 1} of ${unit1.questions.length}",
                    style: new TextStyle(fontSize: 22.0),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Expanded(
                child: Text(
                  unit1.questions[questionNumber],
                  style: new TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blueAccent),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.black54),
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (unit1.choices[questionNumber][0] ==
                            unit1.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }

                        updateQuestion();
                      },
                      child: Text(
                        unit1.choices[questionNumber][0],
                        style: new TextStyle(
                            fontSize: 20.0, color: Colors.redAccent),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blueAccent),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.black54),
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (unit1.choices[questionNumber][0] ==
                            unit1.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: Text(
                        unit1.choices[questionNumber][1],
                        style: new TextStyle(
                            fontSize: 20.0, color: Colors.redAccent),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blueAccent),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.black54),
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (unit1.choices[questionNumber][0] ==
                            unit1.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: Text(
                        unit1.choices[questionNumber][2],
                        style: new TextStyle(
                            fontSize: 20.0, color: Colors.redAccent),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blueAccent),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.black54),
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (unit1.choices[questionNumber][0] ==
                            unit1.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: Text(
                        unit1.choices[questionNumber][3],
                        style: new TextStyle(
                            fontSize: 20.0, color: Colors.redAccent),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        if (unit1.choices[questionNumber][0] ==
                            unit1.correctAnswers[questionNumber]) {
                          print(unit1.correctAnswers[questionNumber]);
                        } else if (unit1.choices[questionNumber][1] ==
                            unit1.correctAnswers[questionNumber]) {
                          print(unit1.correctAnswers[questionNumber]);
                        } else if (unit1.choices[questionNumber][2] ==
                            unit1.correctAnswers[questionNumber]) {
                          print(unit1.correctAnswers[questionNumber]);
                        } else if (unit1.choices[questionNumber][3] ==
                            unit1.correctAnswers[questionNumber]) {
                          print(unit1.correctAnswers[questionNumber]);
                        } else {
                          print('null');
                        }
                        return print('object');
                      },
                      child: new Text(
                        "Show Answer",
                        style:
                            new TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              new Padding(padding: EdgeInsets.all(15.0)),
              new Container(
                  alignment: Alignment.bottomCenter,
                  child: new MaterialButton(
                      minWidth: 240.0,
                      height: 30.0,
                      color: Colors.red,
                      onPressed: () {
                        print("jk");
                      },
                      child: new Text(
                        "Quit",
                        style:
                            new TextStyle(fontSize: 18.0, color: Colors.white),
                      ))),
            ],
          ),
        ),
      ),
    );
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == unit1.questions.length - 1) {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => new Summary(
                      score: finalScore,
                    )));
      } else {
        questionNumber++;
      }
    });
  }
}

class Summary extends StatelessWidget {
  final int score;
  Summary({key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: new Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Final Score: $score",
                style: new TextStyle(fontSize: 35.0),
              ),
              new Padding(padding: EdgeInsets.all(30.0)),
              new FlatButton(
                color: Colors.red,
                onPressed: () {
                  questionNumber = 0;
                  finalScore = 0;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Renewable()));
                },
                child: new Text(
                  "Reset Quiz",
                  style: new TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
