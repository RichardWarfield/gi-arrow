{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Interfaces.File
    ( 

-- * Exported types
    File(..)                                ,
    noFile                                  ,
    IsFile                                  ,
    toFile                                  ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveFileMethod                       ,
#endif


-- ** close #method:close#

#if defined(ENABLE_OVERLOADING)
    FileCloseMethodInfo                     ,
#endif
    fileClose                               ,


-- ** getMode #method:getMode#

#if defined(ENABLE_OVERLOADING)
    FileGetModeMethodInfo                   ,
#endif
    fileGetMode                             ,


-- ** isClosed #method:isClosed#

#if defined(ENABLE_OVERLOADING)
    FileIsClosedMethodInfo                  ,
#endif
    fileIsClosed                            ,


-- ** tell #method:tell#

#if defined(ENABLE_OVERLOADING)
    FileTellMethodInfo                      ,
#endif
    fileTell                                ,




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
import qualified GI.GObject.Objects.Object as GObject.Object

-- interface File 
-- | Memory-managed wrapper type.
newtype File = File (ManagedPtr File)
    deriving (Eq)
-- | A convenience alias for `Nothing` :: `Maybe` `File`.
noFile :: Maybe File
noFile = Nothing

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList File = FileSignalList
type FileSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

foreign import ccall "garrow_file_get_type"
    c_garrow_file_get_type :: IO GType

instance GObject File where
    gobjectType = c_garrow_file_get_type
    

-- | Convert 'File' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue File where
    toGValue o = do
        gtype <- c_garrow_file_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr File)
        B.ManagedPtr.newObject File ptr
        
    

-- | Type class for types which can be safely cast to `File`, for instance with `toFile`.
class (GObject o, O.IsDescendantOf File o) => IsFile o
instance (GObject o, O.IsDescendantOf File o) => IsFile o

instance O.HasParentTypes File
type instance O.ParentTypes File = '[GObject.Object.Object]

-- | Cast to `File`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFile :: (MonadIO m, IsFile o) => o -> m File
toFile = liftIO . unsafeCastTo File

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList File
type instance O.AttributeList File = FileAttributeList
type FileAttributeList = ('[ ] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type family ResolveFileMethod (t :: Symbol) (o :: *) :: * where
    ResolveFileMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFileMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFileMethod "close" o = FileCloseMethodInfo
    ResolveFileMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFileMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFileMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFileMethod "isClosed" o = FileIsClosedMethodInfo
    ResolveFileMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFileMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFileMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFileMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFileMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFileMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFileMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFileMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFileMethod "tell" o = FileTellMethodInfo
    ResolveFileMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFileMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFileMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFileMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFileMethod "getMode" o = FileGetModeMethodInfo
    ResolveFileMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFileMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFileMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFileMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveFileMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFileMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFileMethod t File, O.MethodInfo info File p) => OL.IsLabel t (File -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- method File::close
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "file"
--           , argType = TInterface Name { namespace = "Arrow" , name = "File" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFile." , sinceVersion = Nothing }
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

foreign import ccall "garrow_file_close" garrow_file_close :: 
    Ptr File ->                             -- file : TInterface (Name {namespace = "Arrow", name = "File"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
fileClose ::
    (B.CallStack.HasCallStack, MonadIO m, IsFile a) =>
    a
    -- ^ /@file@/: A t'GI.Arrow.Interfaces.File.File'.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
fileClose file = liftIO $ do
    file' <- unsafeManagedPtrCastPtr file
    onException (do
        _ <- propagateGError $ garrow_file_close file'
        touchManagedPtr file
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data FileCloseMethodInfo
instance (signature ~ (m ()), MonadIO m, IsFile a) => O.MethodInfo FileCloseMethodInfo a signature where
    overloadedMethod = fileClose

#endif

-- method File::get_mode
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "file"
--           , argType = TInterface Name { namespace = "Arrow" , name = "File" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFile." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "FileMode" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_file_get_mode" garrow_file_get_mode :: 
    Ptr File ->                             -- file : TInterface (Name {namespace = "Arrow", name = "File"})
    IO CUInt

-- | /No description available in the introspection data./
fileGetMode ::
    (B.CallStack.HasCallStack, MonadIO m, IsFile a) =>
    a
    -- ^ /@file@/: A t'GI.Arrow.Interfaces.File.File'.
    -> m Arrow.Enums.FileMode
    -- ^ __Returns:__ The mode of the file.
fileGetMode file = liftIO $ do
    file' <- unsafeManagedPtrCastPtr file
    result <- garrow_file_get_mode file'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr file
    return result'

#if defined(ENABLE_OVERLOADING)
data FileGetModeMethodInfo
instance (signature ~ (m Arrow.Enums.FileMode), MonadIO m, IsFile a) => O.MethodInfo FileGetModeMethodInfo a signature where
    overloadedMethod = fileGetMode

#endif

-- method File::is_closed
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "file"
--           , argType = TInterface Name { namespace = "Arrow" , name = "File" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFile." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_file_is_closed" garrow_file_is_closed :: 
    Ptr File ->                             -- file : TInterface (Name {namespace = "Arrow", name = "File"})
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.13.0/
fileIsClosed ::
    (B.CallStack.HasCallStack, MonadIO m, IsFile a) =>
    a
    -- ^ /@file@/: A t'GI.Arrow.Interfaces.File.File'.
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the /@file@/ is already closed, 'P.False' otherwise.
fileIsClosed file = liftIO $ do
    file' <- unsafeManagedPtrCastPtr file
    result <- garrow_file_is_closed file'
    let result' = (/= 0) result
    touchManagedPtr file
    return result'

#if defined(ENABLE_OVERLOADING)
data FileIsClosedMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsFile a) => O.MethodInfo FileIsClosedMethodInfo a signature where
    overloadedMethod = fileIsClosed

#endif

-- method File::tell
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "file"
--           , argType = TInterface Name { namespace = "Arrow" , name = "File" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowFile." , sinceVersion = Nothing }
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

foreign import ccall "garrow_file_tell" garrow_file_tell :: 
    Ptr File ->                             -- file : TInterface (Name {namespace = "Arrow", name = "File"})
    Ptr (Ptr GError) ->                     -- error
    IO Int64

-- | /No description available in the introspection data./
fileTell ::
    (B.CallStack.HasCallStack, MonadIO m, IsFile a) =>
    a
    -- ^ /@file@/: A t'GI.Arrow.Interfaces.File.File'.
    -> m Int64
    -- ^ __Returns:__ The current offset on success, -1 if there was an error. /(Can throw 'Data.GI.Base.GError.GError')/
fileTell file = liftIO $ do
    file' <- unsafeManagedPtrCastPtr file
    onException (do
        result <- propagateGError $ garrow_file_tell file'
        touchManagedPtr file
        return result
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data FileTellMethodInfo
instance (signature ~ (m Int64), MonadIO m, IsFile a) => O.MethodInfo FileTellMethodInfo a signature where
    overloadedMethod = fileTell

#endif


