{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- It\'s an input stream for @GInputStream@.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.GIOInputStream
    ( 

-- * Exported types
    GIOInputStream(..)                      ,
    IsGIOInputStream                        ,
    toGIOInputStream                        ,
    noGIOInputStream                        ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveGIOInputStreamMethod             ,
#endif


-- ** getRaw #method:getRaw#

#if defined(ENABLE_OVERLOADING)
    GIOInputStreamGetRawMethodInfo          ,
#endif
    gIOInputStreamGetRaw                    ,


-- ** new #method:new#

    gIOInputStreamNew                       ,




 -- * Properties
-- ** raw #attr:raw#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    GIOInputStreamRawPropertyInfo           ,
#endif
    constructGIOInputStreamRaw              ,
#if defined(ENABLE_OVERLOADING)
    gIOInputStreamRaw                       ,
#endif
    getGIOInputStreamRaw                    ,




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
newtype GIOInputStream = GIOInputStream (ManagedPtr GIOInputStream)
    deriving (Eq)
foreign import ccall "garrow_gio_input_stream_get_type"
    c_garrow_gio_input_stream_get_type :: IO GType

instance GObject GIOInputStream where
    gobjectType = c_garrow_gio_input_stream_get_type
    

-- | Convert 'GIOInputStream' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue GIOInputStream where
    toGValue o = do
        gtype <- c_garrow_gio_input_stream_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr GIOInputStream)
        B.ManagedPtr.newObject GIOInputStream ptr
        
    

-- | Type class for types which can be safely cast to `GIOInputStream`, for instance with `toGIOInputStream`.
class (GObject o, O.IsDescendantOf GIOInputStream o) => IsGIOInputStream o
instance (GObject o, O.IsDescendantOf GIOInputStream o) => IsGIOInputStream o

instance O.HasParentTypes GIOInputStream
type instance O.ParentTypes GIOInputStream = '[Arrow.SeekableInputStream.SeekableInputStream, Arrow.InputStream.InputStream, Gio.InputStream.InputStream, GObject.Object.Object, Arrow.File.File, Arrow.Readable.Readable]

-- | Cast to `GIOInputStream`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toGIOInputStream :: (MonadIO m, IsGIOInputStream o) => o -> m GIOInputStream
toGIOInputStream = liftIO . unsafeCastTo GIOInputStream

-- | A convenience alias for `Nothing` :: `Maybe` `GIOInputStream`.
noGIOInputStream :: Maybe GIOInputStream
noGIOInputStream = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveGIOInputStreamMethod (t :: Symbol) (o :: *) :: * where
    ResolveGIOInputStreamMethod "advance" o = Arrow.InputStream.InputStreamAdvanceMethodInfo
    ResolveGIOInputStreamMethod "align" o = Arrow.InputStream.InputStreamAlignMethodInfo
    ResolveGIOInputStreamMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveGIOInputStreamMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveGIOInputStreamMethod "clearPending" o = Gio.InputStream.InputStreamClearPendingMethodInfo
    ResolveGIOInputStreamMethod "close" o = Gio.InputStream.InputStreamCloseMethodInfo
    ResolveGIOInputStreamMethod "closeAsync" o = Gio.InputStream.InputStreamCloseAsyncMethodInfo
    ResolveGIOInputStreamMethod "closeFinish" o = Gio.InputStream.InputStreamCloseFinishMethodInfo
    ResolveGIOInputStreamMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveGIOInputStreamMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveGIOInputStreamMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveGIOInputStreamMethod "hasPending" o = Gio.InputStream.InputStreamHasPendingMethodInfo
    ResolveGIOInputStreamMethod "isClosed" o = Gio.InputStream.InputStreamIsClosedMethodInfo
    ResolveGIOInputStreamMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveGIOInputStreamMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveGIOInputStreamMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveGIOInputStreamMethod "peek" o = Arrow.SeekableInputStream.SeekableInputStreamPeekMethodInfo
    ResolveGIOInputStreamMethod "read" o = Gio.InputStream.InputStreamReadMethodInfo
    ResolveGIOInputStreamMethod "readAll" o = Gio.InputStream.InputStreamReadAllMethodInfo
    ResolveGIOInputStreamMethod "readAllAsync" o = Gio.InputStream.InputStreamReadAllAsyncMethodInfo
    ResolveGIOInputStreamMethod "readAllFinish" o = Gio.InputStream.InputStreamReadAllFinishMethodInfo
    ResolveGIOInputStreamMethod "readAsync" o = Gio.InputStream.InputStreamReadAsyncMethodInfo
    ResolveGIOInputStreamMethod "readAt" o = Arrow.SeekableInputStream.SeekableInputStreamReadAtMethodInfo
    ResolveGIOInputStreamMethod "readBytes" o = Gio.InputStream.InputStreamReadBytesMethodInfo
    ResolveGIOInputStreamMethod "readBytesAsync" o = Gio.InputStream.InputStreamReadBytesAsyncMethodInfo
    ResolveGIOInputStreamMethod "readBytesFinish" o = Gio.InputStream.InputStreamReadBytesFinishMethodInfo
    ResolveGIOInputStreamMethod "readFinish" o = Gio.InputStream.InputStreamReadFinishMethodInfo
    ResolveGIOInputStreamMethod "readTensor" o = Arrow.InputStream.InputStreamReadTensorMethodInfo
    ResolveGIOInputStreamMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveGIOInputStreamMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveGIOInputStreamMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveGIOInputStreamMethod "skip" o = Gio.InputStream.InputStreamSkipMethodInfo
    ResolveGIOInputStreamMethod "skipAsync" o = Gio.InputStream.InputStreamSkipAsyncMethodInfo
    ResolveGIOInputStreamMethod "skipFinish" o = Gio.InputStream.InputStreamSkipFinishMethodInfo
    ResolveGIOInputStreamMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveGIOInputStreamMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveGIOInputStreamMethod "tell" o = Arrow.File.FileTellMethodInfo
    ResolveGIOInputStreamMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveGIOInputStreamMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveGIOInputStreamMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveGIOInputStreamMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveGIOInputStreamMethod "getMode" o = Arrow.File.FileGetModeMethodInfo
    ResolveGIOInputStreamMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveGIOInputStreamMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveGIOInputStreamMethod "getRaw" o = GIOInputStreamGetRawMethodInfo
    ResolveGIOInputStreamMethod "getSize" o = Arrow.SeekableInputStream.SeekableInputStreamGetSizeMethodInfo
    ResolveGIOInputStreamMethod "getSupportZeroCopy" o = Arrow.SeekableInputStream.SeekableInputStreamGetSupportZeroCopyMethodInfo
    ResolveGIOInputStreamMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveGIOInputStreamMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveGIOInputStreamMethod "setPending" o = Gio.InputStream.InputStreamSetPendingMethodInfo
    ResolveGIOInputStreamMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveGIOInputStreamMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveGIOInputStreamMethod t GIOInputStream, O.MethodInfo info GIOInputStream p) => OL.IsLabel t (GIOInputStream -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "raw"
   -- Type: TInterface (Name {namespace = "Gio", name = "InputStream"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@raw@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' gIOInputStream #raw
-- @
getGIOInputStreamRaw :: (MonadIO m, IsGIOInputStream o) => o -> m Gio.InputStream.InputStream
getGIOInputStreamRaw obj = liftIO $ checkUnexpectedNothing "getGIOInputStreamRaw" $ B.Properties.getObjectPropertyObject obj "raw" Gio.InputStream.InputStream

-- | Construct a `GValueConstruct` with valid value for the “@raw@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructGIOInputStreamRaw :: (IsGIOInputStream o, MIO.MonadIO m, Gio.InputStream.IsInputStream a) => a -> m (GValueConstruct o)
constructGIOInputStreamRaw val = MIO.liftIO $ B.Properties.constructObjectPropertyObject "raw" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data GIOInputStreamRawPropertyInfo
instance AttrInfo GIOInputStreamRawPropertyInfo where
    type AttrAllowedOps GIOInputStreamRawPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint GIOInputStreamRawPropertyInfo = IsGIOInputStream
    type AttrSetTypeConstraint GIOInputStreamRawPropertyInfo = Gio.InputStream.IsInputStream
    type AttrTransferTypeConstraint GIOInputStreamRawPropertyInfo = Gio.InputStream.IsInputStream
    type AttrTransferType GIOInputStreamRawPropertyInfo = Gio.InputStream.InputStream
    type AttrGetType GIOInputStreamRawPropertyInfo = Gio.InputStream.InputStream
    type AttrLabel GIOInputStreamRawPropertyInfo = "raw"
    type AttrOrigin GIOInputStreamRawPropertyInfo = GIOInputStream
    attrGet = getGIOInputStreamRaw
    attrSet = undefined
    attrTransfer _ v = do
        unsafeCastTo Gio.InputStream.InputStream v
    attrConstruct = constructGIOInputStreamRaw
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList GIOInputStream
type instance O.AttributeList GIOInputStream = GIOInputStreamAttributeList
type GIOInputStreamAttributeList = ('[ '("inputStream", Arrow.InputStream.InputStreamInputStreamPropertyInfo), '("raw", GIOInputStreamRawPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
gIOInputStreamRaw :: AttrLabelProxy "raw"
gIOInputStreamRaw = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList GIOInputStream = GIOInputStreamSignalList
type GIOInputStreamSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method GIOInputStream::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "gio_input_stream"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "InputStream" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The stream to be read."
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
--               (TInterface Name { namespace = "Arrow" , name = "GIOInputStream" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_gio_input_stream_new" garrow_gio_input_stream_new :: 
    Ptr Gio.InputStream.InputStream ->      -- gio_input_stream : TInterface (Name {namespace = "Gio", name = "InputStream"})
    IO (Ptr GIOInputStream)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.5.0/
gIOInputStreamNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gio.InputStream.IsInputStream a) =>
    a
    -- ^ /@gioInputStream@/: The stream to be read.
    -> m GIOInputStream
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.GIOInputStream.GIOInputStream'.
gIOInputStreamNew gioInputStream = liftIO $ do
    gioInputStream' <- unsafeManagedPtrCastPtr gioInputStream
    result <- garrow_gio_input_stream_new gioInputStream'
    checkUnexpectedReturnNULL "gIOInputStreamNew" result
    result' <- (wrapObject GIOInputStream) result
    touchManagedPtr gioInputStream
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method GIOInputStream::get_raw
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "input_stream"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "GIOInputStream" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowGIOInputStream."
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
-- returnType: Just (TInterface Name { namespace = "Gio" , name = "InputStream" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_gio_input_stream_get_raw" garrow_gio_input_stream_get_raw :: 
    Ptr GIOInputStream ->                   -- input_stream : TInterface (Name {namespace = "Arrow", name = "GIOInputStream"})
    IO (Ptr Gio.InputStream.InputStream)

{-# DEPRECATED gIOInputStreamGetRaw ["(Since version 0.12.0)","Use GArrowGIOInputStream[raw](#signal:raw) property instead."] #-}
-- | /No description available in the introspection data./
-- 
-- /Since: 0.5.0/
gIOInputStreamGetRaw ::
    (B.CallStack.HasCallStack, MonadIO m, IsGIOInputStream a) =>
    a
    -- ^ /@inputStream@/: A t'GI.Arrow.Objects.GIOInputStream.GIOInputStream'.
    -> m Gio.InputStream.InputStream
    -- ^ __Returns:__ The wrapped t'GI.Gio.Objects.InputStream.InputStream'.
gIOInputStreamGetRaw inputStream = liftIO $ do
    inputStream' <- unsafeManagedPtrCastPtr inputStream
    result <- garrow_gio_input_stream_get_raw inputStream'
    checkUnexpectedReturnNULL "gIOInputStreamGetRaw" result
    result' <- (newObject Gio.InputStream.InputStream) result
    touchManagedPtr inputStream
    return result'

#if defined(ENABLE_OVERLOADING)
data GIOInputStreamGetRawMethodInfo
instance (signature ~ (m Gio.InputStream.InputStream), MonadIO m, IsGIOInputStream a) => O.MethodInfo GIOInputStreamGetRawMethodInfo a signature where
    overloadedMethod = gIOInputStreamGetRaw

#endif


