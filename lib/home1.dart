import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:snackbar_app/Calc_bmi.dart';

class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        backgroundColor: Colors.yellow,
      ),
      body: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                bmiresult(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 208, 238, 174),
                foregroundColor: Color.fromARGB(239, 71, 129, 4),
              ),
              child: const Text(
                '1.7M, 60kg',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                bmiresult2(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 208, 238, 174),
                foregroundColor: Color.fromARGB(239, 71, 129, 4),
              ),
              child: const Text(
                '1.7M, 80kg',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  bmiresult(context) {
    print(bmi01().bmi(1.7, 60));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('정상 체중입니다.'),
          ],
        ),
      ),
    );
  }
  bmiresult2(context) {
    print(bmi01().bmi(1.7, 80));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('비만입니다.'),
          ],
        ),
      ),
    );
  }
}
