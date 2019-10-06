#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Arrow.Objects.Time64ArrayBuilder where

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

newtype Time64ArrayBuilder = Time64ArrayBuilder (ManagedPtr Time64ArrayBuilder)
instance GObject Time64ArrayBuilder where
instance B.GValue.IsGValue Time64ArrayBuilder where
class (GObject o, O.IsDescendantOf Time64ArrayBuilder o) => IsTime64ArrayBuilder o
instance (GObject o, O.IsDescendantOf Time64ArrayBuilder o) => IsTime64ArrayBuilder o
instance O.HasParentTypes Time64ArrayBuilder
#if defined(ENABLE_OVERLOADING)
data Time64ArrayBuilderAppendMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data Time64ArrayBuilderAppendNullMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data Time64ArrayBuilderAppendNullsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data Time64ArrayBuilderAppendValueMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data Time64ArrayBuilderAppendValuesMethodInfo
#endif
