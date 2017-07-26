
# Redirect Checker

---


# Usage

```
sh ./checker.sh
NG: http://store.apple.com/ -> https://www.apple.com/ != http://www.apple.com/
OK: http://store.apple.com/ -> https://www.apple.com/
NG: http://ja-jp.facebook.com/ -> https://www.facebook.com/ != http://www.facebook.com/
NG: http://ja-jp.facebook.com/aaa -> https://www.facebook.com/aaa != https://www.facebook.com/bbb
OK: http://ja-jp.facebook.com/ccc -> https://www.facebook.com/ccc
```
