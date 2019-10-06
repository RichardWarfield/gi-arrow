{-# LANGUAGE PatternSynonyms, ScopedTypeVariables, ViewPatterns #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Constants
    ( 
    pattern VERSION_TAG                     ,
    pattern VERSION_MINOR                   ,
    pattern VERSION_MICRO                   ,
    pattern VERSION_MAJOR                   ,

    ) where

import Data.GI.Base.ShortPrelude
import qualified Data.GI.Base.ShortPrelude as SP
import qualified Data.GI.Base.Overloading as O
import qualified Prelude as P

import qualified Data.GI.Base.Attributes as GI.Attributes
import qualified Data.GI.Base.ManagedPtr as B.ManagedPtr
import qualified Data.GI.Base.GClosure as B.GClosure
import qualified Data.GI.Base.GError as B.GError
import qualified Data.GI.Base.GVariant as B.GVariant
import qualified Data.GI.Base.GValue as B.GValue
import qualified Data.GI.Base.GParamSpec as B.GParamSpec
import qualified Data.GI.Base.CallStack as B.CallStack
import qualified Data.GI.Base.Properties as B.Properties
import qualified Data.GI.Base.Signals as B.Signals
import qualified Control.Monad.IO.Class as MIO
import qualified Data.Text as T
import qualified Data.ByteString.Char8 as B
import qualified Data.Map as Map
import qualified Foreign.Ptr as FP
import qualified GHC.OverloadedLabels as OL


-- | The version tag. Normally, it\'s an empty string. It\'s \"SNAPSHOT\"
-- for snapshot version.
-- 
-- /Since: 0.10.0/
pattern VERSION_TAG = "" :: T.Text

-- | The minor version.
-- 
-- /Since: 0.10.0/
pattern VERSION_MINOR = 14 :: Int32

-- | The micro version.
-- 
-- /Since: 0.10.0/
pattern VERSION_MICRO = 1 :: Int32

-- | The major version.
-- 
-- /Since: 0.10.0/
pattern VERSION_MAJOR = 0 :: Int32


