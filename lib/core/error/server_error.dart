class ServerException implements Exception {
  final String message;
  ServerException(
      {this.message = "Something happens when contact with server"});
}
