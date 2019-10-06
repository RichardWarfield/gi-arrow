{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.TakeOptions
    ( 

-- * Exported types
    TakeOptions(..)                         ,
    IsTakeOptions                           ,
    toTakeOptions                           ,
    noTakeOptions                           ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveTakeOptionsMethod                ,
#endif


-- ** new #method:new#

    takeOptionsNew                          ,




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

-- | Memory-managed wrapper type.
newtype TakeOptions = TakeOptions (ManagedPtr TakeOptions)
    deriving (Eq)
foreign import ccall "garrow_take_options_get_type"
    c_garrow_take_options_get_type :: IO GType

instance GObject TakeOptions where
    gobjectType = c_garrow_take_options_get_type
    

-- | Convert 'TakeOptions' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue TakeOptions where
    toGValue o = do
        gtype <- c_garrow_take_options_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr TakeOptions)
        B.ManagedPtr.newObject TakeOptions ptr
        
    

-- | Type class for types which can be safely cast to `TakeOptions`, for instance with `toTakeOptions`.
class (GObject o, O.IsDescendantOf TakeOptions o) => IsTakeOptions o
instance (GObject o, O.IsDescendantOf TakeOptions o) => IsTakeOptions o

instance O.HasParentTypes TakeOptions
type instance O.ParentTypes TakeOptions = '[GObject.Object.Object]

-- | Cast to `TakeOptions`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTakeOptions :: (MonadIO m, IsTakeOptions o) => o -> m TakeOptions
toTakeOptions = liftIO . unsafeCastTo TakeOptions

-- | A convenience alias for `Nothing` :: `Maybe` `TakeOptions`.
noTakeOptions :: Maybe TakeOptions
noTakeOptions = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveTakeOptionsMethod (t :: Symbol) (o :: *) :: * where
    ResolveTakeOptionsMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTakeOptionsMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTakeOptionsMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTakeOptionsMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTakeOptionsMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTakeOptionsMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTakeOptionsMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTakeOptionsMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTakeOptionsMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTakeOptionsMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTakeOptionsMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTakeOptionsMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTakeOptionsMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTakeOptionsMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTakeOptionsMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTakeOptionsMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTakeOptionsMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTakeOptionsMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTakeOptionsMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTakeOptionsMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTakeOptionsMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveTakeOptionsMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTakeOptionsMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTakeOptionsMethod t TakeOptions, O.MethodInfo info TakeOptions p) => OL.IsLabel t (TakeOptions -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList TakeOptions
type instance O.AttributeList TakeOptions = TakeOptionsAttributeList
type TakeOptionsAttributeList = ('[ ] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList TakeOptions = TakeOptionsSignalList
type TakeOptionsSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method TakeOptions::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Arrow" , name = "TakeOptions" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_take_options_new" garrow_take_options_new :: 
    IO (Ptr TakeOptions)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
takeOptionsNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m TakeOptions
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.TakeOptions.TakeOptions'.
takeOptionsNew  = liftIO $ do
    result <- garrow_take_options_new
    checkUnexpectedReturnNULL "takeOptionsNew" result
    result' <- (wrapObject TakeOptions) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif


