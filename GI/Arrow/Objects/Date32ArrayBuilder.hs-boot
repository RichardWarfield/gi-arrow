#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Arrow.Objects.Date32ArrayBuilder where

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

newtype Date32ArrayBuilder = Date32ArrayBuilder (ManagedPtr Date32ArrayBuilder)
instance GObject Date32ArrayBuilder where
instance B.GValue.IsGValue Date32ArrayBuilder where
class (GObject o, O.IsDescendantOf Date32ArrayBuilder o) => IsDate32ArrayBuilder o
instance (GObject o, O.IsDescendantOf Date32ArrayBuilder o) => IsDate32ArrayBuilder o
instance O.HasParentTypes Date32ArrayBuilder
#if defined(ENABLE_OVERLOADING)
data Date32ArrayBuilderAppendMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data Date32ArrayBuilderAppendNullMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data Date32ArrayBuilderAppendNullsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data Date32ArrayBuilderAppendValueMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data Date32ArrayBuilderAppendValuesMethodInfo
#endif
