class bmi01 {
  late double height1;
  late double weight1;

//Function
// BMI=체중(kg)÷신장(m)을 제곱한 값
  double bmi(double height1, double weight1) {
    return weight1/(height1 * height1);
  }
}