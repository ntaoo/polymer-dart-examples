import 'dart:html';
import 'dart:convert';
import 'package:polymer/polymer.dart';

/**
 * A Polymer post-service element.
 */
@CustomTag('post-service')

class PostService extends PolymerElement {
  @published List posts = toObservable([]);

  /// Constructor used to create instance of PostService.
  PostService.created() : super.created() {
    HttpRequest.getString('http://localhost:8080/api/posts.json')
        .then((String fileContents) {
          this.posts = toObservable(JSON.decode(fileContents));
        })
        .catchError((Error error) {
          print(error.toString());
        });
  }

//  void handlePostsResponse(event, detail, target) {
//    print(this.$['ajax'].response);
//    this.posts = this.$['ajax'].response.slice(0);
//  }

  /**
   * Update the service with the current favorite value.
   * (Two-way data binding updates the favorite value
   * stored locally.) If this was a real service, this
   * method would do something useful.
   *
   * @method setFavorite
   * @param uid {Number} Unique ID for post.
   * @param isFavorite {Boolean} True if the user marked this post as a favorite.
   */
  void setFavorite(int uid, bool isFavorite) {
    // no service backend, just log the change
    print('Favorite changed: ' + uid.toString() + ", now: " + isFavorite.toString());
  }
}
