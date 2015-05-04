// Copyright (c) 2015, David Notik. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library emoji.test;

import 'package:test/test.dart';
import 'package:emoji/emoji.dart';

main() {
  group('Parse emoji tests', () {

    test('Parse test 1', () {
      expect(EmojiUtil.replaceWithEmojis('Super cool: :8ball:'),
      equals('Super cool: <img src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f3b1.png?v5" class="emoji" />'));
    });

    test('Parse test 2', () {
      expect(EmojiUtil.replaceWithEmojis('Wow! :+1:!'),
      equals('Wow! <img src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f44d.png?v5" class="emoji" />!'));
    });

    test('Parse test 3', () {
      expect(EmojiUtil.replaceWithEmojis('Woot! :8ball::+1:'),
      equals('Woot! <img src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f3b1.png?v5" class="emoji" /><img src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f44d.png?v5" class="emoji" />'));
    });
  });
}