{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.RecordBatchBuilder
    ( 

-- * Exported types
    RecordBatchBuilder(..)                  ,
    IsRecordBatchBuilder                    ,
    toRecordBatchBuilder                    ,
    noRecordBatchBuilder                    ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveRecordBatchBuilderMethod         ,
#endif


-- ** flush #method:flush#

#if defined(ENABLE_OVERLOADING)
    RecordBatchBuilderFlushMethodInfo       ,
#endif
    recordBatchBuilderFlush                 ,


-- ** getColumnBuilder #method:getColumnBuilder#

#if defined(ENABLE_OVERLOADING)
    RecordBatchBuilderGetColumnBuilderMethodInfo,
#endif
    recordBatchBuilderGetColumnBuilder      ,


-- ** getField #method:getField#

#if defined(ENABLE_OVERLOADING)
    RecordBatchBuilderGetFieldMethodInfo    ,
#endif
    recordBatchBuilderGetField              ,


-- ** getInitialCapacity #method:getInitialCapacity#

#if defined(ENABLE_OVERLOADING)
    RecordBatchBuilderGetInitialCapacityMethodInfo,
#endif
    recordBatchBuilderGetInitialCapacity    ,


-- ** getNColumns #method:getNColumns#

#if defined(ENABLE_OVERLOADING)
    RecordBatchBuilderGetNColumnsMethodInfo ,
#endif
    recordBatchBuilderGetNColumns           ,


-- ** getNFields #method:getNFields#

#if defined(ENABLE_OVERLOADING)
    RecordBatchBuilderGetNFieldsMethodInfo  ,
#endif
    recordBatchBuilderGetNFields            ,


-- ** getSchema #method:getSchema#

#if defined(ENABLE_OVERLOADING)
    RecordBatchBuilderGetSchemaMethodInfo   ,
#endif
    recordBatchBuilderGetSchema             ,


-- ** new #method:new#

    recordBatchBuilderNew                   ,


-- ** setInitialCapacity #method:setInitialCapacity#

#if defined(ENABLE_OVERLOADING)
    RecordBatchBuilderSetInitialCapacityMethodInfo,
#endif
    recordBatchBuilderSetInitialCapacity    ,




 -- * Properties
-- ** recordBatchBuilder #attr:recordBatchBuilder#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    RecordBatchBuilderRecordBatchBuilderPropertyInfo,
#endif
    constructRecordBatchBuilderRecordBatchBuilder,
#if defined(ENABLE_OVERLOADING)
    recordBatchBuilderRecordBatchBuilder    ,
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

import {-# SOURCE #-} qualified GI.Arrow.Objects.ArrayBuilder as Arrow.ArrayBuilder
import {-# SOURCE #-} qualified GI.Arrow.Objects.RecordBatch as Arrow.RecordBatch
import {-# SOURCE #-} qualified GI.Arrow.Objects.Schema as Arrow.Schema
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype RecordBatchBuilder = RecordBatchBuilder (ManagedPtr RecordBatchBuilder)
    deriving (Eq)
foreign import ccall "garrow_record_batch_builder_get_type"
    c_garrow_record_batch_builder_get_type :: IO GType

instance GObject RecordBatchBuilder where
    gobjectType = c_garrow_record_batch_builder_get_type
    

-- | Convert 'RecordBatchBuilder' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue RecordBatchBuilder where
    toGValue o = do
        gtype <- c_garrow_record_batch_builder_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr RecordBatchBuilder)
        B.ManagedPtr.newObject RecordBatchBuilder ptr
        
    

-- | Type class for types which can be safely cast to `RecordBatchBuilder`, for instance with `toRecordBatchBuilder`.
class (GObject o, O.IsDescendantOf RecordBatchBuilder o) => IsRecordBatchBuilder o
instance (GObject o, O.IsDescendantOf RecordBatchBuilder o) => IsRecordBatchBuilder o

instance O.HasParentTypes RecordBatchBuilder
type instance O.ParentTypes RecordBatchBuilder = '[GObject.Object.Object]

-- | Cast to `RecordBatchBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toRecordBatchBuilder :: (MonadIO m, IsRecordBatchBuilder o) => o -> m RecordBatchBuilder
toRecordBatchBuilder = liftIO . unsafeCastTo RecordBatchBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `RecordBatchBuilder`.
noRecordBatchBuilder :: Maybe RecordBatchBuilder
noRecordBatchBuilder = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveRecordBatchBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveRecordBatchBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveRecordBatchBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveRecordBatchBuilderMethod "flush" o = RecordBatchBuilderFlushMethodInfo
    ResolveRecordBatchBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveRecordBatchBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveRecordBatchBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveRecordBatchBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveRecordBatchBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveRecordBatchBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveRecordBatchBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveRecordBatchBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveRecordBatchBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveRecordBatchBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveRecordBatchBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveRecordBatchBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveRecordBatchBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveRecordBatchBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveRecordBatchBuilderMethod "getColumnBuilder" o = RecordBatchBuilderGetColumnBuilderMethodInfo
    ResolveRecordBatchBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveRecordBatchBuilderMethod "getField" o = RecordBatchBuilderGetFieldMethodInfo
    ResolveRecordBatchBuilderMethod "getInitialCapacity" o = RecordBatchBuilderGetInitialCapacityMethodInfo
    ResolveRecordBatchBuilderMethod "getNColumns" o = RecordBatchBuilderGetNColumnsMethodInfo
    ResolveRecordBatchBuilderMethod "getNFields" o = RecordBatchBuilderGetNFieldsMethodInfo
    ResolveRecordBatchBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveRecordBatchBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveRecordBatchBuilderMethod "getSchema" o = RecordBatchBuilderGetSchemaMethodInfo
    ResolveRecordBatchBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveRecordBatchBuilderMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveRecordBatchBuilderMethod "setInitialCapacity" o = RecordBatchBuilderSetInitialCapacityMethodInfo
    ResolveRecordBatchBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveRecordBatchBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveRecordBatchBuilderMethod t RecordBatchBuilder, O.MethodInfo info RecordBatchBuilder p) => OL.IsLabel t (RecordBatchBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "record-batch-builder"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a `GValueConstruct` with valid value for the “@record-batch-builder@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructRecordBatchBuilderRecordBatchBuilder :: (IsRecordBatchBuilder o, MIO.MonadIO m) => Ptr () -> m (GValueConstruct o)
constructRecordBatchBuilderRecordBatchBuilder val = MIO.liftIO $ B.Properties.constructObjectPropertyPtr "record-batch-builder" val

#if defined(ENABLE_OVERLOADING)
data RecordBatchBuilderRecordBatchBuilderPropertyInfo
instance AttrInfo RecordBatchBuilderRecordBatchBuilderPropertyInfo where
    type AttrAllowedOps RecordBatchBuilderRecordBatchBuilderPropertyInfo = '[ 'AttrConstruct]
    type AttrBaseTypeConstraint RecordBatchBuilderRecordBatchBuilderPropertyInfo = IsRecordBatchBuilder
    type AttrSetTypeConstraint RecordBatchBuilderRecordBatchBuilderPropertyInfo = (~) (Ptr ())
    type AttrTransferTypeConstraint RecordBatchBuilderRecordBatchBuilderPropertyInfo = (~) (Ptr ())
    type AttrTransferType RecordBatchBuilderRecordBatchBuilderPropertyInfo = Ptr ()
    type AttrGetType RecordBatchBuilderRecordBatchBuilderPropertyInfo = ()
    type AttrLabel RecordBatchBuilderRecordBatchBuilderPropertyInfo = "record-batch-builder"
    type AttrOrigin RecordBatchBuilderRecordBatchBuilderPropertyInfo = RecordBatchBuilder
    attrGet = undefined
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructRecordBatchBuilderRecordBatchBuilder
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList RecordBatchBuilder
type instance O.AttributeList RecordBatchBuilder = RecordBatchBuilderAttributeList
type RecordBatchBuilderAttributeList = ('[ '("recordBatchBuilder", RecordBatchBuilderRecordBatchBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
recordBatchBuilderRecordBatchBuilder :: AttrLabelProxy "recordBatchBuilder"
recordBatchBuilderRecordBatchBuilder = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList RecordBatchBuilder = RecordBatchBuilderSignalList
type RecordBatchBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method RecordBatchBuilder::new
-- method type : Constructor
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
--               (TInterface
--                  Name { namespace = "Arrow" , name = "RecordBatchBuilder" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_record_batch_builder_new" garrow_record_batch_builder_new :: 
    Ptr Arrow.Schema.Schema ->              -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr RecordBatchBuilder)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.8.0/
recordBatchBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Schema.IsSchema a) =>
    a
    -- ^ /@schema@/: A t'GI.Arrow.Objects.Schema.Schema'.
    -> m RecordBatchBuilder
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.RecordBatchBuilder.RecordBatchBuilder' on success,
    --   'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
recordBatchBuilderNew schema = liftIO $ do
    schema' <- unsafeManagedPtrCastPtr schema
    onException (do
        result <- propagateGError $ garrow_record_batch_builder_new schema'
        checkUnexpectedReturnNULL "recordBatchBuilderNew" result
        result' <- (wrapObject RecordBatchBuilder) result
        touchManagedPtr schema
        return result'
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
#endif

-- method RecordBatchBuilder::flush
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "RecordBatchBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowRecordBatchBuilder."
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
--               (TInterface Name { namespace = "Arrow" , name = "RecordBatch" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_record_batch_builder_flush" garrow_record_batch_builder_flush :: 
    Ptr RecordBatchBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "RecordBatchBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.RecordBatch.RecordBatch)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.8.0/
recordBatchBuilderFlush ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.RecordBatchBuilder.RecordBatchBuilder'.
    -> m Arrow.RecordBatch.RecordBatch
    -- ^ __Returns:__ The built t'GI.Arrow.Objects.RecordBatch.RecordBatch' on success,
    --   'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
recordBatchBuilderFlush builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        result <- propagateGError $ garrow_record_batch_builder_flush builder'
        checkUnexpectedReturnNULL "recordBatchBuilderFlush" result
        result' <- (wrapObject Arrow.RecordBatch.RecordBatch) result
        touchManagedPtr builder
        return result'
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data RecordBatchBuilderFlushMethodInfo
instance (signature ~ (m Arrow.RecordBatch.RecordBatch), MonadIO m, IsRecordBatchBuilder a) => O.MethodInfo RecordBatchBuilderFlushMethodInfo a signature where
    overloadedMethod = recordBatchBuilderFlush

#endif

-- method RecordBatchBuilder::get_column_builder
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "RecordBatchBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowRecordBatchBuilder."
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
--                 { rawDocText =
--                     Just
--                       "The column index. If it's negative, index is counted backward\n  from the end of the columns. `-1` means the last column."
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
--               (TInterface Name { namespace = "Arrow" , name = "ArrayBuilder" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_record_batch_builder_get_column_builder" garrow_record_batch_builder_get_column_builder :: 
    Ptr RecordBatchBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "RecordBatchBuilder"})
    Int32 ->                                -- i : TBasicType TInt
    IO (Ptr Arrow.ArrayBuilder.ArrayBuilder)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.13.0/
recordBatchBuilderGetColumnBuilder ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.RecordBatchBuilder.RecordBatchBuilder'.
    -> Int32
    -- ^ /@i@/: The column index. If it\'s negative, index is counted backward
    --   from the end of the columns. @-1@ means the last column.
    -> m (Maybe Arrow.ArrayBuilder.ArrayBuilder)
    -- ^ __Returns:__ The t'GI.Arrow.Objects.ArrayBuilder.ArrayBuilder' for
    --   the @i@-th column on success, 'P.Nothing' on out of index.
recordBatchBuilderGetColumnBuilder builder i = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    result <- garrow_record_batch_builder_get_column_builder builder' i
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Arrow.ArrayBuilder.ArrayBuilder) result'
        return result''
    touchManagedPtr builder
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data RecordBatchBuilderGetColumnBuilderMethodInfo
instance (signature ~ (Int32 -> m (Maybe Arrow.ArrayBuilder.ArrayBuilder)), MonadIO m, IsRecordBatchBuilder a) => O.MethodInfo RecordBatchBuilderGetColumnBuilderMethodInfo a signature where
    overloadedMethod = recordBatchBuilderGetColumnBuilder

#endif

-- method RecordBatchBuilder::get_field
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "RecordBatchBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowRecordBatchBuilder."
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
--                 { rawDocText =
--                     Just
--                       "The field index. If it's negative, index is counted backward\n  from the end of the fields. `-1` means the last field."
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
--               (TInterface Name { namespace = "Arrow" , name = "ArrayBuilder" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_record_batch_builder_get_field" garrow_record_batch_builder_get_field :: 
    Ptr RecordBatchBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "RecordBatchBuilder"})
    Int32 ->                                -- i : TBasicType TInt
    IO (Ptr Arrow.ArrayBuilder.ArrayBuilder)

{-# DEPRECATED recordBatchBuilderGetField ["(Since version 0.13.0)","","  Use 'GI.Arrow.Objects.RecordBatchBuilder.recordBatchBuilderGetColumnBuilder' instead."] #-}
-- | /No description available in the introspection data./
-- 
-- /Since: 0.8.0/
recordBatchBuilderGetField ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.RecordBatchBuilder.RecordBatchBuilder'.
    -> Int32
    -- ^ /@i@/: The field index. If it\'s negative, index is counted backward
    --   from the end of the fields. @-1@ means the last field.
    -> m (Maybe Arrow.ArrayBuilder.ArrayBuilder)
    -- ^ __Returns:__ The t'GI.Arrow.Objects.ArrayBuilder.ArrayBuilder' for
    --   the @i@-th field on success, 'P.Nothing' on out of index.
recordBatchBuilderGetField builder i = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    result <- garrow_record_batch_builder_get_field builder' i
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Arrow.ArrayBuilder.ArrayBuilder) result'
        return result''
    touchManagedPtr builder
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data RecordBatchBuilderGetFieldMethodInfo
instance (signature ~ (Int32 -> m (Maybe Arrow.ArrayBuilder.ArrayBuilder)), MonadIO m, IsRecordBatchBuilder a) => O.MethodInfo RecordBatchBuilderGetFieldMethodInfo a signature where
    overloadedMethod = recordBatchBuilderGetField

#endif

-- method RecordBatchBuilder::get_initial_capacity
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "RecordBatchBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowRecordBatchBuilder."
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
-- returnType: Just (TBasicType TInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_record_batch_builder_get_initial_capacity" garrow_record_batch_builder_get_initial_capacity :: 
    Ptr RecordBatchBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "RecordBatchBuilder"})
    IO Int64

-- | /No description available in the introspection data./
-- 
-- /Since: 0.8.0/
recordBatchBuilderGetInitialCapacity ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.RecordBatchBuilder.RecordBatchBuilder'.
    -> m Int64
    -- ^ __Returns:__ The initial capacity for array builders.
recordBatchBuilderGetInitialCapacity builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    result <- garrow_record_batch_builder_get_initial_capacity builder'
    touchManagedPtr builder
    return result

#if defined(ENABLE_OVERLOADING)
data RecordBatchBuilderGetInitialCapacityMethodInfo
instance (signature ~ (m Int64), MonadIO m, IsRecordBatchBuilder a) => O.MethodInfo RecordBatchBuilderGetInitialCapacityMethodInfo a signature where
    overloadedMethod = recordBatchBuilderGetInitialCapacity

#endif

-- method RecordBatchBuilder::get_n_columns
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "RecordBatchBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowRecordBatchBuilder."
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

foreign import ccall "garrow_record_batch_builder_get_n_columns" garrow_record_batch_builder_get_n_columns :: 
    Ptr RecordBatchBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "RecordBatchBuilder"})
    IO Int32

-- | /No description available in the introspection data./
-- 
-- /Since: 0.13.0/
recordBatchBuilderGetNColumns ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.RecordBatchBuilder.RecordBatchBuilder'.
    -> m Int32
    -- ^ __Returns:__ The number of columns.
recordBatchBuilderGetNColumns builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    result <- garrow_record_batch_builder_get_n_columns builder'
    touchManagedPtr builder
    return result

#if defined(ENABLE_OVERLOADING)
data RecordBatchBuilderGetNColumnsMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsRecordBatchBuilder a) => O.MethodInfo RecordBatchBuilderGetNColumnsMethodInfo a signature where
    overloadedMethod = recordBatchBuilderGetNColumns

#endif

-- method RecordBatchBuilder::get_n_fields
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "RecordBatchBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowRecordBatchBuilder."
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

foreign import ccall "garrow_record_batch_builder_get_n_fields" garrow_record_batch_builder_get_n_fields :: 
    Ptr RecordBatchBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "RecordBatchBuilder"})
    IO Int32

{-# DEPRECATED recordBatchBuilderGetNFields ["(Since version 0.13.0)","","  Use 'GI.Arrow.Objects.RecordBatchBuilder.recordBatchBuilderGetNColumns' instead."] #-}
-- | /No description available in the introspection data./
-- 
-- /Since: 0.8.0/
recordBatchBuilderGetNFields ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.RecordBatchBuilder.RecordBatchBuilder'.
    -> m Int32
    -- ^ __Returns:__ The number of fields.
recordBatchBuilderGetNFields builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    result <- garrow_record_batch_builder_get_n_fields builder'
    touchManagedPtr builder
    return result

#if defined(ENABLE_OVERLOADING)
data RecordBatchBuilderGetNFieldsMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsRecordBatchBuilder a) => O.MethodInfo RecordBatchBuilderGetNFieldsMethodInfo a signature where
    overloadedMethod = recordBatchBuilderGetNFields

#endif

-- method RecordBatchBuilder::get_schema
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "RecordBatchBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowRecordBatchBuilder."
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

foreign import ccall "garrow_record_batch_builder_get_schema" garrow_record_batch_builder_get_schema :: 
    Ptr RecordBatchBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "RecordBatchBuilder"})
    IO (Ptr Arrow.Schema.Schema)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.8.0/
recordBatchBuilderGetSchema ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.RecordBatchBuilder.RecordBatchBuilder'.
    -> m Arrow.Schema.Schema
    -- ^ __Returns:__ The t'GI.Arrow.Objects.Schema.Schema' of the record batch builder.
recordBatchBuilderGetSchema builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    result <- garrow_record_batch_builder_get_schema builder'
    checkUnexpectedReturnNULL "recordBatchBuilderGetSchema" result
    result' <- (wrapObject Arrow.Schema.Schema) result
    touchManagedPtr builder
    return result'

#if defined(ENABLE_OVERLOADING)
data RecordBatchBuilderGetSchemaMethodInfo
instance (signature ~ (m Arrow.Schema.Schema), MonadIO m, IsRecordBatchBuilder a) => O.MethodInfo RecordBatchBuilderGetSchemaMethodInfo a signature where
    overloadedMethod = recordBatchBuilderGetSchema

#endif

-- method RecordBatchBuilder::set_initial_capacity
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "RecordBatchBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowRecordBatchBuilder."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "capacity"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The new initial capacity for array builders."
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "garrow_record_batch_builder_set_initial_capacity" garrow_record_batch_builder_set_initial_capacity :: 
    Ptr RecordBatchBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "RecordBatchBuilder"})
    Int64 ->                                -- capacity : TBasicType TInt64
    IO ()

-- | /No description available in the introspection data./
-- 
-- /Since: 0.8.0/
recordBatchBuilderSetInitialCapacity ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.RecordBatchBuilder.RecordBatchBuilder'.
    -> Int64
    -- ^ /@capacity@/: The new initial capacity for array builders.
    -> m ()
recordBatchBuilderSetInitialCapacity builder capacity = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    garrow_record_batch_builder_set_initial_capacity builder' capacity
    touchManagedPtr builder
    return ()

#if defined(ENABLE_OVERLOADING)
data RecordBatchBuilderSetInitialCapacityMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsRecordBatchBuilder a) => O.MethodInfo RecordBatchBuilderSetInitialCapacityMethodInfo a signature where
    overloadedMethod = recordBatchBuilderSetInitialCapacity

#endif


