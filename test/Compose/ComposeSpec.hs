module Compose.ComposeSpec where

import Test.Hspec
import Compose.Compose

spec :: Spec
spec = do
           it "simple" $ do
             compose2 abs (+) 5 (-6) `shouldBe` 1