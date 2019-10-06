{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.StructDataType
    ( 

-- * Exported types
    StructDataType(..)                      ,
    IsStructDataType                        ,
    toStructDataType                        ,
    noStructDataType                        ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveStructDataTypeMethod             ,
#endif


-- ** getField #method:getField#

#if defined(ENABLE_OVERLOADING)
    StructDataTypeGetFieldMethodInfo        ,
#endif
    structDataTypeGetField                  ,


-- ** getFieldByName #method:getFieldByName#

#if defined(ENABLE_OVERLOADING)
    StructDataTypeGetFieldByNameMethodInfo  ,
#endif
    structDataTypeGetFieldByName            ,


-- ** getFieldIndex #method:getFieldIndex#

#if defined(ENABLE_OVERLOADING)
    StructDataTypeGetFieldIndexMethodInfo   ,
#endif
    structDataTypeGetFieldIndex             ,


-- ** getFields #method:getFields#

#if defined(ENABLE_OVERLOADING)
    StructDataTypeGetFieldsMethodInfo       ,
#endif
    structDataTypeGetFields                 ,


-- ** getNFields #method:getNFields#

#if defined(ENABLE_OVERLOADING)
    StructDataTypeGetNFieldsMethodInfo      ,
#endif
    structDataTypeGetNFields                ,


-- ** new #method:new#

    structDataTypeNew                       ,




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
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype StructDataType = StructDataType (ManagedPtr StructDataType)
    deriving (Eq)
foreign import ccall "garrow_struct_data_type_get_type"
    c_garrow_struct_data_type_get_type :: IO GType

instance GObject StructDataType where
    gobjectType = c_garrow_struct_data_type_get_type
    

-- | Convert 'StructDataType' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue StructDataType where
    toGValue o = do
        gtype <- c_garrow_struct_data_type_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr StructDataType)
        B.ManagedPtr.newObject StructDataType ptr
        
    

-- | Type class for types which can be safely cast to `StructDataType`, for instance with `toStructDataType`.
class (GObject o, O.IsDescendantOf StructDataType o) => IsStructDataType o
instance (GObject o, O.IsDescendantOf StructDataType o) => IsStructDataType o

instance O.HasParentTypes StructDataType
type instance O.ParentTypes StructDataType = '[Arrow.DataType.DataType, GObject.Object.Object]

-- | Cast to `StructDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toStructDataType :: (MonadIO m, IsStructDataType o) => o -> m StructDataType
toStructDataType = liftIO . unsafeCastTo StructDataType

-- | A convenience alias for `Nothing` :: `Maybe` `StructDataType`.
noStructDataType :: Maybe StructDataType
noStructDataType = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveStructDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveStructDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveStructDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveStructDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveStructDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveStructDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveStructDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveStructDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveStructDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveStructDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveStructDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveStructDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveStructDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveStructDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveStructDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveStructDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveStructDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveStructDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveStructDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveStructDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveStructDataTypeMethod "getField" o = StructDataTypeGetFieldMethodInfo
    ResolveStructDataTypeMethod "getFieldByName" o = StructDataTypeGetFieldByNameMethodInfo
    ResolveStructDataTypeMethod "getFieldIndex" o = StructDataTypeGetFieldIndexMethodInfo
    ResolveStructDataTypeMethod "getFields" o = StructDataTypeGetFieldsMethodInfo
    ResolveStructDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveStructDataTypeMethod "getNFields" o = StructDataTypeGetNFieldsMethodInfo
    ResolveStructDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveStructDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveStructDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveStructDataTypeMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveStructDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveStructDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveStructDataTypeMethod t StructDataType, O.MethodInfo info StructDataType p) => OL.IsLabel t (StructDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList StructDataType
type instance O.AttributeList StructDataType = StructDataTypeAttributeList
type StructDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList StructDataType = StructDataTypeSignalList
type StructDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method StructDataType::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "fields"
--           , argType =
--               TGList (TInterface Name { namespace = "Arrow" , name = "Field" })
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The fields of the struct."
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
--               (TInterface Name { namespace = "Arrow" , name = "StructDataType" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_struct_data_type_new" garrow_struct_data_type_new :: 
    Ptr (GList (Ptr Arrow.Field.Field)) ->  -- fields : TGList (TInterface (Name {namespace = "Arrow", name = "Field"}))
    IO (Ptr StructDataType)

-- | /No description available in the introspection data./
structDataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Field.IsField a) =>
    [a]
    -- ^ /@fields@/: The fields of the struct.
    -> m StructDataType
    -- ^ __Returns:__ The newly created struct data type.
structDataTypeNew fields = liftIO $ do
    fields' <- mapM unsafeManagedPtrCastPtr fields
    fields'' <- packGList fields'
    result <- garrow_struct_data_type_new fields''
    checkUnexpectedReturnNULL "structDataTypeNew" result
    result' <- (wrapObject StructDataType) result
    mapM_ touchManagedPtr fields
    g_list_free fields''
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method StructDataType::get_field
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "struct_data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "StructDataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowStructDataType."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "i"
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The index of the target field."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Field" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_struct_data_type_get_field" garrow_struct_data_type_get_field :: 
    Ptr StructDataType ->                   -- struct_data_type : TInterface (Name {namespace = "Arrow", name = "StructDataType"})
    Int32 ->                                -- i : TBasicType TInt
    IO (Ptr Arrow.Field.Field)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
structDataTypeGetField ::
    (B.CallStack.HasCallStack, MonadIO m, IsStructDataType a) =>
    a
    -- ^ /@structDataType@/: A t'GI.Arrow.Objects.StructDataType.StructDataType'.
    -> Int32
    -- ^ /@i@/: The index of the target field.
    -> m (Maybe Arrow.Field.Field)
    -- ^ __Returns:__ 
    --   The field at the index in the struct data type or 'P.Nothing' on not found.
structDataTypeGetField structDataType i = liftIO $ do
    structDataType' <- unsafeManagedPtrCastPtr structDataType
    result <- garrow_struct_data_type_get_field structDataType' i
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (wrapObject Arrow.Field.Field) result'
        return result''
    touchManagedPtr structDataType
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data StructDataTypeGetFieldMethodInfo
instance (signature ~ (Int32 -> m (Maybe Arrow.Field.Field)), MonadIO m, IsStructDataType a) => O.MethodInfo StructDataTypeGetFieldMethodInfo a signature where
    overloadedMethod = structDataTypeGetField

#endif

-- method StructDataType::get_field_by_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "struct_data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "StructDataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowStructDataType."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The name of the target field."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Field" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_struct_data_type_get_field_by_name" garrow_struct_data_type_get_field_by_name :: 
    Ptr StructDataType ->                   -- struct_data_type : TInterface (Name {namespace = "Arrow", name = "StructDataType"})
    CString ->                              -- name : TBasicType TUTF8
    IO (Ptr Arrow.Field.Field)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
structDataTypeGetFieldByName ::
    (B.CallStack.HasCallStack, MonadIO m, IsStructDataType a) =>
    a
    -- ^ /@structDataType@/: A t'GI.Arrow.Objects.StructDataType.StructDataType'.
    -> T.Text
    -- ^ /@name@/: The name of the target field.
    -> m (Maybe Arrow.Field.Field)
    -- ^ __Returns:__ 
    --   The field that has the name in the struct data type or 'P.Nothing' on not found.
structDataTypeGetFieldByName structDataType name = liftIO $ do
    structDataType' <- unsafeManagedPtrCastPtr structDataType
    name' <- textToCString name
    result <- garrow_struct_data_type_get_field_by_name structDataType' name'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (wrapObject Arrow.Field.Field) result'
        return result''
    touchManagedPtr structDataType
    freeMem name'
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data StructDataTypeGetFieldByNameMethodInfo
instance (signature ~ (T.Text -> m (Maybe Arrow.Field.Field)), MonadIO m, IsStructDataType a) => O.MethodInfo StructDataTypeGetFieldByNameMethodInfo a signature where
    overloadedMethod = structDataTypeGetFieldByName

#endif

-- method StructDataType::get_field_index
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "struct_data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "StructDataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowStructDataType."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The name of the target field."
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
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_struct_data_type_get_field_index" garrow_struct_data_type_get_field_index :: 
    Ptr StructDataType ->                   -- struct_data_type : TInterface (Name {namespace = "Arrow", name = "StructDataType"})
    CString ->                              -- name : TBasicType TUTF8
    IO Int32

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
structDataTypeGetFieldIndex ::
    (B.CallStack.HasCallStack, MonadIO m, IsStructDataType a) =>
    a
    -- ^ /@structDataType@/: A t'GI.Arrow.Objects.StructDataType.StructDataType'.
    -> T.Text
    -- ^ /@name@/: The name of the target field.
    -> m Int32
    -- ^ __Returns:__ The index of the target index in the struct data type
    --   or @-1@ on not found.
structDataTypeGetFieldIndex structDataType name = liftIO $ do
    structDataType' <- unsafeManagedPtrCastPtr structDataType
    name' <- textToCString name
    result <- garrow_struct_data_type_get_field_index structDataType' name'
    touchManagedPtr structDataType
    freeMem name'
    return result

#if defined(ENABLE_OVERLOADING)
data StructDataTypeGetFieldIndexMethodInfo
instance (signature ~ (T.Text -> m Int32), MonadIO m, IsStructDataType a) => O.MethodInfo StructDataTypeGetFieldIndexMethodInfo a signature where
    overloadedMethod = structDataTypeGetFieldIndex

#endif

-- method StructDataType::get_fields
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "struct_data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "StructDataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowStructDataType."
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
--               (TGList (TInterface Name { namespace = "Arrow" , name = "Field" }))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_struct_data_type_get_fields" garrow_struct_data_type_get_fields :: 
    Ptr StructDataType ->                   -- struct_data_type : TInterface (Name {namespace = "Arrow", name = "StructDataType"})
    IO (Ptr (GList (Ptr Arrow.Field.Field)))

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
structDataTypeGetFields ::
    (B.CallStack.HasCallStack, MonadIO m, IsStructDataType a) =>
    a
    -- ^ /@structDataType@/: A t'GI.Arrow.Objects.StructDataType.StructDataType'.
    -> m [Arrow.Field.Field]
    -- ^ __Returns:__ 
    --   The fields of the struct data type.
structDataTypeGetFields structDataType = liftIO $ do
    structDataType' <- unsafeManagedPtrCastPtr structDataType
    result <- garrow_struct_data_type_get_fields structDataType'
    result' <- unpackGList result
    result'' <- mapM (wrapObject Arrow.Field.Field) result'
    g_list_free result
    touchManagedPtr structDataType
    return result''

#if defined(ENABLE_OVERLOADING)
data StructDataTypeGetFieldsMethodInfo
instance (signature ~ (m [Arrow.Field.Field]), MonadIO m, IsStructDataType a) => O.MethodInfo StructDataTypeGetFieldsMethodInfo a signature where
    overloadedMethod = structDataTypeGetFields

#endif

-- method StructDataType::get_n_fields
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "struct_data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "StructDataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowStructDataType."
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
-- returnType: Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_struct_data_type_get_n_fields" garrow_struct_data_type_get_n_fields :: 
    Ptr StructDataType ->                   -- struct_data_type : TInterface (Name {namespace = "Arrow", name = "StructDataType"})
    IO Int32

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
structDataTypeGetNFields ::
    (B.CallStack.HasCallStack, MonadIO m, IsStructDataType a) =>
    a
    -- ^ /@structDataType@/: A t'GI.Arrow.Objects.StructDataType.StructDataType'.
    -> m Int32
    -- ^ __Returns:__ The number of fields of the struct data type.
structDataTypeGetNFields structDataType = liftIO $ do
    structDataType' <- unsafeManagedPtrCastPtr structDataType
    result <- garrow_struct_data_type_get_n_fields structDataType'
    touchManagedPtr structDataType
    return result

#if defined(ENABLE_OVERLOADING)
data StructDataTypeGetNFieldsMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsStructDataType a) => O.MethodInfo StructDataTypeGetNFieldsMethodInfo a signature where
    overloadedMethod = structDataTypeGetNFields

#endif


