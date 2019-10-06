{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.Schema
    ( 

-- * Exported types
    Schema(..)                              ,
    IsSchema                                ,
    toSchema                                ,
    noSchema                                ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveSchemaMethod                     ,
#endif


-- ** addField #method:addField#

#if defined(ENABLE_OVERLOADING)
    SchemaAddFieldMethodInfo                ,
#endif
    schemaAddField                          ,


-- ** equal #method:equal#

#if defined(ENABLE_OVERLOADING)
    SchemaEqualMethodInfo                   ,
#endif
    schemaEqual                             ,


-- ** getField #method:getField#

#if defined(ENABLE_OVERLOADING)
    SchemaGetFieldMethodInfo                ,
#endif
    schemaGetField                          ,


-- ** getFieldByName #method:getFieldByName#

#if defined(ENABLE_OVERLOADING)
    SchemaGetFieldByNameMethodInfo          ,
#endif
    schemaGetFieldByName                    ,


-- ** getFields #method:getFields#

#if defined(ENABLE_OVERLOADING)
    SchemaGetFieldsMethodInfo               ,
#endif
    schemaGetFields                         ,


-- ** nFields #method:nFields#

#if defined(ENABLE_OVERLOADING)
    SchemaNFieldsMethodInfo                 ,
#endif
    schemaNFields                           ,


-- ** new #method:new#

    schemaNew                               ,


-- ** removeField #method:removeField#

#if defined(ENABLE_OVERLOADING)
    SchemaRemoveFieldMethodInfo             ,
#endif
    schemaRemoveField                       ,


-- ** replaceField #method:replaceField#

#if defined(ENABLE_OVERLOADING)
    SchemaReplaceFieldMethodInfo            ,
#endif
    schemaReplaceField                      ,


-- ** toString #method:toString#

#if defined(ENABLE_OVERLOADING)
    SchemaToStringMethodInfo                ,
#endif
    schemaToString                          ,




 -- * Properties
-- ** schema #attr:schema#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    SchemaSchemaPropertyInfo                ,
#endif
    constructSchemaSchema                   ,
#if defined(ENABLE_OVERLOADING)
    schemaSchema                            ,
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

import {-# SOURCE #-} qualified GI.Arrow.Objects.Field as Arrow.Field
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Schema = Schema (ManagedPtr Schema)
    deriving (Eq)
foreign import ccall "garrow_schema_get_type"
    c_garrow_schema_get_type :: IO GType

instance GObject Schema where
    gobjectType = c_garrow_schema_get_type
    

-- | Convert 'Schema' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Schema where
    toGValue o = do
        gtype <- c_garrow_schema_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Schema)
        B.ManagedPtr.newObject Schema ptr
        
    

-- | Type class for types which can be safely cast to `Schema`, for instance with `toSchema`.
class (GObject o, O.IsDescendantOf Schema o) => IsSchema o
instance (GObject o, O.IsDescendantOf Schema o) => IsSchema o

instance O.HasParentTypes Schema
type instance O.ParentTypes Schema = '[GObject.Object.Object]

-- | Cast to `Schema`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toSchema :: (MonadIO m, IsSchema o) => o -> m Schema
toSchema = liftIO . unsafeCastTo Schema

-- | A convenience alias for `Nothing` :: `Maybe` `Schema`.
noSchema :: Maybe Schema
noSchema = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveSchemaMethod (t :: Symbol) (o :: *) :: * where
    ResolveSchemaMethod "addField" o = SchemaAddFieldMethodInfo
    ResolveSchemaMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveSchemaMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveSchemaMethod "equal" o = SchemaEqualMethodInfo
    ResolveSchemaMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveSchemaMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveSchemaMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveSchemaMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveSchemaMethod "nFields" o = SchemaNFieldsMethodInfo
    ResolveSchemaMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveSchemaMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveSchemaMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveSchemaMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveSchemaMethod "removeField" o = SchemaRemoveFieldMethodInfo
    ResolveSchemaMethod "replaceField" o = SchemaReplaceFieldMethodInfo
    ResolveSchemaMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveSchemaMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveSchemaMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveSchemaMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveSchemaMethod "toString" o = SchemaToStringMethodInfo
    ResolveSchemaMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveSchemaMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveSchemaMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveSchemaMethod "getField" o = SchemaGetFieldMethodInfo
    ResolveSchemaMethod "getFieldByName" o = SchemaGetFieldByNameMethodInfo
    ResolveSchemaMethod "getFields" o = SchemaGetFieldsMethodInfo
    ResolveSchemaMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveSchemaMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveSchemaMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveSchemaMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveSchemaMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveSchemaMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveSchemaMethod t Schema, O.MethodInfo info Schema p) => OL.IsLabel t (Schema -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "schema"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a `GValueConstruct` with valid value for the “@schema@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructSchemaSchema :: (IsSchema o, MIO.MonadIO m) => Ptr () -> m (GValueConstruct o)
constructSchemaSchema val = MIO.liftIO $ B.Properties.constructObjectPropertyPtr "schema" val

#if defined(ENABLE_OVERLOADING)
data SchemaSchemaPropertyInfo
instance AttrInfo SchemaSchemaPropertyInfo where
    type AttrAllowedOps SchemaSchemaPropertyInfo = '[ 'AttrConstruct]
    type AttrBaseTypeConstraint SchemaSchemaPropertyInfo = IsSchema
    type AttrSetTypeConstraint SchemaSchemaPropertyInfo = (~) (Ptr ())
    type AttrTransferTypeConstraint SchemaSchemaPropertyInfo = (~) (Ptr ())
    type AttrTransferType SchemaSchemaPropertyInfo = Ptr ()
    type AttrGetType SchemaSchemaPropertyInfo = ()
    type AttrLabel SchemaSchemaPropertyInfo = "schema"
    type AttrOrigin SchemaSchemaPropertyInfo = Schema
    attrGet = undefined
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructSchemaSchema
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Schema
type instance O.AttributeList Schema = SchemaAttributeList
type SchemaAttributeList = ('[ '("schema", SchemaSchemaPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
schemaSchema :: AttrLabelProxy "schema"
schemaSchema = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Schema = SchemaSignalList
type SchemaSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Schema::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "fields"
--           , argType =
--               TGList (TInterface Name { namespace = "Arrow" , name = "Field" })
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The fields of the schema."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Schema" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_schema_new" garrow_schema_new :: 
    Ptr (GList (Ptr Arrow.Field.Field)) ->  -- fields : TGList (TInterface (Name {namespace = "Arrow", name = "Field"}))
    IO (Ptr Schema)

-- | /No description available in the introspection data./
schemaNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Field.IsField a) =>
    [a]
    -- ^ /@fields@/: The fields of the schema.
    -> m Schema
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.Schema.Schema'.
schemaNew fields = liftIO $ do
    fields' <- mapM unsafeManagedPtrCastPtr fields
    fields'' <- packGList fields'
    result <- garrow_schema_new fields''
    checkUnexpectedReturnNULL "schemaNew" result
    result' <- (wrapObject Schema) result
    mapM_ touchManagedPtr fields
    g_list_free fields''
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Schema::add_field
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "schema"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Schema" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowSchema." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "i"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The index of the new field."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "field"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Field" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The field to be added."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Schema" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_schema_add_field" garrow_schema_add_field :: 
    Ptr Schema ->                           -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    Word32 ->                               -- i : TBasicType TUInt
    Ptr Arrow.Field.Field ->                -- field : TInterface (Name {namespace = "Arrow", name = "Field"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Schema)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.10.0/
schemaAddField ::
    (B.CallStack.HasCallStack, MonadIO m, IsSchema a, Arrow.Field.IsField b) =>
    a
    -- ^ /@schema@/: A t'GI.Arrow.Objects.Schema.Schema'.
    -> Word32
    -- ^ /@i@/: The index of the new field.
    -> b
    -- ^ /@field@/: The field to be added.
    -> m (Maybe Schema)
    -- ^ __Returns:__ The newly allocated
    -- t'GI.Arrow.Objects.Schema.Schema' that has a new field or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
schemaAddField schema i field = liftIO $ do
    schema' <- unsafeManagedPtrCastPtr schema
    field' <- unsafeManagedPtrCastPtr field
    onException (do
        result <- propagateGError $ garrow_schema_add_field schema' i field'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Schema) result'
            return result''
        touchManagedPtr schema
        touchManagedPtr field
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data SchemaAddFieldMethodInfo
instance (signature ~ (Word32 -> b -> m (Maybe Schema)), MonadIO m, IsSchema a, Arrow.Field.IsField b) => O.MethodInfo SchemaAddFieldMethodInfo a signature where
    overloadedMethod = schemaAddField

#endif

-- method Schema::equal
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "schema"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Schema" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowSchema." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "other_schema"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Schema" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowSchema to be compared."
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

foreign import ccall "garrow_schema_equal" garrow_schema_equal :: 
    Ptr Schema ->                           -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    Ptr Schema ->                           -- other_schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
schemaEqual ::
    (B.CallStack.HasCallStack, MonadIO m, IsSchema a, IsSchema b) =>
    a
    -- ^ /@schema@/: A t'GI.Arrow.Objects.Schema.Schema'.
    -> b
    -- ^ /@otherSchema@/: A t'GI.Arrow.Objects.Schema.Schema' to be compared.
    -> m Bool
    -- ^ __Returns:__ 'P.True' if both of them have the same data, 'P.False'
    --   otherwise.
schemaEqual schema otherSchema = liftIO $ do
    schema' <- unsafeManagedPtrCastPtr schema
    otherSchema' <- unsafeManagedPtrCastPtr otherSchema
    result <- garrow_schema_equal schema' otherSchema'
    let result' = (/= 0) result
    touchManagedPtr schema
    touchManagedPtr otherSchema
    return result'

#if defined(ENABLE_OVERLOADING)
data SchemaEqualMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsSchema a, IsSchema b) => O.MethodInfo SchemaEqualMethodInfo a signature where
    overloadedMethod = schemaEqual

#endif

-- method Schema::get_field
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "schema"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Schema" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowSchema." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "i"
--           , argType = TBasicType TUInt
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

foreign import ccall "garrow_schema_get_field" garrow_schema_get_field :: 
    Ptr Schema ->                           -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    Word32 ->                               -- i : TBasicType TUInt
    IO (Ptr Arrow.Field.Field)

-- | /No description available in the introspection data./
schemaGetField ::
    (B.CallStack.HasCallStack, MonadIO m, IsSchema a) =>
    a
    -- ^ /@schema@/: A t'GI.Arrow.Objects.Schema.Schema'.
    -> Word32
    -- ^ /@i@/: The index of the target field.
    -> m Arrow.Field.Field
    -- ^ __Returns:__ The i-th field of the schema.
schemaGetField schema i = liftIO $ do
    schema' <- unsafeManagedPtrCastPtr schema
    result <- garrow_schema_get_field schema' i
    checkUnexpectedReturnNULL "schemaGetField" result
    result' <- (wrapObject Arrow.Field.Field) result
    touchManagedPtr schema
    return result'

#if defined(ENABLE_OVERLOADING)
data SchemaGetFieldMethodInfo
instance (signature ~ (Word32 -> m Arrow.Field.Field), MonadIO m, IsSchema a) => O.MethodInfo SchemaGetFieldMethodInfo a signature where
    overloadedMethod = schemaGetField

#endif

-- method Schema::get_field_by_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "schema"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Schema" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowSchema." , sinceVersion = Nothing }
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
--                 { rawDocText = Just "The name of the field to be found."
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

foreign import ccall "garrow_schema_get_field_by_name" garrow_schema_get_field_by_name :: 
    Ptr Schema ->                           -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    CString ->                              -- name : TBasicType TUTF8
    IO (Ptr Arrow.Field.Field)

-- | /No description available in the introspection data./
schemaGetFieldByName ::
    (B.CallStack.HasCallStack, MonadIO m, IsSchema a) =>
    a
    -- ^ /@schema@/: A t'GI.Arrow.Objects.Schema.Schema'.
    -> T.Text
    -- ^ /@name@/: The name of the field to be found.
    -> m Arrow.Field.Field
    -- ^ __Returns:__ The found field or 'P.Nothing'.
schemaGetFieldByName schema name = liftIO $ do
    schema' <- unsafeManagedPtrCastPtr schema
    name' <- textToCString name
    result <- garrow_schema_get_field_by_name schema' name'
    checkUnexpectedReturnNULL "schemaGetFieldByName" result
    result' <- (wrapObject Arrow.Field.Field) result
    touchManagedPtr schema
    freeMem name'
    return result'

#if defined(ENABLE_OVERLOADING)
data SchemaGetFieldByNameMethodInfo
instance (signature ~ (T.Text -> m Arrow.Field.Field), MonadIO m, IsSchema a) => O.MethodInfo SchemaGetFieldByNameMethodInfo a signature where
    overloadedMethod = schemaGetFieldByName

#endif

-- method Schema::get_fields
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "schema"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Schema" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowSchema." , sinceVersion = Nothing }
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

foreign import ccall "garrow_schema_get_fields" garrow_schema_get_fields :: 
    Ptr Schema ->                           -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    IO (Ptr (GList (Ptr Arrow.Field.Field)))

-- | /No description available in the introspection data./
schemaGetFields ::
    (B.CallStack.HasCallStack, MonadIO m, IsSchema a) =>
    a
    -- ^ /@schema@/: A t'GI.Arrow.Objects.Schema.Schema'.
    -> m [Arrow.Field.Field]
    -- ^ __Returns:__ 
    --   The fields of the schema.
schemaGetFields schema = liftIO $ do
    schema' <- unsafeManagedPtrCastPtr schema
    result <- garrow_schema_get_fields schema'
    result' <- unpackGList result
    result'' <- mapM (wrapObject Arrow.Field.Field) result'
    g_list_free result
    touchManagedPtr schema
    return result''

#if defined(ENABLE_OVERLOADING)
data SchemaGetFieldsMethodInfo
instance (signature ~ (m [Arrow.Field.Field]), MonadIO m, IsSchema a) => O.MethodInfo SchemaGetFieldsMethodInfo a signature where
    overloadedMethod = schemaGetFields

#endif

-- method Schema::n_fields
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "schema"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Schema" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowSchema." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_schema_n_fields" garrow_schema_n_fields :: 
    Ptr Schema ->                           -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    IO Word32

-- | /No description available in the introspection data./
schemaNFields ::
    (B.CallStack.HasCallStack, MonadIO m, IsSchema a) =>
    a
    -- ^ /@schema@/: A t'GI.Arrow.Objects.Schema.Schema'.
    -> m Word32
    -- ^ __Returns:__ The number of fields of the schema.
schemaNFields schema = liftIO $ do
    schema' <- unsafeManagedPtrCastPtr schema
    result <- garrow_schema_n_fields schema'
    touchManagedPtr schema
    return result

#if defined(ENABLE_OVERLOADING)
data SchemaNFieldsMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsSchema a) => O.MethodInfo SchemaNFieldsMethodInfo a signature where
    overloadedMethod = schemaNFields

