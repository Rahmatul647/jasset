// ignore_for_file: public_member_api_docs, sort_constructors_first
// coverage:ignore-file
abstract class Failure {
  final String message;
  Failure({
    required this.message,
  });

  @override
  String toString() => message;

  @override
  bool operator ==(covariant Failure other) {
    if (identical(this, other)) return true;

    return other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}

class ServerFailure extends Failure {
  ServerFailure({String message = 'Server Failure'}) : super(message: message);
}

class CacheFailure extends Failure {
  CacheFailure({String message = 'Cache Failure'}) : super(message: message);
}

class UnverifiedAccountFailure extends Failure {
  UnverifiedAccountFailure({String message = 'UnverifiedAccountFailure'})
      : super(message: message);
  @override
  String toString() {
    return message;
  }
}
