{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Interfaces.Writable
    ( 

-- * Exported types
    Writable(..)                            ,
    noWritable                              ,
    IsWritable                              ,
    toWritable                              ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveWritableMethod                   ,
#endif


-- ** flush #method:flush#

#if defined(ENABLE_OVERLOADING)
    WritableFlushMethodInfo                 ,
#endif
    writableFlush                           ,


-- ** write #method:write#

#if defined(ENABLE_OVERLOADING)
    WritableWriteMethodInfo                 ,
#endif
    writableWrite                           ,




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

import qualified GI.GObject.Objects.Object as GObject.Object

-- interface Writable 
-- | Memory-managed wrapper type.
newtype Writable = Writable (ManagedPtr Writable)
    deriving (Eq)
-- | A convenience alias for `Nothing` :: `Maybe` `Writable`.
noWritable :: Maybe Writable
noWritable = Nothing

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Writable = WritableSignalList
type WritableSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

foreign import ccall "garrow_writable_get_type"
    c_garrow_writable_get_type :: IO GType

instance GObject Writable where
    gobjectType = c_garrow_writable_get_type
    

-- | Convert 'Writable' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Writable where
    toGValue o = do
        gtype <- c_garrow_writable_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Writable)
        B.ManagedPtr.newObject Writable ptr
        
    

-- | Type class for types which can be safely cast to `Writable`, for instance with `toWritable`.
class (GObject o, O.IsDescendantOf Writable o) => IsWritable o
instance (GObject o, O.IsDescendantOf Writable o) => IsWritable o

instance O.HasParentTypes Writable
type instance O.ParentTypes Writable = '[GObject.Object.Object]

-- | Cast to `Writable`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toWritable :: (MonadIO m, IsWritable o) => o -> m Writable
toWritable = liftIO . unsafeCastTo Writable

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Writable
type instance O.AttributeList Writable = WritableAttributeList
type WritableAttributeList = ('[ ] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveWritableMethod (t :: Symbol) (o :: *) :: * where
    ResolveWritableMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveWritableMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveWritableMethod "flush" o = WritableFlushMethodInfo
    ResolveWritableMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveWritableMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveWritableMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveWritableMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveWritableMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveWritableMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveWritableMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveWritableMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveWritableMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveWritableMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveWritableMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveWritableMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveWritableMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveWritableMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveWritableMethod "write" o = WritableWriteMethodInfo
    ResolveWritableMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveWritableMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveWritableMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveWritableMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveWritableMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveWritableMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveWritableMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveWritableMethod t Writable, O.MethodInfo info Writable p) => OL.IsLabel t (Writable -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- method Writable::flush
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "writable"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Writable" }
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
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_writable_flush" garrow_writable_flush :: 
    Ptr Writable ->                         -- writable : TInterface (Name {namespace = "Arrow", name = "Writable"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | It ensures writing all data on memory to storage.
writableFlush ::
    (B.CallStack.HasCallStack, MonadIO m, IsWritable a) =>
    a
    -- ^ /@writable@/: A t'GI.Arrow.Interfaces.Writable.Writable'.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
writableFlush writable = liftIO $ do
    writable' <- unsafeManagedPtrCastPtr writable
    onException (do
        _ <- propagateGError $ garrow_writable_flush writable'
        touchManagedPtr writable
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data WritableFlushMethodInfo
instance (signature ~ (m ()), MonadIO m, IsWritable a) => O.MethodInfo WritableFlushMethodInfo a signature where
    overloadedMethod = writableFlush

#endif

-- method Writable::write
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "writable"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Writable" }
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
--           { argCName = "data"
--           , argType = TCArray False (-1) 2 (TBasicType TUInt8)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The data to be written."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_bytes"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The number of bytes to be written."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: [ Arg
--              { argCName = "n_bytes"
--              , argType = TBasicType TInt64
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "The number of bytes to be written."
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_writable_write" garrow_writable_write :: 
    Ptr Writable ->                         -- writable : TInterface (Name {namespace = "Arrow", name = "Writable"})
    Ptr Word8 ->                            -- data : TCArray False (-1) 2 (TBasicType TUInt8)
    Int64 ->                                -- n_bytes : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
writableWrite ::
    (B.CallStack.HasCallStack, MonadIO m, IsWritable a) =>
    a
    -- ^ /@writable@/: A t'GI.Arrow.Interfaces.Writable.Writable'.
    -> ByteString
    -- ^ /@data@/: The data to be written.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
writableWrite writable data_ = liftIO $ do
    let nBytes = fromIntegral $ B.length data_
    writable' <- unsafeManagedPtrCastPtr writable
    data_' <- packByteString data_
    onException (do
        _ <- propagateGError $ garrow_writable_write writable' data_' nBytes
        touchManagedPtr writable
        freeMem data_'
        return ()
     ) (do
        freeMem data_'
     )

#if defined(ENABLE_OVERLOADING)
data WritableWriteMethodInfo
instance (signature ~ (ByteString -> m ()), MonadIO m, IsWritable a) => O.MethodInfo WritableWriteMethodInfo a signature where
    overloadedMethod = writableWrite

#endif


