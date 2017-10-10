module Stepic.ListsSpec where

import Test.Hspec
import Stepic.Lists

spec :: Spec
spec = do
           it "simple" $ do
             isPalindrome [1,3,3,1] `shouldBe` True

           it "simple" $ do
             isPalindrome [1] `shouldBe` True

           it "simple" $ do
             isPalindrome "asdffdsa" `shouldBe` True

           it "simple" $ do
             isPalindrome "asdf1fdsa" `shouldBe` True

           it "simple" $ do
             isPalindrome [1,34] `shouldBe` False