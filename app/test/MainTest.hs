module MainTest where 

import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.HUnit
import Test.HUnit


test1  = "a" @=? "a"

-- convenient whilst in ghci
tests = [ testGroup "a"  [ testCase "test1" test1 ]]
runTests = defaultMain tests
