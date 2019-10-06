#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Arrow.Objects.Table where

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

newtype Table = Table (ManagedPtr Table)
instance GObject Table where
instance B.GValue.IsGValue Table where
class (GObject o, O.IsDescendantOf Table o) => IsTable o
instance (GObject o, O.IsDescendantOf Table o) => IsTable o
instance O.HasParentTypes Table
#if defined(ENABLE_OVERLOADING)
data TableTablePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableAddColumnMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableConcatenateMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableEqualMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableGetColumnMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableGetNColumnsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableGetNRowsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableGetSchemaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableRemoveColumnMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableReplaceColumnMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableSliceMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data TableToStringMethodInfo
#endif
