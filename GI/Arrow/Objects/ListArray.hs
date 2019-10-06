{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.ListArray
    ( 

-- * Exported types
    ListArray(..)                           ,
    IsListArray                             ,
    toListArray                             ,
    noListArray                             ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveListArrayMethod                  ,
#endif


-- ** getValue #method:getValue#

#if defined(ENABLE_OVERLOADING)
    ListArrayGetValueMethodInfo             ,
#endif
    listArrayGetValue                       ,


-- ** getValueType #method:getValueType#

#if defined(ENABLE_OVERLOADING)
    ListArrayGetValueTypeMethodInfo         ,
#endif
    listArrayGetValueType                   ,


-- ** new #method:new#

    listArrayNew                            ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.Buffer as Arrow.Buffer
import {-# SOURCE #-} qualified GI.Arrow.Objects.DataType as Arrow.DataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype ListArray = ListArray (ManagedPtr ListArray)
    deriving (Eq)
foreign import ccall "garrow_list_array_get_type"
    c_garrow_list_array_get_type :: IO GType

instance GObject ListArray where
    gobjectType = c_garrow_list_array_get_type
    

-- | Convert 'ListArray' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ListArray where
    toGValue o = do
        gtype <- c_garrow_list_array_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ListArray)
        B.ManagedPtr.newObject ListArray ptr
        
    

-- | Type class for types which can be safely cast to `ListArray`, for instance with `toListArray`.
class (GObject o, O.IsDescendantOf ListArray o) => IsListArray o
instance (GObject o, O.IsDescendantOf ListArray o) => IsListArray o

instance O.HasParentTypes ListArray
type instance O.ParentTypes ListArray = '[Arrow.Array.Array, GObject.Object.Object]

-- | Cast to `ListArray`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toListArray :: (MonadIO m, IsListArray o) => o -> m ListArray
toListArray = liftIO . unsafeCastTo ListArray

-- | A convenience alias for `Nothing` :: `Maybe` `ListArray`.
noListArray :: Maybe ListArray
noListArray = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveListArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveListArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveListArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveListArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveListArrayMethod "count" o = Arrow.Array.ArrayCountMethodInfo
    ResolveListArrayMethod "countValues" o = Arrow.Array.ArrayCountValuesMethodInfo
    ResolveListArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveListArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveListArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveListArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveListArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveListArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveListArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveListArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveListArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveListArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveListArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveListArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveListArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveListArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveListArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveListArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveListArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveListArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveListArrayMethod "take" o = Arrow.Array.ArrayTakeMethodInfo
    ResolveListArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveListArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveListArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveListArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveListArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveListArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveListArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveListArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveListArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveListArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveListArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveListArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveListArrayMethod "getValue" o = ListArrayGetValueMethodInfo
    ResolveListArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveListArrayMethod "getValueType" o = ListArrayGetValueTypeMethodInfo
    ResolveListArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveListArrayMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveListArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveListArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveListArrayMethod t ListArray, O.MethodInfo info ListArray p) => OL.IsLabel t (ListArray -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ListArray
type instance O.AttributeList ListArray = ListArrayAttributeList
type ListArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ListArray = ListArraySignalList
type ListArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method ListArray::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "DataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The data type of the list."
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
--                 { rawDocText = Just "The number of elements."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "value_offsets"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Buffer" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The offsets of @values in Arrow format."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "values"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The values as #GArrowArray."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "null_bitmap"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Buffer" }
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "The bitmap that shows null elements. The\n  N-th element is null when the N-th bit is 0, not null otherwise.\n  If the array has no null elements, the bitmap must be %NULL and\n  @n_nulls is 0."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_nulls"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "The number of null elements. If -1 is specified, the\n  number of nulls are computed from @null_bitmap."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "ListArray" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_list_array_new" garrow_list_array_new :: 
    Ptr Arrow.DataType.DataType ->          -- data_type : TInterface (Name {namespace = "Arrow", name = "DataType"})
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- value_offsets : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Array.Array ->                -- values : TInterface (Name {namespace = "Arrow", name = "Array"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr ListArray)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
listArrayNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.DataType.IsDataType a, Arrow.Buffer.IsBuffer b, Arrow.Array.IsArray c, Arrow.Buffer.IsBuffer d) =>
    a
    -- ^ /@dataType@/: The data type of the list.
    -> Int64
    -- ^ /@length@/: The number of elements.
    -> b
    -- ^ /@valueOffsets@/: The offsets of /@values@/ in Arrow format.
    -> c
    -- ^ /@values@/: The values as t'GI.Arrow.Objects.Array.Array'.
    -> Maybe (d)
    -- ^ /@nullBitmap@/: The bitmap that shows null elements. The
    --   N-th element is null when the N-th bit is 0, not null otherwise.
    --   If the array has no null elements, the bitmap must be 'P.Nothing' and
    --   /@nNulls@/ is 0.
    -> Int64
    -- ^ /@nNulls@/: The number of null elements. If -1 is specified, the
    --   number of nulls are computed from /@nullBitmap@/.
    -> m ListArray
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.ListArray.ListArray'.
listArrayNew dataType length_ valueOffsets values nullBitmap nNulls = liftIO $ do
    dataType' <- unsafeManagedPtrCastPtr dataType
    valueOffsets' <- unsafeManagedPtrCastPtr valueOffsets
    values' <- unsafeManagedPtrCastPtr values
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_list_array_new dataType' length_ valueOffsets' values' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "listArrayNew" result
    result' <- (wrapObject ListArray) result
    touchManagedPtr dataType
    touchManagedPtr valueOffsets
    touchManagedPtr values
    whenJust nullBitmap touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method ListArray::get_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "ListArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowListArray."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "i"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The index of the target value."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Array" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_list_array_get_value" garrow_list_array_get_value :: 
    Ptr ListArray ->                        -- array : TInterface (Name {namespace = "Arrow", name = "ListArray"})
    Int64 ->                                -- i : TBasicType TInt64
    IO (Ptr Arrow.Array.Array)

-- | /No description available in the introspection data./
listArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsListArray a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.ListArray.ListArray'.
    -> Int64
    -- ^ /@i@/: The index of the target value.
    -> m Arrow.Array.Array
    -- ^ __Returns:__ The i-th list.
listArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_list_array_get_value array' i
    checkUnexpectedReturnNULL "listArrayGetValue" result
    result' <- (wrapObject Arrow.Array.Array) result
    touchManagedPtr array
    return result'

#if defined(ENABLE_OVERLOADING)
data ListArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Arrow.Array.Array), MonadIO m, IsListArray a) => O.MethodInfo ListArrayGetValueMethodInfo a signature where
    overloadedMethod = listArrayGetValue

#endif

-- method ListArray::get_value_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "ListArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowListArray."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "DataType" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_list_array_get_value_type" garrow_list_array_get_value_type :: 
    Ptr ListArray ->                        -- array : TInterface (Name {namespace = "Arrow", name = "ListArray"})
    IO (Ptr Arrow.DataType.DataType)

-- | /No description available in the introspection data./
listArrayGetValueType ::
    (B.CallStack.HasCallStack, MonadIO m, IsListArray a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.ListArray.ListArray'.
    -> m Arrow.DataType.DataType
    -- ^ __Returns:__ The data type of value in each list.
listArrayGetValueType array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_list_array_get_value_type array'
    checkUnexpectedReturnNULL "listArrayGetValueType" result
    result' <- (wrapObject Arrow.DataType.DataType) result
    touchManagedPtr array
    return result'

#if defined(ENABLE_OVERLOADING)
data ListArrayGetValueTypeMethodInfo
instance (signature ~ (m Arrow.DataType.DataType), MonadIO m, IsListArray a) => O.MethodInfo ListArrayGetValueTypeMethodInfo a signature where
    overloadedMethod = listArrayGetValueType

#endif


