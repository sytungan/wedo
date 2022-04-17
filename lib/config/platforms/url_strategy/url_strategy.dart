import 'package:flutter_web_plugins/flutter_web_plugins.dart';

///  * [setHashUrlStrategy], which will use a hash URL strategy instead.
void setPathUrlStrategy() {
  setUrlStrategy(PathUrlStrategy());
}

///  * [setPathUrlStrategy], which will use a path URL strategy instead.
void setHashUrlStrategy() {
  setUrlStrategy(const HashUrlStrategy());
}