#endif

-- method Schema::remove_field
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "schema"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Schema" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowSchema." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "i"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The index of the field to be removed."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Schema" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_schema_remove_field" garrow_schema_remove_field :: 
    Ptr Schema ->                           -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    Word32 ->                               -- i : TBasicType TUInt
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Schema)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.10.0/
schemaRemoveField ::
    (B.CallStack.HasCallStack, MonadIO m, IsSchema a) =>
    a
    -- ^ /@schema@/: A t'GI.Arrow.Objects.Schema.Schema'.
    -> Word32
    -- ^ /@i@/: The index of the field to be removed.
    -> m (Maybe Schema)
    -- ^ __Returns:__ The newly allocated
    -- t'GI.Arrow.Objects.Schema.Schema' that doesn\'t have the field or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
schemaRemoveField schema i = liftIO $ do
    schema' <- unsafeManagedPtrCastPtr schema
    onException (do
        result <- propagateGError $ garrow_schema_remove_field schema' i
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Schema) result'
            return result''
        touchManagedPtr schema
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data SchemaRemoveFieldMethodInfo
instance (signature ~ (Word32 -> m (Maybe Schema)), MonadIO m, IsSchema a) => O.MethodInfo SchemaRemoveFieldMethodInfo a signature where
    overloadedMethod = schemaRemoveField

