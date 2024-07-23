import 'Calc_bmi.dart';

main() {
  double n1 = 1.74; //키
  double n2 = 68; //몸무게
  print(bmi01().bmi(n1, n2));
  // bmi01.height1=n1;
  // double result_bmi = bmi01().bmi(n1, n2);

  print('키(M)와 몸무게(kg)을 순서대로 입력해주세요.');
  String result = '';

  if (bmi01().bmi(n1, n2) < 0) {
    print('입력에 문제가 있습니다.');
  } else {
    if (bmi01().bmi(n1, n2) < 18.4) {
      result = '저체중입니다.';
    } else if (bmi01().bmi(n1, n2) < 22.9) {
      result = '정상체중입니다.';
    } else if (bmi01().bmi(n1, n2) < 24.9) {
      result = '과체중입니다.';
    } else if (bmi01().bmi(n1, n2) < 29.9) {
      result = '비만입니다.';
    } else {
      result = '과체중입니다.';
    }
    print(result);
  }
}
