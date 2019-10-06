{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.DenseUnionDataType
    ( 

-- * Exported types
    DenseUnionDataType(..)                  ,
    IsDenseUnionDataType                    ,
    toDenseUnionDataType                    ,
    noDenseUnionDataType                    ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveDenseUnionDataTypeMethod         ,
#endif


-- ** new #method:new#

    denseUnionDataTypeNew                   ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.Field as Arrow.Field
import {-# SOURCE #-} qualified GI.Arrow.Objects.UnionDataType as Arrow.UnionDataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype DenseUnionDataType = DenseUnionDataType (ManagedPtr DenseUnionDataType)
    deriving (Eq)
foreign import ccall "garrow_dense_union_data_type_get_type"
    c_garrow_dense_union_data_type_get_type :: IO GType

instance GObject DenseUnionDataType where
    gobjectType = c_garrow_dense_union_data_type_get_type
    

-- | Convert 'DenseUnionDataType' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue DenseUnionDataType where
    toGValue o = do
        gtype <- c_garrow_dense_union_data_type_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr DenseUnionDataType)
        B.ManagedPtr.newObject DenseUnionDataType ptr
        
    

-- | Type class for types which can be safely cast to `DenseUnionDataType`, for instance with `toDenseUnionDataType`.
class (GObject o, O.IsDescendantOf DenseUnionDataType o) => IsDenseUnionDataType o
instance (GObject o, O.IsDescendantOf DenseUnionDataType o) => IsDenseUnionDataType o

instance O.HasParentTypes DenseUnionDataType
type instance O.ParentTypes DenseUnionDataType = '[Arrow.UnionDataType.UnionDataType, Arrow.DataType.DataType, GObject.Object.Object]

-- | Cast to `DenseUnionDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDenseUnionDataType :: (MonadIO m, IsDenseUnionDataType o) => o -> m DenseUnionDataType
toDenseUnionDataType = liftIO . unsafeCastTo DenseUnionDataType

-- | A convenience alias for `Nothing` :: `Maybe` `DenseUnionDataType`.
noDenseUnionDataType :: Maybe DenseUnionDataType
noDenseUnionDataType = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveDenseUnionDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveDenseUnionDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDenseUnionDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDenseUnionDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveDenseUnionDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDenseUnionDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDenseUnionDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDenseUnionDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDenseUnionDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDenseUnionDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDenseUnionDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDenseUnionDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDenseUnionDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDenseUnionDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDenseUnionDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDenseUnionDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDenseUnionDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveDenseUnionDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDenseUnionDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDenseUnionDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDenseUnionDataTypeMethod "getField" o = Arrow.UnionDataType.UnionDataTypeGetFieldMethodInfo
    ResolveDenseUnionDataTypeMethod "getFields" o = Arrow.UnionDataType.UnionDataTypeGetFieldsMethodInfo
    ResolveDenseUnionDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveDenseUnionDataTypeMethod "getNFields" o = Arrow.UnionDataType.UnionDataTypeGetNFieldsMethodInfo
    ResolveDenseUnionDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDenseUnionDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDenseUnionDataTypeMethod "getTypeCodes" o = Arrow.UnionDataType.UnionDataTypeGetTypeCodesMethodInfo
    ResolveDenseUnionDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDenseUnionDataTypeMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveDenseUnionDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDenseUnionDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDenseUnionDataTypeMethod t DenseUnionDataType, O.MethodInfo info DenseUnionDataType p) => OL.IsLabel t (DenseUnionDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList DenseUnionDataType
type instance O.AttributeList DenseUnionDataType = DenseUnionDataTypeAttributeList
type DenseUnionDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList DenseUnionDataType = DenseUnionDataTypeSignalList
type DenseUnionDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method DenseUnionDataType::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "fields"
--           , argType =
--               TGList (TInterface Name { namespace = "Arrow" , name = "Field" })
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The fields of the union."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "type_codes"
--           , argType = TCArray False (-1) 2 (TBasicType TUInt8)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The codes to specify each field."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_type_codes"
--           , argType = TBasicType TUInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The number of type codes."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: [ Arg
--              { argCName = "n_type_codes"
--              , argType = TBasicType TUInt64
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "The number of type codes."
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Arrow" , name = "DenseUnionDataType" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_dense_union_data_type_new" garrow_dense_union_data_type_new :: 
    Ptr (GList (Ptr Arrow.Field.Field)) ->  -- fields : TGList (TInterface (Name {namespace = "Arrow", name = "Field"}))
    Ptr Word8 ->                            -- type_codes : TCArray False (-1) 2 (TBasicType TUInt8)
    Word64 ->                               -- n_type_codes : TBasicType TUInt64
    IO (Ptr DenseUnionDataType)

-- | /No description available in the introspection data./
denseUnionDataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Field.IsField a) =>
    [a]
    -- ^ /@fields@/: The fields of the union.
    -> ByteString
    -- ^ /@typeCodes@/: The codes to specify each field.
    -> m DenseUnionDataType
    -- ^ __Returns:__ The newly created dense union data type.
denseUnionDataTypeNew fields typeCodes = liftIO $ do
    let nTypeCodes = fromIntegral $ B.length typeCodes
    fields' <- mapM unsafeManagedPtrCastPtr fields
    fields'' <- packGList fields'
    typeCodes' <- packByteString typeCodes
    result <- garrow_dense_union_data_type_new fields'' typeCodes' nTypeCodes
    checkUnexpectedReturnNULL "denseUnionDataTypeNew" result
    result' <- (wrapObject DenseUnionDataType) result
    mapM_ touchManagedPtr fields
    g_list_free fields''
    freeMem typeCodes'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif


