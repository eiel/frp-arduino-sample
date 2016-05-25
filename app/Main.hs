module Main where

import           Arduino.Uno
import           Lib
import           Prelude     (const, putStrLn, ($), (+), (^))

main = do
  putStrLn "generate main.c"
  compileProgram $ do

    -- pin13に対する処理
    blickBasic pin13

    -- シリアルポートへ接続が来た時の処理
    uart =: clock ~> foldpS (\_ state -> state + 1) 0
      ~> mapSMany formatDelta
      ~> flattenS

  putStrLn "finished"

blickBasic pin = digitalOutput pin =: clock ~> toggle

blinkSpeed pin speed = digitalOutput pin =: every speed ~> toggle

eternalHigh pin = digitalOutput pin =: every (1000 ^ 100) ~> mapS (const bitHigh)
eternalLow pin = digitalOutput pin =: every 1 ~> mapS (const bitLow)

formatDelta :: Expression Word -> [Expression [Byte]]
formatDelta delta = [ formatString "delta: "
                    , formatNumber delta
                    , formatString "\r\n"
                    ]




