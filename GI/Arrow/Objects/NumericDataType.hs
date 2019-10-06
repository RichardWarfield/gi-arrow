{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.NumericDataType
    ( 

-- * Exported types
    NumericDataType(..)                     ,
    IsNumericDataType                       ,
    toNumericDataType                       ,
    noNumericDataType                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveNumericDataTypeMethod            ,
#endif




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

import {-# SOURCE #-} qualified GI.Arrow.Objects.DataType as Arrow.DataType
import {-# SOURCE #-} qualified GI.Arrow.Objects.FixedWidthDataType as Arrow.FixedWidthDataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype NumericDataType = NumericDataType (ManagedPtr NumericDataType)
    deriving (Eq)
foreign import ccall "garrow_numeric_data_type_get_type"
    c_garrow_numeric_data_type_get_type :: IO GType

instance GObject NumericDataType where
    gobjectType = c_garrow_numeric_data_type_get_type
    

-- | Convert 'NumericDataType' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue NumericDataType where
    toGValue o = do
        gtype <- c_garrow_numeric_data_type_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr NumericDataType)
        B.ManagedPtr.newObject NumericDataType ptr
        
    

-- | Type class for types which can be safely cast to `NumericDataType`, for instance with `toNumericDataType`.
class (GObject o, O.IsDescendantOf NumericDataType o) => IsNumericDataType o
instance (GObject o, O.IsDescendantOf NumericDataType o) => IsNumericDataType o

instance O.HasParentTypes NumericDataType
type instance O.ParentTypes NumericDataType = '[Arrow.FixedWidthDataType.FixedWidthDataType, Arrow.DataType.DataType, GObject.Object.Object]

-- | Cast to `NumericDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toNumericDataType :: (MonadIO m, IsNumericDataType o) => o -> m NumericDataType
toNumericDataType = liftIO . unsafeCastTo NumericDataType

-- | A convenience alias for `Nothing` :: `Maybe` `NumericDataType`.
noNumericDataType :: Maybe NumericDataType
noNumericDataType = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveNumericDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveNumericDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveNumericDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveNumericDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveNumericDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveNumericDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveNumericDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveNumericDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveNumericDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveNumericDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveNumericDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveNumericDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveNumericDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveNumericDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveNumericDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveNumericDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveNumericDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveNumericDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveNumericDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveNumericDataTypeMethod "getBitWidth" o = Arrow.FixedWidthDataType.FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveNumericDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveNumericDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveNumericDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveNumericDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveNumericDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveNumericDataTypeMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveNumericDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveNumericDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveNumericDataTypeMethod t NumericDataType, O.MethodInfo info NumericDataType p) => OL.IsLabel t (NumericDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList NumericDataType
type instance O.AttributeList NumericDataType = NumericDataTypeAttributeList
type NumericDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList NumericDataType = NumericDataTypeSignalList
type NumericDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif


