class RouteName {
  static const String splash = "splash";
  static const String login = "login";
  static const String home = "home";

}

extension Path on String {
  String get path => "/$this";
}
