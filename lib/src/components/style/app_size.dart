abstract class AppSize {
  double get padding;
}
class LargeInsets extends AppSize {
  @override
  double get padding => 80.0;
}

class SmallInsets extends AppSize {
  @override
  double get padding => 16.0;
}
