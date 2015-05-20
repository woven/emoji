# Emoji

A Dart library for incorporating emojis into your application.

Supports the popular [GitHub Emoji][1] and common emoticons like `<3` and `:)`. 

## Usage

A simple usage example:

```dart
import 'package:emoji/emoji.dart';

main() {
  var text = 'Rock on! <3 :metal:';

  print(replaceWithEmojis(text));

  // Rock on! <img src="https://assets-cdn.github.com/images/icons/emoji/unicode/2764.png?v5" class="emoji" /> <img src="https://assets-cdn.github.com/images/icons/emoji/metal.png?v5" class="emoji" />
  
  print(replaceEmoticonsWithEmojiCodes(text));

  // Rock on! :heart: :metal:
  
  print(replaceEmojiCodesWithGlyphs(text));

  // Rock on! <3 <img src="https://assets-cdn.github.com/images/icons/emoji/metal.png?v5" class="emoji" />
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][2].

[1]: http://www.emoji-cheat-sheet.com
[2]: http://github.com/woven/emoji/issues 
