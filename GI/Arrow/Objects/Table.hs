{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.Table
    ( 

-- * Exported types
    Table(..)                               ,
    IsTable                                 ,
    toTable                                 ,
    noTable                                 ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveTableMethod                      ,
#endif


-- ** addColumn #method:addColumn#

#if defined(ENABLE_OVERLOADING)
    TableAddColumnMethodInfo                ,
#endif
    tableAddColumn                          ,


-- ** concatenate #method:concatenate#

#if defined(ENABLE_OVERLOADING)
    TableConcatenateMethodInfo              ,
#endif
    tableConcatenate                        ,


-- ** equal #method:equal#

#if defined(ENABLE_OVERLOADING)
    TableEqualMethodInfo                    ,
#endif
    tableEqual                              ,


-- ** getColumn #method:getColumn#

#if defined(ENABLE_OVERLOADING)
    TableGetColumnMethodInfo                ,
#endif
    tableGetColumn                          ,


-- ** getNColumns #method:getNColumns#

#if defined(ENABLE_OVERLOADING)
    TableGetNColumnsMethodInfo              ,
#endif
    tableGetNColumns                        ,


-- ** getNRows #method:getNRows#

#if defined(ENABLE_OVERLOADING)
    TableGetNRowsMethodInfo                 ,
#endif
    tableGetNRows                           ,


-- ** getSchema #method:getSchema#

#if defined(ENABLE_OVERLOADING)
    TableGetSchemaMethodInfo                ,
#endif
    tableGetSchema                          ,


-- ** new #method:new#

    tableNew                                ,


-- ** newArrays #method:newArrays#

    tableNewArrays                          ,


-- ** newColumns #method:newColumns#

    tableNewColumns                         ,


-- ** newRecordBatches #method:newRecordBatches#

    tableNewRecordBatches                   ,


-- ** removeColumn #method:removeColumn#

#if defined(ENABLE_OVERLOADING)
    TableRemoveColumnMethodInfo             ,
#endif
    tableRemoveColumn                       ,


-- ** replaceColumn #method:replaceColumn#

#if defined(ENABLE_OVERLOADING)
    TableReplaceColumnMethodInfo            ,
#endif
    tableReplaceColumn                      ,


-- ** slice #method:slice#

#if defined(ENABLE_OVERLOADING)
    TableSliceMethodInfo                    ,
#endif
    tableSlice                              ,


-- ** toString #method:toString#

#if defined(ENABLE_OVERLOADING)
    TableToStringMethodInfo                 ,
#endif
    tableToString                           ,




 -- * Properties
-- ** table #attr:table#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    TableTablePropertyInfo                  ,
#endif
    constructTableTable                     ,
#if defined(ENABLE_OVERLOADING)
    tableTable                              ,
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

import {-# SOURCE #-} qualified GI.Arrow.Objects.Array as Arrow.Array
import {-# SOURCE #-} qualified GI.Arrow.Objects.Column as Arrow.Column
import {-# SOURCE #-} qualified GI.Arrow.Objects.RecordBatch as Arrow.RecordBatch
import {-# SOURCE #-} qualified GI.Arrow.Objects.Schema as Arrow.Schema
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Table = Table (ManagedPtr Table)
    deriving (Eq)
foreign import ccall "garrow_table_get_type"
    c_garrow_table_get_type :: IO GType

instance GObject Table where
    gobjectType = c_garrow_table_get_type
    

-- | Convert 'Table' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Table where
    toGValue o = do
        gtype <- c_garrow_table_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Table)
        B.ManagedPtr.newObject Table ptr
        
    

-- | Type class for types which can be safely cast to `Table`, for instance with `toTable`.
class (GObject o, O.IsDescendantOf Table o) => IsTable o
instance (GObject o, O.IsDescendantOf Table o) => IsTable o

instance O.HasParentTypes Table
type instance O.ParentTypes Table = '[GObject.Object.Object]

-- | Cast to `Table`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTable :: (MonadIO m, IsTable o) => o -> m Table
toTable = liftIO . unsafeCastTo Table

-- | A convenience alias for `Nothing` :: `Maybe` `Table`.
noTable :: Maybe Table
noTable = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveTableMethod (t :: Symbol) (o :: *) :: * where
    ResolveTableMethod "addColumn" o = TableAddColumnMethodInfo
    ResolveTableMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTableMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTableMethod "concatenate" o = TableConcatenateMethodInfo
    ResolveTableMethod "equal" o = TableEqualMethodInfo
    ResolveTableMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTableMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTableMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTableMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTableMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTableMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTableMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTableMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTableMethod "removeColumn" o = TableRemoveColumnMethodInfo
    ResolveTableMethod "replaceColumn" o = TableReplaceColumnMethodInfo
    ResolveTableMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTableMethod "slice" o = TableSliceMethodInfo
    ResolveTableMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTableMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTableMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTableMethod "toString" o = TableToStringMethodInfo
    ResolveTableMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTableMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTableMethod "getColumn" o = TableGetColumnMethodInfo
    ResolveTableMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTableMethod "getNColumns" o = TableGetNColumnsMethodInfo
    ResolveTableMethod "getNRows" o = TableGetNRowsMethodInfo
    ResolveTableMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTableMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTableMethod "getSchema" o = TableGetSchemaMethodInfo
    ResolveTableMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTableMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveTableMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTableMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTableMethod t Table, O.MethodInfo info Table p) => OL.IsLabel t (Table -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "table"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a `GValueConstruct` with valid value for the “@table@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructTableTable :: (IsTable o, MIO.MonadIO m) => Ptr () -> m (GValueConstruct o)
constructTableTable val = MIO.liftIO $ B.Properties.constructObjectPropertyPtr "table" val

#if defined(ENABLE_OVERLOADING)
data TableTablePropertyInfo
instance AttrInfo TableTablePropertyInfo where
    type AttrAllowedOps TableTablePropertyInfo = '[ 'AttrConstruct]
    type AttrBaseTypeConstraint TableTablePropertyInfo = IsTable
    type AttrSetTypeConstraint TableTablePropertyInfo = (~) (Ptr ())
    type AttrTransferTypeConstraint TableTablePropertyInfo = (~) (Ptr ())
    type AttrTransferType TableTablePropertyInfo = Ptr ()
    type AttrGetType TableTablePropertyInfo = ()
    type AttrLabel TableTablePropertyInfo = "table"
    type AttrOrigin TableTablePropertyInfo = Table
    attrGet = undefined
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructTableTable
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Table
type instance O.AttributeList Table = TableAttributeList
type TableAttributeList = ('[ '("table", TableTablePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
tableTable :: AttrLabelProxy "table"
tableTable = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Table = TableSignalList
type TableSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Table::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "schema"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Schema" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The schema of the table."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "columns"
--           , argType =
--               TGList (TInterface Name { namespace = "Arrow" , name = "Column" })
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The columns of the table."
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
-- throws : False
-- Skip return : False

foreign import ccall "garrow_table_new" garrow_table_new :: 
    Ptr Arrow.Schema.Schema ->              -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    Ptr (GList (Ptr Arrow.Column.Column)) -> -- columns : TGList (TInterface (Name {namespace = "Arrow", name = "Column"}))
    IO (Ptr Table)

{-# DEPRECATED tableNew ["(Since version 0.12.0)","Use @/garrow_table_new_values()/@ instead."] #-}
-- | /No description available in the introspection data./
tableNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Schema.IsSchema a, Arrow.Column.IsColumn b) =>
    a
    -- ^ /@schema@/: The schema of the table.
    -> [b]
    -- ^ /@columns@/: The columns of the table.
    -> m Table
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.Table.Table'.
tableNew schema columns = liftIO $ do
    schema' <- unsafeManagedPtrCastPtr schema
    columns' <- mapM unsafeManagedPtrCastPtr columns
    columns'' <- packGList columns'
    result <- garrow_table_new schema' columns''
    checkUnexpectedReturnNULL "tableNew" result
    result' <- (wrapObject Table) result
    touchManagedPtr schema
    mapM_ touchManagedPtr columns
    g_list_free columns''
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Table::new_arrays
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "schema"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Schema" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The schema of the table."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "arrays"
--           , argType =
--               TCArray
--                 False
--                 (-1)
--                 2
--                 (TInterface Name { namespace = "Arrow" , name = "Array" })
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The arrays of the table."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_arrays"
--           , argType = TBasicType TUInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The number of arrays."
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
--              { argCName = "n_arrays"
--              , argType = TBasicType TUInt64
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "The number of arrays."
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Table" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_table_new_arrays" garrow_table_new_arrays :: 
    Ptr Arrow.Schema.Schema ->              -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    Ptr (Ptr Arrow.Array.Array) ->          -- arrays : TCArray False (-1) 2 (TInterface (Name {namespace = "Arrow", name = "Array"}))
    Word64 ->                               -- n_arrays : TBasicType TUInt64
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Table)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
tableNewArrays ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Schema.IsSchema a) =>
    a
    -- ^ /@schema@/: The schema of the table.
    -> [Arrow.Array.Array]
    -- ^ /@arrays@/: The arrays of the table.
    -> m (Maybe Table)
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.Table.Table' or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
tableNewArrays schema arrays = liftIO $ do
    let nArrays = fromIntegral $ length arrays
    schema' <- unsafeManagedPtrCastPtr schema
    arrays' <- mapM unsafeManagedPtrCastPtr arrays
    arrays'' <- packPtrArray arrays'
    onException (do
        result <- propagateGError $ garrow_table_new_arrays schema' arrays'' nArrays
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Table) result'
            return result''
        touchManagedPtr schema
        mapM_ touchManagedPtr arrays
        freeMem arrays''
        return maybeResult
     ) (do
        freeMem arrays''
     )

#if defined(ENABLE_OVERLOADING)
#endif

-- method Table::new_columns
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "schema"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Schema" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The schema of the table."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "columns"
--           , argType =
--               TCArray
--                 False
--                 (-1)
--                 2
--                 (TInterface Name { namespace = "Arrow" , name = "Column" })
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The columns of the table."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_columns"
--           , argType = TBasicType TUInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The number of columns."
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
--              { argCName = "n_columns"
--              , argType = TBasicType TUInt64
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "The number of columns."
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Table" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_table_new_columns" garrow_table_new_columns :: 
    Ptr Arrow.Schema.Schema ->              -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    Ptr (Ptr Arrow.Column.Column) ->        -- columns : TCArray False (-1) 2 (TInterface (Name {namespace = "Arrow", name = "Column"}))
    Word64 ->                               -- n_columns : TBasicType TUInt64
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Table)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
tableNewColumns ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Schema.IsSchema a) =>
    a
    -- ^ /@schema@/: The schema of the table.
    -> [Arrow.Column.Column]
    -- ^ /@columns@/: The columns of the table.
    -> m (Maybe Table)
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.Table.Table' or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
tableNewColumns schema columns = liftIO $ do
    let nColumns = fromIntegral $ length columns
    schema' <- unsafeManagedPtrCastPtr schema
    columns' <- mapM unsafeManagedPtrCastPtr columns
    columns'' <- packPtrArray columns'
    onException (do
        result <- propagateGError $ garrow_table_new_columns schema' columns'' nColumns
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Table) result'
            return result''
        touchManagedPtr schema
        mapM_ touchManagedPtr columns
        freeMem columns''
        return maybeResult
     ) (do
        freeMem columns''
     )

#if defined(ENABLE_OVERLOADING)
#endif

-- method Table::new_record_batches
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "schema"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Schema" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The schema of the table."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "record_batches"
--           , argType =
--               TCArray
--                 False
--                 (-1)
--                 2
--                 (TInterface Name { namespace = "Arrow" , name = "RecordBatch" })
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "The record batches\n  that have data for the table."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_record_batches"
--           , argType = TBasicType TUInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The number of record batches."
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
--              { argCName = "n_record_batches"
--              , argType = TBasicType TUInt64
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "The number of record batches."
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Table" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_table_new_record_batches" garrow_table_new_record_batches :: 
    Ptr Arrow.Schema.Schema ->              -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    Ptr (Ptr Arrow.RecordBatch.RecordBatch) -> -- record_batches : TCArray False (-1) 2 (TInterface (Name {namespace = "Arrow", name = "RecordBatch"}))
    Word64 ->                               -- n_record_batches : TBasicType TUInt64
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Table)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
tableNewRecordBatches ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Schema.IsSchema a) =>
    a
    -- ^ /@schema@/: The schema of the table.
    -> [Arrow.RecordBatch.RecordBatch]
    -- ^ /@recordBatches@/: The record batches
    --   that have data for the table.
    -> m (Maybe Table)
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.Table.Table' or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
tableNewRecordBatches schema recordBatches = liftIO $ do
    let nRecordBatches = fromIntegral $ length recordBatches
    schema' <- unsafeManagedPtrCastPtr schema
    recordBatches' <- mapM unsafeManagedPtrCastPtr recordBatches
    recordBatches'' <- packPtrArray recordBatches'
    onException (do
        result <- propagateGError $ garrow_table_new_record_batches schema' recordBatches'' nRecordBatches
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Table) result'
            return result''
        touchManagedPtr schema
        mapM_ touchManagedPtr recordBatches
        freeMem recordBatches''
        return maybeResult
     ) (do
        freeMem recordBatches''
     )

