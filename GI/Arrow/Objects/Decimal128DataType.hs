{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.Decimal128DataType
    ( 

-- * Exported types
    Decimal128DataType(..)                  ,
    IsDecimal128DataType                    ,
    toDecimal128DataType                    ,
    noDecimal128DataType                    ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveDecimal128DataTypeMethod         ,
#endif


-- ** new #method:new#

    decimal128DataTypeNew                   ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.DecimalDataType as Arrow.DecimalDataType
import {-# SOURCE #-} qualified GI.Arrow.Objects.FixedSizeBinaryDataType as Arrow.FixedSizeBinaryDataType
import {-# SOURCE #-} qualified GI.Arrow.Objects.FixedWidthDataType as Arrow.FixedWidthDataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Decimal128DataType = Decimal128DataType (ManagedPtr Decimal128DataType)
    deriving (Eq)
foreign import ccall "garrow_decimal128_data_type_get_type"
    c_garrow_decimal128_data_type_get_type :: IO GType

instance GObject Decimal128DataType where
    gobjectType = c_garrow_decimal128_data_type_get_type
    

-- | Convert 'Decimal128DataType' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Decimal128DataType where
    toGValue o = do
        gtype <- c_garrow_decimal128_data_type_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Decimal128DataType)
        B.ManagedPtr.newObject Decimal128DataType ptr
        
    

-- | Type class for types which can be safely cast to `Decimal128DataType`, for instance with `toDecimal128DataType`.
class (GObject o, O.IsDescendantOf Decimal128DataType o) => IsDecimal128DataType o
instance (GObject o, O.IsDescendantOf Decimal128DataType o) => IsDecimal128DataType o

instance O.HasParentTypes Decimal128DataType
type instance O.ParentTypes Decimal128DataType = '[Arrow.DecimalDataType.DecimalDataType, Arrow.FixedSizeBinaryDataType.FixedSizeBinaryDataType, Arrow.FixedWidthDataType.FixedWidthDataType, Arrow.DataType.DataType, GObject.Object.Object]

-- | Cast to `Decimal128DataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDecimal128DataType :: (MonadIO m, IsDecimal128DataType o) => o -> m Decimal128DataType
toDecimal128DataType = liftIO . unsafeCastTo Decimal128DataType

-- | A convenience alias for `Nothing` :: `Maybe` `Decimal128DataType`.
noDecimal128DataType :: Maybe Decimal128DataType
noDecimal128DataType = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveDecimal128DataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveDecimal128DataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDecimal128DataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDecimal128DataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveDecimal128DataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDecimal128DataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDecimal128DataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDecimal128DataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDecimal128DataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDecimal128DataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDecimal128DataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDecimal128DataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDecimal128DataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDecimal128DataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDecimal128DataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDecimal128DataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDecimal128DataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveDecimal128DataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDecimal128DataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDecimal128DataTypeMethod "getBitWidth" o = Arrow.FixedWidthDataType.FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveDecimal128DataTypeMethod "getByteWidth" o = Arrow.FixedSizeBinaryDataType.FixedSizeBinaryDataTypeGetByteWidthMethodInfo
    ResolveDecimal128DataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDecimal128DataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveDecimal128DataTypeMethod "getPrecision" o = Arrow.DecimalDataType.DecimalDataTypeGetPrecisionMethodInfo
    ResolveDecimal128DataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDecimal128DataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDecimal128DataTypeMethod "getScale" o = Arrow.DecimalDataType.DecimalDataTypeGetScaleMethodInfo
    ResolveDecimal128DataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDecimal128DataTypeMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveDecimal128DataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDecimal128DataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDecimal128DataTypeMethod t Decimal128DataType, O.MethodInfo info Decimal128DataType p) => OL.IsLabel t (Decimal128DataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Decimal128DataType
type instance O.AttributeList Decimal128DataType = Decimal128DataTypeAttributeList
type Decimal128DataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Decimal128DataType = Decimal128DataTypeSignalList
type Decimal128DataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Decimal128DataType::new
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
--                  Name { namespace = "Arrow" , name = "Decimal128DataType" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_data_type_new" garrow_decimal128_data_type_new :: 
    Int32 ->                                -- precision : TBasicType TInt32
    Int32 ->                                -- scale : TBasicType TInt32
    IO (Ptr Decimal128DataType)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
decimal128DataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Int32
    -- ^ /@precision@/: The precision of decimal data.
    -> Int32
    -- ^ /@scale@/: The scale of decimal data.
    -> m Decimal128DataType
    -- ^ __Returns:__ The newly created 128-bit decimal data type.
decimal128DataTypeNew precision scale = liftIO $ do
    result <- garrow_decimal128_data_type_new precision scale
    checkUnexpectedReturnNULL "decimal128DataTypeNew" result
    result' <- (wrapObject Decimal128DataType) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif


