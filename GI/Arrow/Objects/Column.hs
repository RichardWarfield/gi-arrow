{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.Column
    ( 

-- * Exported types
    Column(..)                              ,
    IsColumn                                ,
    toColumn                                ,
    noColumn                                ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveColumnMethod                     ,
#endif


-- ** equal #method:equal#

#if defined(ENABLE_OVERLOADING)
    ColumnEqualMethodInfo                   ,
#endif
    columnEqual                             ,


-- ** getData #method:getData#

#if defined(ENABLE_OVERLOADING)
    ColumnGetDataMethodInfo                 ,
#endif
    columnGetData                           ,


-- ** getDataType #method:getDataType#

#if defined(ENABLE_OVERLOADING)
    ColumnGetDataTypeMethodInfo             ,
#endif
    columnGetDataType                       ,


-- ** getField #method:getField#

#if defined(ENABLE_OVERLOADING)
    ColumnGetFieldMethodInfo                ,
#endif
    columnGetField                          ,


-- ** getLength #method:getLength#

#if defined(ENABLE_OVERLOADING)
    ColumnGetLengthMethodInfo               ,
#endif
    columnGetLength                         ,


-- ** getNNulls #method:getNNulls#

#if defined(ENABLE_OVERLOADING)
    ColumnGetNNullsMethodInfo               ,
#endif
    columnGetNNulls                         ,


-- ** getName #method:getName#

#if defined(ENABLE_OVERLOADING)
    ColumnGetNameMethodInfo                 ,
#endif
    columnGetName                           ,


-- ** newArray #method:newArray#

    columnNewArray                          ,


-- ** newChunkedArray #method:newChunkedArray#

    columnNewChunkedArray                   ,


-- ** slice #method:slice#

#if defined(ENABLE_OVERLOADING)
    ColumnSliceMethodInfo                   ,
#endif
    columnSlice                             ,


-- ** toString #method:toString#

#if defined(ENABLE_OVERLOADING)
    ColumnToStringMethodInfo                ,
#endif
    columnToString                          ,




 -- * Properties
-- ** array #attr:array#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ColumnArrayPropertyInfo                 ,
#endif
#if defined(ENABLE_OVERLOADING)
    columnArray                             ,
#endif
    constructColumnArray                    ,
    getColumnArray                          ,


-- ** chunkedArray #attr:chunkedArray#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ColumnChunkedArrayPropertyInfo          ,
#endif
#if defined(ENABLE_OVERLOADING)
    columnChunkedArray                      ,
#endif
    constructColumnChunkedArray             ,
    getColumnChunkedArray                   ,


-- ** column #attr:column#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ColumnColumnPropertyInfo                ,
#endif
#if defined(ENABLE_OVERLOADING)
    columnColumn                            ,
#endif
    constructColumnColumn                   ,


-- ** field #attr:field#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ColumnFieldPropertyInfo                 ,
#endif
#if defined(ENABLE_OVERLOADING)
    columnField                             ,
#endif
    constructColumnField                    ,
    getColumnField                          ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.ChunkedArray as Arrow.ChunkedArray
import {-# SOURCE #-} qualified GI.Arrow.Objects.DataType as Arrow.DataType
import {-# SOURCE #-} qualified GI.Arrow.Objects.Field as Arrow.Field
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Column = Column (ManagedPtr Column)
    deriving (Eq)
foreign import ccall "garrow_column_get_type"
    c_garrow_column_get_type :: IO GType

instance GObject Column where
    gobjectType = c_garrow_column_get_type
    

-- | Convert 'Column' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Column where
    toGValue o = do
        gtype <- c_garrow_column_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Column)
        B.ManagedPtr.newObject Column ptr
        
    

-- | Type class for types which can be safely cast to `Column`, for instance with `toColumn`.
class (GObject o, O.IsDescendantOf Column o) => IsColumn o
instance (GObject o, O.IsDescendantOf Column o) => IsColumn o

instance O.HasParentTypes Column
type instance O.ParentTypes Column = '[GObject.Object.Object]

-- | Cast to `Column`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toColumn :: (MonadIO m, IsColumn o) => o -> m Column
toColumn = liftIO . unsafeCastTo Column

-- | A convenience alias for `Nothing` :: `Maybe` `Column`.
noColumn :: Maybe Column
noColumn = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveColumnMethod (t :: Symbol) (o :: *) :: * where
    ResolveColumnMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveColumnMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveColumnMethod "equal" o = ColumnEqualMethodInfo
    ResolveColumnMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveColumnMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveColumnMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveColumnMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveColumnMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveColumnMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveColumnMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveColumnMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveColumnMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveColumnMethod "slice" o = ColumnSliceMethodInfo
    ResolveColumnMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveColumnMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveColumnMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveColumnMethod "toString" o = ColumnToStringMethodInfo
    ResolveColumnMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveColumnMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveColumnMethod "getData" o = ColumnGetDataMethodInfo
    ResolveColumnMethod "getDataType" o = ColumnGetDataTypeMethodInfo
    ResolveColumnMethod "getField" o = ColumnGetFieldMethodInfo
    ResolveColumnMethod "getLength" o = ColumnGetLengthMethodInfo
    ResolveColumnMethod "getNNulls" o = ColumnGetNNullsMethodInfo
    ResolveColumnMethod "getName" o = ColumnGetNameMethodInfo
    ResolveColumnMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveColumnMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveColumnMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveColumnMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveColumnMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveColumnMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveColumnMethod t Column, O.MethodInfo info Column p) => OL.IsLabel t (Column -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "array"
   -- Type: TInterface (Name {namespace = "Arrow", name = "Array"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@array@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' column #array
-- @
getColumnArray :: (MonadIO m, IsColumn o) => o -> m (Maybe Arrow.Array.Array)
getColumnArray obj = liftIO $ B.Properties.getObjectPropertyObject obj "array" Arrow.Array.Array

-- | Construct a `GValueConstruct` with valid value for the “@array@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructColumnArray :: (IsColumn o, MIO.MonadIO m, Arrow.Array.IsArray a) => a -> m (GValueConstruct o)
constructColumnArray val = MIO.liftIO $ B.Properties.constructObjectPropertyObject "array" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data ColumnArrayPropertyInfo
instance AttrInfo ColumnArrayPropertyInfo where
    type AttrAllowedOps ColumnArrayPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ColumnArrayPropertyInfo = IsColumn
    type AttrSetTypeConstraint ColumnArrayPropertyInfo = Arrow.Array.IsArray
    type AttrTransferTypeConstraint ColumnArrayPropertyInfo = Arrow.Array.IsArray
    type AttrTransferType ColumnArrayPropertyInfo = Arrow.Array.Array
    type AttrGetType ColumnArrayPropertyInfo = (Maybe Arrow.Array.Array)
    type AttrLabel ColumnArrayPropertyInfo = "array"
    type AttrOrigin ColumnArrayPropertyInfo = Column
    attrGet = getColumnArray
    attrSet = undefined
    attrTransfer _ v = do
        unsafeCastTo Arrow.Array.Array v
    attrConstruct = constructColumnArray
    attrClear = undefined
#endif

-- VVV Prop "chunked-array"
   -- Type: TInterface (Name {namespace = "Arrow", name = "ChunkedArray"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@chunked-array@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' column #chunkedArray
-- @
getColumnChunkedArray :: (MonadIO m, IsColumn o) => o -> m (Maybe Arrow.ChunkedArray.ChunkedArray)
getColumnChunkedArray obj = liftIO $ B.Properties.getObjectPropertyObject obj "chunked-array" Arrow.ChunkedArray.ChunkedArray

-- | Construct a `GValueConstruct` with valid value for the “@chunked-array@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructColumnChunkedArray :: (IsColumn o, MIO.MonadIO m, Arrow.ChunkedArray.IsChunkedArray a) => a -> m (GValueConstruct o)
constructColumnChunkedArray val = MIO.liftIO $ B.Properties.constructObjectPropertyObject "chunked-array" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data ColumnChunkedArrayPropertyInfo
instance AttrInfo ColumnChunkedArrayPropertyInfo where
    type AttrAllowedOps ColumnChunkedArrayPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ColumnChunkedArrayPropertyInfo = IsColumn
    type AttrSetTypeConstraint ColumnChunkedArrayPropertyInfo = Arrow.ChunkedArray.IsChunkedArray
    type AttrTransferTypeConstraint ColumnChunkedArrayPropertyInfo = Arrow.ChunkedArray.IsChunkedArray
    type AttrTransferType ColumnChunkedArrayPropertyInfo = Arrow.ChunkedArray.ChunkedArray
    type AttrGetType ColumnChunkedArrayPropertyInfo = (Maybe Arrow.ChunkedArray.ChunkedArray)
    type AttrLabel ColumnChunkedArrayPropertyInfo = "chunked-array"
    type AttrOrigin ColumnChunkedArrayPropertyInfo = Column
    attrGet = getColumnChunkedArray
    attrSet = undefined
    attrTransfer _ v = do
        unsafeCastTo Arrow.ChunkedArray.ChunkedArray v
    attrConstruct = constructColumnChunkedArray
    attrClear = undefined
#endif

-- VVV Prop "column"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a `GValueConstruct` with valid value for the “@column@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructColumnColumn :: (IsColumn o, MIO.MonadIO m) => Ptr () -> m (GValueConstruct o)
constructColumnColumn val = MIO.liftIO $ B.Properties.constructObjectPropertyPtr "column" val

#if defined(ENABLE_OVERLOADING)
data ColumnColumnPropertyInfo
instance AttrInfo ColumnColumnPropertyInfo where
    type AttrAllowedOps ColumnColumnPropertyInfo = '[ 'AttrConstruct]
    type AttrBaseTypeConstraint ColumnColumnPropertyInfo = IsColumn
    type AttrSetTypeConstraint ColumnColumnPropertyInfo = (~) (Ptr ())
    type AttrTransferTypeConstraint ColumnColumnPropertyInfo = (~) (Ptr ())
    type AttrTransferType ColumnColumnPropertyInfo = Ptr ()
    type AttrGetType ColumnColumnPropertyInfo = ()
    type AttrLabel ColumnColumnPropertyInfo = "column"
    type AttrOrigin ColumnColumnPropertyInfo = Column
    attrGet = undefined
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructColumnColumn
    attrClear = undefined
#endif

-- VVV Prop "field"
   -- Type: TInterface (Name {namespace = "Arrow", name = "Field"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@field@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' column #field
-- @
getColumnField :: (MonadIO m, IsColumn o) => o -> m (Maybe Arrow.Field.Field)
getColumnField obj = liftIO $ B.Properties.getObjectPropertyObject obj "field" Arrow.Field.Field

-- | Construct a `GValueConstruct` with valid value for the “@field@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructColumnField :: (IsColumn o, MIO.MonadIO m, Arrow.Field.IsField a) => a -> m (GValueConstruct o)
constructColumnField val = MIO.liftIO $ B.Properties.constructObjectPropertyObject "field" (P.Just val)

#if defined(ENABLE_OVERLOADING)
data ColumnFieldPropertyInfo
instance AttrInfo ColumnFieldPropertyInfo where
    type AttrAllowedOps ColumnFieldPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrBaseTypeConstraint ColumnFieldPropertyInfo = IsColumn
    type AttrSetTypeConstraint ColumnFieldPropertyInfo = Arrow.Field.IsField
    type AttrTransferTypeConstraint ColumnFieldPropertyInfo = Arrow.Field.IsField
    type AttrTransferType ColumnFieldPropertyInfo = Arrow.Field.Field
    type AttrGetType ColumnFieldPropertyInfo = (Maybe Arrow.Field.Field)
    type AttrLabel ColumnFieldPropertyInfo = "field"
    type AttrOrigin ColumnFieldPropertyInfo = Column
    attrGet = getColumnField
    attrSet = undefined
    attrTransfer _ v = do
        unsafeCastTo Arrow.Field.Field v
    attrConstruct = constructColumnField
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Column
type instance O.AttributeList Column = ColumnAttributeList
type ColumnAttributeList = ('[ '("array", ColumnArrayPropertyInfo), '("chunkedArray", ColumnChunkedArrayPropertyInfo), '("column", ColumnColumnPropertyInfo), '("field", ColumnFieldPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
columnArray :: AttrLabelProxy "array"
columnArray = AttrLabelProxy

columnChunkedArray :: AttrLabelProxy "chunkedArray"
columnChunkedArray = AttrLabelProxy

columnColumn :: AttrLabelProxy "column"
columnColumn = AttrLabelProxy

columnField :: AttrLabelProxy "field"
columnField = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Column = ColumnSignalList
type ColumnSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Column::new_array
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "field"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Field" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The metadata of the column."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The data of the column."
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

foreign import ccall "garrow_column_new_array" garrow_column_new_array :: 
    Ptr Arrow.Field.Field ->                -- field : TInterface (Name {namespace = "Arrow", name = "Field"})
    Ptr Arrow.Array.Array ->                -- array : TInterface (Name {namespace = "Arrow", name = "Array"})
    IO (Ptr Column)

-- | /No description available in the introspection data./
columnNewArray ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Field.IsField a, Arrow.Array.IsArray b) =>
    a
    -- ^ /@field@/: The metadata of the column.
    -> b
    -- ^ /@array@/: The data of the column.
    -> m Column
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.Column.Column'.
columnNewArray field array = liftIO $ do
    field' <- unsafeManagedPtrCastPtr field
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_column_new_array field' array'
    checkUnexpectedReturnNULL "columnNewArray" result
    result' <- (wrapObject Column) result
    touchManagedPtr field
    touchManagedPtr array
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Column::new_chunked_array
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "field"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Field" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The metadata of the column."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "chunked_array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "ChunkedArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The data of the column."
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

foreign import ccall "garrow_column_new_chunked_array" garrow_column_new_chunked_array :: 
    Ptr Arrow.Field.Field ->                -- field : TInterface (Name {namespace = "Arrow", name = "Field"})
    Ptr Arrow.ChunkedArray.ChunkedArray ->  -- chunked_array : TInterface (Name {namespace = "Arrow", name = "ChunkedArray"})
    IO (Ptr Column)

-- | /No description available in the introspection data./
columnNewChunkedArray ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Field.IsField a, Arrow.ChunkedArray.IsChunkedArray b) =>
    a
    -- ^ /@field@/: The metadata of the column.
    -> b
    -- ^ /@chunkedArray@/: The data of the column.
    -> m Column
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.Column.Column'.
columnNewChunkedArray field chunkedArray = liftIO $ do
    field' <- unsafeManagedPtrCastPtr field
    chunkedArray' <- unsafeManagedPtrCastPtr chunkedArray
    result <- garrow_column_new_chunked_array field' chunkedArray'
    checkUnexpectedReturnNULL "columnNewChunkedArray" result
    result' <- (wrapObject Column) result
    touchManagedPtr field
    touchManagedPtr chunkedArray
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Column::equal
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "column"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Column" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowColumn." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "other_column"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Column" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowColumn to be compared."
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

foreign import ccall "garrow_column_equal" garrow_column_equal :: 
    Ptr Column ->                           -- column : TInterface (Name {namespace = "Arrow", name = "Column"})
    Ptr Column ->                           -- other_column : TInterface (Name {namespace = "Arrow", name = "Column"})
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
columnEqual ::
    (B.CallStack.HasCallStack, MonadIO m, IsColumn a, IsColumn b) =>
    a
    -- ^ /@column@/: A t'GI.Arrow.Objects.Column.Column'.
    -> b
    -- ^ /@otherColumn@/: A t'GI.Arrow.Objects.Column.Column' to be compared.
    -> m Bool
    -- ^ __Returns:__ 'P.True' if both of them have the same data, 'P.False'
    --   otherwise.
columnEqual column otherColumn = liftIO $ do
    column' <- unsafeManagedPtrCastPtr column
    otherColumn' <- unsafeManagedPtrCastPtr otherColumn
    result <- garrow_column_equal column' otherColumn'
    let result' = (/= 0) result
    touchManagedPtr column
    touchManagedPtr otherColumn
    return result'

#if defined(ENABLE_OVERLOADING)
data ColumnEqualMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsColumn a, IsColumn b) => O.MethodInfo ColumnEqualMethodInfo a signature where
    overloadedMethod = columnEqual

#endif

-- method Column::get_data
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "column"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Column" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowColumn." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Arrow" , name = "ChunkedArray" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_column_get_data" garrow_column_get_data :: 
    Ptr Column ->                           -- column : TInterface (Name {namespace = "Arrow", name = "Column"})
    IO (Ptr Arrow.ChunkedArray.ChunkedArray)

-- | /No description available in the introspection data./
columnGetData ::
    (B.CallStack.HasCallStack, MonadIO m, IsColumn a) =>
    a
    -- ^ /@column@/: A t'GI.Arrow.Objects.Column.Column'.
    -> m Arrow.ChunkedArray.ChunkedArray
    -- ^ __Returns:__ The data of the column.
columnGetData column = liftIO $ do
    column' <- unsafeManagedPtrCastPtr column
    result <- garrow_column_get_data column'
    checkUnexpectedReturnNULL "columnGetData" result
    result' <- (wrapObject Arrow.ChunkedArray.ChunkedArray) result
    touchManagedPtr column
    return result'

#if defined(ENABLE_OVERLOADING)
data ColumnGetDataMethodInfo
instance (signature ~ (m Arrow.ChunkedArray.ChunkedArray), MonadIO m, IsColumn a) => O.MethodInfo ColumnGetDataMethodInfo a signature where
    overloadedMethod = columnGetData

#endif

-- method Column::get_data_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "column"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Column" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowColumn." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "DataType" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_column_get_data_type" garrow_column_get_data_type :: 
    Ptr Column ->                           -- column : TInterface (Name {namespace = "Arrow", name = "Column"})
    IO (Ptr Arrow.DataType.DataType)

-- | /No description available in the introspection data./
columnGetDataType ::
    (B.CallStack.HasCallStack, MonadIO m, IsColumn a) =>
    a
    -- ^ /@column@/: A t'GI.Arrow.Objects.Column.Column'.
    -> m Arrow.DataType.DataType
    -- ^ __Returns:__ The data type of the column.
columnGetDataType column = liftIO $ do
    column' <- unsafeManagedPtrCastPtr column
    result <- garrow_column_get_data_type column'
    checkUnexpectedReturnNULL "columnGetDataType" result
    result' <- (wrapObject Arrow.DataType.DataType) result
    touchManagedPtr column
    return result'

#if defined(ENABLE_OVERLOADING)
data ColumnGetDataTypeMethodInfo
instance (signature ~ (m Arrow.DataType.DataType), MonadIO m, IsColumn a) => O.MethodInfo ColumnGetDataTypeMethodInfo a signature where
    overloadedMethod = columnGetDataType

#endif

-- method Column::get_field
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "column"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Column" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowColumn." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Field" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_column_get_field" garrow_column_get_field :: 
    Ptr Column ->                           -- column : TInterface (Name {namespace = "Arrow", name = "Column"})
    IO (Ptr Arrow.Field.Field)

-- | /No description available in the introspection data./
columnGetField ::
    (B.CallStack.HasCallStack, MonadIO m, IsColumn a) =>
    a
    -- ^ /@column@/: A t'GI.Arrow.Objects.Column.Column'.
    -> m Arrow.Field.Field
    -- ^ __Returns:__ The metadata of the column.
columnGetField column = liftIO $ do
    column' <- unsafeManagedPtrCastPtr column
    result <- garrow_column_get_field column'
    checkUnexpectedReturnNULL "columnGetField" result
    result' <- (wrapObject Arrow.Field.Field) result
    touchManagedPtr column
    return result'

#if defined(ENABLE_OVERLOADING)
data ColumnGetFieldMethodInfo
instance (signature ~ (m Arrow.Field.Field), MonadIO m, IsColumn a) => O.MethodInfo ColumnGetFieldMethodInfo a signature where
    overloadedMethod = columnGetField

#endif

-- method Column::get_length
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "column"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Column" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowColumn." , sinceVersion = Nothing }
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

foreign import ccall "garrow_column_get_length" garrow_column_get_length :: 
    Ptr Column ->                           -- column : TInterface (Name {namespace = "Arrow", name = "Column"})
    IO Word64

-- | /No description available in the introspection data./
columnGetLength ::
    (B.CallStack.HasCallStack, MonadIO m, IsColumn a) =>
    a
    -- ^ /@column@/: A t'GI.Arrow.Objects.Column.Column'.
    -> m Word64
    -- ^ __Returns:__ The number of data of the column.
columnGetLength column = liftIO $ do
    column' <- unsafeManagedPtrCastPtr column
    result <- garrow_column_get_length column'
    touchManagedPtr column
    return result

#if defined(ENABLE_OVERLOADING)
data ColumnGetLengthMethodInfo
instance (signature ~ (m Word64), MonadIO m, IsColumn a) => O.MethodInfo ColumnGetLengthMethodInfo a signature where
    overloadedMethod = columnGetLength

#endif

-- method Column::get_n_nulls
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "column"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Column" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowColumn." , sinceVersion = Nothing }
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

foreign import ccall "garrow_column_get_n_nulls" garrow_column_get_n_nulls :: 
    Ptr Column ->                           -- column : TInterface (Name {namespace = "Arrow", name = "Column"})
    IO Word64

-- | /No description available in the introspection data./
columnGetNNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsColumn a) =>
    a
    -- ^ /@column@/: A t'GI.Arrow.Objects.Column.Column'.
    -> m Word64
    -- ^ __Returns:__ The number of nulls of the column.
columnGetNNulls column = liftIO $ do
    column' <- unsafeManagedPtrCastPtr column
    result <- garrow_column_get_n_nulls column'
    touchManagedPtr column
    return result

#if defined(ENABLE_OVERLOADING)
data ColumnGetNNullsMethodInfo
instance (signature ~ (m Word64), MonadIO m, IsColumn a) => O.MethodInfo ColumnGetNNullsMethodInfo a signature where
    overloadedMethod = columnGetNNulls

#endif

-- method Column::get_name
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "column"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Column" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowColumn." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_column_get_name" garrow_column_get_name :: 
    Ptr Column ->                           -- column : TInterface (Name {namespace = "Arrow", name = "Column"})
    IO CString

-- | /No description available in the introspection data./
columnGetName ::
    (B.CallStack.HasCallStack, MonadIO m, IsColumn a) =>
    a
    -- ^ /@column@/: A t'GI.Arrow.Objects.Column.Column'.
    -> m T.Text
    -- ^ __Returns:__ The name of the column.
columnGetName column = liftIO $ do
    column' <- unsafeManagedPtrCastPtr column
    result <- garrow_column_get_name column'
    checkUnexpectedReturnNULL "columnGetName" result
    result' <- cstringToText result
    touchManagedPtr column
    return result'

#if defined(ENABLE_OVERLOADING)
data ColumnGetNameMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsColumn a) => O.MethodInfo ColumnGetNameMethodInfo a signature where
    overloadedMethod = columnGetName

#endif

-- method Column::slice
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "column"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Column" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowColumn." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "offset"
--           , argType = TBasicType TUInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The offset of sub #GArrowColumn."
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
--           , argType = TBasicType TUInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The length of sub #GArrowColumn."
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

foreign import ccall "garrow_column_slice" garrow_column_slice :: 
    Ptr Column ->                           -- column : TInterface (Name {namespace = "Arrow", name = "Column"})
    Word64 ->                               -- offset : TBasicType TUInt64
    Word64 ->                               -- length : TBasicType TUInt64
    IO (Ptr Column)

-- | /No description available in the introspection data./
columnSlice ::
    (B.CallStack.HasCallStack, MonadIO m, IsColumn a) =>
    a
    -- ^ /@column@/: A t'GI.Arrow.Objects.Column.Column'.
    -> Word64
    -- ^ /@offset@/: The offset of sub t'GI.Arrow.Objects.Column.Column'.
    -> Word64
    -- ^ /@length@/: The length of sub t'GI.Arrow.Objects.Column.Column'.
    -> m Column
    -- ^ __Returns:__ The sub t'GI.Arrow.Objects.Column.Column'. It covers only from
    --   @offset@ to @offset + length@ range. The sub t'GI.Arrow.Objects.Column.Column' shares
    --   values with the base t'GI.Arrow.Objects.Column.Column'.
columnSlice column offset length_ = liftIO $ do
    column' <- unsafeManagedPtrCastPtr column
    result <- garrow_column_slice column' offset length_
    checkUnexpectedReturnNULL "columnSlice" result
    result' <- (wrapObject Column) result
    touchManagedPtr column
    return result'

#if defined(ENABLE_OVERLOADING)
data ColumnSliceMethodInfo
instance (signature ~ (Word64 -> Word64 -> m Column), MonadIO m, IsColumn a) => O.MethodInfo ColumnSliceMethodInfo a signature where
    overloadedMethod = columnSlice

#endif

-- method Column::to_string
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "column"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Column" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowColumn." , sinceVersion = Nothing }
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

foreign import ccall "garrow_column_to_string" garrow_column_to_string :: 
    Ptr Column ->                           -- column : TInterface (Name {namespace = "Arrow", name = "Column"})
    Ptr (Ptr GError) ->                     -- error
    IO CString

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
columnToString ::
    (B.CallStack.HasCallStack, MonadIO m, IsColumn a) =>
    a
    -- ^ /@column@/: A t'GI.Arrow.Objects.Column.Column'.
    -> m (Maybe T.Text)
    -- ^ __Returns:__ 
    --   The formatted column content or 'P.Nothing' on error.
    -- 
    --   The returned string should be freed when with 'GI.GLib.Functions.free' when no
    --   longer needed. /(Can throw 'Data.GI.Base.GError.GError')/
columnToString column = liftIO $ do
    column' <- unsafeManagedPtrCastPtr column
    onException (do
        result <- propagateGError $ garrow_column_to_string column'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- cstringToText result'
            freeMem result'
            return result''
        touchManagedPtr column
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data ColumnToStringMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsColumn a) => O.MethodInfo ColumnToStringMethodInfo a signature where
    overloadedMethod = columnToString

#endif


