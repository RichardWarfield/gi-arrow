{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.CountOptions
    ( 

-- * Exported types
    CountOptions(..)                        ,
    IsCountOptions                          ,
    toCountOptions                          ,
    noCountOptions                          ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveCountOptionsMethod               ,
#endif


-- ** new #method:new#

    countOptionsNew                         ,




 -- * Properties
-- ** mode #attr:mode#
-- | How to count values.
-- 
-- /Since: 0.13.0/

#if defined(ENABLE_OVERLOADING)
    CountOptionsModePropertyInfo            ,
#endif
    constructCountOptionsMode               ,
#if defined(ENABLE_OVERLOADING)
    countOptionsMode                        ,
#endif
    getCountOptionsMode                     ,
    setCountOptionsMode                     ,




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

-- | Memory-managed wrapper type.
newtype CountOptions = CountOptions (ManagedPtr CountOptions)
    deriving (Eq)
foreign import ccall "garrow_count_options_get_type"
    c_garrow_count_options_get_type :: IO GType

instance GObject CountOptions where
    gobjectType = c_garrow_count_options_get_type
    

-- | Convert 'CountOptions' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue CountOptions where
    toGValue o = do
        gtype <- c_garrow_count_options_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr CountOptions)
        B.ManagedPtr.newObject CountOptions ptr
        
    

-- | Type class for types which can be safely cast to `CountOptions`, for instance with `toCountOptions`.
class (GObject o, O.IsDescendantOf CountOptions o) => IsCountOptions o
instance (GObject o, O.IsDescendantOf CountOptions o) => IsCountOptions o

instance O.HasParentTypes CountOptions
type instance O.ParentTypes CountOptions = '[GObject.Object.Object]

-- | Cast to `CountOptions`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toCountOptions :: (MonadIO m, IsCountOptions o) => o -> m CountOptions
toCountOptions = liftIO . unsafeCastTo CountOptions

-- | A convenience alias for `Nothing` :: `Maybe` `CountOptions`.
noCountOptions :: Maybe CountOptions
noCountOptions = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveCountOptionsMethod (t :: Symbol) (o :: *) :: * where
    ResolveCountOptionsMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveCountOptionsMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveCountOptionsMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveCountOptionsMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveCountOptionsMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveCountOptionsMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveCountOptionsMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveCountOptionsMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveCountOptionsMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveCountOptionsMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveCountOptionsMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveCountOptionsMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveCountOptionsMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveCountOptionsMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveCountOptionsMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveCountOptionsMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveCountOptionsMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveCountOptionsMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveCountOptionsMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveCountOptionsMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveCountOptionsMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveCountOptionsMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveCountOptionsMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCountOptionsMethod t CountOptions, O.MethodInfo info CountOptions p) => OL.IsLabel t (CountOptions -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "mode"
   -- Type: TInterface (Name {namespace = "Arrow", name = "CountMode"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@mode@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' countOptions #mode
-- @
getCountOptionsMode :: (MonadIO m, IsCountOptions o) => o -> m Arrow.Enums.CountMode
getCountOptionsMode obj = liftIO $ B.Properties.getObjectPropertyEnum obj "mode"

-- | Set the value of the “@mode@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' countOptions [ #mode 'Data.GI.Base.Attributes.:=' value ]
-- @
setCountOptionsMode :: (MonadIO m, IsCountOptions o) => o -> Arrow.Enums.CountMode -> m ()
setCountOptionsMode obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "mode" val

-- | Construct a `GValueConstruct` with valid value for the “@mode@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCountOptionsMode :: (IsCountOptions o, MIO.MonadIO m) => Arrow.Enums.CountMode -> m (GValueConstruct o)
constructCountOptionsMode val = MIO.liftIO $ B.Properties.constructObjectPropertyEnum "mode" val

#if defined(ENABLE_OVERLOADING)
data CountOptionsModePropertyInfo
instance AttrInfo CountOptionsModePropertyInfo where
    type AttrAllowedOps CountOptionsModePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CountOptionsModePropertyInfo = IsCountOptions
    type AttrSetTypeConstraint CountOptionsModePropertyInfo = (~) Arrow.Enums.CountMode
    type AttrTransferTypeConstraint CountOptionsModePropertyInfo = (~) Arrow.Enums.CountMode
    type AttrTransferType CountOptionsModePropertyInfo = Arrow.Enums.CountMode
    type AttrGetType CountOptionsModePropertyInfo = Arrow.Enums.CountMode
    type AttrLabel CountOptionsModePropertyInfo = "mode"
    type AttrOrigin CountOptionsModePropertyInfo = CountOptions
    attrGet = getCountOptionsMode
    attrSet = setCountOptionsMode
    attrTransfer _ v = do
        return v
    attrConstruct = constructCountOptionsMode
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList CountOptions
type instance O.AttributeList CountOptions = CountOptionsAttributeList
type CountOptionsAttributeList = ('[ '("mode", CountOptionsModePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
countOptionsMode :: AttrLabelProxy "mode"
countOptionsMode = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList CountOptions = CountOptionsSignalList
type CountOptionsSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method CountOptions::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Arrow" , name = "CountOptions" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_count_options_new" garrow_count_options_new :: 
    IO (Ptr CountOptions)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.13.0/
countOptionsNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m CountOptions
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.CountOptions.CountOptions'.
countOptionsNew  = liftIO $ do
    result <- garrow_count_options_new
    checkUnexpectedReturnNULL "countOptionsNew" result
    result' <- (wrapObject CountOptions) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif


