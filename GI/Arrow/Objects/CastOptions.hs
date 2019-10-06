{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.CastOptions
    ( 

-- * Exported types
    CastOptions(..)                         ,
    IsCastOptions                           ,
    toCastOptions                           ,
    noCastOptions                           ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveCastOptionsMethod                ,
#endif


-- ** new #method:new#

    castOptionsNew                          ,




 -- * Properties
-- ** allowFloatTruncate #attr:allowFloatTruncate#
-- | Whether truncating float value is allowed or not.
-- 
-- /Since: 0.12.0/

#if defined(ENABLE_OVERLOADING)
    CastOptionsAllowFloatTruncatePropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    castOptionsAllowFloatTruncate           ,
#endif
    constructCastOptionsAllowFloatTruncate  ,
    getCastOptionsAllowFloatTruncate        ,
    setCastOptionsAllowFloatTruncate        ,


-- ** allowIntOverflow #attr:allowIntOverflow#
-- | Whether integer overflow is allowed or not.
-- 
-- /Since: 0.7.0/

#if defined(ENABLE_OVERLOADING)
    CastOptionsAllowIntOverflowPropertyInfo ,
#endif
#if defined(ENABLE_OVERLOADING)
    castOptionsAllowIntOverflow             ,
#endif
    constructCastOptionsAllowIntOverflow    ,
    getCastOptionsAllowIntOverflow          ,
    setCastOptionsAllowIntOverflow          ,


-- ** allowInvalidUtf8 #attr:allowInvalidUtf8#
-- | Whether invalid UTF-8 string value is allowed or not.
-- 
-- /Since: 0.13.0/

#if defined(ENABLE_OVERLOADING)
    CastOptionsAllowInvalidUtf8PropertyInfo ,
#endif
#if defined(ENABLE_OVERLOADING)
    castOptionsAllowInvalidUtf8             ,
#endif
    constructCastOptionsAllowInvalidUtf8    ,
    getCastOptionsAllowInvalidUtf8          ,
    setCastOptionsAllowInvalidUtf8          ,


-- ** allowTimeTruncate #attr:allowTimeTruncate#
-- | Whether truncating time value is allowed or not.
-- 
-- /Since: 0.8.0/

#if defined(ENABLE_OVERLOADING)
    CastOptionsAllowTimeTruncatePropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    castOptionsAllowTimeTruncate            ,
#endif
    constructCastOptionsAllowTimeTruncate   ,
    getCastOptionsAllowTimeTruncate         ,
    setCastOptionsAllowTimeTruncate         ,




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
newtype CastOptions = CastOptions (ManagedPtr CastOptions)
    deriving (Eq)
foreign import ccall "garrow_cast_options_get_type"
    c_garrow_cast_options_get_type :: IO GType

instance GObject CastOptions where
    gobjectType = c_garrow_cast_options_get_type
    

-- | Convert 'CastOptions' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue CastOptions where
    toGValue o = do
        gtype <- c_garrow_cast_options_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr CastOptions)
        B.ManagedPtr.newObject CastOptions ptr
        
    

-- | Type class for types which can be safely cast to `CastOptions`, for instance with `toCastOptions`.
class (GObject o, O.IsDescendantOf CastOptions o) => IsCastOptions o
instance (GObject o, O.IsDescendantOf CastOptions o) => IsCastOptions o

instance O.HasParentTypes CastOptions
type instance O.ParentTypes CastOptions = '[GObject.Object.Object]

-- | Cast to `CastOptions`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toCastOptions :: (MonadIO m, IsCastOptions o) => o -> m CastOptions
toCastOptions = liftIO . unsafeCastTo CastOptions

-- | A convenience alias for `Nothing` :: `Maybe` `CastOptions`.
noCastOptions :: Maybe CastOptions
noCastOptions = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveCastOptionsMethod (t :: Symbol) (o :: *) :: * where
    ResolveCastOptionsMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveCastOptionsMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveCastOptionsMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveCastOptionsMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveCastOptionsMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveCastOptionsMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveCastOptionsMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveCastOptionsMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveCastOptionsMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveCastOptionsMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveCastOptionsMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveCastOptionsMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveCastOptionsMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveCastOptionsMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveCastOptionsMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveCastOptionsMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveCastOptionsMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveCastOptionsMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveCastOptionsMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveCastOptionsMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveCastOptionsMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveCastOptionsMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveCastOptionsMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCastOptionsMethod t CastOptions, O.MethodInfo info CastOptions p) => OL.IsLabel t (CastOptions -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "allow-float-truncate"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@allow-float-truncate@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' castOptions #allowFloatTruncate
-- @
getCastOptionsAllowFloatTruncate :: (MonadIO m, IsCastOptions o) => o -> m Bool
getCastOptionsAllowFloatTruncate obj = liftIO $ B.Properties.getObjectPropertyBool obj "allow-float-truncate"

-- | Set the value of the “@allow-float-truncate@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' castOptions [ #allowFloatTruncate 'Data.GI.Base.Attributes.:=' value ]
-- @
setCastOptionsAllowFloatTruncate :: (MonadIO m, IsCastOptions o) => o -> Bool -> m ()
setCastOptionsAllowFloatTruncate obj val = liftIO $ B.Properties.setObjectPropertyBool obj "allow-float-truncate" val

-- | Construct a `GValueConstruct` with valid value for the “@allow-float-truncate@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCastOptionsAllowFloatTruncate :: (IsCastOptions o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructCastOptionsAllowFloatTruncate val = MIO.liftIO $ B.Properties.constructObjectPropertyBool "allow-float-truncate" val

#if defined(ENABLE_OVERLOADING)
data CastOptionsAllowFloatTruncatePropertyInfo
instance AttrInfo CastOptionsAllowFloatTruncatePropertyInfo where
    type AttrAllowedOps CastOptionsAllowFloatTruncatePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CastOptionsAllowFloatTruncatePropertyInfo = IsCastOptions
    type AttrSetTypeConstraint CastOptionsAllowFloatTruncatePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CastOptionsAllowFloatTruncatePropertyInfo = (~) Bool
    type AttrTransferType CastOptionsAllowFloatTruncatePropertyInfo = Bool
    type AttrGetType CastOptionsAllowFloatTruncatePropertyInfo = Bool
    type AttrLabel CastOptionsAllowFloatTruncatePropertyInfo = "allow-float-truncate"
    type AttrOrigin CastOptionsAllowFloatTruncatePropertyInfo = CastOptions
    attrGet = getCastOptionsAllowFloatTruncate
    attrSet = setCastOptionsAllowFloatTruncate
    attrTransfer _ v = do
        return v
    attrConstruct = constructCastOptionsAllowFloatTruncate
    attrClear = undefined
#endif

-- VVV Prop "allow-int-overflow"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@allow-int-overflow@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' castOptions #allowIntOverflow
-- @
getCastOptionsAllowIntOverflow :: (MonadIO m, IsCastOptions o) => o -> m Bool
getCastOptionsAllowIntOverflow obj = liftIO $ B.Properties.getObjectPropertyBool obj "allow-int-overflow"

-- | Set the value of the “@allow-int-overflow@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' castOptions [ #allowIntOverflow 'Data.GI.Base.Attributes.:=' value ]
-- @
setCastOptionsAllowIntOverflow :: (MonadIO m, IsCastOptions o) => o -> Bool -> m ()
setCastOptionsAllowIntOverflow obj val = liftIO $ B.Properties.setObjectPropertyBool obj "allow-int-overflow" val

-- | Construct a `GValueConstruct` with valid value for the “@allow-int-overflow@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCastOptionsAllowIntOverflow :: (IsCastOptions o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructCastOptionsAllowIntOverflow val = MIO.liftIO $ B.Properties.constructObjectPropertyBool "allow-int-overflow" val

#if defined(ENABLE_OVERLOADING)
data CastOptionsAllowIntOverflowPropertyInfo
instance AttrInfo CastOptionsAllowIntOverflowPropertyInfo where
    type AttrAllowedOps CastOptionsAllowIntOverflowPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CastOptionsAllowIntOverflowPropertyInfo = IsCastOptions
    type AttrSetTypeConstraint CastOptionsAllowIntOverflowPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CastOptionsAllowIntOverflowPropertyInfo = (~) Bool
    type AttrTransferType CastOptionsAllowIntOverflowPropertyInfo = Bool
    type AttrGetType CastOptionsAllowIntOverflowPropertyInfo = Bool
    type AttrLabel CastOptionsAllowIntOverflowPropertyInfo = "allow-int-overflow"
    type AttrOrigin CastOptionsAllowIntOverflowPropertyInfo = CastOptions
    attrGet = getCastOptionsAllowIntOverflow
    attrSet = setCastOptionsAllowIntOverflow
    attrTransfer _ v = do
        return v
    attrConstruct = constructCastOptionsAllowIntOverflow
    attrClear = undefined
#endif

-- VVV Prop "allow-invalid-utf8"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@allow-invalid-utf8@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' castOptions #allowInvalidUtf8
-- @
getCastOptionsAllowInvalidUtf8 :: (MonadIO m, IsCastOptions o) => o -> m Bool
getCastOptionsAllowInvalidUtf8 obj = liftIO $ B.Properties.getObjectPropertyBool obj "allow-invalid-utf8"

-- | Set the value of the “@allow-invalid-utf8@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' castOptions [ #allowInvalidUtf8 'Data.GI.Base.Attributes.:=' value ]
-- @
setCastOptionsAllowInvalidUtf8 :: (MonadIO m, IsCastOptions o) => o -> Bool -> m ()
setCastOptionsAllowInvalidUtf8 obj val = liftIO $ B.Properties.setObjectPropertyBool obj "allow-invalid-utf8" val

-- | Construct a `GValueConstruct` with valid value for the “@allow-invalid-utf8@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCastOptionsAllowInvalidUtf8 :: (IsCastOptions o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructCastOptionsAllowInvalidUtf8 val = MIO.liftIO $ B.Properties.constructObjectPropertyBool "allow-invalid-utf8" val

#if defined(ENABLE_OVERLOADING)
data CastOptionsAllowInvalidUtf8PropertyInfo
instance AttrInfo CastOptionsAllowInvalidUtf8PropertyInfo where
    type AttrAllowedOps CastOptionsAllowInvalidUtf8PropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CastOptionsAllowInvalidUtf8PropertyInfo = IsCastOptions
    type AttrSetTypeConstraint CastOptionsAllowInvalidUtf8PropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CastOptionsAllowInvalidUtf8PropertyInfo = (~) Bool
    type AttrTransferType CastOptionsAllowInvalidUtf8PropertyInfo = Bool
    type AttrGetType CastOptionsAllowInvalidUtf8PropertyInfo = Bool
    type AttrLabel CastOptionsAllowInvalidUtf8PropertyInfo = "allow-invalid-utf8"
    type AttrOrigin CastOptionsAllowInvalidUtf8PropertyInfo = CastOptions
    attrGet = getCastOptionsAllowInvalidUtf8
    attrSet = setCastOptionsAllowInvalidUtf8
    attrTransfer _ v = do
        return v
    attrConstruct = constructCastOptionsAllowInvalidUtf8
    attrClear = undefined
#endif

-- VVV Prop "allow-time-truncate"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@allow-time-truncate@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' castOptions #allowTimeTruncate
-- @
getCastOptionsAllowTimeTruncate :: (MonadIO m, IsCastOptions o) => o -> m Bool
getCastOptionsAllowTimeTruncate obj = liftIO $ B.Properties.getObjectPropertyBool obj "allow-time-truncate"

-- | Set the value of the “@allow-time-truncate@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' castOptions [ #allowTimeTruncate 'Data.GI.Base.Attributes.:=' value ]
-- @
setCastOptionsAllowTimeTruncate :: (MonadIO m, IsCastOptions o) => o -> Bool -> m ()
setCastOptionsAllowTimeTruncate obj val = liftIO $ B.Properties.setObjectPropertyBool obj "allow-time-truncate" val

-- | Construct a `GValueConstruct` with valid value for the “@allow-time-truncate@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCastOptionsAllowTimeTruncate :: (IsCastOptions o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructCastOptionsAllowTimeTruncate val = MIO.liftIO $ B.Properties.constructObjectPropertyBool "allow-time-truncate" val

#if defined(ENABLE_OVERLOADING)
data CastOptionsAllowTimeTruncatePropertyInfo
instance AttrInfo CastOptionsAllowTimeTruncatePropertyInfo where
    type AttrAllowedOps CastOptionsAllowTimeTruncatePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CastOptionsAllowTimeTruncatePropertyInfo = IsCastOptions
    type AttrSetTypeConstraint CastOptionsAllowTimeTruncatePropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CastOptionsAllowTimeTruncatePropertyInfo = (~) Bool
    type AttrTransferType CastOptionsAllowTimeTruncatePropertyInfo = Bool
    type AttrGetType CastOptionsAllowTimeTruncatePropertyInfo = Bool
    type AttrLabel CastOptionsAllowTimeTruncatePropertyInfo = "allow-time-truncate"
    type AttrOrigin CastOptionsAllowTimeTruncatePropertyInfo = CastOptions
    attrGet = getCastOptionsAllowTimeTruncate
    attrSet = setCastOptionsAllowTimeTruncate
    attrTransfer _ v = do
        return v
    attrConstruct = constructCastOptionsAllowTimeTruncate
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList CastOptions
type instance O.AttributeList CastOptions = CastOptionsAttributeList
type CastOptionsAttributeList = ('[ '("allowFloatTruncate", CastOptionsAllowFloatTruncatePropertyInfo), '("allowIntOverflow", CastOptionsAllowIntOverflowPropertyInfo), '("allowInvalidUtf8", CastOptionsAllowInvalidUtf8PropertyInfo), '("allowTimeTruncate", CastOptionsAllowTimeTruncatePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
castOptionsAllowFloatTruncate :: AttrLabelProxy "allowFloatTruncate"
castOptionsAllowFloatTruncate = AttrLabelProxy

castOptionsAllowIntOverflow :: AttrLabelProxy "allowIntOverflow"
castOptionsAllowIntOverflow = AttrLabelProxy

castOptionsAllowInvalidUtf8 :: AttrLabelProxy "allowInvalidUtf8"
castOptionsAllowInvalidUtf8 = AttrLabelProxy

castOptionsAllowTimeTruncate :: AttrLabelProxy "allowTimeTruncate"
castOptionsAllowTimeTruncate = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList CastOptions = CastOptionsSignalList
type CastOptionsSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method CastOptions::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Arrow" , name = "CastOptions" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_cast_options_new" garrow_cast_options_new :: 
    IO (Ptr CastOptions)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.7.0/
castOptionsNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m CastOptions
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.CastOptions.CastOptions'.
castOptionsNew  = liftIO $ do
    result <- garrow_cast_options_new
    checkUnexpectedReturnNULL "castOptionsNew" result
    result' <- (wrapObject CastOptions) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif


