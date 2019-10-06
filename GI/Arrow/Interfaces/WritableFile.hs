{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Interfaces.WritableFile
    ( 

-- * Exported types
    WritableFile(..)                        ,
    noWritableFile                          ,
    IsWritableFile                          ,
    toWritableFile                          ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveWritableFileMethod               ,
#endif


-- ** writeAt #method:writeAt#

#if defined(ENABLE_OVERLOADING)
    WritableFileWriteAtMethodInfo           ,
#endif
    writableFileWriteAt                     ,




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

-- interface WritableFile 
-- | Memory-managed wrapper type.
newtype WritableFile = WritableFile (ManagedPtr WritableFile)
    deriving (Eq)
-- | A convenience alias for `Nothing` :: `Maybe` `WritableFile`.
noWritableFile :: Maybe WritableFile
noWritableFile = Nothing

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList WritableFile = WritableFileSignalList
type WritableFileSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

foreign import ccall "garrow_writable_file_get_type"
    c_garrow_writable_file_get_type :: IO GType

instance GObject WritableFile where
    gobjectType = c_garrow_writable_file_get_type
    

-- | Convert 'WritableFile' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue WritableFile where
    toGValue o = do
        gtype <- c_garrow_writable_file_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr WritableFile)
        B.ManagedPtr.newObject WritableFile ptr
        
    

-- | Type class for types which can be safely cast to `WritableFile`, for instance with `toWritableFile`.
class (GObject o, O.IsDescendantOf WritableFile o) => IsWritableFile o
instance (GObject o, O.IsDescendantOf WritableFile o) => IsWritableFile o

instance O.HasParentTypes WritableFile
type instance O.ParentTypes WritableFile = '[GObject.Object.Object]

-- | Cast to `WritableFile`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toWritableFile :: (MonadIO m, IsWritableFile o) => o -> m WritableFile
toWritableFile = liftIO . unsafeCastTo WritableFile

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList WritableFile
type instance O.AttributeList WritableFile = WritableFileAttributeList
type WritableFileAttributeList = ('[ ] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveWritableFileMethod (t :: Symbol) (o :: *) :: * where
    ResolveWritableFileMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveWritableFileMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveWritableFileMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveWritableFileMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveWritableFileMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveWritableFileMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveWritableFileMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveWritableFileMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveWritableFileMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveWritableFileMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveWritableFileMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveWritableFileMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveWritableFileMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveWritableFileMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveWritableFileMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveWritableFileMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveWritableFileMethod "writeAt" o = WritableFileWriteAtMethodInfo
    ResolveWritableFileMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveWritableFileMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveWritableFileMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveWritableFileMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveWritableFileMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveWritableFileMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveWritableFileMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveWritableFileMethod t WritableFile, O.MethodInfo info WritableFile p) => OL.IsLabel t (WritableFile -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- method WritableFile::write_at
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "writable_file"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "WritableFile" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowWritableFile."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "position"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The write start position."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "data"
--           , argType = TCArray False (-1) 3 (TBasicType TUInt8)
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

foreign import ccall "garrow_writable_file_write_at" garrow_writable_file_write_at :: 
    Ptr WritableFile ->                     -- writable_file : TInterface (Name {namespace = "Arrow", name = "WritableFile"})
    Int64 ->                                -- position : TBasicType TInt64
    Ptr Word8 ->                            -- data : TCArray False (-1) 3 (TBasicType TUInt8)
    Int64 ->                                -- n_bytes : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
writableFileWriteAt ::
    (B.CallStack.HasCallStack, MonadIO m, IsWritableFile a) =>
    a
    -- ^ /@writableFile@/: A t'GI.Arrow.Interfaces.WritableFile.WritableFile'.
    -> Int64
    -- ^ /@position@/: The write start position.
    -> ByteString
    -- ^ /@data@/: The data to be written.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
writableFileWriteAt writableFile position data_ = liftIO $ do
    let nBytes = fromIntegral $ B.length data_
    writableFile' <- unsafeManagedPtrCastPtr writableFile
    data_' <- packByteString data_
    onException (do
        _ <- propagateGError $ garrow_writable_file_write_at writableFile' position data_' nBytes
        touchManagedPtr writableFile
        freeMem data_'
        return ()
     ) (do
        freeMem data_'
     )

#if defined(ENABLE_OVERLOADING)
data WritableFileWriteAtMethodInfo
instance (signature ~ (Int64 -> ByteString -> m ()), MonadIO m, IsWritableFile a) => O.MethodInfo WritableFileWriteAtMethodInfo a signature where
    overloadedMethod = writableFileWriteAt

#endif


