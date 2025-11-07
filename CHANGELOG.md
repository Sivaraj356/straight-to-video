# Changelog

## 0.0.3

- Add a rubygem because `bin/importmap pin` cannot possibly work with mediabunny.

## 0.0.2

- Change `canOptimizeVideo` return shape to `{ ok, reason, message }`.
- Remove unused `details` (width/height/duration) from `canOptimizeVideo` results.
- Remove pre-encode size budget check (no more `too-long`).
- Surface underlying error messages via the `message` field.

## 0.0.1

* Initial Release
