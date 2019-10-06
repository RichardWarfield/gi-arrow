{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.IntegerDataType
    ( 

-- * Exported types
    IntegerDataType(..)                     ,
    IsIntegerDataType                       ,
    toIntegerDataType                       ,
    noIntegerDataType                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveIntegerDataTypeMethod            ,
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
import {-# SOURCE #-} qualified GI.Arrow.Objects.NumericDataType as Arrow.NumericDataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype IntegerDataType = IntegerDataType (ManagedPtr IntegerDataType)
    deriving (Eq)
foreign import ccall "garrow_integer_data_type_get_type"
    c_garrow_integer_data_type_get_type :: IO GType

instance GObject IntegerDataType where
    gobjectType = c_garrow_integer_data_type_get_type
    

-- | Convert 'IntegerDataType' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue IntegerDataType where
    toGValue o = do
        gtype <- c_garrow_integer_data_type_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr IntegerDataType)
        B.ManagedPtr.newObject IntegerDataType ptr
        
    

-- | Type class for types which can be safely cast to `IntegerDataType`, for instance with `toIntegerDataType`.
class (GObject o, O.IsDescendantOf IntegerDataType o) => IsIntegerDataType o
instance (GObject o, O.IsDescendantOf IntegerDataType o) => IsIntegerDataType o

instance O.HasParentTypes IntegerDataType
type instance O.ParentTypes IntegerDataType = '[Arrow.NumericDataType.NumericDataType, Arrow.FixedWidthDataType.FixedWidthDataType, Arrow.DataType.DataType, GObject.Object.Object]

-- | Cast to `IntegerDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toIntegerDataType :: (MonadIO m, IsIntegerDataType o) => o -> m IntegerDataType
toIntegerDataType = liftIO . unsafeCastTo IntegerDataType

-- | A convenience alias for `Nothing` :: `Maybe` `IntegerDataType`.
noIntegerDataType :: Maybe IntegerDataType
noIntegerDataType = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveIntegerDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveIntegerDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveIntegerDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveIntegerDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveIntegerDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveIntegerDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveIntegerDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveIntegerDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveIntegerDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveIntegerDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveIntegerDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveIntegerDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveIntegerDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveIntegerDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveIntegerDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveIntegerDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveIntegerDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveIntegerDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveIntegerDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveIntegerDataTypeMethod "getBitWidth" o = Arrow.FixedWidthDataType.FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveIntegerDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveIntegerDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveIntegerDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveIntegerDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveIntegerDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveIntegerDataTypeMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveIntegerDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveIntegerDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveIntegerDataTypeMethod t IntegerDataType, O.MethodInfo info IntegerDataType p) => OL.IsLabel t (IntegerDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList IntegerDataType
type instance O.AttributeList IntegerDataType = IntegerDataTypeAttributeList
type IntegerDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList IntegerDataType = IntegerDataTypeSignalList
type IntegerDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif


