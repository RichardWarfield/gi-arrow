{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.UInt64DataType
    ( 

-- * Exported types
    UInt64DataType(..)                      ,
    IsUInt64DataType                        ,
    toUInt64DataType                        ,
    noUInt64DataType                        ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveUInt64DataTypeMethod             ,
#endif


-- ** new #method:new#

    uInt64DataTypeNew                       ,




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
newtype UInt64DataType = UInt64DataType (ManagedPtr UInt64DataType)
    deriving (Eq)
foreign import ccall "garrow_uint64_data_type_get_type"
    c_garrow_uint64_data_type_get_type :: IO GType

instance GObject UInt64DataType where
    gobjectType = c_garrow_uint64_data_type_get_type
    

-- | Convert 'UInt64DataType' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue UInt64DataType where
    toGValue o = do
        gtype <- c_garrow_uint64_data_type_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr UInt64DataType)
        B.ManagedPtr.newObject UInt64DataType ptr
        
    

-- | Type class for types which can be safely cast to `UInt64DataType`, for instance with `toUInt64DataType`.
class (GObject o, O.IsDescendantOf UInt64DataType o) => IsUInt64DataType o
instance (GObject o, O.IsDescendantOf UInt64DataType o) => IsUInt64DataType o

instance O.HasParentTypes UInt64DataType
type instance O.ParentTypes UInt64DataType = '[Arrow.IntegerDataType.IntegerDataType, Arrow.NumericDataType.NumericDataType, Arrow.FixedWidthDataType.FixedWidthDataType, Arrow.DataType.DataType, GObject.Object.Object]

-- | Cast to `UInt64DataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toUInt64DataType :: (MonadIO m, IsUInt64DataType o) => o -> m UInt64DataType
toUInt64DataType = liftIO . unsafeCastTo UInt64DataType

-- | A convenience alias for `Nothing` :: `Maybe` `UInt64DataType`.
noUInt64DataType :: Maybe UInt64DataType
noUInt64DataType = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveUInt64DataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveUInt64DataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUInt64DataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUInt64DataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveUInt64DataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUInt64DataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUInt64DataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUInt64DataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUInt64DataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUInt64DataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUInt64DataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUInt64DataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUInt64DataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUInt64DataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUInt64DataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUInt64DataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUInt64DataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveUInt64DataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUInt64DataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUInt64DataTypeMethod "getBitWidth" o = Arrow.FixedWidthDataType.FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveUInt64DataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUInt64DataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveUInt64DataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUInt64DataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUInt64DataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUInt64DataTypeMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveUInt64DataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUInt64DataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUInt64DataTypeMethod t UInt64DataType, O.MethodInfo info UInt64DataType p) => OL.IsLabel t (UInt64DataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList UInt64DataType
type instance O.AttributeList UInt64DataType = UInt64DataTypeAttributeList
type UInt64DataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList UInt64DataType = UInt64DataTypeSignalList
type UInt64DataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method UInt64DataType::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Arrow" , name = "UInt64DataType" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint64_data_type_new" garrow_uint64_data_type_new :: 
    IO (Ptr UInt64DataType)

-- | /No description available in the introspection data./
uInt64DataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m UInt64DataType
    -- ^ __Returns:__ The newly created 64-bit unsigned integer data type.
uInt64DataTypeNew  = liftIO $ do
    result <- garrow_uint64_data_type_new
    checkUnexpectedReturnNULL "uInt64DataTypeNew" result
    result' <- (wrapObject UInt64DataType) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif


