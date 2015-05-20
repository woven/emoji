// Copyright (c) 2015, David Notik. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library emoji.test;

import 'package:test/test.dart';
import 'package:emoji/emoji.dart';

main() {
  group('Parse emoji tests', () {

    test('Simple test 1', () {
      expect(replaceWithEmojis('Super cool: :8ball:'),
      equals('Super cool: <img src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f3b1.png?v5" class="emoji" />'));
    });

    test('Simple test 2', () {
      expect(replaceWithEmojis('Wow! :+1:!'),
      equals('Wow! <img src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f44d.png?v5" class="emoji" />!'));
    });

    test('Consecutive emoji codes', () {
      expect(replaceWithEmojis('Woot! :8ball::+1:'),
      equals('Woot! <img src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f3b1.png?v5" class="emoji" /><img src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f44d.png?v5" class="emoji" />'));
    });

    test('Emoticon with exclamation', () {
      expect(replaceWithEmojis(':)!'),
      equals('<img src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f60a.png?v5" class="emoji" />!'));
    });

    test('Several emoticons, emoji codes and text', () {
      expect(replaceWithEmojis(':metal: :) <3 haha </3 :smile_cat:'),
      equals('<img src="https://assets-cdn.github.com/images/icons/emoji/metal.png?v5" class="emoji" /> <img src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f60a.png?v5" class="emoji" /> <img src="https://assets-cdn.github.com/images/icons/emoji/unicode/2764.png?v5" class="emoji" /> haha <img src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f494.png?v5" class="emoji" /> <img src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f638.png?v5" class="emoji" />'));
    });
  });
}