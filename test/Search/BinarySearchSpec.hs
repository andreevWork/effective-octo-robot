module Search.BinarySearchSpec where

import Test.Hspec
import Search.BinarySearch

spec :: Spec
spec = do
           it "simple" $ do
             searchV [1,2,3,4,5] 2 `shouldBe` Just 1

           it "not el. bigger" $ do
             searchV [1,2,3,4,5] 10 `shouldBe` Nothing

           it "not el. lower" $ do
             searchV [1,2,3,4,5] 0 `shouldBe` Nothing

           it "same els" $ do
             searchV [1,1,1,1,2,2,2,2,3,3,3,10] 10 `shouldBe` Just 11

           it "big" $ do
             searchV [1,3..9999] 15 `shouldBe` Just 7