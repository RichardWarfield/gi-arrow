{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.UnionDataType
    ( 

-- * Exported types
    UnionDataType(..)                       ,
    IsUnionDataType                         ,
    toUnionDataType                         ,
    noUnionDataType                         ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveUnionDataTypeMethod              ,
#endif


-- ** getField #method:getField#

#if defined(ENABLE_OVERLOADING)
    UnionDataTypeGetFieldMethodInfo         ,
#endif
    unionDataTypeGetField                   ,


-- ** getFields #method:getFields#

#if defined(ENABLE_OVERLOADING)
    UnionDataTypeGetFieldsMethodInfo        ,
#endif
    unionDataTypeGetFields                  ,


-- ** getNFields #method:getNFields#

#if defined(ENABLE_OVERLOADING)
    UnionDataTypeGetNFieldsMethodInfo       ,
#endif
    unionDataTypeGetNFields                 ,


-- ** getTypeCodes #method:getTypeCodes#

#if defined(ENABLE_OVERLOADING)
    UnionDataTypeGetTypeCodesMethodInfo     ,
#endif
    unionDataTypeGetTypeCodes               ,




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
newtype UnionDataType = UnionDataType (ManagedPtr UnionDataType)
    deriving (Eq)
foreign import ccall "garrow_union_data_type_get_type"
    c_garrow_union_data_type_get_type :: IO GType

instance GObject UnionDataType where
    gobjectType = c_garrow_union_data_type_get_type
    

-- | Convert 'UnionDataType' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue UnionDataType where
    toGValue o = do
        gtype <- c_garrow_union_data_type_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr UnionDataType)
        B.ManagedPtr.newObject UnionDataType ptr
        
    

-- | Type class for types which can be safely cast to `UnionDataType`, for instance with `toUnionDataType`.
class (GObject o, O.IsDescendantOf UnionDataType o) => IsUnionDataType o
instance (GObject o, O.IsDescendantOf UnionDataType o) => IsUnionDataType o

instance O.HasParentTypes UnionDataType
type instance O.ParentTypes UnionDataType = '[Arrow.DataType.DataType, GObject.Object.Object]

-- | Cast to `UnionDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toUnionDataType :: (MonadIO m, IsUnionDataType o) => o -> m UnionDataType
toUnionDataType = liftIO . unsafeCastTo UnionDataType

-- | A convenience alias for `Nothing` :: `Maybe` `UnionDataType`.
noUnionDataType :: Maybe UnionDataType
noUnionDataType = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveUnionDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveUnionDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUnionDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUnionDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveUnionDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUnionDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUnionDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUnionDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUnionDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUnionDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUnionDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUnionDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUnionDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUnionDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUnionDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUnionDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUnionDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveUnionDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUnionDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUnionDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUnionDataTypeMethod "getField" o = UnionDataTypeGetFieldMethodInfo
    ResolveUnionDataTypeMethod "getFields" o = UnionDataTypeGetFieldsMethodInfo
    ResolveUnionDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveUnionDataTypeMethod "getNFields" o = UnionDataTypeGetNFieldsMethodInfo
    ResolveUnionDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUnionDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUnionDataTypeMethod "getTypeCodes" o = UnionDataTypeGetTypeCodesMethodInfo
    ResolveUnionDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUnionDataTypeMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveUnionDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUnionDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUnionDataTypeMethod t UnionDataType, O.MethodInfo info UnionDataType p) => OL.IsLabel t (UnionDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList UnionDataType
type instance O.AttributeList UnionDataType = UnionDataTypeAttributeList
type UnionDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList UnionDataType = UnionDataTypeSignalList
type UnionDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method UnionDataType::get_field
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "union_data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UnionDataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUnionDataType."
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

foreign import ccall "garrow_union_data_type_get_field" garrow_union_data_type_get_field :: 
    Ptr UnionDataType ->                    -- union_data_type : TInterface (Name {namespace = "Arrow", name = "UnionDataType"})
    Int32 ->                                -- i : TBasicType TInt
    IO (Ptr Arrow.Field.Field)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
unionDataTypeGetField ::
    (B.CallStack.HasCallStack, MonadIO m, IsUnionDataType a) =>
    a
    -- ^ /@unionDataType@/: A t'GI.Arrow.Objects.UnionDataType.UnionDataType'.
    -> Int32
    -- ^ /@i@/: The index of the target field.
    -> m (Maybe Arrow.Field.Field)
    -- ^ __Returns:__ 
    --   The field at the index in the union data type or 'P.Nothing' on not found.
unionDataTypeGetField unionDataType i = liftIO $ do
    unionDataType' <- unsafeManagedPtrCastPtr unionDataType
    result <- garrow_union_data_type_get_field unionDataType' i
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (wrapObject Arrow.Field.Field) result'
        return result''
    touchManagedPtr unionDataType
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data UnionDataTypeGetFieldMethodInfo
instance (signature ~ (Int32 -> m (Maybe Arrow.Field.Field)), MonadIO m, IsUnionDataType a) => O.MethodInfo UnionDataTypeGetFieldMethodInfo a signature where
    overloadedMethod = unionDataTypeGetField

#endif

-- method UnionDataType::get_fields
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "union_data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UnionDataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUnionDataType."
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

foreign import ccall "garrow_union_data_type_get_fields" garrow_union_data_type_get_fields :: 
    Ptr UnionDataType ->                    -- union_data_type : TInterface (Name {namespace = "Arrow", name = "UnionDataType"})
    IO (Ptr (GList (Ptr Arrow.Field.Field)))

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
unionDataTypeGetFields ::
    (B.CallStack.HasCallStack, MonadIO m, IsUnionDataType a) =>
    a
    -- ^ /@unionDataType@/: A t'GI.Arrow.Objects.UnionDataType.UnionDataType'.
    -> m [Arrow.Field.Field]
    -- ^ __Returns:__ 
    --   The fields of the union data type.
unionDataTypeGetFields unionDataType = liftIO $ do
    unionDataType' <- unsafeManagedPtrCastPtr unionDataType
    result <- garrow_union_data_type_get_fields unionDataType'
    result' <- unpackGList result
    result'' <- mapM (wrapObject Arrow.Field.Field) result'
    g_list_free result
    touchManagedPtr unionDataType
    return result''

#if defined(ENABLE_OVERLOADING)
data UnionDataTypeGetFieldsMethodInfo
instance (signature ~ (m [Arrow.Field.Field]), MonadIO m, IsUnionDataType a) => O.MethodInfo UnionDataTypeGetFieldsMethodInfo a signature where
    overloadedMethod = unionDataTypeGetFields

#endif

-- method UnionDataType::get_n_fields
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "union_data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UnionDataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUnionDataType."
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

foreign import ccall "garrow_union_data_type_get_n_fields" garrow_union_data_type_get_n_fields :: 
    Ptr UnionDataType ->                    -- union_data_type : TInterface (Name {namespace = "Arrow", name = "UnionDataType"})
    IO Int32

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
unionDataTypeGetNFields ::
    (B.CallStack.HasCallStack, MonadIO m, IsUnionDataType a) =>
    a
    -- ^ /@unionDataType@/: A t'GI.Arrow.Objects.UnionDataType.UnionDataType'.
    -> m Int32
    -- ^ __Returns:__ The number of fields of the union data type.
unionDataTypeGetNFields unionDataType = liftIO $ do
    unionDataType' <- unsafeManagedPtrCastPtr unionDataType
    result <- garrow_union_data_type_get_n_fields unionDataType'
    touchManagedPtr unionDataType
    return result

#if defined(ENABLE_OVERLOADING)
data UnionDataTypeGetNFieldsMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsUnionDataType a) => O.MethodInfo UnionDataTypeGetNFieldsMethodInfo a signature where
    overloadedMethod = unionDataTypeGetNFields

#endif

-- method UnionDataType::get_type_codes
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "union_data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UnionDataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUnionDataType."
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
--           , direction = DirectionOut
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
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: [ Arg
--              { argCName = "n_type_codes"
--              , argType = TBasicType TUInt64
--              , direction = DirectionOut
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
--              , transfer = TransferEverything
--              }
--          ]
-- returnType: Just (TCArray False (-1) 1 (TBasicType TUInt8))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_union_data_type_get_type_codes" garrow_union_data_type_get_type_codes :: 
    Ptr UnionDataType ->                    -- union_data_type : TInterface (Name {namespace = "Arrow", name = "UnionDataType"})
    Ptr Word64 ->                           -- n_type_codes : TBasicType TUInt64
    IO (Ptr Word8)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
unionDataTypeGetTypeCodes ::
    (B.CallStack.HasCallStack, MonadIO m, IsUnionDataType a) =>
    a
    -- ^ /@unionDataType@/: A t'GI.Arrow.Objects.UnionDataType.UnionDataType'.
    -> m ByteString
    -- ^ __Returns:__ 
    --   The codes for each field.
    -- 
    --   It should be freed with 'GI.GLib.Functions.free' when no longer needed.
unionDataTypeGetTypeCodes unionDataType = liftIO $ do
    unionDataType' <- unsafeManagedPtrCastPtr unionDataType
    nTypeCodes <- allocMem :: IO (Ptr Word64)
    result <- garrow_union_data_type_get_type_codes unionDataType' nTypeCodes
    nTypeCodes' <- peek nTypeCodes
    checkUnexpectedReturnNULL "unionDataTypeGetTypeCodes" result
    result' <- (unpackByteStringWithLength nTypeCodes') result
    freeMem result
    touchManagedPtr unionDataType
    freeMem nTypeCodes
    return result'

#if defined(ENABLE_OVERLOADING)
data UnionDataTypeGetTypeCodesMethodInfo
instance (signature ~ (m ByteString), MonadIO m, IsUnionDataType a) => O.MethodInfo UnionDataTypeGetTypeCodesMethodInfo a signature where
    overloadedMethod = unionDataTypeGetTypeCodes

#endif


