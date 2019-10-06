{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.ResizableBuffer
    ( 

-- * Exported types
    ResizableBuffer(..)                     ,
    IsResizableBuffer                       ,
    toResizableBuffer                       ,
    noResizableBuffer                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveResizableBufferMethod            ,
#endif


-- ** new #method:new#

    resizableBufferNew                      ,


-- ** reserve #method:reserve#

#if defined(ENABLE_OVERLOADING)
    ResizableBufferReserveMethodInfo        ,
#endif
    resizableBufferReserve                  ,


-- ** resize #method:resize#

#if defined(ENABLE_OVERLOADING)
    ResizableBufferResizeMethodInfo         ,
#endif
    resizableBufferResize                   ,




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

import {-# SOURCE #-} qualified GI.Arrow.Objects.Buffer as Arrow.Buffer
import {-# SOURCE #-} qualified GI.Arrow.Objects.MutableBuffer as Arrow.MutableBuffer
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype ResizableBuffer = ResizableBuffer (ManagedPtr ResizableBuffer)
    deriving (Eq)
foreign import ccall "garrow_resizable_buffer_get_type"
    c_garrow_resizable_buffer_get_type :: IO GType

instance GObject ResizableBuffer where
    gobjectType = c_garrow_resizable_buffer_get_type
    

-- | Convert 'ResizableBuffer' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ResizableBuffer where
    toGValue o = do
        gtype <- c_garrow_resizable_buffer_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ResizableBuffer)
        B.ManagedPtr.newObject ResizableBuffer ptr
        
    

-- | Type class for types which can be safely cast to `ResizableBuffer`, for instance with `toResizableBuffer`.
class (GObject o, O.IsDescendantOf ResizableBuffer o) => IsResizableBuffer o
instance (GObject o, O.IsDescendantOf ResizableBuffer o) => IsResizableBuffer o

instance O.HasParentTypes ResizableBuffer
type instance O.ParentTypes ResizableBuffer = '[Arrow.MutableBuffer.MutableBuffer, Arrow.Buffer.Buffer, GObject.Object.Object]

-- | Cast to `ResizableBuffer`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toResizableBuffer :: (MonadIO m, IsResizableBuffer o) => o -> m ResizableBuffer
toResizableBuffer = liftIO . unsafeCastTo ResizableBuffer

-- | A convenience alias for `Nothing` :: `Maybe` `ResizableBuffer`.
noResizableBuffer :: Maybe ResizableBuffer
noResizableBuffer = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveResizableBufferMethod (t :: Symbol) (o :: *) :: * where
    ResolveResizableBufferMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveResizableBufferMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveResizableBufferMethod "copy" o = Arrow.Buffer.BufferCopyMethodInfo
    ResolveResizableBufferMethod "equal" o = Arrow.Buffer.BufferEqualMethodInfo
    ResolveResizableBufferMethod "equalNBytes" o = Arrow.Buffer.BufferEqualNBytesMethodInfo
    ResolveResizableBufferMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveResizableBufferMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveResizableBufferMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveResizableBufferMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveResizableBufferMethod "isMutable" o = Arrow.Buffer.BufferIsMutableMethodInfo
    ResolveResizableBufferMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveResizableBufferMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveResizableBufferMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveResizableBufferMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveResizableBufferMethod "reserve" o = ResizableBufferReserveMethodInfo
    ResolveResizableBufferMethod "resize" o = ResizableBufferResizeMethodInfo
    ResolveResizableBufferMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveResizableBufferMethod "slice" o = Arrow.MutableBuffer.MutableBufferSliceMethodInfo
    ResolveResizableBufferMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveResizableBufferMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveResizableBufferMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveResizableBufferMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveResizableBufferMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveResizableBufferMethod "getCapacity" o = Arrow.Buffer.BufferGetCapacityMethodInfo
    ResolveResizableBufferMethod "getData" o = Arrow.Buffer.BufferGetDataMethodInfo
    ResolveResizableBufferMethod "getMutableData" o = Arrow.Buffer.BufferGetMutableDataMethodInfo
    ResolveResizableBufferMethod "getParent" o = Arrow.Buffer.BufferGetParentMethodInfo
    ResolveResizableBufferMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveResizableBufferMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveResizableBufferMethod "getSize" o = Arrow.Buffer.BufferGetSizeMethodInfo
    ResolveResizableBufferMethod "setData" o = Arrow.MutableBuffer.MutableBufferSetDataMethodInfo
    ResolveResizableBufferMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveResizableBufferMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveResizableBufferMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveResizableBufferMethod t ResizableBuffer, O.MethodInfo info ResizableBuffer p) => OL.IsLabel t (ResizableBuffer -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ResizableBuffer
type instance O.AttributeList ResizableBuffer = ResizableBufferAttributeList
type ResizableBufferAttributeList = ('[ '("buffer", Arrow.Buffer.BufferBufferPropertyInfo), '("data", Arrow.Buffer.BufferDataPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ResizableBuffer = ResizableBufferSignalList
type ResizableBufferSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method ResizableBuffer::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "initial_size"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The initial buffer size in bytes."
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
--                  Name { namespace = "Arrow" , name = "ResizableBuffer" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_resizable_buffer_new" garrow_resizable_buffer_new :: 
    Int64 ->                                -- initial_size : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr ResizableBuffer)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.10.0/
resizableBufferNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Int64
    -- ^ /@initialSize@/: The initial buffer size in bytes.
    -> m (Maybe ResizableBuffer)
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.ResizableBuffer.ResizableBuffer'. /(Can throw 'Data.GI.Base.GError.GError')/
resizableBufferNew initialSize = liftIO $ do
    onException (do
        result <- propagateGError $ garrow_resizable_buffer_new initialSize
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject ResizableBuffer) result'
            return result''
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
#endif

-- method ResizableBuffer::reserve
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "buffer"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "ResizableBuffer" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowResizableBuffer."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "new_capacity"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The new buffer capacity in bytes."
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

foreign import ccall "garrow_resizable_buffer_reserve" garrow_resizable_buffer_reserve :: 
    Ptr ResizableBuffer ->                  -- buffer : TInterface (Name {namespace = "Arrow", name = "ResizableBuffer"})
    Int64 ->                                -- new_capacity : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.3.0/
resizableBufferReserve ::
    (B.CallStack.HasCallStack, MonadIO m, IsResizableBuffer a) =>
    a
    -- ^ /@buffer@/: A t'GI.Arrow.Objects.ResizableBuffer.ResizableBuffer'.
    -> Int64
    -- ^ /@newCapacity@/: The new buffer capacity in bytes.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
resizableBufferReserve buffer newCapacity = liftIO $ do
    buffer' <- unsafeManagedPtrCastPtr buffer
    onException (do
        _ <- propagateGError $ garrow_resizable_buffer_reserve buffer' newCapacity
        touchManagedPtr buffer
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data ResizableBufferReserveMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsResizableBuffer a) => O.MethodInfo ResizableBufferReserveMethodInfo a signature where
    overloadedMethod = resizableBufferReserve

#endif

-- method ResizableBuffer::resize
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "buffer"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "ResizableBuffer" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowResizableBuffer."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "new_size"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The new buffer size in bytes."
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

foreign import ccall "garrow_resizable_buffer_resize" garrow_resizable_buffer_resize :: 
    Ptr ResizableBuffer ->                  -- buffer : TInterface (Name {namespace = "Arrow", name = "ResizableBuffer"})
    Int64 ->                                -- new_size : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.3.0/
resizableBufferResize ::
    (B.CallStack.HasCallStack, MonadIO m, IsResizableBuffer a) =>
    a
    -- ^ /@buffer@/: A t'GI.Arrow.Objects.ResizableBuffer.ResizableBuffer'.
    -> Int64
    -- ^ /@newSize@/: The new buffer size in bytes.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
resizableBufferResize buffer newSize = liftIO $ do
    buffer' <- unsafeManagedPtrCastPtr buffer
    onException (do
        _ <- propagateGError $ garrow_resizable_buffer_resize buffer' newSize
        touchManagedPtr buffer
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data ResizableBufferResizeMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsResizableBuffer a) => O.MethodInfo ResizableBufferResizeMethodInfo a signature where
    overloadedMethod = resizableBufferResize

#endif


