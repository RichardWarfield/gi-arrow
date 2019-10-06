{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.JSONReadOptions
    ( 

-- * Exported types
    JSONReadOptions(..)                     ,
    IsJSONReadOptions                       ,
    toJSONReadOptions                       ,
    noJSONReadOptions                       ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveJSONReadOptionsMethod            ,
#endif


-- ** new #method:new#

    jSONReadOptionsNew                      ,




 -- * Properties
-- ** allowNewlinesInValues #attr:allowNewlinesInValues#
-- | Whether objects may be printed across multiple lines (for example pretty printed).
-- if 'P.False', input must end with an empty line.
-- 
-- /Since: 0.14.0/

#if defined(ENABLE_OVERLOADING)
    JSONReadOptionsAllowNewlinesInValuesPropertyInfo,
#endif
    constructJSONReadOptionsAllowNewlinesInValues,
    getJSONReadOptionsAllowNewlinesInValues ,
#if defined(ENABLE_OVERLOADING)
    jSONReadOptionsAllowNewlinesInValues    ,
#endif
    setJSONReadOptionsAllowNewlinesInValues ,


-- ** blockSize #attr:blockSize#
-- | Block size we request from the IO layer; also determines the size
-- of chunks when t'GI.Arrow.Objects.JSONReadOptions.JSONReadOptions':@/use-threads/@ is 'P.True'.
-- 
-- /Since: 0.14.0/

#if defined(ENABLE_OVERLOADING)
    JSONReadOptionsBlockSizePropertyInfo    ,
#endif
    constructJSONReadOptionsBlockSize       ,
    getJSONReadOptionsBlockSize             ,
#if defined(ENABLE_OVERLOADING)
    jSONReadOptionsBlockSize                ,
#endif
    setJSONReadOptionsBlockSize             ,


-- ** schema #attr:schema#
-- | Schema for passing custom conversion rules.
-- 
-- /Since: 0.14.0/

#if defined(ENABLE_OVERLOADING)
    JSONReadOptionsSchemaPropertyInfo       ,
#endif
    clearJSONReadOptionsSchema              ,
    constructJSONReadOptionsSchema          ,
    getJSONReadOptionsSchema                ,
#if defined(ENABLE_OVERLOADING)
    jSONReadOptionsSchema                   ,
#endif
    setJSONReadOptionsSchema                ,


-- ** unexpectedFieldBehavior #attr:unexpectedFieldBehavior#
-- | How to parse handle fields outside the explicit schema.
-- 
-- /Since: 0.14.0/

#if defined(ENABLE_OVERLOADING)
    JSONReadOptionsUnexpectedFieldBehaviorPropertyInfo,
#endif
    constructJSONReadOptionsUnexpectedFieldBehavior,
    getJSONReadOptionsUnexpectedFieldBehavior,
#if defined(ENABLE_OVERLOADING)
    jSONReadOptionsUnexpectedFieldBehavior  ,
#endif
    setJSONReadOptionsUnexpectedFieldBehavior,


-- ** useThreads #attr:useThreads#
-- | Whether to use the global CPU thread pool.
-- 
-- /Since: 0.14.0/

#if defined(ENABLE_OVERLOADING)
    JSONReadOptionsUseThreadsPropertyInfo   ,
#endif
    constructJSONReadOptionsUseThreads      ,
    getJSONReadOptionsUseThreads            ,
#if defined(ENABLE_OVERLOADING)
    jSONReadOptionsUseThreads               ,
#endif
    setJSONReadOptionsUseThreads            ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.Schema as Arrow.Schema
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype JSONReadOptions = JSONReadOptions (ManagedPtr JSONReadOptions)
    deriving (Eq)
foreign import ccall "garrow_json_read_options_get_type"
    c_garrow_json_read_options_get_type :: IO GType

instance GObject JSONReadOptions where
    gobjectType = c_garrow_json_read_options_get_type
    

-- | Convert 'JSONReadOptions' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue JSONReadOptions where
    toGValue o = do
        gtype <- c_garrow_json_read_options_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr JSONReadOptions)
        B.ManagedPtr.newObject JSONReadOptions ptr
        
    

-- | Type class for types which can be safely cast to `JSONReadOptions`, for instance with `toJSONReadOptions`.
class (GObject o, O.IsDescendantOf JSONReadOptions o) => IsJSONReadOptions o
instance (GObject o, O.IsDescendantOf JSONReadOptions o) => IsJSONReadOptions o

instance O.HasParentTypes JSONReadOptions
type instance O.ParentTypes JSONReadOptions = '[GObject.Object.Object]

-- | Cast to `JSONReadOptions`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toJSONReadOptions :: (MonadIO m, IsJSONReadOptions o) => o -> m JSONReadOptions
toJSONReadOptions = liftIO . unsafeCastTo JSONReadOptions

-- | A convenience alias for `Nothing` :: `Maybe` `JSONReadOptions`.
noJSONReadOptions :: Maybe JSONReadOptions
noJSONReadOptions = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveJSONReadOptionsMethod (t :: Symbol) (o :: *) :: * where
    ResolveJSONReadOptionsMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveJSONReadOptionsMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveJSONReadOptionsMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveJSONReadOptionsMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveJSONReadOptionsMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveJSONReadOptionsMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveJSONReadOptionsMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveJSONReadOptionsMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveJSONReadOptionsMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveJSONReadOptionsMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveJSONReadOptionsMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveJSONReadOptionsMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveJSONReadOptionsMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveJSONReadOptionsMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveJSONReadOptionsMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveJSONReadOptionsMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveJSONReadOptionsMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveJSONReadOptionsMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveJSONReadOptionsMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveJSONReadOptionsMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveJSONReadOptionsMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveJSONReadOptionsMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveJSONReadOptionsMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveJSONReadOptionsMethod t JSONReadOptions, O.MethodInfo info JSONReadOptions p) => OL.IsLabel t (JSONReadOptions -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "allow-newlines-in-values"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@allow-newlines-in-values@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' jSONReadOptions #allowNewlinesInValues
-- @
getJSONReadOptionsAllowNewlinesInValues :: (MonadIO m, IsJSONReadOptions o) => o -> m Bool
getJSONReadOptionsAllowNewlinesInValues obj = liftIO $ B.Properties.getObjectPropertyBool obj "allow-newlines-in-values"

-- | Set the value of the “@allow-newlines-in-values@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' jSONReadOptions [ #allowNewlinesInValues 'Data.GI.Base.Attributes.:=' value ]
-- @
setJSONReadOptionsAllowNewlinesInValues :: (MonadIO m, IsJSONReadOptions o) => o -> Bool -> m ()
setJSONReadOptionsAllowNewlinesInValues obj val = liftIO $ B.Properties.setObjectPropertyBool obj "allow-newlines-in-values" val

-- | Construct a `GValueConstruct` with valid value for the “@allow-newlines-in-values@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructJSONReadOptionsAllowNewlinesInValues :: (IsJSONReadOptions o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructJSONReadOptionsAllowNewlinesInValues val = MIO.liftIO $ B.Properties.constructObjectPropertyBool "allow-newlines-in-values" val

#if defined(ENABLE_OVERLOADING)
data JSONReadOptionsAllowNewlinesInValuesPropertyInfo
instance AttrInfo JSONReadOptionsAllowNewlinesInValuesPropertyInfo where
    type AttrAllowedOps JSONReadOptionsAllowNewlinesInValuesPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint JSONReadOptionsAllowNewlinesInValuesPropertyInfo = IsJSONReadOptions
    type AttrSetTypeConstraint JSONReadOptionsAllowNewlinesInValuesPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint JSONReadOptionsAllowNewlinesInValuesPropertyInfo = (~) Bool
    type AttrTransferType JSONReadOptionsAllowNewlinesInValuesPropertyInfo = Bool
    type AttrGetType JSONReadOptionsAllowNewlinesInValuesPropertyInfo = Bool
    type AttrLabel JSONReadOptionsAllowNewlinesInValuesPropertyInfo = "allow-newlines-in-values"
    type AttrOrigin JSONReadOptionsAllowNewlinesInValuesPropertyInfo = JSONReadOptions
    attrGet = getJSONReadOptionsAllowNewlinesInValues
    attrSet = setJSONReadOptionsAllowNewlinesInValues
    attrTransfer _ v = do
        return v
    attrConstruct = constructJSONReadOptionsAllowNewlinesInValues
    attrClear = undefined
#endif

-- VVV Prop "block-size"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@block-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' jSONReadOptions #blockSize
-- @
getJSONReadOptionsBlockSize :: (MonadIO m, IsJSONReadOptions o) => o -> m Int32
getJSONReadOptionsBlockSize obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "block-size"

-- | Set the value of the “@block-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' jSONReadOptions [ #blockSize 'Data.GI.Base.Attributes.:=' value ]
-- @
setJSONReadOptionsBlockSize :: (MonadIO m, IsJSONReadOptions o) => o -> Int32 -> m ()
setJSONReadOptionsBlockSize obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "block-size" val

-- | Construct a `GValueConstruct` with valid value for the “@block-size@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructJSONReadOptionsBlockSize :: (IsJSONReadOptions o, MIO.MonadIO m) => Int32 -> m (GValueConstruct o)
constructJSONReadOptionsBlockSize val = MIO.liftIO $ B.Properties.constructObjectPropertyInt32 "block-size" val

#if defined(ENABLE_OVERLOADING)
data JSONReadOptionsBlockSizePropertyInfo
instance AttrInfo JSONReadOptionsBlockSizePropertyInfo where
    type AttrAllowedOps JSONReadOptionsBlockSizePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint JSONReadOptionsBlockSizePropertyInfo = IsJSONReadOptions
    type AttrSetTypeConstraint JSONReadOptionsBlockSizePropertyInfo = (~) Int32
    type AttrTransferTypeConstraint JSONReadOptionsBlockSizePropertyInfo = (~) Int32
    type AttrTransferType JSONReadOptionsBlockSizePropertyInfo = Int32
    type AttrGetType JSONReadOptionsBlockSizePropertyInfo = Int32
    type AttrLabel JSONReadOptionsBlockSizePropertyInfo = "block-size"
    type AttrOrigin JSONReadOptionsBlockSizePropertyInfo = JSONReadOptions
    attrGet = getJSONReadOptionsBlockSize
    attrSet = setJSONReadOptionsBlockSize
    attrTransfer _ v = do
        return v
    attrConstruct = constructJSONReadOptionsBlockSize
    attrClear = undefined
#endif

-- VVV Prop "schema"
   -- Type: TInterface (Name {namespace = "Arrow", name = "Schema"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@schema@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' jSONReadOptions #schema
-- @
getJSONReadOptionsSchema :: (MonadIO m, IsJSONReadOptions o) => o -> m (Maybe Arrow.Schema.Schema)
getJSONReadOptionsSchema obj = liftIO $ B.Properties.getObjectPropertyObject obj "schema" Arrow.Schema.Schema

-- | Set the value of the “@schema@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' jSONReadOptions [ #schema 'Data.GI.Base.Attributes.:=' value ]
-- @
setJSONReadOptionsSchema :: (MonadIO m, IsJSONReadOptions o, Arrow.Schema.IsSchema a) => o -> a -> m ()
setJSONReadOptionsSchema obj val = liftIO $ B.Properties.setObjectPropertyObject obj "schema" (Just val)

-- | Construct a `GValueConstruct` with valid value for the “@schema@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructJSONReadOptionsSchema :: (IsJSONReadOptions o, MIO.MonadIO m, Arrow.Schema.IsSchema a) => a -> m (GValueConstruct o)
constructJSONReadOptionsSchema val = MIO.liftIO $ B.Properties.constructObjectPropertyObject "schema" (P.Just val)

-- | Set the value of the “@schema@” property to `Nothing`.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.clear' #schema
-- @
clearJSONReadOptionsSchema :: (MonadIO m, IsJSONReadOptions o) => o -> m ()
clearJSONReadOptionsSchema obj = liftIO $ B.Properties.setObjectPropertyObject obj "schema" (Nothing :: Maybe Arrow.Schema.Schema)

#if defined(ENABLE_OVERLOADING)
data JSONReadOptionsSchemaPropertyInfo
instance AttrInfo JSONReadOptionsSchemaPropertyInfo where
    type AttrAllowedOps JSONReadOptionsSchemaPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint JSONReadOptionsSchemaPropertyInfo = IsJSONReadOptions
    type AttrSetTypeConstraint JSONReadOptionsSchemaPropertyInfo = Arrow.Schema.IsSchema
    type AttrTransferTypeConstraint JSONReadOptionsSchemaPropertyInfo = Arrow.Schema.IsSchema
    type AttrTransferType JSONReadOptionsSchemaPropertyInfo = Arrow.Schema.Schema
    type AttrGetType JSONReadOptionsSchemaPropertyInfo = (Maybe Arrow.Schema.Schema)
    type AttrLabel JSONReadOptionsSchemaPropertyInfo = "schema"
    type AttrOrigin JSONReadOptionsSchemaPropertyInfo = JSONReadOptions
    attrGet = getJSONReadOptionsSchema
    attrSet = setJSONReadOptionsSchema
    attrTransfer _ v = do
        unsafeCastTo Arrow.Schema.Schema v
    attrConstruct = constructJSONReadOptionsSchema
    attrClear = clearJSONReadOptionsSchema
#endif

-- VVV Prop "unexpected-field-behavior"
   -- Type: TInterface (Name {namespace = "Arrow", name = "JSONReadUnexpectedFieldBehavior"})
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@unexpected-field-behavior@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' jSONReadOptions #unexpectedFieldBehavior
-- @
getJSONReadOptionsUnexpectedFieldBehavior :: (MonadIO m, IsJSONReadOptions o) => o -> m Arrow.Enums.JSONReadUnexpectedFieldBehavior
getJSONReadOptionsUnexpectedFieldBehavior obj = liftIO $ B.Properties.getObjectPropertyEnum obj "unexpected-field-behavior"

-- | Set the value of the “@unexpected-field-behavior@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' jSONReadOptions [ #unexpectedFieldBehavior 'Data.GI.Base.Attributes.:=' value ]
-- @
setJSONReadOptionsUnexpectedFieldBehavior :: (MonadIO m, IsJSONReadOptions o) => o -> Arrow.Enums.JSONReadUnexpectedFieldBehavior -> m ()
setJSONReadOptionsUnexpectedFieldBehavior obj val = liftIO $ B.Properties.setObjectPropertyEnum obj "unexpected-field-behavior" val

-- | Construct a `GValueConstruct` with valid value for the “@unexpected-field-behavior@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructJSONReadOptionsUnexpectedFieldBehavior :: (IsJSONReadOptions o, MIO.MonadIO m) => Arrow.Enums.JSONReadUnexpectedFieldBehavior -> m (GValueConstruct o)
constructJSONReadOptionsUnexpectedFieldBehavior val = MIO.liftIO $ B.Properties.constructObjectPropertyEnum "unexpected-field-behavior" val

#if defined(ENABLE_OVERLOADING)
data JSONReadOptionsUnexpectedFieldBehaviorPropertyInfo
instance AttrInfo JSONReadOptionsUnexpectedFieldBehaviorPropertyInfo where
    type AttrAllowedOps JSONReadOptionsUnexpectedFieldBehaviorPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint JSONReadOptionsUnexpectedFieldBehaviorPropertyInfo = IsJSONReadOptions
    type AttrSetTypeConstraint JSONReadOptionsUnexpectedFieldBehaviorPropertyInfo = (~) Arrow.Enums.JSONReadUnexpectedFieldBehavior
    type AttrTransferTypeConstraint JSONReadOptionsUnexpectedFieldBehaviorPropertyInfo = (~) Arrow.Enums.JSONReadUnexpectedFieldBehavior
    type AttrTransferType JSONReadOptionsUnexpectedFieldBehaviorPropertyInfo = Arrow.Enums.JSONReadUnexpectedFieldBehavior
    type AttrGetType JSONReadOptionsUnexpectedFieldBehaviorPropertyInfo = Arrow.Enums.JSONReadUnexpectedFieldBehavior
    type AttrLabel JSONReadOptionsUnexpectedFieldBehaviorPropertyInfo = "unexpected-field-behavior"
    type AttrOrigin JSONReadOptionsUnexpectedFieldBehaviorPropertyInfo = JSONReadOptions
    attrGet = getJSONReadOptionsUnexpectedFieldBehavior
    attrSet = setJSONReadOptionsUnexpectedFieldBehavior
    attrTransfer _ v = do
        return v
    attrConstruct = constructJSONReadOptionsUnexpectedFieldBehavior
    attrClear = undefined
#endif

-- VVV Prop "use-threads"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@use-threads@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' jSONReadOptions #useThreads
-- @
getJSONReadOptionsUseThreads :: (MonadIO m, IsJSONReadOptions o) => o -> m Bool
getJSONReadOptionsUseThreads obj = liftIO $ B.Properties.getObjectPropertyBool obj "use-threads"

-- | Set the value of the “@use-threads@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' jSONReadOptions [ #useThreads 'Data.GI.Base.Attributes.:=' value ]
-- @
setJSONReadOptionsUseThreads :: (MonadIO m, IsJSONReadOptions o) => o -> Bool -> m ()
setJSONReadOptionsUseThreads obj val = liftIO $ B.Properties.setObjectPropertyBool obj "use-threads" val

-- | Construct a `GValueConstruct` with valid value for the “@use-threads@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructJSONReadOptionsUseThreads :: (IsJSONReadOptions o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructJSONReadOptionsUseThreads val = MIO.liftIO $ B.Properties.constructObjectPropertyBool "use-threads" val

#if defined(ENABLE_OVERLOADING)
data JSONReadOptionsUseThreadsPropertyInfo
instance AttrInfo JSONReadOptionsUseThreadsPropertyInfo where
    type AttrAllowedOps JSONReadOptionsUseThreadsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint JSONReadOptionsUseThreadsPropertyInfo = IsJSONReadOptions
    type AttrSetTypeConstraint JSONReadOptionsUseThreadsPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint JSONReadOptionsUseThreadsPropertyInfo = (~) Bool
    type AttrTransferType JSONReadOptionsUseThreadsPropertyInfo = Bool
    type AttrGetType JSONReadOptionsUseThreadsPropertyInfo = Bool
    type AttrLabel JSONReadOptionsUseThreadsPropertyInfo = "use-threads"
    type AttrOrigin JSONReadOptionsUseThreadsPropertyInfo = JSONReadOptions
    attrGet = getJSONReadOptionsUseThreads
    attrSet = setJSONReadOptionsUseThreads
    attrTransfer _ v = do
        return v
    attrConstruct = constructJSONReadOptionsUseThreads
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList JSONReadOptions
type instance O.AttributeList JSONReadOptions = JSONReadOptionsAttributeList
type JSONReadOptionsAttributeList = ('[ '("allowNewlinesInValues", JSONReadOptionsAllowNewlinesInValuesPropertyInfo), '("blockSize", JSONReadOptionsBlockSizePropertyInfo), '("schema", JSONReadOptionsSchemaPropertyInfo), '("unexpectedFieldBehavior", JSONReadOptionsUnexpectedFieldBehaviorPropertyInfo), '("useThreads", JSONReadOptionsUseThreadsPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
jSONReadOptionsAllowNewlinesInValues :: AttrLabelProxy "allowNewlinesInValues"
jSONReadOptionsAllowNewlinesInValues = AttrLabelProxy

jSONReadOptionsBlockSize :: AttrLabelProxy "blockSize"
jSONReadOptionsBlockSize = AttrLabelProxy

jSONReadOptionsSchema :: AttrLabelProxy "schema"
jSONReadOptionsSchema = AttrLabelProxy

jSONReadOptionsUnexpectedFieldBehavior :: AttrLabelProxy "unexpectedFieldBehavior"
jSONReadOptionsUnexpectedFieldBehavior = AttrLabelProxy

jSONReadOptionsUseThreads :: AttrLabelProxy "useThreads"
jSONReadOptionsUseThreads = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList JSONReadOptions = JSONReadOptionsSignalList
type JSONReadOptionsSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method JSONReadOptions::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Arrow" , name = "JSONReadOptions" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_json_read_options_new" garrow_json_read_options_new :: 
    IO (Ptr JSONReadOptions)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
jSONReadOptionsNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m JSONReadOptions
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.JSONReadOptions.JSONReadOptions'.
jSONReadOptionsNew  = liftIO $ do
    result <- garrow_json_read_options_new
    checkUnexpectedReturnNULL "jSONReadOptionsNew" result
    result' <- (wrapObject JSONReadOptions) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif


