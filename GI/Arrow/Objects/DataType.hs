{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.DataType
    ( 

-- * Exported types
    DataType(..)                            ,
    IsDataType                              ,
    toDataType                              ,
    noDataType                              ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveDataTypeMethod                   ,
#endif


-- ** equal #method:equal#

#if defined(ENABLE_OVERLOADING)
    DataTypeEqualMethodInfo                 ,
#endif
    dataTypeEqual                           ,


-- ** getId #method:getId#

#if defined(ENABLE_OVERLOADING)
    DataTypeGetIdMethodInfo                 ,
#endif
    dataTypeGetId                           ,


-- ** toString #method:toString#

#if defined(ENABLE_OVERLOADING)
    DataTypeToStringMethodInfo              ,
#endif
    dataTypeToString                        ,




 -- * Properties
-- ** dataType #attr:dataType#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    DataTypeDataTypePropertyInfo            ,
#endif
    constructDataTypeDataType               ,
#if defined(ENABLE_OVERLOADING)
    dataTypeDataType                        ,
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

import {-# SOURCE #-} qualified GI.Arrow.Enums as Arrow.Enums
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype DataType = DataType (ManagedPtr DataType)
    deriving (Eq)
foreign import ccall "garrow_data_type_get_type"
    c_garrow_data_type_get_type :: IO GType

instance GObject DataType where
    gobjectType = c_garrow_data_type_get_type
    

-- | Convert 'DataType' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue DataType where
    toGValue o = do
        gtype <- c_garrow_data_type_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr DataType)
        B.ManagedPtr.newObject DataType ptr
        
    

-- | Type class for types which can be safely cast to `DataType`, for instance with `toDataType`.
class (GObject o, O.IsDescendantOf DataType o) => IsDataType o
instance (GObject o, O.IsDescendantOf DataType o) => IsDataType o

instance O.HasParentTypes DataType
type instance O.ParentTypes DataType = '[GObject.Object.Object]

-- | Cast to `DataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDataType :: (MonadIO m, IsDataType o) => o -> m DataType
toDataType = liftIO . unsafeCastTo DataType

-- | A convenience alias for `Nothing` :: `Maybe` `DataType`.
noDataType :: Maybe DataType
noDataType = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDataTypeMethod "equal" o = DataTypeEqualMethodInfo
    ResolveDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDataTypeMethod "toString" o = DataTypeToStringMethodInfo
    ResolveDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDataTypeMethod "getId" o = DataTypeGetIdMethodInfo
    ResolveDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDataTypeMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDataTypeMethod t DataType, O.MethodInfo info DataType p) => OL.IsLabel t (DataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "data-type"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a `GValueConstruct` with valid value for the “@data-type@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructDataTypeDataType :: (IsDataType o, MIO.MonadIO m) => Ptr () -> m (GValueConstruct o)
constructDataTypeDataType val = MIO.liftIO $ B.Properties.constructObjectPropertyPtr "data-type" val

#if defined(ENABLE_OVERLOADING)
data DataTypeDataTypePropertyInfo
instance AttrInfo DataTypeDataTypePropertyInfo where
    type AttrAllowedOps DataTypeDataTypePropertyInfo = '[ 'AttrConstruct]
    type AttrBaseTypeConstraint DataTypeDataTypePropertyInfo = IsDataType
    type AttrSetTypeConstraint DataTypeDataTypePropertyInfo = (~) (Ptr ())
    type AttrTransferTypeConstraint DataTypeDataTypePropertyInfo = (~) (Ptr ())
    type AttrTransferType DataTypeDataTypePropertyInfo = Ptr ()
    type AttrGetType DataTypeDataTypePropertyInfo = ()
    type AttrLabel DataTypeDataTypePropertyInfo = "data-type"
    type AttrOrigin DataTypeDataTypePropertyInfo = DataType
    attrGet = undefined
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructDataTypeDataType
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList DataType
type instance O.AttributeList DataType = DataTypeAttributeList
type DataTypeAttributeList = ('[ '("dataType", DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
dataTypeDataType :: AttrLabelProxy "dataType"
dataTypeDataType = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList DataType = DataTypeSignalList
type DataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method DataType::equal
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "DataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDataType." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "other_data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "DataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDataType to be compared."
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_data_type_equal" garrow_data_type_equal :: 
    Ptr DataType ->                         -- data_type : TInterface (Name {namespace = "Arrow", name = "DataType"})
    Ptr DataType ->                         -- other_data_type : TInterface (Name {namespace = "Arrow", name = "DataType"})
    IO CInt

-- | /No description available in the introspection data./
dataTypeEqual ::
    (B.CallStack.HasCallStack, MonadIO m, IsDataType a, IsDataType b) =>
    a
    -- ^ /@dataType@/: A t'GI.Arrow.Objects.DataType.DataType'.
    -> b
    -- ^ /@otherDataType@/: A t'GI.Arrow.Objects.DataType.DataType' to be compared.
    -> m Bool
    -- ^ __Returns:__ 'P.True' if both of them have the same data, 'P.False'
    --   otherwise.
dataTypeEqual dataType otherDataType = liftIO $ do
    dataType' <- unsafeManagedPtrCastPtr dataType
    otherDataType' <- unsafeManagedPtrCastPtr otherDataType
    result <- garrow_data_type_equal dataType' otherDataType'
    let result' = (/= 0) result
    touchManagedPtr dataType
    touchManagedPtr otherDataType
    return result'

#if defined(ENABLE_OVERLOADING)
data DataTypeEqualMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsDataType a, IsDataType b) => O.MethodInfo DataTypeEqualMethodInfo a signature where
    overloadedMethod = dataTypeEqual

#endif

-- method DataType::get_id
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "DataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDataType." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Type" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_data_type_get_id" garrow_data_type_get_id :: 
    Ptr DataType ->                         -- data_type : TInterface (Name {namespace = "Arrow", name = "DataType"})
    IO CUInt

-- | /No description available in the introspection data./
dataTypeGetId ::
    (B.CallStack.HasCallStack, MonadIO m, IsDataType a) =>
    a
    -- ^ /@dataType@/: A t'GI.Arrow.Objects.DataType.DataType'.
    -> m Arrow.Enums.Type
    -- ^ __Returns:__ The t'GI.Arrow.Enums.Type' of the data type.
dataTypeGetId dataType = liftIO $ do
    dataType' <- unsafeManagedPtrCastPtr dataType
    result <- garrow_data_type_get_id dataType'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr dataType
    return result'

#if defined(ENABLE_OVERLOADING)
data DataTypeGetIdMethodInfo
instance (signature ~ (m Arrow.Enums.Type), MonadIO m, IsDataType a) => O.MethodInfo DataTypeGetIdMethodInfo a signature where
    overloadedMethod = dataTypeGetId

#endif

-- method DataType::to_string
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "DataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDataType." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_data_type_to_string" garrow_data_type_to_string :: 
    Ptr DataType ->                         -- data_type : TInterface (Name {namespace = "Arrow", name = "DataType"})
    IO CString

-- | /No description available in the introspection data./
dataTypeToString ::
    (B.CallStack.HasCallStack, MonadIO m, IsDataType a) =>
    a
    -- ^ /@dataType@/: A t'GI.Arrow.Objects.DataType.DataType'.
    -> m T.Text
    -- ^ __Returns:__ The string representation of the data type.
    --   The caller must free it by 'GI.GLib.Functions.free' when the caller doesn\'t need it anymore.
dataTypeToString dataType = liftIO $ do
    dataType' <- unsafeManagedPtrCastPtr dataType
    result <- garrow_data_type_to_string dataType'
    checkUnexpectedReturnNULL "dataTypeToString" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr dataType
    return result'

#if defined(ENABLE_OVERLOADING)
data DataTypeToStringMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsDataType a) => O.MethodInfo DataTypeToStringMethodInfo a signature where
    overloadedMethod = dataTypeToString

#endif


