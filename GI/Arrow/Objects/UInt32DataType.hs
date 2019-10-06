{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.UInt32DataType
    ( 

-- * Exported types
    UInt32DataType(..)                      ,
    IsUInt32DataType                        ,
    toUInt32DataType                        ,
    noUInt32DataType                        ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveUInt32DataTypeMethod             ,
#endif


-- ** new #method:new#

    uInt32DataTypeNew                       ,




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
newtype UInt32DataType = UInt32DataType (ManagedPtr UInt32DataType)
    deriving (Eq)
foreign import ccall "garrow_uint32_data_type_get_type"
    c_garrow_uint32_data_type_get_type :: IO GType

instance GObject UInt32DataType where
    gobjectType = c_garrow_uint32_data_type_get_type
    

-- | Convert 'UInt32DataType' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue UInt32DataType where
    toGValue o = do
        gtype <- c_garrow_uint32_data_type_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr UInt32DataType)
        B.ManagedPtr.newObject UInt32DataType ptr
        
    

-- | Type class for types which can be safely cast to `UInt32DataType`, for instance with `toUInt32DataType`.
class (GObject o, O.IsDescendantOf UInt32DataType o) => IsUInt32DataType o
instance (GObject o, O.IsDescendantOf UInt32DataType o) => IsUInt32DataType o

instance O.HasParentTypes UInt32DataType
type instance O.ParentTypes UInt32DataType = '[Arrow.IntegerDataType.IntegerDataType, Arrow.NumericDataType.NumericDataType, Arrow.FixedWidthDataType.FixedWidthDataType, Arrow.DataType.DataType, GObject.Object.Object]

-- | Cast to `UInt32DataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toUInt32DataType :: (MonadIO m, IsUInt32DataType o) => o -> m UInt32DataType
toUInt32DataType = liftIO . unsafeCastTo UInt32DataType

-- | A convenience alias for `Nothing` :: `Maybe` `UInt32DataType`.
noUInt32DataType :: Maybe UInt32DataType
noUInt32DataType = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveUInt32DataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveUInt32DataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUInt32DataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUInt32DataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveUInt32DataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUInt32DataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUInt32DataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUInt32DataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUInt32DataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUInt32DataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUInt32DataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUInt32DataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUInt32DataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUInt32DataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUInt32DataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUInt32DataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUInt32DataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveUInt32DataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUInt32DataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUInt32DataTypeMethod "getBitWidth" o = Arrow.FixedWidthDataType.FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveUInt32DataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUInt32DataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveUInt32DataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUInt32DataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUInt32DataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUInt32DataTypeMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveUInt32DataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUInt32DataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUInt32DataTypeMethod t UInt32DataType, O.MethodInfo info UInt32DataType p) => OL.IsLabel t (UInt32DataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList UInt32DataType
type instance O.AttributeList UInt32DataType = UInt32DataTypeAttributeList
type UInt32DataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList UInt32DataType = UInt32DataTypeSignalList
type UInt32DataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method UInt32DataType::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Arrow" , name = "UInt32DataType" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint32_data_type_new" garrow_uint32_data_type_new :: 
    IO (Ptr UInt32DataType)

-- | /No description available in the introspection data./
uInt32DataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m UInt32DataType
    -- ^ __Returns:__ The newly created 32-bit unsigned integer data type.
uInt32DataTypeNew  = liftIO $ do
    result <- garrow_uint32_data_type_new
    checkUnexpectedReturnNULL "uInt32DataTypeNew" result
    result' <- (wrapObject UInt32DataType) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif


