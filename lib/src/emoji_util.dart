// Copyright (c) 2015, David Notik. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library emoji.util;

import '../data/emoji.dart';

/// Returns the given text with known emoji names replaced with a corresponding glyph.
String replaceWithEmojis(String text) {
  var pattern = emojiNameToUrl.keys.join('|').replaceAll('+', r'\+');

  return text.replaceAllMapped(new RegExp(':($pattern):'), (Match m) => _toGlyph(m.group(1)));
}

_toGlyph(String name) => '<img src="${emojiNameToUrl[name]}" class="emoji" />';