#if defined(ENABLE_OVERLOADING)
#endif

-- method Table::add_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowTable." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "i"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The index of the new column."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "column"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Column" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The column to be added."
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

foreign import ccall "garrow_table_add_column" garrow_table_add_column :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Arrow", name = "Table"})
    Word32 ->                               -- i : TBasicType TUInt
    Ptr Arrow.Column.Column ->              -- column : TInterface (Name {namespace = "Arrow", name = "Column"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Table)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.3.0/
tableAddColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a, Arrow.Column.IsColumn b) =>
    a
    -- ^ /@table@/: A t'GI.Arrow.Objects.Table.Table'.
    -> Word32
    -- ^ /@i@/: The index of the new column.
    -> b
    -- ^ /@column@/: The column to be added.
    -> m (Maybe Table)
    -- ^ __Returns:__ The newly allocated
    --   t'GI.Arrow.Objects.Table.Table' that has a new column or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
tableAddColumn table i column = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    column' <- unsafeManagedPtrCastPtr column
    onException (do
        result <- propagateGError $ garrow_table_add_column table' i column'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Table) result'
            return result''
        touchManagedPtr table
        touchManagedPtr column
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data TableAddColumnMethodInfo
instance (signature ~ (Word32 -> b -> m (Maybe Table)), MonadIO m, IsTable a, Arrow.Column.IsColumn b) => O.MethodInfo TableAddColumnMethodInfo a signature where
    overloadedMethod = tableAddColumn

