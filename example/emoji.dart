// Copyright (c) 2015, David Notik. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library emoji.example;

import 'package:emoji/emoji.dart';

main() {
  var text = 'Rock on! :metal:';

  print(replaceWithEmojis(text));

  // Rock on! <img src="https://assets-cdn.github.com/images/icons/emoji/metal.png?v5" class="emoji" />
}
