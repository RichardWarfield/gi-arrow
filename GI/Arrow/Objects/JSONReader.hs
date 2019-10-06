{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.JSONReader
    ( 

-- * Exported types
    JSONReader(..)                          ,
    IsJSONReader                            ,
    toJSONReader                            ,
    noJSONReader                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveJSONReaderMethod                 ,
#endif


-- ** new #method:new#

    jSONReaderNew                           ,


-- ** read #method:read#

#if defined(ENABLE_OVERLOADING)
    JSONReaderReadMethodInfo                ,
#endif
    jSONReaderRead                          ,




 -- * Properties
-- ** jsonTableReader #attr:jsonTableReader#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    JSONReaderJsonTableReaderPropertyInfo   ,
#endif
    constructJSONReaderJsonTableReader      ,
#if defined(ENABLE_OVERLOADING)
    jSONReaderJsonTableReader               ,
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

import {-# SOURCE #-} qualified GI.Arrow.Objects.InputStream as Arrow.InputStream
import {-# SOURCE #-} qualified GI.Arrow.Objects.JSONReadOptions as Arrow.JSONReadOptions
import {-# SOURCE #-} qualified GI.Arrow.Objects.Table as Arrow.Table
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype JSONReader = JSONReader (ManagedPtr JSONReader)
    deriving (Eq)
foreign import ccall "garrow_json_reader_get_type"
    c_garrow_json_reader_get_type :: IO GType

instance GObject JSONReader where
    gobjectType = c_garrow_json_reader_get_type
    

-- | Convert 'JSONReader' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue JSONReader where
    toGValue o = do
        gtype <- c_garrow_json_reader_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr JSONReader)
        B.ManagedPtr.newObject JSONReader ptr
        
    

-- | Type class for types which can be safely cast to `JSONReader`, for instance with `toJSONReader`.
class (GObject o, O.IsDescendantOf JSONReader o) => IsJSONReader o
instance (GObject o, O.IsDescendantOf JSONReader o) => IsJSONReader o

instance O.HasParentTypes JSONReader
type instance O.ParentTypes JSONReader = '[GObject.Object.Object]

-- | Cast to `JSONReader`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toJSONReader :: (MonadIO m, IsJSONReader o) => o -> m JSONReader
toJSONReader = liftIO . unsafeCastTo JSONReader

-- | A convenience alias for `Nothing` :: `Maybe` `JSONReader`.
noJSONReader :: Maybe JSONReader
noJSONReader = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveJSONReaderMethod (t :: Symbol) (o :: *) :: * where
    ResolveJSONReaderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveJSONReaderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveJSONReaderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveJSONReaderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveJSONReaderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveJSONReaderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveJSONReaderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveJSONReaderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveJSONReaderMethod "read" o = JSONReaderReadMethodInfo
    ResolveJSONReaderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveJSONReaderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveJSONReaderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveJSONReaderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveJSONReaderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveJSONReaderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveJSONReaderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveJSONReaderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveJSONReaderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveJSONReaderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveJSONReaderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveJSONReaderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveJSONReaderMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveJSONReaderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveJSONReaderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveJSONReaderMethod t JSONReader, O.MethodInfo info JSONReader p) => OL.IsLabel t (JSONReader -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "json-table-reader"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a `GValueConstruct` with valid value for the “@json-table-reader@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructJSONReaderJsonTableReader :: (IsJSONReader o, MIO.MonadIO m) => Ptr () -> m (GValueConstruct o)
constructJSONReaderJsonTableReader val = MIO.liftIO $ B.Properties.constructObjectPropertyPtr "json-table-reader" val

#if defined(ENABLE_OVERLOADING)
data JSONReaderJsonTableReaderPropertyInfo
instance AttrInfo JSONReaderJsonTableReaderPropertyInfo where
    type AttrAllowedOps JSONReaderJsonTableReaderPropertyInfo = '[ 'AttrConstruct]
    type AttrBaseTypeConstraint JSONReaderJsonTableReaderPropertyInfo = IsJSONReader
    type AttrSetTypeConstraint JSONReaderJsonTableReaderPropertyInfo = (~) (Ptr ())
    type AttrTransferTypeConstraint JSONReaderJsonTableReaderPropertyInfo = (~) (Ptr ())
    type AttrTransferType JSONReaderJsonTableReaderPropertyInfo = Ptr ()
    type AttrGetType JSONReaderJsonTableReaderPropertyInfo = ()
    type AttrLabel JSONReaderJsonTableReaderPropertyInfo = "json-table-reader"
    type AttrOrigin JSONReaderJsonTableReaderPropertyInfo = JSONReader
    attrGet = undefined
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructJSONReaderJsonTableReader
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList JSONReader
type instance O.AttributeList JSONReader = JSONReaderAttributeList
type JSONReaderAttributeList = ('[ '("jsonTableReader", JSONReaderJsonTableReaderPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
jSONReaderJsonTableReader :: AttrLabelProxy "jsonTableReader"
jSONReaderJsonTableReader = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList JSONReader = JSONReaderSignalList
type JSONReaderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method JSONReader::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "input"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "InputStream" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The input to be read."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "options"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "JSONReadOptions" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowJSONReadOptions."
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
-- returnType: Just
--               (TInterface Name { namespace = "Arrow" , name = "JSONReader" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_json_reader_new" garrow_json_reader_new :: 
    Ptr Arrow.InputStream.InputStream ->    -- input : TInterface (Name {namespace = "Arrow", name = "InputStream"})
    Ptr Arrow.JSONReadOptions.JSONReadOptions -> -- options : TInterface (Name {namespace = "Arrow", name = "JSONReadOptions"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr JSONReader)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
jSONReaderNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.InputStream.IsInputStream a, Arrow.JSONReadOptions.IsJSONReadOptions b) =>
    a
    -- ^ /@input@/: The input to be read.
    -> Maybe (b)
    -- ^ /@options@/: A t'GI.Arrow.Objects.JSONReadOptions.JSONReadOptions'.
    -> m (Maybe JSONReader)
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.JSONReader.JSONReader' or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
jSONReaderNew input options = liftIO $ do
    input' <- unsafeManagedPtrCastPtr input
    maybeOptions <- case options of
        Nothing -> return nullPtr
        Just jOptions -> do
            jOptions' <- unsafeManagedPtrCastPtr jOptions
            return jOptions'
    onException (do
        result <- propagateGError $ garrow_json_reader_new input' maybeOptions
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject JSONReader) result'
            return result''
        touchManagedPtr input
        whenJust options touchManagedPtr
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
#endif

-- method JSONReader::read
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "reader"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "JSONReader" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowJSONReader."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Table" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_json_reader_read" garrow_json_reader_read :: 
    Ptr JSONReader ->                       -- reader : TInterface (Name {namespace = "Arrow", name = "JSONReader"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.Table.Table)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
jSONReaderRead ::
    (B.CallStack.HasCallStack, MonadIO m, IsJSONReader a) =>
    a
    -- ^ /@reader@/: A t'GI.Arrow.Objects.JSONReader.JSONReader'.
    -> m (Maybe Arrow.Table.Table)
    -- ^ __Returns:__ A read t'GI.Arrow.Objects.Table.Table' or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
jSONReaderRead reader = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    onException (do
        result <- propagateGError $ garrow_json_reader_read reader'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Arrow.Table.Table) result'
            return result''
        touchManagedPtr reader
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data JSONReaderReadMethodInfo
instance (signature ~ (m (Maybe Arrow.Table.Table)), MonadIO m, IsJSONReader a) => O.MethodInfo JSONReaderReadMethodInfo a signature where
    overloadedMethod = jSONReaderRead

#endif


