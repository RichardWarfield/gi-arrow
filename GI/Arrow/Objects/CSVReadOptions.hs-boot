#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif
module GI.Arrow.Objects.CSVReadOptions where

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

newtype CSVReadOptions = CSVReadOptions (ManagedPtr CSVReadOptions)
instance GObject CSVReadOptions where
instance B.GValue.IsGValue CSVReadOptions where
class (GObject o, O.IsDescendantOf CSVReadOptions o) => IsCSVReadOptions o
instance (GObject o, O.IsDescendantOf CSVReadOptions o) => IsCSVReadOptions o
instance O.HasParentTypes CSVReadOptions
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsAllowNewlinesInValuesPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsAllowNullStringsPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsBlockSizePropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsCheckUtf8PropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsDelimiterPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsEscapeCharacterPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsIgnoreEmptyLinesPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsIsDoubleQuotedPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsIsEscapedPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsIsQuotedPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsNHeaderRowsPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsQuoteCharacterPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsUseThreadsPropertyInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsAddColumnTypeMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsAddFalseValueMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsAddNullValueMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsAddSchemaMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsAddTrueValueMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsGetColumnTypesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsGetFalseValuesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsGetNullValuesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsGetTrueValuesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsSetFalseValuesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsSetNullValuesMethodInfo
#endif
#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsSetTrueValuesMethodInfo
#endif
