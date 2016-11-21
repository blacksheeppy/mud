// Copyright (c) 2016, Jose Segovia. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'lib/mud.dart';

void main() {
  querySelector("#enter").onClick.listen(clickedOnEnter);
}

Environment myEnvironment = new Environment("wood");

clickedOnEnter(e) {
  InputElement input = querySelector("#commands");
  input.style.borderColor = "#55ff55";
  String output = "";
  switch (input.value) {
    case 'left':
      output = "You are going left now";
      break;
    case 'right':
      output = "You are going right now";
      break;
    case 'up':
      output = "You are going up now";
      break;
    case 'down':
      output = "You are going down now";
      break;
    default:
      output = "Use left, rigth, up, down please ...";
  }
  var outputHTML = "<div>${output}</div>";
  querySelector("#output").appendHtml(outputHTML);
  var interaction = myEnvironment.stumbleUpon();
  outputHTML = "<div>${interaction}</div>";
  querySelector("#output").appendHtml(outputHTML);
}






