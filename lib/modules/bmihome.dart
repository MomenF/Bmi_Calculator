import 'dart:math';
import 'package:flutter/material.dart';
import 'bmiresult.dart';

// void main(){
//   runApp(BMI());
// }

class BMI extends StatefulWidget {
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  void initState() {
    super.initState();
  }

  double height = 180.0;

  bool ismale = true;
  double age = 12;

  double weight = 80;

  double result;

  Text degree;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI Calulator'),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            /** Male and feMale Selection**/
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            ismale = true;
                          });
                        },
                        child: Container(
                          //Male Button
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(
                                  'assets/images/male.png',
                                ),
                                height: 70,
                                width: 70,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                  color: ismale ? Colors.white : Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  fontFamily: 'Pacifico',
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ismale ? Colors.green : Colors.grey[200],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            ismale = false;
                          });
                        },
                        child: Container(
                          //Female Button
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/female.png'),
                                width: 80,
                                height: 80,
                              ),
                              Text(
                                'female',
                                style: TextStyle(
                                  color: !ismale
                                      ? Colors.white
                                      : Colors.pinkAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  fontFamily: 'Pacifico',
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:
                                !ismale ? Colors.pinkAccent : Colors.grey[200],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
                /** Height Selection **/
            Expanded(
                child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.teal[200]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '${height.round()}',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'CM',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: height,
                    max: 300,
                    min: 100,
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    },
                  ),
                ],
              ),
            )),
            /** age and weight Selection **/

            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      /** Age Bar **/

                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.lightBlueAccent,
                        ),
                        /** Age Column **/
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${age.toInt()}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (age >= 11 && age < 65) {
                                        age++;
                                      }
                                    });
                                  },
                                  heroTag: 'age++',
                                  backgroundColor: Colors.green,
                                  child: Icon(Icons.add),
                                  mini: true,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (age > 11 && age <= 65) {
                                        age--;
                                      }
                                    });
                                  },
                                  heroTag: 'age--',
                                  backgroundColor: Colors.redAccent,
                                  child: Icon(Icons.remove),
                                  mini: true,
                                ),
                              ],
                            ),
                            Slider(
                              inactiveColor: Colors.green,
                              activeColor: Colors.red,
                              value: age,
                              min: 11,
                              max: 65,
                              divisions: 65,
                              onChanged: (double value) {
                                setState(() {

                                });
                                age = value ;
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    /** Weight Bar **/
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.lightBlueAccent,
                        ),
                        /** Weight Column **/
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Weight',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${weight.toInt()}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (weight >= 50 && weight < 150)
                                        weight++;
                                    });
                                  },
                                  heroTag: 'weight++',
                                  backgroundColor: Colors.green,
                                  child: Icon(Icons.add),
                                  mini: true,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (weight > 50 && weight <= 150)
                                        weight--;
                                    });
                                  },

                                  heroTag: 'weight--',
                                  backgroundColor: Colors.redAccent,
                                  child: Icon(Icons.remove),
                                  mini: true,
                                ),
                              ],
                            ),
                            Slider(
                              activeColor: Colors.red,
                              inactiveColor: Colors.green,
                              value: weight,
                              onChanged: (value){
                                setState(() {
                                  weight = value;
                                });
                              },
                              max: 150,
                              min: 50,
                              divisions: 150,
                            )

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.blueAccent,
              width: double.infinity,
              child: MaterialButton(
                height: 50,
                onPressed: () {
                  result = weight.toInt() / pow(height / 100, 2);

                  if (result >= 18 && result < 25) {
                    degree = Text(
                      'Normal weight',
                      style: TextStyle(
                        color: Colors.green[900],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    );
                  } else if (result >= 25 && result < 30) {
                    degree = Text(
                      'Over Weight',
                      style: TextStyle(
                        color: Colors.orangeAccent,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    );
                  } else if (result >= 30 && result < 35) {
                    degree = Text(
                      'Obesity grade 1',
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    );
                  } else if (result >= 35 && result < 40) {
                    degree = Text(
                      'Obesity grade 2',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    );
                  } else if (result >= 40) {
                    degree = Text(
                      'Obesity grade 3',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    );
                  } else {
                    degree = Text(
                      'Under Weight',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    );
                  }

                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BmiResult(
                        age: age,
                        ismale: ismale,
                        Degree: degree,
                        result: result.round()),
                  ));
                },
                color: Colors.red,
                child: Text(
                  'Calculate',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
