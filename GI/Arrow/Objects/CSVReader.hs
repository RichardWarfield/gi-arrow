{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.CSVReader
    ( 

-- * Exported types
    CSVReader(..)                           ,
    IsCSVReader                             ,
    toCSVReader                             ,
    noCSVReader                             ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveCSVReaderMethod                  ,
#endif


-- ** new #method:new#

    cSVReaderNew                            ,


-- ** read #method:read#

#if defined(ENABLE_OVERLOADING)
    CSVReaderReadMethodInfo                 ,
#endif
    cSVReaderRead                           ,




 -- * Properties
-- ** csvTableReader #attr:csvTableReader#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    CSVReaderCsvTableReaderPropertyInfo     ,
#endif
#if defined(ENABLE_OVERLOADING)
    cSVReaderCsvTableReader                 ,
#endif
    constructCSVReaderCsvTableReader        ,




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

import {-# SOURCE #-} qualified GI.Arrow.Objects.CSVReadOptions as Arrow.CSVReadOptions
import {-# SOURCE #-} qualified GI.Arrow.Objects.InputStream as Arrow.InputStream
import {-# SOURCE #-} qualified GI.Arrow.Objects.Table as Arrow.Table
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype CSVReader = CSVReader (ManagedPtr CSVReader)
    deriving (Eq)
foreign import ccall "garrow_csv_reader_get_type"
    c_garrow_csv_reader_get_type :: IO GType

instance GObject CSVReader where
    gobjectType = c_garrow_csv_reader_get_type
    

-- | Convert 'CSVReader' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue CSVReader where
    toGValue o = do
        gtype <- c_garrow_csv_reader_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr CSVReader)
        B.ManagedPtr.newObject CSVReader ptr
        
    

-- | Type class for types which can be safely cast to `CSVReader`, for instance with `toCSVReader`.
class (GObject o, O.IsDescendantOf CSVReader o) => IsCSVReader o
instance (GObject o, O.IsDescendantOf CSVReader o) => IsCSVReader o

instance O.HasParentTypes CSVReader
type instance O.ParentTypes CSVReader = '[GObject.Object.Object]

-- | Cast to `CSVReader`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toCSVReader :: (MonadIO m, IsCSVReader o) => o -> m CSVReader
toCSVReader = liftIO . unsafeCastTo CSVReader

-- | A convenience alias for `Nothing` :: `Maybe` `CSVReader`.
noCSVReader :: Maybe CSVReader
noCSVReader = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveCSVReaderMethod (t :: Symbol) (o :: *) :: * where
    ResolveCSVReaderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveCSVReaderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveCSVReaderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveCSVReaderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveCSVReaderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveCSVReaderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveCSVReaderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveCSVReaderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveCSVReaderMethod "read" o = CSVReaderReadMethodInfo
    ResolveCSVReaderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveCSVReaderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveCSVReaderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveCSVReaderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveCSVReaderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveCSVReaderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveCSVReaderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveCSVReaderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveCSVReaderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveCSVReaderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveCSVReaderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveCSVReaderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveCSVReaderMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveCSVReaderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveCSVReaderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCSVReaderMethod t CSVReader, O.MethodInfo info CSVReader p) => OL.IsLabel t (CSVReader -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "csv-table-reader"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a `GValueConstruct` with valid value for the “@csv-table-reader@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCSVReaderCsvTableReader :: (IsCSVReader o, MIO.MonadIO m) => Ptr () -> m (GValueConstruct o)
constructCSVReaderCsvTableReader val = MIO.liftIO $ B.Properties.constructObjectPropertyPtr "csv-table-reader" val

#if defined(ENABLE_OVERLOADING)
data CSVReaderCsvTableReaderPropertyInfo
instance AttrInfo CSVReaderCsvTableReaderPropertyInfo where
    type AttrAllowedOps CSVReaderCsvTableReaderPropertyInfo = '[ 'AttrConstruct]
    type AttrBaseTypeConstraint CSVReaderCsvTableReaderPropertyInfo = IsCSVReader
    type AttrSetTypeConstraint CSVReaderCsvTableReaderPropertyInfo = (~) (Ptr ())
    type AttrTransferTypeConstraint CSVReaderCsvTableReaderPropertyInfo = (~) (Ptr ())
    type AttrTransferType CSVReaderCsvTableReaderPropertyInfo = Ptr ()
    type AttrGetType CSVReaderCsvTableReaderPropertyInfo = ()
    type AttrLabel CSVReaderCsvTableReaderPropertyInfo = "csv-table-reader"
    type AttrOrigin CSVReaderCsvTableReaderPropertyInfo = CSVReader
    attrGet = undefined
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructCSVReaderCsvTableReader
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList CSVReader
type instance O.AttributeList CSVReader = CSVReaderAttributeList
type CSVReaderAttributeList = ('[ '("csvTableReader", CSVReaderCsvTableReaderPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
cSVReaderCsvTableReader :: AttrLabelProxy "csvTableReader"
cSVReaderCsvTableReader = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList CSVReader = CSVReaderSignalList
type CSVReaderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method CSVReader::new
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
--               TInterface Name { namespace = "Arrow" , name = "CSVReadOptions" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowCSVReadOptions."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "CSVReader" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_csv_reader_new" garrow_csv_reader_new :: 
    Ptr Arrow.InputStream.InputStream ->    -- input : TInterface (Name {namespace = "Arrow", name = "InputStream"})
    Ptr Arrow.CSVReadOptions.CSVReadOptions -> -- options : TInterface (Name {namespace = "Arrow", name = "CSVReadOptions"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr CSVReader)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
cSVReaderNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.InputStream.IsInputStream a, Arrow.CSVReadOptions.IsCSVReadOptions b) =>
    a
    -- ^ /@input@/: The input to be read.
    -> Maybe (b)
    -- ^ /@options@/: A t'GI.Arrow.Objects.CSVReadOptions.CSVReadOptions'.
    -> m (Maybe CSVReader)
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.CSVReader.CSVReader' or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
cSVReaderNew input options = liftIO $ do
    input' <- unsafeManagedPtrCastPtr input
    maybeOptions <- case options of
        Nothing -> return nullPtr
        Just jOptions -> do
            jOptions' <- unsafeManagedPtrCastPtr jOptions
            return jOptions'
    onException (do
        result <- propagateGError $ garrow_csv_reader_new input' maybeOptions
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject CSVReader) result'
            return result''
        touchManagedPtr input
        whenJust options touchManagedPtr
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
#endif

-- method CSVReader::read
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "reader"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "CSVReader" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowCSVReader."
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

foreign import ccall "garrow_csv_reader_read" garrow_csv_reader_read :: 
    Ptr CSVReader ->                        -- reader : TInterface (Name {namespace = "Arrow", name = "CSVReader"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.Table.Table)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
cSVReaderRead ::
    (B.CallStack.HasCallStack, MonadIO m, IsCSVReader a) =>
    a
    -- ^ /@reader@/: A t'GI.Arrow.Objects.CSVReader.CSVReader'.
    -> m (Maybe Arrow.Table.Table)
    -- ^ __Returns:__ A read t'GI.Arrow.Objects.Table.Table' or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
cSVReaderRead reader = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    onException (do
        result <- propagateGError $ garrow_csv_reader_read reader'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Arrow.Table.Table) result'
            return result''
        touchManagedPtr reader
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data CSVReaderReadMethodInfo
instance (signature ~ (m (Maybe Arrow.Table.Table)), MonadIO m, IsCSVReader a) => O.MethodInfo CSVReaderReadMethodInfo a signature where
    overloadedMethod = cSVReaderRead

#endif


