module AboutTime (..) where

import ElmTest exposing (..)
import TestHelpers exposing (..)
import Time


testSuite =
  suite
    "About Time"
    [ test
        "time is just a Float"
        (assertEqual 123.45 123.45)
    , test
        "a constant exists for hour"
        (assertEqual (Time.hour) (1 * Time.hour))
    , test
        "and minute"
        (assertEqual (Time.minute) (1 * Time.minute))
    , test
        "and second"
        (assertEqual (Time.second) (1 * Time.second))
    , test
        "and millisecond"
        (assertEqual (Time.millisecond) (1 * Time.millisecond))
    , test
        "helpers exist to convert back to Floats"
        (assertEqual 1 (Time.inSeconds 1000))
    ]
