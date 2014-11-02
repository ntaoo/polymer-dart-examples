// import 'dart:html';

import 'package:polymer/polymer.dart';

@CustomTag('polymer-tutorial')
class PolymerTutorial extends PolymerElement {
  @observable String selectedTab = 'all';

  PolymerTutorial.created() : super.created();

  ready() {
    super.ready();
//    String selectedTab = 'all';
//    var tabs = document.querySelector('paper-tabs');
//    var list = document.querySelector('post-list');
//
//    tabs.addEventListener('core-select', function() {
//      list.show = tabs.selected;
//    });

  }
}
