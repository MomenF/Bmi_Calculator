import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final int result;
  final bool ismale;
  final double age;
  Text Degree;


  BmiResult({
    this.result,
    this.ismale,
    this.age,
    this.Degree
  });


  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('BMI Result'),
        backgroundColor: Colors.red,

        leading:
        IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.home_filled,color: Colors.red,),
            )),
      ),
      backgroundColor: Colors.black,
      body:Center(
        child: Container(
          height: 160,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.cyan
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Gender : ${ismale? 'male': 'female'}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white

                ),

              ),
              Text('result:$result',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,


                ),),
              Text('Fats Degree : ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black
                ),),
              Degree,
              Text('age : ${age.toInt()}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,


                ),),
            ],
          ),
        ),
      ),
    );


  }
}