#endif

-- method Table::concatenate
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowTable." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "other_tables"
--           , argType =
--               TGList (TInterface Name { namespace = "Arrow" , name = "Table" })
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The tables to be concatenated."
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

foreign import ccall "garrow_table_concatenate" garrow_table_concatenate :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Arrow", name = "Table"})
    Ptr (GList (Ptr Table)) ->              -- other_tables : TGList (TInterface (Name {namespace = "Arrow", name = "Table"}))
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Table)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
tableConcatenate ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a, IsTable b) =>
    a
    -- ^ /@table@/: A t'GI.Arrow.Objects.Table.Table'.
    -> [b]
    -- ^ /@otherTables@/: The tables to be concatenated.
    -> m (Maybe Table)
    -- ^ __Returns:__ The table concatenated vertically. /(Can throw 'Data.GI.Base.GError.GError')/
tableConcatenate table otherTables = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    otherTables' <- mapM unsafeManagedPtrCastPtr otherTables
    otherTables'' <- packGList otherTables'
    onException (do
        result <- propagateGError $ garrow_table_concatenate table' otherTables''
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Table) result'
            return result''
        touchManagedPtr table
        mapM_ touchManagedPtr otherTables
        g_list_free otherTables''
        return maybeResult
     ) (do
        g_list_free otherTables''
     )

#if defined(ENABLE_OVERLOADING)
data TableConcatenateMethodInfo
instance (signature ~ ([b] -> m (Maybe Table)), MonadIO m, IsTable a, IsTable b) => O.MethodInfo TableConcatenateMethodInfo a signature where
    overloadedMethod = tableConcatenate

#endif

-- method Table::equal
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowTable." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "other_table"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowTable to be compared."
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
-- returnType: Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_table_equal" garrow_table_equal :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Arrow", name = "Table"})
    Ptr Table ->                            -- other_table : TInterface (Name {namespace = "Arrow", name = "Table"})
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
tableEqual ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a, IsTable b) =>
    a
    -- ^ /@table@/: A t'GI.Arrow.Objects.Table.Table'.
    -> b
    -- ^ /@otherTable@/: A t'GI.Arrow.Objects.Table.Table' to be compared.
    -> m Bool
    -- ^ __Returns:__ 'P.True' if both of them have the same data, 'P.False'
    --   otherwise.
tableEqual table otherTable = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    otherTable' <- unsafeManagedPtrCastPtr otherTable
    result <- garrow_table_equal table' otherTable'
    let result' = (/= 0) result
    touchManagedPtr table
    touchManagedPtr otherTable
    return result'

#if defined(ENABLE_OVERLOADING)
data TableEqualMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsTable a, IsTable b) => O.MethodInfo TableEqualMethodInfo a signature where
    overloadedMethod = tableEqual

#endif

