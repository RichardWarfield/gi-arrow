{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.TableBatchReader
    ( 

-- * Exported types
    TableBatchReader(..)                    ,
    IsTableBatchReader                      ,
    toTableBatchReader                      ,
    noTableBatchReader                      ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveTableBatchReaderMethod           ,
#endif


-- ** new #method:new#

    tableBatchReaderNew                     ,




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

import {-# SOURCE #-} qualified GI.Arrow.Objects.RecordBatchReader as Arrow.RecordBatchReader
import {-# SOURCE #-} qualified GI.Arrow.Objects.Table as Arrow.Table
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype TableBatchReader = TableBatchReader (ManagedPtr TableBatchReader)
    deriving (Eq)
foreign import ccall "garrow_table_batch_reader_get_type"
    c_garrow_table_batch_reader_get_type :: IO GType

instance GObject TableBatchReader where
    gobjectType = c_garrow_table_batch_reader_get_type
    

-- | Convert 'TableBatchReader' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue TableBatchReader where
    toGValue o = do
        gtype <- c_garrow_table_batch_reader_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr TableBatchReader)
        B.ManagedPtr.newObject TableBatchReader ptr
        
    

-- | Type class for types which can be safely cast to `TableBatchReader`, for instance with `toTableBatchReader`.
class (GObject o, O.IsDescendantOf TableBatchReader o) => IsTableBatchReader o
instance (GObject o, O.IsDescendantOf TableBatchReader o) => IsTableBatchReader o

instance O.HasParentTypes TableBatchReader
type instance O.ParentTypes TableBatchReader = '[Arrow.RecordBatchReader.RecordBatchReader, GObject.Object.Object]

-- | Cast to `TableBatchReader`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTableBatchReader :: (MonadIO m, IsTableBatchReader o) => o -> m TableBatchReader
toTableBatchReader = liftIO . unsafeCastTo TableBatchReader

-- | A convenience alias for `Nothing` :: `Maybe` `TableBatchReader`.
noTableBatchReader :: Maybe TableBatchReader
noTableBatchReader = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveTableBatchReaderMethod (t :: Symbol) (o :: *) :: * where
    ResolveTableBatchReaderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTableBatchReaderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTableBatchReaderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTableBatchReaderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTableBatchReaderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTableBatchReaderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTableBatchReaderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTableBatchReaderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTableBatchReaderMethod "readNext" o = Arrow.RecordBatchReader.RecordBatchReaderReadNextMethodInfo
    ResolveTableBatchReaderMethod "readNextRecordBatch" o = Arrow.RecordBatchReader.RecordBatchReaderReadNextRecordBatchMethodInfo
    ResolveTableBatchReaderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTableBatchReaderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTableBatchReaderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTableBatchReaderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTableBatchReaderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTableBatchReaderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTableBatchReaderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTableBatchReaderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTableBatchReaderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTableBatchReaderMethod "getNextRecordBatch" o = Arrow.RecordBatchReader.RecordBatchReaderGetNextRecordBatchMethodInfo
    ResolveTableBatchReaderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTableBatchReaderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTableBatchReaderMethod "getSchema" o = Arrow.RecordBatchReader.RecordBatchReaderGetSchemaMethodInfo
    ResolveTableBatchReaderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTableBatchReaderMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveTableBatchReaderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTableBatchReaderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTableBatchReaderMethod t TableBatchReader, O.MethodInfo info TableBatchReader p) => OL.IsLabel t (TableBatchReader -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList TableBatchReader
type instance O.AttributeList TableBatchReader = TableBatchReaderAttributeList
type TableBatchReaderAttributeList = ('[ '("recordBatchReader", Arrow.RecordBatchReader.RecordBatchReaderRecordBatchReaderPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList TableBatchReader = TableBatchReaderSignalList
type TableBatchReaderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method TableBatchReader::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "table"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The table to be read."
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
--               (TInterface
--                  Name { namespace = "Arrow" , name = "TableBatchReader" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_table_batch_reader_new" garrow_table_batch_reader_new :: 
    Ptr Arrow.Table.Table ->                -- table : TInterface (Name {namespace = "Arrow", name = "Table"})
    IO (Ptr TableBatchReader)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.8.0/
tableBatchReaderNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Table.IsTable a) =>
    a
    -- ^ /@table@/: The table to be read.
    -> m TableBatchReader
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.TableBatchReader.TableBatchReader'.
tableBatchReaderNew table = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    result <- garrow_table_batch_reader_new table'
    checkUnexpectedReturnNULL "tableBatchReaderNew" result
    result' <- (wrapObject TableBatchReader) result
    touchManagedPtr table
    return result'

#if defined(ENABLE_OVERLOADING)
#endif


