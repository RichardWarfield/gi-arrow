#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Arrow.Objects.Array where

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

newtype Array = Array (ManagedPtr Array)
instance GObject Array where
instance B.GValue.IsGValue Array where
class (GObject o, O.IsDescendantOf Array o) => IsArray o
instance (GObject o, O.IsDescendantOf Array o) => IsArray o
instance O.HasParentTypes Array
#if defined(ENABLE_OVERLOADING)
data ArrayArrayPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ArrayCastMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ArrayCountMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ArrayCountValuesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ArrayDictionaryEncodeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ArrayEqualMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ArrayEqualApproxMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ArrayEqualRangeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ArrayGetLengthMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ArrayGetNNullsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ArrayGetNullBitmapMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ArrayGetOffsetMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ArrayGetValueDataTypeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ArrayGetValueTypeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ArrayIsNullMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ArrayIsValidMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ArraySliceMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ArrayTakeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ArrayToStringMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data ArrayUniqueMethodInfo
#endif
