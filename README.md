[frp-arduinoを試しました](https://github.com/frp-arduino/frp-arduino)

[IoTLT 広島 Vol.1](http://iotlt.connpass.com/event/29984/)でLT用のネタです。

実行すると main.cが生成される
make uploadでコンパイルしてarduinoへ転送できる

例

```
$ stack build && stack exec haskell-arduino-exe && make upload && cat /dev/cu.usbmodem1411
```
