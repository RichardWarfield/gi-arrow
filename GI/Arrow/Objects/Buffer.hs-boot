#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Arrow.Objects.Buffer where

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

newtype Buffer = Buffer (ManagedPtr Buffer)
instance GObject Buffer where
instance B.GValue.IsGValue Buffer where
class (GObject o, O.IsDescendantOf Buffer o) => IsBuffer o
instance (GObject o, O.IsDescendantOf Buffer o) => IsBuffer o
instance O.HasParentTypes Buffer
#if defined(ENABLE_OVERLOADING)
data BufferBufferPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BufferDataPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BufferCopyMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BufferEqualMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BufferEqualNBytesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BufferGetCapacityMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BufferGetDataMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BufferGetMutableDataMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BufferGetParentMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BufferGetSizeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BufferIsMutableMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data BufferSliceMethodInfo
#endif
