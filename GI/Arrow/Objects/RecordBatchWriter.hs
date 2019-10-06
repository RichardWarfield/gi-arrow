{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- It wraps @arrow::ipc::RecordBatchWriter@.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.RecordBatchWriter
    ( 

-- * Exported types
    RecordBatchWriter(..)                   ,
    IsRecordBatchWriter                     ,
    toRecordBatchWriter                     ,
    noRecordBatchWriter                     ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveRecordBatchWriterMethod          ,
#endif


-- ** close #method:close#

#if defined(ENABLE_OVERLOADING)
    RecordBatchWriterCloseMethodInfo        ,
#endif
    recordBatchWriterClose                  ,


-- ** writeRecordBatch #method:writeRecordBatch#

#if defined(ENABLE_OVERLOADING)
    RecordBatchWriterWriteRecordBatchMethodInfo,
#endif
    recordBatchWriterWriteRecordBatch       ,


-- ** writeTable #method:writeTable#

#if defined(ENABLE_OVERLOADING)
    RecordBatchWriterWriteTableMethodInfo   ,
#endif
    recordBatchWriterWriteTable             ,




 -- * Properties
-- ** recordBatchWriter #attr:recordBatchWriter#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    RecordBatchWriterRecordBatchWriterPropertyInfo,
#endif
    constructRecordBatchWriterRecordBatchWriter,
#if defined(ENABLE_OVERLOADING)
    recordBatchWriterRecordBatchWriter      ,
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

import {-# SOURCE #-} qualified GI.Arrow.Objects.RecordBatch as Arrow.RecordBatch
import {-# SOURCE #-} qualified GI.Arrow.Objects.Table as Arrow.Table
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype RecordBatchWriter = RecordBatchWriter (ManagedPtr RecordBatchWriter)
    deriving (Eq)
foreign import ccall "garrow_record_batch_writer_get_type"
    c_garrow_record_batch_writer_get_type :: IO GType

instance GObject RecordBatchWriter where
    gobjectType = c_garrow_record_batch_writer_get_type
    

-- | Convert 'RecordBatchWriter' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue RecordBatchWriter where
    toGValue o = do
        gtype <- c_garrow_record_batch_writer_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr RecordBatchWriter)
        B.ManagedPtr.newObject RecordBatchWriter ptr
        
    

-- | Type class for types which can be safely cast to `RecordBatchWriter`, for instance with `toRecordBatchWriter`.
class (GObject o, O.IsDescendantOf RecordBatchWriter o) => IsRecordBatchWriter o
instance (GObject o, O.IsDescendantOf RecordBatchWriter o) => IsRecordBatchWriter o

instance O.HasParentTypes RecordBatchWriter
type instance O.ParentTypes RecordBatchWriter = '[GObject.Object.Object]

-- | Cast to `RecordBatchWriter`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toRecordBatchWriter :: (MonadIO m, IsRecordBatchWriter o) => o -> m RecordBatchWriter
toRecordBatchWriter = liftIO . unsafeCastTo RecordBatchWriter

-- | A convenience alias for `Nothing` :: `Maybe` `RecordBatchWriter`.
noRecordBatchWriter :: Maybe RecordBatchWriter
noRecordBatchWriter = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveRecordBatchWriterMethod (t :: Symbol) (o :: *) :: * where
    ResolveRecordBatchWriterMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveRecordBatchWriterMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveRecordBatchWriterMethod "close" o = RecordBatchWriterCloseMethodInfo
    ResolveRecordBatchWriterMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveRecordBatchWriterMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveRecordBatchWriterMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveRecordBatchWriterMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveRecordBatchWriterMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveRecordBatchWriterMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveRecordBatchWriterMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveRecordBatchWriterMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveRecordBatchWriterMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveRecordBatchWriterMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveRecordBatchWriterMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveRecordBatchWriterMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveRecordBatchWriterMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveRecordBatchWriterMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveRecordBatchWriterMethod "writeRecordBatch" o = RecordBatchWriterWriteRecordBatchMethodInfo
    ResolveRecordBatchWriterMethod "writeTable" o = RecordBatchWriterWriteTableMethodInfo
    ResolveRecordBatchWriterMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveRecordBatchWriterMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveRecordBatchWriterMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveRecordBatchWriterMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveRecordBatchWriterMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveRecordBatchWriterMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveRecordBatchWriterMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveRecordBatchWriterMethod t RecordBatchWriter, O.MethodInfo info RecordBatchWriter p) => OL.IsLabel t (RecordBatchWriter -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "record-batch-writer"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a `GValueConstruct` with valid value for the “@record-batch-writer@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructRecordBatchWriterRecordBatchWriter :: (IsRecordBatchWriter o, MIO.MonadIO m) => Ptr () -> m (GValueConstruct o)
constructRecordBatchWriterRecordBatchWriter val = MIO.liftIO $ B.Properties.constructObjectPropertyPtr "record-batch-writer" val

#if defined(ENABLE_OVERLOADING)
data RecordBatchWriterRecordBatchWriterPropertyInfo
instance AttrInfo RecordBatchWriterRecordBatchWriterPropertyInfo where
    type AttrAllowedOps RecordBatchWriterRecordBatchWriterPropertyInfo = '[ 'AttrConstruct]
    type AttrBaseTypeConstraint RecordBatchWriterRecordBatchWriterPropertyInfo = IsRecordBatchWriter
    type AttrSetTypeConstraint RecordBatchWriterRecordBatchWriterPropertyInfo = (~) (Ptr ())
    type AttrTransferTypeConstraint RecordBatchWriterRecordBatchWriterPropertyInfo = (~) (Ptr ())
    type AttrTransferType RecordBatchWriterRecordBatchWriterPropertyInfo = Ptr ()
    type AttrGetType RecordBatchWriterRecordBatchWriterPropertyInfo = ()
    type AttrLabel RecordBatchWriterRecordBatchWriterPropertyInfo = "record-batch-writer"
    type AttrOrigin RecordBatchWriterRecordBatchWriterPropertyInfo = RecordBatchWriter
    attrGet = undefined
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructRecordBatchWriterRecordBatchWriter
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList RecordBatchWriter
type instance O.AttributeList RecordBatchWriter = RecordBatchWriterAttributeList
type RecordBatchWriterAttributeList = ('[ '("recordBatchWriter", RecordBatchWriterRecordBatchWriterPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
recordBatchWriterRecordBatchWriter :: AttrLabelProxy "recordBatchWriter"
recordBatchWriterRecordBatchWriter = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList RecordBatchWriter = RecordBatchWriterSignalList
type RecordBatchWriterSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method RecordBatchWriter::close
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "writer"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "RecordBatchWriter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowRecordBatchWriter."
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
-- throws : True
-- Skip return : False

foreign import ccall "garrow_record_batch_writer_close" garrow_record_batch_writer_close :: 
    Ptr RecordBatchWriter ->                -- writer : TInterface (Name {namespace = "Arrow", name = "RecordBatchWriter"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
recordBatchWriterClose ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchWriter a) =>
    a
    -- ^ /@writer@/: A t'GI.Arrow.Objects.RecordBatchWriter.RecordBatchWriter'.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
recordBatchWriterClose writer = liftIO $ do
    writer' <- unsafeManagedPtrCastPtr writer
    onException (do
        _ <- propagateGError $ garrow_record_batch_writer_close writer'
        touchManagedPtr writer
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data RecordBatchWriterCloseMethodInfo
instance (signature ~ (m ()), MonadIO m, IsRecordBatchWriter a) => O.MethodInfo RecordBatchWriterCloseMethodInfo a signature where
    overloadedMethod = recordBatchWriterClose

#endif

-- method RecordBatchWriter::write_record_batch
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "writer"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "RecordBatchWriter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowRecordBatchWriter."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "record_batch"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "RecordBatch" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The record batch to be written."
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
-- throws : True
-- Skip return : False

foreign import ccall "garrow_record_batch_writer_write_record_batch" garrow_record_batch_writer_write_record_batch :: 
    Ptr RecordBatchWriter ->                -- writer : TInterface (Name {namespace = "Arrow", name = "RecordBatchWriter"})
    Ptr Arrow.RecordBatch.RecordBatch ->    -- record_batch : TInterface (Name {namespace = "Arrow", name = "RecordBatch"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
recordBatchWriterWriteRecordBatch ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchWriter a, Arrow.RecordBatch.IsRecordBatch b) =>
    a
    -- ^ /@writer@/: A t'GI.Arrow.Objects.RecordBatchWriter.RecordBatchWriter'.
    -> b
    -- ^ /@recordBatch@/: The record batch to be written.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
recordBatchWriterWriteRecordBatch writer recordBatch = liftIO $ do
    writer' <- unsafeManagedPtrCastPtr writer
    recordBatch' <- unsafeManagedPtrCastPtr recordBatch
    onException (do
        _ <- propagateGError $ garrow_record_batch_writer_write_record_batch writer' recordBatch'
        touchManagedPtr writer
        touchManagedPtr recordBatch
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data RecordBatchWriterWriteRecordBatchMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsRecordBatchWriter a, Arrow.RecordBatch.IsRecordBatch b) => O.MethodInfo RecordBatchWriterWriteRecordBatchMethodInfo a signature where
    overloadedMethod = recordBatchWriterWriteRecordBatch

#endif

-- method RecordBatchWriter::write_table
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "writer"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "RecordBatchWriter" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowRecordBatchWriter."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "table"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The table to be written."
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
-- throws : True
-- Skip return : False

foreign import ccall "garrow_record_batch_writer_write_table" garrow_record_batch_writer_write_table :: 
    Ptr RecordBatchWriter ->                -- writer : TInterface (Name {namespace = "Arrow", name = "RecordBatchWriter"})
    Ptr Arrow.Table.Table ->                -- table : TInterface (Name {namespace = "Arrow", name = "Table"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.8.0/
recordBatchWriterWriteTable ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchWriter a, Arrow.Table.IsTable b) =>
    a
    -- ^ /@writer@/: A t'GI.Arrow.Objects.RecordBatchWriter.RecordBatchWriter'.
    -> b
    -- ^ /@table@/: The table to be written.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
recordBatchWriterWriteTable writer table = liftIO $ do
    writer' <- unsafeManagedPtrCastPtr writer
    table' <- unsafeManagedPtrCastPtr table
    onException (do
        _ <- propagateGError $ garrow_record_batch_writer_write_table writer' table'
        touchManagedPtr writer
        touchManagedPtr table
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data RecordBatchWriterWriteTableMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsRecordBatchWriter a, Arrow.Table.IsTable b) => O.MethodInfo RecordBatchWriterWriteTableMethodInfo a signature where
    overloadedMethod = recordBatchWriterWriteTable

#endif


