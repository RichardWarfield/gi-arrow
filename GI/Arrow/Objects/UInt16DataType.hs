{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.UInt16DataType
    ( 

-- * Exported types
    UInt16DataType(..)                      ,
    IsUInt16DataType                        ,
    toUInt16DataType                        ,
    noUInt16DataType                        ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveUInt16DataTypeMethod             ,
#endif


-- ** new #method:new#

    uInt16DataTypeNew                       ,




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
newtype UInt16DataType = UInt16DataType (ManagedPtr UInt16DataType)
    deriving (Eq)
foreign import ccall "garrow_uint16_data_type_get_type"
    c_garrow_uint16_data_type_get_type :: IO GType

instance GObject UInt16DataType where
    gobjectType = c_garrow_uint16_data_type_get_type
    

-- | Convert 'UInt16DataType' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue UInt16DataType where
    toGValue o = do
        gtype <- c_garrow_uint16_data_type_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr UInt16DataType)
        B.ManagedPtr.newObject UInt16DataType ptr
        
    

-- | Type class for types which can be safely cast to `UInt16DataType`, for instance with `toUInt16DataType`.
class (GObject o, O.IsDescendantOf UInt16DataType o) => IsUInt16DataType o
instance (GObject o, O.IsDescendantOf UInt16DataType o) => IsUInt16DataType o

instance O.HasParentTypes UInt16DataType
type instance O.ParentTypes UInt16DataType = '[Arrow.IntegerDataType.IntegerDataType, Arrow.NumericDataType.NumericDataType, Arrow.FixedWidthDataType.FixedWidthDataType, Arrow.DataType.DataType, GObject.Object.Object]

-- | Cast to `UInt16DataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toUInt16DataType :: (MonadIO m, IsUInt16DataType o) => o -> m UInt16DataType
toUInt16DataType = liftIO . unsafeCastTo UInt16DataType

-- | A convenience alias for `Nothing` :: `Maybe` `UInt16DataType`.
noUInt16DataType :: Maybe UInt16DataType
noUInt16DataType = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveUInt16DataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveUInt16DataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUInt16DataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUInt16DataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveUInt16DataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUInt16DataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUInt16DataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUInt16DataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUInt16DataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUInt16DataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUInt16DataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUInt16DataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUInt16DataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUInt16DataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUInt16DataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUInt16DataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUInt16DataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveUInt16DataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUInt16DataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUInt16DataTypeMethod "getBitWidth" o = Arrow.FixedWidthDataType.FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveUInt16DataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUInt16DataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveUInt16DataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUInt16DataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUInt16DataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUInt16DataTypeMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveUInt16DataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUInt16DataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUInt16DataTypeMethod t UInt16DataType, O.MethodInfo info UInt16DataType p) => OL.IsLabel t (UInt16DataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList UInt16DataType
type instance O.AttributeList UInt16DataType = UInt16DataTypeAttributeList
type UInt16DataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList UInt16DataType = UInt16DataTypeSignalList
type UInt16DataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method UInt16DataType::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Arrow" , name = "UInt16DataType" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint16_data_type_new" garrow_uint16_data_type_new :: 
    IO (Ptr UInt16DataType)

-- | /No description available in the introspection data./
uInt16DataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m UInt16DataType
    -- ^ __Returns:__ The newly created 16-bit unsigned integer data type.
uInt16DataTypeNew  = liftIO $ do
    result <- garrow_uint16_data_type_new
    checkUnexpectedReturnNULL "uInt16DataTypeNew" result
    result' <- (wrapObject UInt16DataType) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif


