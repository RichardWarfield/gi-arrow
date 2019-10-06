{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- It\'s an output stream for @GOutputStream@.

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.GIOOutputStream
    ( 

-- * Exported types
    GIOOutputStream(..)                     ,
    IsGIOOutputStream                       ,
    toGIOOutputStream                       ,
    noGIOOutputStream                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveGIOOutputStreamMethod            ,
#endif


-- ** getRaw #method:getRaw#

#if defined(ENABLE_OVERLOADING)
    GIOOutputStreamGetRawMethodInfo         ,
#endif
    gIOOutputStreamGetRaw                   ,


-- ** new #method:new#

    gIOOutputStreamNew                      ,




 -- * Properties
-- ** raw #attr:raw#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    GIOOutputStreamRawPropertyInfo          ,
#endif
    constructGIOOutputStreamRaw             ,
#if defined(ENABLE_OVERLOADING)
    gIOOutputStreamRaw                      ,
#endif
    getGIOOutputStreamRaw                   ,




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
import {-# SOURCE #-} qualified GI.Arrow.Interfaces.Writable as Arrow.Writable
import {-# SOURCE #-} qualified GI.Arrow.Objects.OutputStream as Arrow.OutputStream
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gio.Objects.OutputStream as Gio.OutputStream

-- | Memory-managed wrapper type.
newtype GIOOutputStream = GIOOutputStream (ManagedPtr GIOOutputStream)
    deriving (Eq)
foreign import ccall "garrow_gio_output_stream_get_type"
    c_garrow_gio_output_stream_get_type :: IO GType

instance GObject GIOOutputStream where
    gobjectType = c_garrow_gio_output_stream_get_type
    

-- | Convert 'GIOOutputStream' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue GIOOutputStream where
    toGValue o = do
        gtype <- c_garrow_gio_output_stream_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr GIOOutputStream)
        B.ManagedPtr.newObject GIOOutputStream ptr
        
    

-- | Type class for types which can be safely cast to `GIOOutputStream`, for instance with `toGIOOutputStream`.
class (GObject o, O.IsDescendantOf GIOOutputStream o) => IsGIOOutputStream o
instance (GObject o, O.IsDescendantOf GIOOutputStream o) => IsGIOOutputStream o

instance O.HasParentTypes GIOOutputStream
type instance O.ParentTypes GIOOutputStream = '[Arrow.OutputStream.OutputStream, GObject.Object.Object, Arrow.File.File, Arrow.Writable.Writable]

-- | Cast to `GIOOutputStream`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toGIOOutputStream :: (MonadIO m, IsGIOOutputStream o) => o -> m GIOOutputStream
toGIOOutputStream = liftIO . unsafeCastTo GIOOutputStream

-- | A convenience alias for `Nothing` :: `Maybe` `GIOOutputStream`.
noGIOOutputStream :: Maybe GIOOutputStream
noGIOOutputStream = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveGIOOutputStreamMethod (t :: Symbol) (o :: *) :: * where
    ResolveGIOOutputStreamMethod "align" o = Arrow.OutputStream.OutputStreamAlignMethodInfo
    ResolveGIOOutputStreamMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveGIOOutputStreamMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveGIOOutputStreamMethod "close" o = Arrow.File.FileCloseMethodInfo
    ResolveGIOOutputStreamMethod "flush" o = Arrow.Writable.WritableFlushMethodInfo
    ResolveGIOOutputStreamMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveGIOOutputStreamMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveGIOOutputStreamMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveGIOOutputStreamMethod "isClosed" o = Arrow.File.FileIsClosedMethodInfo
    ResolveGIOOutputStreamMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveGIOOutputStreamMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveGIOOutputStreamMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveGIOOutputStreamMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveGIOOutputStreamMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveGIOOutputStreamMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveGIOOutputStreamMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveGIOOutputStreamMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveGIOOutputStreamMethod "tell" o = Arrow.File.FileTellMethodInfo
    ResolveGIOOutputStreamMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveGIOOutputStreamMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveGIOOutputStreamMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveGIOOutputStreamMethod "write" o = Arrow.Writable.WritableWriteMethodInfo
    ResolveGIOOutputStreamMethod "writeTensor" o = Arrow.OutputStream.OutputStreamWriteTensorMethodInfo
    ResolveGIOOutputStreamMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveGIOOutputStreamMethod "getMode" o = Arrow.File.FileGetModeMethodInfo
    ResolveGIOOutputStreamMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveGIOOutputStreamMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveGIOOutputStreamMethod "getRaw" o = GIOOutputStreamGetRawMethodInfo
    ResolveGIOOutputStreamMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveGIOOutputStreamMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveGIOOutputStreamMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveGIOOutputStreamMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveGIOOutputStreamMethod t GIOOutputStream, O.MethodInfo info GIOOutputStream p) => OL.IsLabel t (GIOOutputStream -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "raw"
   -- Type: TInterface (Name {namespace = "Gio", name = "OutputStream"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Just False,Nothing)

-- | Get the value of the “@raw@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' gIOOutputStream #raw
-- @
getGIOOutputStreamRaw :: (MonadIO m, IsGIOOutputStream o) => o -> m Gio.OutputStream.OutputStream
getGIOOutputStreamRaw obj = liftIO $ checkUnexpectedNothing "getGIOOutputStreamRaw" $ B.Properties.getObjectPropertyObject obj "raw" Gio.OutputStream.OutputStream

-- | Construct a `GValueConstruct` with valid value for the “@raw@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructGIOOutputStreamRaw :: (IsGIOOutputStream o, MIO.MonadIO m, Gio.OutputStream.IsOutputStream a) => a -> m (GValueConstruct o)
constructGIOOutputStreamRaw val = MIO.liftIO $ B.Properties.constructObjectPropertyObject "raw" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data GIOOutputStreamRawPropertyInfo
instance AttrInfo GIOOutputStreamRawPropertyInfo where
    type AttrAllowedOps GIOOutputStreamRawPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint GIOOutputStreamRawPropertyInfo = IsGIOOutputStream
    type AttrSetTypeConstraint GIOOutputStreamRawPropertyInfo = Gio.OutputStream.IsOutputStream
    type AttrTransferTypeConstraint GIOOutputStreamRawPropertyInfo = Gio.OutputStream.IsOutputStream
    type AttrTransferType GIOOutputStreamRawPropertyInfo = Gio.OutputStream.OutputStream
    type AttrGetType GIOOutputStreamRawPropertyInfo = Gio.OutputStream.OutputStream
    type AttrLabel GIOOutputStreamRawPropertyInfo = "raw"
    type AttrOrigin GIOOutputStreamRawPropertyInfo = GIOOutputStream
    attrGet = getGIOOutputStreamRaw
    attrSet = undefined
    attrTransfer _ v = do
        unsafeCastTo Gio.OutputStream.OutputStream v
    attrConstruct = constructGIOOutputStreamRaw
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList GIOOutputStream
type instance O.AttributeList GIOOutputStream = GIOOutputStreamAttributeList
type GIOOutputStreamAttributeList = ('[ '("outputStream", Arrow.OutputStream.OutputStreamOutputStreamPropertyInfo), '("raw", GIOOutputStreamRawPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
gIOOutputStreamRaw :: AttrLabelProxy "raw"
gIOOutputStreamRaw = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList GIOOutputStream = GIOOutputStreamSignalList
type GIOOutputStreamSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method GIOOutputStream::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "gio_output_stream"
--           , argType =
--               TInterface Name { namespace = "Gio" , name = "OutputStream" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The stream to be output."
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
--                  Name { namespace = "Arrow" , name = "GIOOutputStream" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_gio_output_stream_new" garrow_gio_output_stream_new :: 
    Ptr Gio.OutputStream.OutputStream ->    -- gio_output_stream : TInterface (Name {namespace = "Gio", name = "OutputStream"})
    IO (Ptr GIOOutputStream)

-- | /No description available in the introspection data./
gIOOutputStreamNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gio.OutputStream.IsOutputStream a) =>
    a
    -- ^ /@gioOutputStream@/: The stream to be output.
    -> m GIOOutputStream
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.GIOOutputStream.GIOOutputStream'.
gIOOutputStreamNew gioOutputStream = liftIO $ do
    gioOutputStream' <- unsafeManagedPtrCastPtr gioOutputStream
    result <- garrow_gio_output_stream_new gioOutputStream'
    checkUnexpectedReturnNULL "gIOOutputStreamNew" result
    result' <- (wrapObject GIOOutputStream) result
    touchManagedPtr gioOutputStream
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method GIOOutputStream::get_raw
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "output_stream"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "GIOOutputStream" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowGIOOutputStream."
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
--               (TInterface Name { namespace = "Gio" , name = "OutputStream" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_gio_output_stream_get_raw" garrow_gio_output_stream_get_raw :: 
    Ptr GIOOutputStream ->                  -- output_stream : TInterface (Name {namespace = "Arrow", name = "GIOOutputStream"})
    IO (Ptr Gio.OutputStream.OutputStream)

{-# DEPRECATED gIOOutputStreamGetRaw ["(Since version 0.12.0)","Use GArrowGIOOutputStream[raw](#signal:raw) property instead."] #-}
-- | /No description available in the introspection data./
-- 
-- /Since: 0.5.0/
gIOOutputStreamGetRaw ::
    (B.CallStack.HasCallStack, MonadIO m, IsGIOOutputStream a) =>
    a
    -- ^ /@outputStream@/: A t'GI.Arrow.Objects.GIOOutputStream.GIOOutputStream'.
    -> m Gio.OutputStream.OutputStream
    -- ^ __Returns:__ The wrapped t'GI.Gio.Objects.OutputStream.OutputStream'.
gIOOutputStreamGetRaw outputStream = liftIO $ do
    outputStream' <- unsafeManagedPtrCastPtr outputStream
    result <- garrow_gio_output_stream_get_raw outputStream'
    checkUnexpectedReturnNULL "gIOOutputStreamGetRaw" result
    result' <- (newObject Gio.OutputStream.OutputStream) result
    touchManagedPtr outputStream
    return result'

#if defined(ENABLE_OVERLOADING)
data GIOOutputStreamGetRawMethodInfo
instance (signature ~ (m Gio.OutputStream.OutputStream), MonadIO m, IsGIOOutputStream a) => O.MethodInfo GIOOutputStreamGetRawMethodInfo a signature where
    overloadedMethod = gIOOutputStreamGetRaw

#endif