#endif

-- method Schema::replace_field
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "schema"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Schema" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowSchema." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "i"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The index of the field to be replaced."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "field"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Field" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The newly added #GArrowField."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Schema" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_schema_replace_field" garrow_schema_replace_field :: 
    Ptr Schema ->                           -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    Word32 ->                               -- i : TBasicType TUInt
    Ptr Arrow.Field.Field ->                -- field : TInterface (Name {namespace = "Arrow", name = "Field"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Schema)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.10.0/
schemaReplaceField ::
    (B.CallStack.HasCallStack, MonadIO m, IsSchema a, Arrow.Field.IsField b) =>
    a
    -- ^ /@schema@/: A t'GI.Arrow.Objects.Schema.Schema'.
    -> Word32
    -- ^ /@i@/: The index of the field to be replaced.
    -> b
    -- ^ /@field@/: The newly added t'GI.Arrow.Objects.Field.Field'.
    -> m (Maybe Schema)
    -- ^ __Returns:__ The newly allocated
    -- t'GI.Arrow.Objects.Schema.Schema' that has /@field@/ as the /@i@/-th field or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
schemaReplaceField schema i field = liftIO $ do
    schema' <- unsafeManagedPtrCastPtr schema
    field' <- unsafeManagedPtrCastPtr field
    onException (do
        result <- propagateGError $ garrow_schema_replace_field schema' i field'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Schema) result'
            return result''
        touchManagedPtr schema
        touchManagedPtr field
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data SchemaReplaceFieldMethodInfo
instance (signature ~ (Word32 -> b -> m (Maybe Schema)), MonadIO m, IsSchema a, Arrow.Field.IsField b) => O.MethodInfo SchemaReplaceFieldMethodInfo a signature where
    overloadedMethod = schemaReplaceField

#endif

-- method Schema::to_string
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "schema"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Schema" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowSchema." , sinceVersion = Nothing }
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

foreign import ccall "garrow_schema_to_string" garrow_schema_to_string :: 
    Ptr Schema ->                           -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    IO CString

-- | /No description available in the introspection data./
schemaToString ::
    (B.CallStack.HasCallStack, MonadIO m, IsSchema a) =>
    a
    -- ^ /@schema@/: A t'GI.Arrow.Objects.Schema.Schema'.
    -> m T.Text
    -- ^ __Returns:__ The string representation of the schema.
schemaToString schema = liftIO $ do
    schema' <- unsafeManagedPtrCastPtr schema
    result <- garrow_schema_to_string schema'
    checkUnexpectedReturnNULL "schemaToString" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr schema
    return result'

#if defined(ENABLE_OVERLOADING)
data SchemaToStringMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsSchema a) => O.MethodInfo SchemaToStringMethodInfo a signature where
    overloadedMethod = schemaToString

#endif


