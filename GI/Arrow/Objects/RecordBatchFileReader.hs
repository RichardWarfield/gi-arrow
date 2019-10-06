{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- It wraps @arrow::ipc::RecordBatchFileReader@.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.RecordBatchFileReader
    ( 

-- * Exported types
    RecordBatchFileReader(..)               ,
    IsRecordBatchFileReader                 ,
    toRecordBatchFileReader                 ,
    noRecordBatchFileReader                 ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveRecordBatchFileReaderMethod      ,
#endif


-- ** getNRecordBatches #method:getNRecordBatches#

#if defined(ENABLE_OVERLOADING)
    RecordBatchFileReaderGetNRecordBatchesMethodInfo,
#endif
    recordBatchFileReaderGetNRecordBatches  ,


-- ** getRecordBatch #method:getRecordBatch#

#if defined(ENABLE_OVERLOADING)
    RecordBatchFileReaderGetRecordBatchMethodInfo,
#endif
    recordBatchFileReaderGetRecordBatch     ,


-- ** getSchema #method:getSchema#

#if defined(ENABLE_OVERLOADING)
    RecordBatchFileReaderGetSchemaMethodInfo,
#endif
    recordBatchFileReaderGetSchema          ,


-- ** getVersion #method:getVersion#

#if defined(ENABLE_OVERLOADING)
    RecordBatchFileReaderGetVersionMethodInfo,
#endif
    recordBatchFileReaderGetVersion         ,


-- ** new #method:new#

    recordBatchFileReaderNew                ,


-- ** readRecordBatch #method:readRecordBatch#

#if defined(ENABLE_OVERLOADING)
    RecordBatchFileReaderReadRecordBatchMethodInfo,
#endif
    recordBatchFileReaderReadRecordBatch    ,




 -- * Properties
-- ** recordBatchFileReader #attr:recordBatchFileReader#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    RecordBatchFileReaderRecordBatchFileReaderPropertyInfo,
#endif
    constructRecordBatchFileReaderRecordBatchFileReader,
#if defined(ENABLE_OVERLOADING)
    recordBatchFileReaderRecordBatchFileReader,
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
import {-# SOURCE #-} qualified GI.Arrow.Objects.RecordBatch as Arrow.RecordBatch
import {-# SOURCE #-} qualified GI.Arrow.Objects.Schema as Arrow.Schema
import {-# SOURCE #-} qualified GI.Arrow.Objects.SeekableInputStream as Arrow.SeekableInputStream
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype RecordBatchFileReader = RecordBatchFileReader (ManagedPtr RecordBatchFileReader)
    deriving (Eq)
foreign import ccall "garrow_record_batch_file_reader_get_type"
    c_garrow_record_batch_file_reader_get_type :: IO GType

instance GObject RecordBatchFileReader where
    gobjectType = c_garrow_record_batch_file_reader_get_type
    

-- | Convert 'RecordBatchFileReader' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue RecordBatchFileReader where
    toGValue o = do
        gtype <- c_garrow_record_batch_file_reader_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr RecordBatchFileReader)
        B.ManagedPtr.newObject RecordBatchFileReader ptr
        
    

-- | Type class for types which can be safely cast to `RecordBatchFileReader`, for instance with `toRecordBatchFileReader`.
class (GObject o, O.IsDescendantOf RecordBatchFileReader o) => IsRecordBatchFileReader o
instance (GObject o, O.IsDescendantOf RecordBatchFileReader o) => IsRecordBatchFileReader o

instance O.HasParentTypes RecordBatchFileReader
type instance O.ParentTypes RecordBatchFileReader = '[GObject.Object.Object]

-- | Cast to `RecordBatchFileReader`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toRecordBatchFileReader :: (MonadIO m, IsRecordBatchFileReader o) => o -> m RecordBatchFileReader
toRecordBatchFileReader = liftIO . unsafeCastTo RecordBatchFileReader

-- | A convenience alias for `Nothing` :: `Maybe` `RecordBatchFileReader`.
noRecordBatchFileReader :: Maybe RecordBatchFileReader
noRecordBatchFileReader = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveRecordBatchFileReaderMethod (t :: Symbol) (o :: *) :: * where
    ResolveRecordBatchFileReaderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveRecordBatchFileReaderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveRecordBatchFileReaderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveRecordBatchFileReaderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveRecordBatchFileReaderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveRecordBatchFileReaderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveRecordBatchFileReaderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveRecordBatchFileReaderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveRecordBatchFileReaderMethod "readRecordBatch" o = RecordBatchFileReaderReadRecordBatchMethodInfo
    ResolveRecordBatchFileReaderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveRecordBatchFileReaderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveRecordBatchFileReaderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveRecordBatchFileReaderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveRecordBatchFileReaderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveRecordBatchFileReaderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveRecordBatchFileReaderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveRecordBatchFileReaderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveRecordBatchFileReaderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveRecordBatchFileReaderMethod "getNRecordBatches" o = RecordBatchFileReaderGetNRecordBatchesMethodInfo
    ResolveRecordBatchFileReaderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveRecordBatchFileReaderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveRecordBatchFileReaderMethod "getRecordBatch" o = RecordBatchFileReaderGetRecordBatchMethodInfo
    ResolveRecordBatchFileReaderMethod "getSchema" o = RecordBatchFileReaderGetSchemaMethodInfo
    ResolveRecordBatchFileReaderMethod "getVersion" o = RecordBatchFileReaderGetVersionMethodInfo
    ResolveRecordBatchFileReaderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveRecordBatchFileReaderMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveRecordBatchFileReaderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveRecordBatchFileReaderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveRecordBatchFileReaderMethod t RecordBatchFileReader, O.MethodInfo info RecordBatchFileReader p) => OL.IsLabel t (RecordBatchFileReader -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "record-batch-file-reader"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a `GValueConstruct` with valid value for the “@record-batch-file-reader@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructRecordBatchFileReaderRecordBatchFileReader :: (IsRecordBatchFileReader o, MIO.MonadIO m) => Ptr () -> m (GValueConstruct o)
constructRecordBatchFileReaderRecordBatchFileReader val = MIO.liftIO $ B.Properties.constructObjectPropertyPtr "record-batch-file-reader" val

#if defined(ENABLE_OVERLOADING)
data RecordBatchFileReaderRecordBatchFileReaderPropertyInfo
instance AttrInfo RecordBatchFileReaderRecordBatchFileReaderPropertyInfo where
    type AttrAllowedOps RecordBatchFileReaderRecordBatchFileReaderPropertyInfo = '[ 'AttrConstruct]
    type AttrBaseTypeConstraint RecordBatchFileReaderRecordBatchFileReaderPropertyInfo = IsRecordBatchFileReader
    type AttrSetTypeConstraint RecordBatchFileReaderRecordBatchFileReaderPropertyInfo = (~) (Ptr ())
    type AttrTransferTypeConstraint RecordBatchFileReaderRecordBatchFileReaderPropertyInfo = (~) (Ptr ())
    type AttrTransferType RecordBatchFileReaderRecordBatchFileReaderPropertyInfo = Ptr ()
    type AttrGetType RecordBatchFileReaderRecordBatchFileReaderPropertyInfo = ()
    type AttrLabel RecordBatchFileReaderRecordBatchFileReaderPropertyInfo = "record-batch-file-reader"
    type AttrOrigin RecordBatchFileReaderRecordBatchFileReaderPropertyInfo = RecordBatchFileReader
    attrGet = undefined
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructRecordBatchFileReaderRecordBatchFileReader
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList RecordBatchFileReader
type instance O.AttributeList RecordBatchFileReader = RecordBatchFileReaderAttributeList
type RecordBatchFileReaderAttributeList = ('[ '("recordBatchFileReader", RecordBatchFileReaderRecordBatchFileReaderPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
recordBatchFileReaderRecordBatchFileReader :: AttrLabelProxy "recordBatchFileReader"
recordBatchFileReaderRecordBatchFileReader = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList RecordBatchFileReader = RecordBatchFileReaderSignalList
type RecordBatchFileReaderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method RecordBatchFileReader::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "file"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "SeekableInputStream" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The file to be read."
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
--                  Name { namespace = "Arrow" , name = "RecordBatchFileReader" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_record_batch_file_reader_new" garrow_record_batch_file_reader_new :: 
    Ptr Arrow.SeekableInputStream.SeekableInputStream -> -- file : TInterface (Name {namespace = "Arrow", name = "SeekableInputStream"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr RecordBatchFileReader)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
recordBatchFileReaderNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.SeekableInputStream.IsSeekableInputStream a) =>
    a
    -- ^ /@file@/: The file to be read.
    -> m (Maybe RecordBatchFileReader)
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.RecordBatchFileReader.RecordBatchFileReader'
    --   or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
recordBatchFileReaderNew file = liftIO $ do
    file' <- unsafeManagedPtrCastPtr file
    onException (do
        result <- propagateGError $ garrow_record_batch_file_reader_new file'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject RecordBatchFileReader) result'
            return result''
        touchManagedPtr file
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
#endif

-- method RecordBatchFileReader::get_n_record_batches
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "reader"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "RecordBatchFileReader" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowRecordBatchFileReader."
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
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_record_batch_file_reader_get_n_record_batches" garrow_record_batch_file_reader_get_n_record_batches :: 
    Ptr RecordBatchFileReader ->            -- reader : TInterface (Name {namespace = "Arrow", name = "RecordBatchFileReader"})
    IO Word32

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
recordBatchFileReaderGetNRecordBatches ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchFileReader a) =>
    a
    -- ^ /@reader@/: A t'GI.Arrow.Objects.RecordBatchFileReader.RecordBatchFileReader'.
    -> m Word32
    -- ^ __Returns:__ The number of record batches in the file.
recordBatchFileReaderGetNRecordBatches reader = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    result <- garrow_record_batch_file_reader_get_n_record_batches reader'
    touchManagedPtr reader
    return result

#if defined(ENABLE_OVERLOADING)
data RecordBatchFileReaderGetNRecordBatchesMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsRecordBatchFileReader a) => O.MethodInfo RecordBatchFileReaderGetNRecordBatchesMethodInfo a signature where
    overloadedMethod = recordBatchFileReaderGetNRecordBatches

#endif

-- method RecordBatchFileReader::get_record_batch
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "reader"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "RecordBatchFileReader" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowRecordBatchFileReader."
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
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The index of the target record batch."
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

foreign import ccall "garrow_record_batch_file_reader_get_record_batch" garrow_record_batch_file_reader_get_record_batch :: 
    Ptr RecordBatchFileReader ->            -- reader : TInterface (Name {namespace = "Arrow", name = "RecordBatchFileReader"})
    Word32 ->                               -- i : TBasicType TUInt
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.RecordBatch.RecordBatch)

{-# DEPRECATED recordBatchFileReaderGetRecordBatch ["(Since version 0.5.0)","","  Use 'GI.Arrow.Objects.RecordBatchFileReader.recordBatchFileReaderReadRecordBatch' instead."] #-}
-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
recordBatchFileReaderGetRecordBatch ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchFileReader a) =>
    a
    -- ^ /@reader@/: A t'GI.Arrow.Objects.RecordBatchFileReader.RecordBatchFileReader'.
    -> Word32
    -- ^ /@i@/: The index of the target record batch.
    -> m (Maybe Arrow.RecordBatch.RecordBatch)
    -- ^ __Returns:__ 
    --   The i-th record batch in the file or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
recordBatchFileReaderGetRecordBatch reader i = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    onException (do
        result <- propagateGError $ garrow_record_batch_file_reader_get_record_batch reader' i
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Arrow.RecordBatch.RecordBatch) result'
            return result''
        touchManagedPtr reader
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data RecordBatchFileReaderGetRecordBatchMethodInfo
instance (signature ~ (Word32 -> m (Maybe Arrow.RecordBatch.RecordBatch)), MonadIO m, IsRecordBatchFileReader a) => O.MethodInfo RecordBatchFileReaderGetRecordBatchMethodInfo a signature where
    overloadedMethod = recordBatchFileReaderGetRecordBatch

#endif

-- method RecordBatchFileReader::get_schema
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "reader"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "RecordBatchFileReader" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowRecordBatchFileReader."
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

foreign import ccall "garrow_record_batch_file_reader_get_schema" garrow_record_batch_file_reader_get_schema :: 
    Ptr RecordBatchFileReader ->            -- reader : TInterface (Name {namespace = "Arrow", name = "RecordBatchFileReader"})
    IO (Ptr Arrow.Schema.Schema)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
recordBatchFileReaderGetSchema ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchFileReader a) =>
    a
    -- ^ /@reader@/: A t'GI.Arrow.Objects.RecordBatchFileReader.RecordBatchFileReader'.
    -> m Arrow.Schema.Schema
    -- ^ __Returns:__ The schema in the file.
recordBatchFileReaderGetSchema reader = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    result <- garrow_record_batch_file_reader_get_schema reader'
    checkUnexpectedReturnNULL "recordBatchFileReaderGetSchema" result
    result' <- (wrapObject Arrow.Schema.Schema) result
    touchManagedPtr reader
    return result'

#if defined(ENABLE_OVERLOADING)
data RecordBatchFileReaderGetSchemaMethodInfo
instance (signature ~ (m Arrow.Schema.Schema), MonadIO m, IsRecordBatchFileReader a) => O.MethodInfo RecordBatchFileReaderGetSchemaMethodInfo a signature where
    overloadedMethod = recordBatchFileReaderGetSchema

#endif

-- method RecordBatchFileReader::get_version
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "reader"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "RecordBatchFileReader" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowRecordBatchFileReader."
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
--                  Name { namespace = "Arrow" , name = "MetadataVersion" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_record_batch_file_reader_get_version" garrow_record_batch_file_reader_get_version :: 
    Ptr RecordBatchFileReader ->            -- reader : TInterface (Name {namespace = "Arrow", name = "RecordBatchFileReader"})
    IO CUInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
recordBatchFileReaderGetVersion ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchFileReader a) =>
    a
    -- ^ /@reader@/: A t'GI.Arrow.Objects.RecordBatchFileReader.RecordBatchFileReader'.
    -> m Arrow.Enums.MetadataVersion
    -- ^ __Returns:__ The format version in the file.
recordBatchFileReaderGetVersion reader = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    result <- garrow_record_batch_file_reader_get_version reader'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr reader
    return result'

#if defined(ENABLE_OVERLOADING)
data RecordBatchFileReaderGetVersionMethodInfo
instance (signature ~ (m Arrow.Enums.MetadataVersion), MonadIO m, IsRecordBatchFileReader a) => O.MethodInfo RecordBatchFileReaderGetVersionMethodInfo a signature where
    overloadedMethod = recordBatchFileReaderGetVersion

#endif

-- method RecordBatchFileReader::read_record_batch
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "reader"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "RecordBatchFileReader" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowRecordBatchFileReader."
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
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The index of the target record batch."
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

foreign import ccall "garrow_record_batch_file_reader_read_record_batch" garrow_record_batch_file_reader_read_record_batch :: 
    Ptr RecordBatchFileReader ->            -- reader : TInterface (Name {namespace = "Arrow", name = "RecordBatchFileReader"})
    Word32 ->                               -- i : TBasicType TUInt
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.RecordBatch.RecordBatch)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.5.0/
recordBatchFileReaderReadRecordBatch ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchFileReader a) =>
    a
    -- ^ /@reader@/: A t'GI.Arrow.Objects.RecordBatchFileReader.RecordBatchFileReader'.
    -> Word32
    -- ^ /@i@/: The index of the target record batch.
    -> m (Maybe Arrow.RecordBatch.RecordBatch)
    -- ^ __Returns:__ 
    --   The i-th record batch in the file or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
recordBatchFileReaderReadRecordBatch reader i = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    onException (do
        result <- propagateGError $ garrow_record_batch_file_reader_read_record_batch reader' i
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Arrow.RecordBatch.RecordBatch) result'
            return result''
        touchManagedPtr reader
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data RecordBatchFileReaderReadRecordBatchMethodInfo
instance (signature ~ (Word32 -> m (Maybe Arrow.RecordBatch.RecordBatch)), MonadIO m, IsRecordBatchFileReader a) => O.MethodInfo RecordBatchFileReaderReadRecordBatchMethodInfo a signature where
    overloadedMethod = recordBatchFileReaderReadRecordBatch

#endif


