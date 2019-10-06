{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.DecimalDataType
    ( 

-- * Exported types
    DecimalDataType(..)                     ,
    IsDecimalDataType                       ,
    toDecimalDataType                       ,
    noDecimalDataType                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveDecimalDataTypeMethod            ,
#endif


-- ** getPrecision #method:getPrecision#

#if defined(ENABLE_OVERLOADING)
    DecimalDataTypeGetPrecisionMethodInfo   ,
#endif
    decimalDataTypeGetPrecision             ,


-- ** getScale #method:getScale#

#if defined(ENABLE_OVERLOADING)
    DecimalDataTypeGetScaleMethodInfo       ,
#endif
    decimalDataTypeGetScale                 ,


-- ** new #method:new#

    decimalDataTypeNew                      ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.FixedSizeBinaryDataType as Arrow.FixedSizeBinaryDataType
import {-# SOURCE #-} qualified GI.Arrow.Objects.FixedWidthDataType as Arrow.FixedWidthDataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype DecimalDataType = DecimalDataType (ManagedPtr DecimalDataType)
    deriving (Eq)
foreign import ccall "garrow_decimal_data_type_get_type"
    c_garrow_decimal_data_type_get_type :: IO GType

instance GObject DecimalDataType where
    gobjectType = c_garrow_decimal_data_type_get_type
    

-- | Convert 'DecimalDataType' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue DecimalDataType where
    toGValue o = do
        gtype <- c_garrow_decimal_data_type_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr DecimalDataType)
        B.ManagedPtr.newObject DecimalDataType ptr
        
    

-- | Type class for types which can be safely cast to `DecimalDataType`, for instance with `toDecimalDataType`.
class (GObject o, O.IsDescendantOf DecimalDataType o) => IsDecimalDataType o
instance (GObject o, O.IsDescendantOf DecimalDataType o) => IsDecimalDataType o

instance O.HasParentTypes DecimalDataType
type instance O.ParentTypes DecimalDataType = '[Arrow.FixedSizeBinaryDataType.FixedSizeBinaryDataType, Arrow.FixedWidthDataType.FixedWidthDataType, Arrow.DataType.DataType, GObject.Object.Object]

-- | Cast to `DecimalDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDecimalDataType :: (MonadIO m, IsDecimalDataType o) => o -> m DecimalDataType
toDecimalDataType = liftIO . unsafeCastTo DecimalDataType

-- | A convenience alias for `Nothing` :: `Maybe` `DecimalDataType`.
noDecimalDataType :: Maybe DecimalDataType
noDecimalDataType = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveDecimalDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveDecimalDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDecimalDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDecimalDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveDecimalDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDecimalDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDecimalDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDecimalDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDecimalDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDecimalDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDecimalDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDecimalDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDecimalDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDecimalDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDecimalDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDecimalDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDecimalDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveDecimalDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDecimalDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDecimalDataTypeMethod "getBitWidth" o = Arrow.FixedWidthDataType.FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveDecimalDataTypeMethod "getByteWidth" o = Arrow.FixedSizeBinaryDataType.FixedSizeBinaryDataTypeGetByteWidthMethodInfo
    ResolveDecimalDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDecimalDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveDecimalDataTypeMethod "getPrecision" o = DecimalDataTypeGetPrecisionMethodInfo
    ResolveDecimalDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDecimalDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDecimalDataTypeMethod "getScale" o = DecimalDataTypeGetScaleMethodInfo
    ResolveDecimalDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDecimalDataTypeMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveDecimalDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDecimalDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDecimalDataTypeMethod t DecimalDataType, O.MethodInfo info DecimalDataType p) => OL.IsLabel t (DecimalDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList DecimalDataType
type instance O.AttributeList DecimalDataType = DecimalDataTypeAttributeList
type DecimalDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList DecimalDataType = DecimalDataTypeSignalList
type DecimalDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method DecimalDataType::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "precision"
--           , argType = TBasicType TInt32
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The precision of decimal data."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "scale"
--           , argType = TBasicType TInt32
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The scale of decimal data."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Arrow" , name = "DecimalDataType" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal_data_type_new" garrow_decimal_data_type_new :: 
    Int32 ->                                -- precision : TBasicType TInt32
    Int32 ->                                -- scale : TBasicType TInt32
    IO (Ptr DecimalDataType)

{-# DEPRECATED decimalDataTypeNew ["(Since version 0.12.0)","","  Use 'GI.Arrow.Objects.Decimal128DataType.decimal128DataTypeNew' instead."] #-}
-- | /No description available in the introspection data./
-- 
-- /Since: 0.10.0/
decimalDataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Int32
    -- ^ /@precision@/: The precision of decimal data.
    -> Int32
    -- ^ /@scale@/: The scale of decimal data.
    -> m DecimalDataType
    -- ^ __Returns:__ The newly created decimal data type.
decimalDataTypeNew precision scale = liftIO $ do
    result <- garrow_decimal_data_type_new precision scale
    checkUnexpectedReturnNULL "decimalDataTypeNew" result
    result' <- (wrapObject DecimalDataType) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method DecimalDataType::get_precision
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decimal_data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "DecimalDataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The #GArrowDecimalDataType."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt32)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal_data_type_get_precision" garrow_decimal_data_type_get_precision :: 
    Ptr DecimalDataType ->                  -- decimal_data_type : TInterface (Name {namespace = "Arrow", name = "DecimalDataType"})
    IO Int32

-- | /No description available in the introspection data./
-- 
-- /Since: 0.10.0/
decimalDataTypeGetPrecision ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimalDataType a) =>
    a
    -- ^ /@decimalDataType@/: The t'GI.Arrow.Objects.DecimalDataType.DecimalDataType'.
    -> m Int32
    -- ^ __Returns:__ The precision of the decimal data type.
decimalDataTypeGetPrecision decimalDataType = liftIO $ do
    decimalDataType' <- unsafeManagedPtrCastPtr decimalDataType
    result <- garrow_decimal_data_type_get_precision decimalDataType'
    touchManagedPtr decimalDataType
    return result

#if defined(ENABLE_OVERLOADING)
data DecimalDataTypeGetPrecisionMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsDecimalDataType a) => O.MethodInfo DecimalDataTypeGetPrecisionMethodInfo a signature where
    overloadedMethod = decimalDataTypeGetPrecision

#endif

-- method DecimalDataType::get_scale
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decimal_data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "DecimalDataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The #GArrowDecimalDataType."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TInt32)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal_data_type_get_scale" garrow_decimal_data_type_get_scale :: 
    Ptr DecimalDataType ->                  -- decimal_data_type : TInterface (Name {namespace = "Arrow", name = "DecimalDataType"})
    IO Int32

-- | /No description available in the introspection data./
-- 
-- /Since: 0.10.0/
decimalDataTypeGetScale ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimalDataType a) =>
    a
    -- ^ /@decimalDataType@/: The t'GI.Arrow.Objects.DecimalDataType.DecimalDataType'.
    -> m Int32
    -- ^ __Returns:__ The scale of the decimal data type.
decimalDataTypeGetScale decimalDataType = liftIO $ do
    decimalDataType' <- unsafeManagedPtrCastPtr decimalDataType
    result <- garrow_decimal_data_type_get_scale decimalDataType'
    touchManagedPtr decimalDataType
    return result

#if defined(ENABLE_OVERLOADING)
data DecimalDataTypeGetScaleMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsDecimalDataType a) => O.MethodInfo DecimalDataTypeGetScaleMethodInfo a signature where
    overloadedMethod = decimalDataTypeGetScale

#endif


