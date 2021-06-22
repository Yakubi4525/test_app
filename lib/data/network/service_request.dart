import 'package:test_app/models/comment.dart';

class ServiceRequest {
  static Map getBody(Comment comment) {
    if (comment != null) {
      return {
        "postId": comment.postId,
        "id": comment.id,
        "name": comment.name,
        "email": comment.email,
        "body": comment.body
      };
    }
    return null;
  }
}
