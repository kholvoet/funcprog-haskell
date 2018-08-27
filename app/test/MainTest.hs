module MainTest where 

import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.HUnit
import Test.HUnit

import MainLib

test1 = 14197824 @=? square 3768
test2 = 201578206334976 @=? square (square 3768) 
test3 = -1 @=? smaller(-1, 0) 
test4 = -1 @=? smaller(0, -1) 
test5 = 1 @=? smaller(1, 1) 
test6 = 3.218696 @=? delta( 4.2, 7, 2.3)
test7 = 201578206334976 @=? quad 3768
test8 = 0 @=? greater(-1, 0) 
test9 = 0 @=? greater(0, -1) 
test10 = -1 @=? greater(-1, -1) 
test11 = 7 / 22 @=? areaCircle (7/22) 
test12 = 22/7 @=? areaCircle 1 
test13 = 0 @=? areaCircle 0 

tests = [
  testGroup "square" [
    testCase "(square 3768)" test1, 
    testCase "square (square 3768)" test2
    ],
  testGroup "smaller" [
    testCase "smaller(-1,0)" test3,
    testCase "smaller(0, -1)" test4,
    testCase "smaller(-1, -1)" test5

    ],
  testGroup "delta" [
    testCase "delta(4.2, 7, 2.3)" test6
    ],
  testGroup "quad" [
    testCase "quad(3768)" test7
    ],    
  testGroup "greater" [
    testCase "greater(-1,0)" test8,
    testCase "greater(0, -1)" test9,
    testCase "greater(1, 1)" test10
    ],
  testGroup "areaCircle" [
    testCase "r 7/22" test11,
    testCase "r 1" test12,
    testCase "r 0" test13   
    ]
  ]

runTests = defaultMain tests
