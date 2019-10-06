{-# LANGUAGE OverloadedStrings #-}
-- | Build time configuration used during code generation.
module GI.Arrow.Config ( overrides ) where

import qualified Data.Text as T
import Data.Text (Text)

-- | Overrides used when generating these bindings.
overrides :: Text
overrides = T.unlines
 [ "namespace Arrow"
 , ""
 , "ignore ObjectFactory"]