-- method Table::get_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowTable." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "i"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The index of the target column."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Column" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_table_get_column" garrow_table_get_column :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Arrow", name = "Table"})
    Word32 ->                               -- i : TBasicType TUInt
    IO (Ptr Arrow.Column.Column)

-- | /No description available in the introspection data./
tableGetColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    -- ^ /@table@/: A t'GI.Arrow.Objects.Table.Table'.
    -> Word32
    -- ^ /@i@/: The index of the target column.
    -> m Arrow.Column.Column
    -- ^ __Returns:__ The i-th column in the table.
tableGetColumn table i = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    result <- garrow_table_get_column table' i
    checkUnexpectedReturnNULL "tableGetColumn" result
    result' <- (wrapObject Arrow.Column.Column) result
    touchManagedPtr table
    return result'

#if defined(ENABLE_OVERLOADING)
data TableGetColumnMethodInfo
instance (signature ~ (Word32 -> m Arrow.Column.Column), MonadIO m, IsTable a) => O.MethodInfo TableGetColumnMethodInfo a signature where
    overloadedMethod = tableGetColumn

#endif

-- method Table::get_n_columns
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowTable." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_table_get_n_columns" garrow_table_get_n_columns :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Arrow", name = "Table"})
    IO Word32

-- | /No description available in the introspection data./
tableGetNColumns ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    -- ^ /@table@/: A t'GI.Arrow.Objects.Table.Table'.
    -> m Word32
    -- ^ __Returns:__ The number of columns in the table.
tableGetNColumns table = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    result <- garrow_table_get_n_columns table'
    touchManagedPtr table
    return result

#if defined(ENABLE_OVERLOADING)
data TableGetNColumnsMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsTable a) => O.MethodInfo TableGetNColumnsMethodInfo a signature where
    overloadedMethod = tableGetNColumns

#endif

-- method Table::get_n_rows
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowTable." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_table_get_n_rows" garrow_table_get_n_rows :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Arrow", name = "Table"})
    IO Word64

-- | /No description available in the introspection data./
tableGetNRows ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    -- ^ /@table@/: A t'GI.Arrow.Objects.Table.Table'.
    -> m Word64
    -- ^ __Returns:__ The number of rows in the table.
tableGetNRows table = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    result <- garrow_table_get_n_rows table'
    touchManagedPtr table
    return result

#if defined(ENABLE_OVERLOADING)
data TableGetNRowsMethodInfo
instance (signature ~ (m Word64), MonadIO m, IsTable a) => O.MethodInfo TableGetNRowsMethodInfo a signature where
    overloadedMethod = tableGetNRows

#endif

-- method Table::get_schema
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowTable." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Schema" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_table_get_schema" garrow_table_get_schema :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Arrow", name = "Table"})
    IO (Ptr Arrow.Schema.Schema)

-- | /No description available in the introspection data./
tableGetSchema ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    -- ^ /@table@/: A t'GI.Arrow.Objects.Table.Table'.
    -> m Arrow.Schema.Schema
    -- ^ __Returns:__ The schema of the table.
tableGetSchema table = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    result <- garrow_table_get_schema table'
    checkUnexpectedReturnNULL "tableGetSchema" result
    result' <- (wrapObject Arrow.Schema.Schema) result
    touchManagedPtr table
    return result'

#if defined(ENABLE_OVERLOADING)
data TableGetSchemaMethodInfo
instance (signature ~ (m Arrow.Schema.Schema), MonadIO m, IsTable a) => O.MethodInfo TableGetSchemaMethodInfo a signature where
    overloadedMethod = tableGetSchema

#endif

-- method Table::remove_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowTable." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "i"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The index of the column to be removed."
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

foreign import ccall "garrow_table_remove_column" garrow_table_remove_column :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Arrow", name = "Table"})
    Word32 ->                               -- i : TBasicType TUInt
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Table)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.3.0/
tableRemoveColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    -- ^ /@table@/: A t'GI.Arrow.Objects.Table.Table'.
    -> Word32
    -- ^ /@i@/: The index of the column to be removed.
    -> m (Maybe Table)
    -- ^ __Returns:__ The newly allocated
    --   t'GI.Arrow.Objects.Table.Table' that doesn\'t have the column or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
tableRemoveColumn table i = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    onException (do
        result <- propagateGError $ garrow_table_remove_column table' i
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Table) result'
            return result''
        touchManagedPtr table
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data TableRemoveColumnMethodInfo
instance (signature ~ (Word32 -> m (Maybe Table)), MonadIO m, IsTable a) => O.MethodInfo TableRemoveColumnMethodInfo a signature where
    overloadedMethod = tableRemoveColumn

