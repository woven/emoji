# Emoji

A Dart library for incorporating emojis into your application.

The initial version supports the popular GitHub Emojis: http://www.emoji-cheat-sheet.com/

## Usage

A simple usage example:

```dart
import 'package:emoji/emoji.dart';

main() {
  var text = 'Rock on! :metal:';

  print(replaceWithEmojis(text));

  // Rock on! <img src="https://assets-cdn.github.com/images/icons/emoji/metal.png?v5" class="emoji" />
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://github.com/woven/emoji/issues