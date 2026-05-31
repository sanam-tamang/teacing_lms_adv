sealed class Failure {}

class InternetFailure extends Failure {
  @override
  String toString() {
    return "No internet connect";
  }
}

class SomethingWentWrongFailure implements Failure {
  @override
  String toString() {
    return "Something went wrong failure";
  }
}