#endif

-- method Table::replace_column
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowTable." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "i"
--           , argType = TBasicType TUInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The index of the column to be replaced."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "column"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Column" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The newly added #GArrowColumn."
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

foreign import ccall "garrow_table_replace_column" garrow_table_replace_column :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Arrow", name = "Table"})
    Word32 ->                               -- i : TBasicType TUInt
    Ptr Arrow.Column.Column ->              -- column : TInterface (Name {namespace = "Arrow", name = "Column"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Table)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.10.0/
tableReplaceColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a, Arrow.Column.IsColumn b) =>
    a
    -- ^ /@table@/: A t'GI.Arrow.Objects.Table.Table'.
    -> Word32
    -- ^ /@i@/: The index of the column to be replaced.
    -> b
    -- ^ /@column@/: The newly added t'GI.Arrow.Objects.Column.Column'.
    -> m (Maybe Table)
    -- ^ __Returns:__ The newly allocated
    -- t'GI.Arrow.Objects.Table.Table' that has /@column@/ as the /@i@/-th column or 'P.Nothing' on
    -- error. /(Can throw 'Data.GI.Base.GError.GError')/
tableReplaceColumn table i column = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    column' <- unsafeManagedPtrCastPtr column
    onException (do
        result <- propagateGError $ garrow_table_replace_column table' i column'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Table) result'
            return result''
        touchManagedPtr table
        touchManagedPtr column
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data TableReplaceColumnMethodInfo
instance (signature ~ (Word32 -> b -> m (Maybe Table)), MonadIO m, IsTable a, Arrow.Column.IsColumn b) => O.MethodInfo TableReplaceColumnMethodInfo a signature where
    overloadedMethod = tableReplaceColumn

#endif

-- method Table::slice
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowTable." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "offset"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "The offset of sub #GArrowTable. If the offset is negative,\n  the offset is counted from the last."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "length"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The length of sub #GArrowTable."
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
-- throws : False
-- Skip return : False

foreign import ccall "garrow_table_slice" garrow_table_slice :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Arrow", name = "Table"})
    Int64 ->                                -- offset : TBasicType TInt64
    Int64 ->                                -- length : TBasicType TInt64
    IO (Ptr Table)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
tableSlice ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    -- ^ /@table@/: A t'GI.Arrow.Objects.Table.Table'.
    -> Int64
    -- ^ /@offset@/: The offset of sub t'GI.Arrow.Objects.Table.Table'. If the offset is negative,
    --   the offset is counted from the last.
    -> Int64
    -- ^ /@length@/: The length of sub t'GI.Arrow.Objects.Table.Table'.
    -> m Table
    -- ^ __Returns:__ The sub t'GI.Arrow.Objects.Table.Table'. It covers
    --   only from @offset@ to @offset + length@ range. The sub
    --   t'GI.Arrow.Objects.Table.Table' shares values with the base
    --   t'GI.Arrow.Objects.Table.Table'.
tableSlice table offset length_ = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    result <- garrow_table_slice table' offset length_
    checkUnexpectedReturnNULL "tableSlice" result
    result' <- (wrapObject Table) result
    touchManagedPtr table
    return result'

#if defined(ENABLE_OVERLOADING)
data TableSliceMethodInfo
instance (signature ~ (Int64 -> Int64 -> m Table), MonadIO m, IsTable a) => O.MethodInfo TableSliceMethodInfo a signature where
    overloadedMethod = tableSlice

#endif

-- method Table::to_string
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "table"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Table" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowTable." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUTF8)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_table_to_string" garrow_table_to_string :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Arrow", name = "Table"})
    Ptr (Ptr GError) ->                     -- error
    IO CString

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
tableToString ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    -- ^ /@table@/: A t'GI.Arrow.Objects.Table.Table'.
    -> m (Maybe T.Text)
    -- ^ __Returns:__ 
    --   The formatted table content or 'P.Nothing' on error.
    -- 
    --   The returned string should be freed when with 'GI.GLib.Functions.free' when no
    --   longer needed. /(Can throw 'Data.GI.Base.GError.GError')/
tableToString table = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    onException (do
        result <- propagateGError $ garrow_table_to_string table'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- cstringToText result'
            freeMem result'
            return result''
        touchManagedPtr table
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data TableToStringMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsTable a) => O.MethodInfo TableToStringMethodInfo a signature where
    overloadedMethod = tableToString

#endif


