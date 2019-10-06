#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Arrow.Objects.FeatherFileReader where

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

newtype FeatherFileReader = FeatherFileReader (ManagedPtr FeatherFileReader)
instance GObject FeatherFileReader where
instance B.GValue.IsGValue FeatherFileReader where
class (GObject o, O.IsDescendantOf FeatherFileReader o) => IsFeatherFileReader o
instance (GObject o, O.IsDescendantOf FeatherFileReader o) => IsFeatherFileReader o
instance O.HasParentTypes FeatherFileReader
#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderFeatherTableReaderPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderGetColumnMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderGetColumnNameMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderGetColumnsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderGetDescriptionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderGetNColumnsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderGetNRowsMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderGetVersionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderHasDescriptionMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderReadMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderReadIndicesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data FeatherFileReaderReadNamesMethodInfo
#endif
