{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- It wraps @arrow::io::MemoryMappedFile@.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.MemoryMappedInputStream
    ( 

-- * Exported types
    MemoryMappedInputStream(..)             ,
    IsMemoryMappedInputStream               ,
    toMemoryMappedInputStream               ,
    noMemoryMappedInputStream               ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveMemoryMappedInputStreamMethod    ,
#endif


-- ** new #method:new#

    memoryMappedInputStreamNew              ,




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

import {-# SOURCE #-} qualified GI.Arrow.Interfaces.File as Arrow.File
import {-# SOURCE #-} qualified GI.Arrow.Interfaces.Readable as Arrow.Readable
import {-# SOURCE #-} qualified GI.Arrow.Objects.InputStream as Arrow.InputStream
import {-# SOURCE #-} qualified GI.Arrow.Objects.SeekableInputStream as Arrow.SeekableInputStream
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gio.Objects.InputStream as Gio.InputStream

-- | Memory-managed wrapper type.
newtype MemoryMappedInputStream = MemoryMappedInputStream (ManagedPtr MemoryMappedInputStream)
    deriving (Eq)
foreign import ccall "garrow_memory_mapped_input_stream_get_type"
    c_garrow_memory_mapped_input_stream_get_type :: IO GType

instance GObject MemoryMappedInputStream where
    gobjectType = c_garrow_memory_mapped_input_stream_get_type
    

-- | Convert 'MemoryMappedInputStream' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue MemoryMappedInputStream where
    toGValue o = do
        gtype <- c_garrow_memory_mapped_input_stream_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr MemoryMappedInputStream)
        B.ManagedPtr.newObject MemoryMappedInputStream ptr
        
    

-- | Type class for types which can be safely cast to `MemoryMappedInputStream`, for instance with `toMemoryMappedInputStream`.
class (GObject o, O.IsDescendantOf MemoryMappedInputStream o) => IsMemoryMappedInputStream o
instance (GObject o, O.IsDescendantOf MemoryMappedInputStream o) => IsMemoryMappedInputStream o

instance O.HasParentTypes MemoryMappedInputStream
type instance O.ParentTypes MemoryMappedInputStream = '[Arrow.SeekableInputStream.SeekableInputStream, Arrow.InputStream.InputStream, Gio.InputStream.InputStream, GObject.Object.Object, Arrow.File.File, Arrow.Readable.Readable]

-- | Cast to `MemoryMappedInputStream`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toMemoryMappedInputStream :: (MonadIO m, IsMemoryMappedInputStream o) => o -> m MemoryMappedInputStream
toMemoryMappedInputStream = liftIO . unsafeCastTo MemoryMappedInputStream

-- | A convenience alias for `Nothing` :: `Maybe` `MemoryMappedInputStream`.
noMemoryMappedInputStream :: Maybe MemoryMappedInputStream
noMemoryMappedInputStream = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveMemoryMappedInputStreamMethod (t :: Symbol) (o :: *) :: * where
    ResolveMemoryMappedInputStreamMethod "advance" o = Arrow.InputStream.InputStreamAdvanceMethodInfo
    ResolveMemoryMappedInputStreamMethod "align" o = Arrow.InputStream.InputStreamAlignMethodInfo
    ResolveMemoryMappedInputStreamMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveMemoryMappedInputStreamMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveMemoryMappedInputStreamMethod "clearPending" o = Gio.InputStream.InputStreamClearPendingMethodInfo
    ResolveMemoryMappedInputStreamMethod "close" o = Gio.InputStream.InputStreamCloseMethodInfo
    ResolveMemoryMappedInputStreamMethod "closeAsync" o = Gio.InputStream.InputStreamCloseAsyncMethodInfo
    ResolveMemoryMappedInputStreamMethod "closeFinish" o = Gio.InputStream.InputStreamCloseFinishMethodInfo
    ResolveMemoryMappedInputStreamMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveMemoryMappedInputStreamMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveMemoryMappedInputStreamMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveMemoryMappedInputStreamMethod "hasPending" o = Gio.InputStream.InputStreamHasPendingMethodInfo
    ResolveMemoryMappedInputStreamMethod "isClosed" o = Gio.InputStream.InputStreamIsClosedMethodInfo
    ResolveMemoryMappedInputStreamMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveMemoryMappedInputStreamMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveMemoryMappedInputStreamMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveMemoryMappedInputStreamMethod "peek" o = Arrow.SeekableInputStream.SeekableInputStreamPeekMethodInfo
    ResolveMemoryMappedInputStreamMethod "read" o = Gio.InputStream.InputStreamReadMethodInfo
    ResolveMemoryMappedInputStreamMethod "readAll" o = Gio.InputStream.InputStreamReadAllMethodInfo
    ResolveMemoryMappedInputStreamMethod "readAllAsync" o = Gio.InputStream.InputStreamReadAllAsyncMethodInfo
    ResolveMemoryMappedInputStreamMethod "readAllFinish" o = Gio.InputStream.InputStreamReadAllFinishMethodInfo
    ResolveMemoryMappedInputStreamMethod "readAsync" o = Gio.InputStream.InputStreamReadAsyncMethodInfo
    ResolveMemoryMappedInputStreamMethod "readAt" o = Arrow.SeekableInputStream.SeekableInputStreamReadAtMethodInfo
    ResolveMemoryMappedInputStreamMethod "readBytes" o = Gio.InputStream.InputStreamReadBytesMethodInfo
    ResolveMemoryMappedInputStreamMethod "readBytesAsync" o = Gio.InputStream.InputStreamReadBytesAsyncMethodInfo
    ResolveMemoryMappedInputStreamMethod "readBytesFinish" o = Gio.InputStream.InputStreamReadBytesFinishMethodInfo
    ResolveMemoryMappedInputStreamMethod "readFinish" o = Gio.InputStream.InputStreamReadFinishMethodInfo
    ResolveMemoryMappedInputStreamMethod "readTensor" o = Arrow.InputStream.InputStreamReadTensorMethodInfo
    ResolveMemoryMappedInputStreamMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveMemoryMappedInputStreamMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveMemoryMappedInputStreamMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveMemoryMappedInputStreamMethod "skip" o = Gio.InputStream.InputStreamSkipMethodInfo
    ResolveMemoryMappedInputStreamMethod "skipAsync" o = Gio.InputStream.InputStreamSkipAsyncMethodInfo
    ResolveMemoryMappedInputStreamMethod "skipFinish" o = Gio.InputStream.InputStreamSkipFinishMethodInfo
    ResolveMemoryMappedInputStreamMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveMemoryMappedInputStreamMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveMemoryMappedInputStreamMethod "tell" o = Arrow.File.FileTellMethodInfo
    ResolveMemoryMappedInputStreamMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveMemoryMappedInputStreamMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveMemoryMappedInputStreamMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveMemoryMappedInputStreamMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveMemoryMappedInputStreamMethod "getMode" o = Arrow.File.FileGetModeMethodInfo
    ResolveMemoryMappedInputStreamMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveMemoryMappedInputStreamMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveMemoryMappedInputStreamMethod "getSize" o = Arrow.SeekableInputStream.SeekableInputStreamGetSizeMethodInfo
    ResolveMemoryMappedInputStreamMethod "getSupportZeroCopy" o = Arrow.SeekableInputStream.SeekableInputStreamGetSupportZeroCopyMethodInfo
    ResolveMemoryMappedInputStreamMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveMemoryMappedInputStreamMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveMemoryMappedInputStreamMethod "setPending" o = Gio.InputStream.InputStreamSetPendingMethodInfo
    ResolveMemoryMappedInputStreamMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveMemoryMappedInputStreamMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveMemoryMappedInputStreamMethod t MemoryMappedInputStream, O.MethodInfo info MemoryMappedInputStream p) => OL.IsLabel t (MemoryMappedInputStream -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList MemoryMappedInputStream
type instance O.AttributeList MemoryMappedInputStream = MemoryMappedInputStreamAttributeList
type MemoryMappedInputStreamAttributeList = ('[ '("inputStream", Arrow.InputStream.InputStreamInputStreamPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList MemoryMappedInputStream = MemoryMappedInputStreamSignalList
type MemoryMappedInputStreamSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method MemoryMappedInputStream::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "path"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The path of the file to be mapped on memory."
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
--                  Name { namespace = "Arrow" , name = "MemoryMappedInputStream" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_memory_mapped_input_stream_new" garrow_memory_mapped_input_stream_new :: 
    CString ->                              -- path : TBasicType TUTF8
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr MemoryMappedInputStream)

-- | /No description available in the introspection data./
memoryMappedInputStreamNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@path@/: The path of the file to be mapped on memory.
    -> m (Maybe MemoryMappedInputStream)
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.MemoryMappedInputStream.MemoryMappedInputStream'
    --   or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
memoryMappedInputStreamNew path = liftIO $ do
    path' <- textToCString path
    onException (do
        result <- propagateGError $ garrow_memory_mapped_input_stream_new path'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject MemoryMappedInputStream) result'
            return result''
        freeMem path'
        return maybeResult
     ) (do
        freeMem path'
     )

#if defined(ENABLE_OVERLOADING)
#endif


