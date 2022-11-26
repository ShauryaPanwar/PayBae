import 'package:paybae/main.dart';
import 'package:test/test.dart';

void main() {
  test('check if signup is successful', () {
      final payBae = PayBae();
      payBae.signup("panwarshaurya11@gmail.com","123456");
      expect(payBae.x, "Signup Success");
  });
}