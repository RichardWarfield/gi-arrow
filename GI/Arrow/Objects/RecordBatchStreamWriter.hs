{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- It wraps @arrow::ipc::RecordBatchStreamWriter@.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.RecordBatchStreamWriter
    ( 

-- * Exported types
    RecordBatchStreamWriter(..)             ,
    IsRecordBatchStreamWriter               ,
    toRecordBatchStreamWriter               ,
    noRecordBatchStreamWriter               ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveRecordBatchStreamWriterMethod    ,
#endif


-- ** new #method:new#

    recordBatchStreamWriterNew              ,




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

import {-# SOURCE #-} qualified GI.Arrow.Objects.OutputStream as Arrow.OutputStream
import {-# SOURCE #-} qualified GI.Arrow.Objects.RecordBatchWriter as Arrow.RecordBatchWriter
import {-# SOURCE #-} qualified GI.Arrow.Objects.Schema as Arrow.Schema
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype RecordBatchStreamWriter = RecordBatchStreamWriter (ManagedPtr RecordBatchStreamWriter)
    deriving (Eq)
foreign import ccall "garrow_record_batch_stream_writer_get_type"
    c_garrow_record_batch_stream_writer_get_type :: IO GType

instance GObject RecordBatchStreamWriter where
    gobjectType = c_garrow_record_batch_stream_writer_get_type
    

-- | Convert 'RecordBatchStreamWriter' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue RecordBatchStreamWriter where
    toGValue o = do
        gtype <- c_garrow_record_batch_stream_writer_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr RecordBatchStreamWriter)
        B.ManagedPtr.newObject RecordBatchStreamWriter ptr
        
    

-- | Type class for types which can be safely cast to `RecordBatchStreamWriter`, for instance with `toRecordBatchStreamWriter`.
class (GObject o, O.IsDescendantOf RecordBatchStreamWriter o) => IsRecordBatchStreamWriter o
instance (GObject o, O.IsDescendantOf RecordBatchStreamWriter o) => IsRecordBatchStreamWriter o

instance O.HasParentTypes RecordBatchStreamWriter
type instance O.ParentTypes RecordBatchStreamWriter = '[Arrow.RecordBatchWriter.RecordBatchWriter, GObject.Object.Object]

-- | Cast to `RecordBatchStreamWriter`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toRecordBatchStreamWriter :: (MonadIO m, IsRecordBatchStreamWriter o) => o -> m RecordBatchStreamWriter
toRecordBatchStreamWriter = liftIO . unsafeCastTo RecordBatchStreamWriter

-- | A convenience alias for `Nothing` :: `Maybe` `RecordBatchStreamWriter`.
noRecordBatchStreamWriter :: Maybe RecordBatchStreamWriter
noRecordBatchStreamWriter = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveRecordBatchStreamWriterMethod (t :: Symbol) (o :: *) :: * where
    ResolveRecordBatchStreamWriterMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveRecordBatchStreamWriterMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveRecordBatchStreamWriterMethod "close" o = Arrow.RecordBatchWriter.RecordBatchWriterCloseMethodInfo
    ResolveRecordBatchStreamWriterMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveRecordBatchStreamWriterMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveRecordBatchStreamWriterMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveRecordBatchStreamWriterMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveRecordBatchStreamWriterMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveRecordBatchStreamWriterMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveRecordBatchStreamWriterMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveRecordBatchStreamWriterMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveRecordBatchStreamWriterMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveRecordBatchStreamWriterMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveRecordBatchStreamWriterMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveRecordBatchStreamWriterMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveRecordBatchStreamWriterMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveRecordBatchStreamWriterMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveRecordBatchStreamWriterMethod "writeRecordBatch" o = Arrow.RecordBatchWriter.RecordBatchWriterWriteRecordBatchMethodInfo
    ResolveRecordBatchStreamWriterMethod "writeTable" o = Arrow.RecordBatchWriter.RecordBatchWriterWriteTableMethodInfo
    ResolveRecordBatchStreamWriterMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveRecordBatchStreamWriterMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveRecordBatchStreamWriterMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveRecordBatchStreamWriterMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveRecordBatchStreamWriterMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveRecordBatchStreamWriterMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveRecordBatchStreamWriterMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveRecordBatchStreamWriterMethod t RecordBatchStreamWriter, O.MethodInfo info RecordBatchStreamWriter p) => OL.IsLabel t (RecordBatchStreamWriter -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList RecordBatchStreamWriter
type instance O.AttributeList RecordBatchStreamWriter = RecordBatchStreamWriterAttributeList
type RecordBatchStreamWriterAttributeList = ('[ '("recordBatchWriter", Arrow.RecordBatchWriter.RecordBatchWriterRecordBatchWriterPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList RecordBatchStreamWriter = RecordBatchStreamWriterSignalList
type RecordBatchStreamWriterSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method RecordBatchStreamWriter::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "sink"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "OutputStream" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The output of the writer."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "schema"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Schema" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The schema of the writer."
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
--                  Name { namespace = "Arrow" , name = "RecordBatchStreamWriter" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_record_batch_stream_writer_new" garrow_record_batch_stream_writer_new :: 
    Ptr Arrow.OutputStream.OutputStream ->  -- sink : TInterface (Name {namespace = "Arrow", name = "OutputStream"})
    Ptr Arrow.Schema.Schema ->              -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr RecordBatchStreamWriter)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
recordBatchStreamWriterNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.OutputStream.IsOutputStream a, Arrow.Schema.IsSchema b) =>
    a
    -- ^ /@sink@/: The output of the writer.
    -> b
    -- ^ /@schema@/: The schema of the writer.
    -> m (Maybe RecordBatchStreamWriter)
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.RecordBatchStreamWriter.RecordBatchStreamWriter'
    --   or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
recordBatchStreamWriterNew sink schema = liftIO $ do
    sink' <- unsafeManagedPtrCastPtr sink
    schema' <- unsafeManagedPtrCastPtr schema
    onException (do
        result <- propagateGError $ garrow_record_batch_stream_writer_new sink' schema'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject RecordBatchStreamWriter) result'
            return result''
        touchManagedPtr sink
        touchManagedPtr schema
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
#endif


