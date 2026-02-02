class Insets{
	static const double maxWidth = 1280.0;
}

abstract class AppSize {
  double get padding;
  double get appBarHeight;
}

class LargeInsets extends AppSize {
  @override
  double get padding => 80.0;

  @override
  double get appBarHeight => 64.0;
}

class SmallInsets extends AppSize {
  @override
  double get padding => 16.0;

  @override
  double get appBarHeight => 56.0;
}
