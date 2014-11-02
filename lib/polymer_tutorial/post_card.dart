import 'package:polymer/polymer.dart';

/**
 * A Polymer post-card element.
 */
@CustomTag('post-card')
class PostCard extends PolymerElement {
  @PublishedProperty(reflect: true) bool favorite = false;

  /// Constructor used to create instance of PostCard.
  PostCard.created() : super.created() {
  }

  void favoriteTapped(event, detail, sender) {
    this.favorite = !this.favorite;
    this.fire('favorite-tap');
  }
}
