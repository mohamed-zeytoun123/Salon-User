// ignore_for_file: public_member_api_docs, sort_constructors_first
class ApiRequest {
  final String url;
  final Map<String, dynamic>? body;
  ApiRequest({
    required this.url,
    this.body,
  });
}
