// Copyright (c) 2015, David Notik. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library emoji.util;

import '../data/emoji.dart';
import '../data/emoticons.dart';

/// Emojifies and returns the given text.
///
/// We first replace known emoticons with corresponding emoji codes,
/// then replace all known emoji codes with corresponding glyphs.
String replaceWithEmojis(String text) => replaceEmojiCodesWithGlyphs(replaceEmoticonsWithEmojiCodes(text));

/// Replaces known emoticons with corresponding emoji codes.
String replaceEmoticonsWithEmojiCodes(String text) {
  var emoticonPattern = emoticonToEmojiCode.keys.map(escapeRegex).join('|');
  return text.replaceAllMapped(new RegExp('\\B($emoticonPattern)'), (Match m) => _toEmojiCode(m.group(1)));
}

/// Replaces known emoji codes with corresponding glyphs.
String replaceEmojiCodesWithGlyphs(String text) {
  var emojiPattern = emojiCodeToUrl.keys.join('|').replaceAll('+', r'\+');
  return text.replaceAllMapped(new RegExp(':($emojiPattern):'), (Match m) => _toGlyph(m.group(1)));
}

_toEmojiCode(String emoticon) => ':${emoticonToEmojiCode[emoticon]}:';

_toGlyph(String code) => '<img src="${emojiCodeToUrl[code]}" class="emoji" />';

/// From the PatternCharacter rule here:
/// http://ecma-international.org/ecma-262/5.1/#sec-15.10
final _specialChars = new RegExp(r'([\\\^\$\.\|\+\[\]\(\)\{\}\/\*])');

/// Escapes special regex characters in [str] so that it can be used as a
/// literal match inside of a [RegExp].
///
/// The special characters are: \ ^ $ . | + [ ] ( ) { }
/// as defined here: http://ecma-international.org/ecma-262/5.1/#sec-15.10
String escapeRegex(String str) => str.splitMapJoin(_specialChars,
  onMatch: (Match m) => '\\${m.group(0)}',
  onNonMatch: (s) => s);