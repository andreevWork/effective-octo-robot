module Sort.MergeSortSpec where

import Test.Hspec
import Sort.MergeSort

spec :: Spec
spec = do
           it "simple" $ do
             sortV [1,5,4,3,2] `shouldBe` [1,2,3,4,5]

           it "same elements" $ do
             sortV [1,2,2,1,0,5] `shouldBe` [0,1,1,2,2,5]

           it "one element" $ do
             sortV [1] `shouldBe` [1]

           it "negative" $ do
             sortV [-1,0,5,-20] `shouldBe` [-20,-1,0,5]