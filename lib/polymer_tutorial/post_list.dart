import 'dart:html';

import 'package:polymer/polymer.dart';

@CustomTag('post-list')
class PostList extends PolymerElement {
  @published String show = '';
  @observable List posts = toObservable([]);

  PostList.created() : super.created();

  void handleFavorite(Event event, var detail, var sender) {
    var post = sender.templateInstance.model.value;
    this.$['service'].setFavorite(post['uid'], post['favorite']);
  }
}
