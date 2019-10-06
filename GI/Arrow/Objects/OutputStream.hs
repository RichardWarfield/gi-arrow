{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.OutputStream
    ( 

-- * Exported types
    OutputStream(..)                        ,
    IsOutputStream                          ,
    toOutputStream                          ,
    noOutputStream                          ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveOutputStreamMethod               ,
#endif


-- ** align #method:align#

#if defined(ENABLE_OVERLOADING)
    OutputStreamAlignMethodInfo             ,
#endif
    outputStreamAlign                       ,


-- ** writeTensor #method:writeTensor#

#if defined(ENABLE_OVERLOADING)
    OutputStreamWriteTensorMethodInfo       ,
#endif
    outputStreamWriteTensor                 ,




 -- * Properties
-- ** outputStream #attr:outputStream#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    OutputStreamOutputStreamPropertyInfo    ,
#endif
    constructOutputStreamOutputStream       ,
#if defined(ENABLE_OVERLOADING)
    outputStreamOutputStream                ,
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

import {-# SOURCE #-} qualified GI.Arrow.Interfaces.File as Arrow.File
import {-# SOURCE #-} qualified GI.Arrow.Interfaces.Writable as Arrow.Writable
import {-# SOURCE #-} qualified GI.Arrow.Objects.Tensor as Arrow.Tensor
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype OutputStream = OutputStream (ManagedPtr OutputStream)
    deriving (Eq)
foreign import ccall "garrow_output_stream_get_type"
    c_garrow_output_stream_get_type :: IO GType

instance GObject OutputStream where
    gobjectType = c_garrow_output_stream_get_type
    

-- | Convert 'OutputStream' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue OutputStream where
    toGValue o = do
        gtype <- c_garrow_output_stream_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr OutputStream)
        B.ManagedPtr.newObject OutputStream ptr
        
    

-- | Type class for types which can be safely cast to `OutputStream`, for instance with `toOutputStream`.
class (GObject o, O.IsDescendantOf OutputStream o) => IsOutputStream o
instance (GObject o, O.IsDescendantOf OutputStream o) => IsOutputStream o

instance O.HasParentTypes OutputStream
type instance O.ParentTypes OutputStream = '[GObject.Object.Object, Arrow.File.File, Arrow.Writable.Writable]

-- | Cast to `OutputStream`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toOutputStream :: (MonadIO m, IsOutputStream o) => o -> m OutputStream
toOutputStream = liftIO . unsafeCastTo OutputStream

-- | A convenience alias for `Nothing` :: `Maybe` `OutputStream`.
noOutputStream :: Maybe OutputStream
noOutputStream = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveOutputStreamMethod (t :: Symbol) (o :: *) :: * where
    ResolveOutputStreamMethod "align" o = OutputStreamAlignMethodInfo
    ResolveOutputStreamMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveOutputStreamMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveOutputStreamMethod "close" o = Arrow.File.FileCloseMethodInfo
    ResolveOutputStreamMethod "flush" o = Arrow.Writable.WritableFlushMethodInfo
    ResolveOutputStreamMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveOutputStreamMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveOutputStreamMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveOutputStreamMethod "isClosed" o = Arrow.File.FileIsClosedMethodInfo
    ResolveOutputStreamMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveOutputStreamMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveOutputStreamMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveOutputStreamMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveOutputStreamMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveOutputStreamMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveOutputStreamMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveOutputStreamMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveOutputStreamMethod "tell" o = Arrow.File.FileTellMethodInfo
    ResolveOutputStreamMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveOutputStreamMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveOutputStreamMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveOutputStreamMethod "write" o = Arrow.Writable.WritableWriteMethodInfo
    ResolveOutputStreamMethod "writeTensor" o = OutputStreamWriteTensorMethodInfo
    ResolveOutputStreamMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveOutputStreamMethod "getMode" o = Arrow.File.FileGetModeMethodInfo
    ResolveOutputStreamMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveOutputStreamMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveOutputStreamMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveOutputStreamMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveOutputStreamMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveOutputStreamMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveOutputStreamMethod t OutputStream, O.MethodInfo info OutputStream p) => OL.IsLabel t (OutputStream -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "output-stream"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a `GValueConstruct` with valid value for the “@output-stream@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructOutputStreamOutputStream :: (IsOutputStream o, MIO.MonadIO m) => Ptr () -> m (GValueConstruct o)
constructOutputStreamOutputStream val = MIO.liftIO $ B.Properties.constructObjectPropertyPtr "output-stream" val

#if defined(ENABLE_OVERLOADING)
data OutputStreamOutputStreamPropertyInfo
instance AttrInfo OutputStreamOutputStreamPropertyInfo where
    type AttrAllowedOps OutputStreamOutputStreamPropertyInfo = '[ 'AttrConstruct]
    type AttrBaseTypeConstraint OutputStreamOutputStreamPropertyInfo = IsOutputStream
    type AttrSetTypeConstraint OutputStreamOutputStreamPropertyInfo = (~) (Ptr ())
    type AttrTransferTypeConstraint OutputStreamOutputStreamPropertyInfo = (~) (Ptr ())
    type AttrTransferType OutputStreamOutputStreamPropertyInfo = Ptr ()
    type AttrGetType OutputStreamOutputStreamPropertyInfo = ()
    type AttrLabel OutputStreamOutputStreamPropertyInfo = "output-stream"
    type AttrOrigin OutputStreamOutputStreamPropertyInfo = OutputStream
    attrGet = undefined
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructOutputStreamOutputStream
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList OutputStream
type instance O.AttributeList OutputStream = OutputStreamAttributeList
type OutputStreamAttributeList = ('[ '("outputStream", OutputStreamOutputStreamPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
outputStreamOutputStream :: AttrLabelProxy "outputStream"
outputStreamOutputStream = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList OutputStream = OutputStreamSignalList
type OutputStreamSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method OutputStream::align
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "stream"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "OutputStream" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowWritable." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "alignment"
--           , argType = TBasicType TInt32
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "The byte multiple for the metadata prefix, usually 8\n  or 64, to ensure the body starts on a multiple of that alignment."
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

foreign import ccall "garrow_output_stream_align" garrow_output_stream_align :: 
    Ptr OutputStream ->                     -- stream : TInterface (Name {namespace = "Arrow", name = "OutputStream"})
    Int32 ->                                -- alignment : TBasicType TInt32
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.11.0/
outputStreamAlign ::
    (B.CallStack.HasCallStack, MonadIO m, IsOutputStream a) =>
    a
    -- ^ /@stream@/: A t'GI.Arrow.Interfaces.Writable.Writable'.
    -> Int32
    -- ^ /@alignment@/: The byte multiple for the metadata prefix, usually 8
    --   or 64, to ensure the body starts on a multiple of that alignment.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
outputStreamAlign stream alignment = liftIO $ do
    stream' <- unsafeManagedPtrCastPtr stream
    onException (do
        _ <- propagateGError $ garrow_output_stream_align stream' alignment
        touchManagedPtr stream
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data OutputStreamAlignMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsOutputStream a) => O.MethodInfo OutputStreamAlignMethodInfo a signature where
    overloadedMethod = outputStreamAlign

#endif

-- method OutputStream::write_tensor
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "stream"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "OutputStream" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowWritable." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "tensor"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Tensor" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowTensor to be written."
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
-- throws : True
-- Skip return : False

foreign import ccall "garrow_output_stream_write_tensor" garrow_output_stream_write_tensor :: 
    Ptr OutputStream ->                     -- stream : TInterface (Name {namespace = "Arrow", name = "OutputStream"})
    Ptr Arrow.Tensor.Tensor ->              -- tensor : TInterface (Name {namespace = "Arrow", name = "Tensor"})
    Ptr (Ptr GError) ->                     -- error
    IO Int64

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
outputStreamWriteTensor ::
    (B.CallStack.HasCallStack, MonadIO m, IsOutputStream a, Arrow.Tensor.IsTensor b) =>
    a
    -- ^ /@stream@/: A t'GI.Arrow.Interfaces.Writable.Writable'.
    -> b
    -- ^ /@tensor@/: A t'GI.Arrow.Objects.Tensor.Tensor' to be written.
    -> m Int64
    -- ^ __Returns:__ The number of written bytes on success, -1 on error. /(Can throw 'Data.GI.Base.GError.GError')/
outputStreamWriteTensor stream tensor = liftIO $ do
    stream' <- unsafeManagedPtrCastPtr stream
    tensor' <- unsafeManagedPtrCastPtr tensor
    onException (do
        result <- propagateGError $ garrow_output_stream_write_tensor stream' tensor'
        touchManagedPtr stream
        touchManagedPtr tensor
        return result
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data OutputStreamWriteTensorMethodInfo
instance (signature ~ (b -> m Int64), MonadIO m, IsOutputStream a, Arrow.Tensor.IsTensor b) => O.MethodInfo OutputStreamWriteTensorMethodInfo a signature where
    overloadedMethod = outputStreamWriteTensor

#endif


