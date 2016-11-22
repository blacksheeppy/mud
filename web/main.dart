// Copyright (c) 2016, Jose Segovia. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

import 'lib/mud.dart';

int x = 0,
    y = 0;

void main() {
  querySelector("#enter").onClick.listen(clickedOnEnter);
  updateCoordinates(0, 0);
}

Environment myEnvironment = new Environment("wood");

clickedOnEnter(e) {
  InputElement input = querySelector("#commands");
  input.style.borderColor = "#55ff55";
  String output = "";
  switch (input.value) {
    case 'left':
      updateCoordinates(-1, 0);
      output = "You are going left now";
      break;
    case 'right':
      updateCoordinates(1, 0);
      output = "You are going right now";
      break;
    case 'up':
      updateCoordinates(0, -1);
      output = "You are going up now";
      break;
    case 'down':
      updateCoordinates(0, 1);
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

void updateCoordinates(int rel_x, int rel_y) {
  x += rel_x;
  y += rel_y;
  querySelector("#coordinates").innerHtml = "Place : $x , $y";
}