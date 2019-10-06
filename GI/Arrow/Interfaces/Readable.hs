{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Interfaces.Readable
    ( 

-- * Exported types
    Readable(..)                            ,
    noReadable                              ,
    IsReadable                              ,
    toReadable                              ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveReadableMethod                   ,
#endif


-- ** read #method:read#

#if defined(ENABLE_OVERLOADING)
    ReadableReadMethodInfo                  ,
#endif
    readableRead                            ,




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
import qualified GI.GObject.Objects.Object as GObject.Object

-- interface Readable 
-- | Memory-managed wrapper type.
newtype Readable = Readable (ManagedPtr Readable)
    deriving (Eq)
-- | A convenience alias for `Nothing` :: `Maybe` `Readable`.
noReadable :: Maybe Readable
noReadable = Nothing

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Readable = ReadableSignalList
type ReadableSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

foreign import ccall "garrow_readable_get_type"
    c_garrow_readable_get_type :: IO GType

instance GObject Readable where
    gobjectType = c_garrow_readable_get_type
    

-- | Convert 'Readable' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Readable where
    toGValue o = do
        gtype <- c_garrow_readable_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Readable)
        B.ManagedPtr.newObject Readable ptr
        
    

-- | Type class for types which can be safely cast to `Readable`, for instance with `toReadable`.
class (GObject o, O.IsDescendantOf Readable o) => IsReadable o
instance (GObject o, O.IsDescendantOf Readable o) => IsReadable o

instance O.HasParentTypes Readable
type instance O.ParentTypes Readable = '[GObject.Object.Object]

-- | Cast to `Readable`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toReadable :: (MonadIO m, IsReadable o) => o -> m Readable
toReadable = liftIO . unsafeCastTo Readable

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Readable
type instance O.AttributeList Readable = ReadableAttributeList
type ReadableAttributeList = ('[ ] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveReadableMethod (t :: Symbol) (o :: *) :: * where
    ResolveReadableMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveReadableMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveReadableMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveReadableMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveReadableMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveReadableMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveReadableMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveReadableMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveReadableMethod "read" o = ReadableReadMethodInfo
    ResolveReadableMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveReadableMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveReadableMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveReadableMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveReadableMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveReadableMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveReadableMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveReadableMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveReadableMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveReadableMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveReadableMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveReadableMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveReadableMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveReadableMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveReadableMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveReadableMethod t Readable, O.MethodInfo info Readable p) => OL.IsLabel t (Readable -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- method Readable::read
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "readable"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Readable" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowReadable." , sinceVersion = Nothing }
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
--                 { rawDocText = Just "The number of bytes to be read."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Buffer" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_readable_read" garrow_readable_read :: 
    Ptr Readable ->                         -- readable : TInterface (Name {namespace = "Arrow", name = "Readable"})
    Int64 ->                                -- n_bytes : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.Buffer.Buffer)

-- | /No description available in the introspection data./
readableRead ::
    (B.CallStack.HasCallStack, MonadIO m, IsReadable a) =>
    a
    -- ^ /@readable@/: A t'GI.Arrow.Interfaces.Readable.Readable'.
    -> Int64
    -- ^ /@nBytes@/: The number of bytes to be read.
    -> m (Maybe Arrow.Buffer.Buffer)
    -- ^ __Returns:__ t'GI.Arrow.Objects.Buffer.Buffer' that has read
    --   data on success, 'P.Nothing' if there was an error. /(Can throw 'Data.GI.Base.GError.GError')/
readableRead readable nBytes = liftIO $ do
    readable' <- unsafeManagedPtrCastPtr readable
    onException (do
        result <- propagateGError $ garrow_readable_read readable' nBytes
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Arrow.Buffer.Buffer) result'
            return result''
        touchManagedPtr readable
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data ReadableReadMethodInfo
instance (signature ~ (Int64 -> m (Maybe Arrow.Buffer.Buffer)), MonadIO m, IsReadable a) => O.MethodInfo ReadableReadMethodInfo a signature where
    overloadedMethod = readableRead

#endif


