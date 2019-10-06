#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Arrow.Objects.ChunkedArray where

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

newtype ChunkedArray = ChunkedArray (ManagedPtr ChunkedArray)
instance GObject ChunkedArray where
instance B.GValue.IsGValue ChunkedArray where
class (GObject o, O.IsDescendantOf ChunkedArray o) => IsChunkedArray o
instance (GObject o, O.IsDescendantOf ChunkedArray o) => IsChunkedArray o
instance O.HasParentTypes ChunkedArray
#if defined(ENABLE_OVERLOADING)
data ChunkedArrayChunkedArrayPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ChunkedArrayEqualMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ChunkedArrayGetChunkMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ChunkedArrayGetChunksMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ChunkedArrayGetLengthMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ChunkedArrayGetNChunksMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ChunkedArrayGetNNullsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ChunkedArrayGetValueDataTypeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ChunkedArrayGetValueTypeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ChunkedArraySliceMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ChunkedArrayToStringMethodInfo
#endif
