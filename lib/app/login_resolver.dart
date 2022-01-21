import 'package:core/core.dart';
import 'pages/login_page.dart';

class LoginResolver implements MicroApp {
  @override
  String get appName => 'login';

  @override
  WidgetBuilderRoutes get routes => {
        '/login': (context, args) => const LoginPage(),
      };
}
