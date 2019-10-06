{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.CompareOptions
    ( 

-- * Exported types
    CompareOptions(..)                      ,
    IsCompareOptions                        ,
    toCompareOptions                        ,
    noCompareOptions                        ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveCompareOptionsMethod             ,
#endif


-- ** new #method:new#

    compareOptionsNew                       ,




 -- * Properties
-- ** operator #attr:operator#
-- | How to compare the value.
-- 
-- /Since: 0.14.0/

#if defined(ENABLE_OVERLOADING)
    CompareOptionsOperatorPropertyInfo      ,
#endif
#if defined(ENABLE_OVERLOADING)
    compareOptionsOperator                  ,
#endif
    constructCompareOptionsOperator         ,
    getCompareOptionsOperator               ,
    setCompareOptionsOperator               ,




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
newtype CompareOptions = CompareOptions (ManagedPtr CompareOptions)
    deriving (Eq)
foreign import ccall "garrow_compare_options_get_type"
    c_garrow_compare_options_get_type :: IO GType

instance GObject CompareOptions where
    gobjectType = c_garrow_compare_options_get_type
    

-- | Convert 'CompareOptions' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue CompareOptions where
    toGValue o = do
        gtype <- c_garrow_compare_options_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr CompareOptions)
        B.ManagedPtr.newObject CompareOptions ptr
        
    

-- | Type class for types which can be safely cast to `CompareOptions`, for instance with `toCompareOptions`.
class (GObject o, O.IsDescendantOf CompareOptions o) => IsCompareOptions o
instance (GObject o, O.IsDescendantOf CompareOptions o) => IsCompareOptions o

instance O.HasParentTypes CompareOptions
type instance O.ParentTypes CompareOptions = '[GObject.Object.Object]

-- | Cast to `CompareOptions`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toCompareOptions :: (MonadIO m, IsCompareOptions o) => o -> m CompareOptions
toCompareOptions = liftIO . unsafeCastTo CompareOptions

-- | A convenience alias for `Nothing` :: `Maybe` `CompareOptions`.
noCompareOptions :: Maybe CompareOptions
noCompareOptions = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveCompareOptionsMethod (t :: Symbol) (o :: *) :: * where
    ResolveCompareOptionsMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveCompareOptionsMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveCompareOptionsMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveCompareOptionsMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveCompareOptionsMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveCompareOptionsMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveCompareOptionsMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveCompareOptionsMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveCompareOptionsMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveCompareOptionsMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveCompareOptionsMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveCompareOptionsMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveCompareOptionsMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveCompareOptionsMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveCompareOptionsMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveCompareOptionsMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveCompareOptionsMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveCompareOptionsMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveCompareOptionsMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveCompareOptionsMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveCompareOptionsMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveCompareOptionsMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveCompareOptionsMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCompareOptionsMethod t CompareOptions, O.MethodInfo info CompareOptions p) => OL.IsLabel t (CompareOptions -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "operator"
   -- Type: TInterface (Name {namespace = "Arrow", name = "CompareOperator"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@operator@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' compareOptions #operator
-- @
getCompareOptionsOperator :: (MonadIO m, IsCompareOptions o) => o -> m Arrow.Enums.CompareOperator
getCompareOptionsOperator obj = liftIO $ B.Properties.getObjectPropertyEnum obj "operator"

-- | Set the value of the “@operator@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' compareOptions [ #operator 'Data.GI.Base.Attributes.:=' value ]
-- @
setCompareOptionsOperator :: (MonadIO m, IsCompareOptions o) => o -> Arrow.Enums.CompareOperator -> m ()
setCompareOptionsOperator obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "operator" val

-- | Construct a `GValueConstruct` with valid value for the “@operator@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCompareOptionsOperator :: (IsCompareOptions o, MIO.MonadIO m) => Arrow.Enums.CompareOperator -> m (GValueConstruct o)
constructCompareOptionsOperator val = MIO.liftIO $ B.Properties.constructObjectPropertyEnum "operator" val

#if defined(ENABLE_OVERLOADING)
data CompareOptionsOperatorPropertyInfo
instance AttrInfo CompareOptionsOperatorPropertyInfo where
    type AttrAllowedOps CompareOptionsOperatorPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CompareOptionsOperatorPropertyInfo = IsCompareOptions
    type AttrSetTypeConstraint CompareOptionsOperatorPropertyInfo = (~) Arrow.Enums.CompareOperator
    type AttrTransferTypeConstraint CompareOptionsOperatorPropertyInfo = (~) Arrow.Enums.CompareOperator
    type AttrTransferType CompareOptionsOperatorPropertyInfo = Arrow.Enums.CompareOperator
    type AttrGetType CompareOptionsOperatorPropertyInfo = Arrow.Enums.CompareOperator
    type AttrLabel CompareOptionsOperatorPropertyInfo = "operator"
    type AttrOrigin CompareOptionsOperatorPropertyInfo = CompareOptions
    attrGet = getCompareOptionsOperator
    attrSet = setCompareOptionsOperator
    attrTransfer _ v = do
        return v
    attrConstruct = constructCompareOptionsOperator
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList CompareOptions
type instance O.AttributeList CompareOptions = CompareOptionsAttributeList
type CompareOptionsAttributeList = ('[ '("operator", CompareOptionsOperatorPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
compareOptionsOperator :: AttrLabelProxy "operator"
compareOptionsOperator = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList CompareOptions = CompareOptionsSignalList
type CompareOptionsSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method CompareOptions::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Arrow" , name = "CompareOptions" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_compare_options_new" garrow_compare_options_new :: 
    IO (Ptr CompareOptions)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
compareOptionsNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m CompareOptions
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.CompareOptions.CompareOptions'.
compareOptionsNew  = liftIO $ do
    result <- garrow_compare_options_new
    checkUnexpectedReturnNULL "compareOptionsNew" result
    result' <- (wrapObject CompareOptions) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif


