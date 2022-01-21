import 'package:core/core.dart';
import 'package:login/app/pages/login_page.dart';

class LoginResolver implements MicroApp {
  @override
  String get appName => 'login';

  @override
  WidgetBuilderRoutes get routes => {
        '/login': (context, args) => const LoginPage(),
      };
}
