

実行すると main.cが生成される
make uploadでコンパイルしてarduinoへ転送できる

例

```
$ stack build && stack exec haskell-arduino-exe && make upload && cat /dev/cu.usbmodem1411
```
