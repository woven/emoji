# Changelog

## 1.1.1

- Don't match emoticons if preceded by a word boundary. This helps us avoid frownies in URLs. :/
- Update most recent changelog entry to reflect the addition of more tests.

## 1.1.0

- Introduce `replaceEmojiCodesWithGlyphs()` and `replaceEmoticonsWithEmojiCodes()`.
- The main `replaceWithEmojis()` function now handles emoji codes and common emoticons.
- Added more tests.

## 1.0.3

- Update this CHANGELOG. Agh, lots to track with a public package. :)

## 1.0.2

- Update README to reflect latest usage. Update example boilerplate.

## 1.0.1

- Make replaceWithEmojis() a top-level function. Do away with EmojiUtil class.
- Update homepage in pubspec.

## 1.0.0

- Initial version, with support for GitHub Emojis.
