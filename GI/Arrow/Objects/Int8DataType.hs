{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.Int8DataType
    ( 

-- * Exported types
    Int8DataType(..)                        ,
    IsInt8DataType                          ,
    toInt8DataType                          ,
    noInt8DataType                          ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveInt8DataTypeMethod               ,
#endif


-- ** new #method:new#

    int8DataTypeNew                         ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.IntegerDataType as Arrow.IntegerDataType
import {-# SOURCE #-} qualified GI.Arrow.Objects.NumericDataType as Arrow.NumericDataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Int8DataType = Int8DataType (ManagedPtr Int8DataType)
    deriving (Eq)
foreign import ccall "garrow_int8_data_type_get_type"
    c_garrow_int8_data_type_get_type :: IO GType

instance GObject Int8DataType where
    gobjectType = c_garrow_int8_data_type_get_type
    

-- | Convert 'Int8DataType' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Int8DataType where
    toGValue o = do
        gtype <- c_garrow_int8_data_type_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Int8DataType)
        B.ManagedPtr.newObject Int8DataType ptr
        
    

-- | Type class for types which can be safely cast to `Int8DataType`, for instance with `toInt8DataType`.
class (GObject o, O.IsDescendantOf Int8DataType o) => IsInt8DataType o
instance (GObject o, O.IsDescendantOf Int8DataType o) => IsInt8DataType o

instance O.HasParentTypes Int8DataType
type instance O.ParentTypes Int8DataType = '[Arrow.IntegerDataType.IntegerDataType, Arrow.NumericDataType.NumericDataType, Arrow.FixedWidthDataType.FixedWidthDataType, Arrow.DataType.DataType, GObject.Object.Object]

-- | Cast to `Int8DataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toInt8DataType :: (MonadIO m, IsInt8DataType o) => o -> m Int8DataType
toInt8DataType = liftIO . unsafeCastTo Int8DataType

-- | A convenience alias for `Nothing` :: `Maybe` `Int8DataType`.
noInt8DataType :: Maybe Int8DataType
noInt8DataType = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveInt8DataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveInt8DataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveInt8DataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveInt8DataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveInt8DataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveInt8DataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveInt8DataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveInt8DataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveInt8DataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveInt8DataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveInt8DataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveInt8DataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveInt8DataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveInt8DataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveInt8DataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveInt8DataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveInt8DataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveInt8DataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveInt8DataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveInt8DataTypeMethod "getBitWidth" o = Arrow.FixedWidthDataType.FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveInt8DataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveInt8DataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveInt8DataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveInt8DataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveInt8DataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveInt8DataTypeMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveInt8DataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveInt8DataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveInt8DataTypeMethod t Int8DataType, O.MethodInfo info Int8DataType p) => OL.IsLabel t (Int8DataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Int8DataType
type instance O.AttributeList Int8DataType = Int8DataTypeAttributeList
type Int8DataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Int8DataType = Int8DataTypeSignalList
type Int8DataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Int8DataType::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Arrow" , name = "Int8DataType" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int8_data_type_new" garrow_int8_data_type_new :: 
    IO (Ptr Int8DataType)

-- | /No description available in the introspection data./
int8DataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Int8DataType
    -- ^ __Returns:__ The newly created 8-bit integer data type.
int8DataTypeNew  = liftIO $ do
    result <- garrow_int8_data_type_new
    checkUnexpectedReturnNULL "int8DataTypeNew" result
    result' <- (wrapObject Int8DataType) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif


