module Stepic.ListsSpec where

import Test.Hspec
import Stepic.Lists

spec :: Spec
spec = describe "Stepic" $ do
        describe "isPalindrome" $ do
           it "simple" $ do
             isPalindrome [1,3,3,1] `shouldBe` True

           it "one" $ do
             isPalindrome [1] `shouldBe` True

           it "string" $ do
             isPalindrome "asdffdsa" `shouldBe` True

           it "middle" $ do
             isPalindrome "asdf1fdsa" `shouldBe` True

           it "false" $ do
             isPalindrome [1,34] `shouldBe` False

        describe "sum3" $ do
           it "simple" $ do
             sum3 [1,2,3] [4,5] [6] `shouldBe` [11,7,3]

           it "simple 2" $ do
             sum3 [1] [4,5,5,6] [0, 6] `shouldBe` [5,11,5,6]

        describe "groupElems" $ do
           it "simple" $ do
             groupElems [1,2] `shouldBe` [[1],[2]]

           it "same els" $ do
             groupElems [1,2,2,2,4,5,5] `shouldBe` [[1],[2,2,2],[4],[5,5]]