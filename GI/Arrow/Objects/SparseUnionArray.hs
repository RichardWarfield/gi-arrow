{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.SparseUnionArray
    ( 

-- * Exported types
    SparseUnionArray(..)                    ,
    IsSparseUnionArray                      ,
    toSparseUnionArray                      ,
    noSparseUnionArray                      ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveSparseUnionArrayMethod           ,
#endif


-- ** new #method:new#

    sparseUnionArrayNew                     ,


-- ** newDataType #method:newDataType#

    sparseUnionArrayNewDataType             ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.Int8Array as Arrow.Int8Array
import {-# SOURCE #-} qualified GI.Arrow.Objects.SparseUnionDataType as Arrow.SparseUnionDataType
import {-# SOURCE #-} qualified GI.Arrow.Objects.UnionArray as Arrow.UnionArray
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype SparseUnionArray = SparseUnionArray (ManagedPtr SparseUnionArray)
    deriving (Eq)
foreign import ccall "garrow_sparse_union_array_get_type"
    c_garrow_sparse_union_array_get_type :: IO GType

instance GObject SparseUnionArray where
    gobjectType = c_garrow_sparse_union_array_get_type
    

-- | Convert 'SparseUnionArray' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue SparseUnionArray where
    toGValue o = do
        gtype <- c_garrow_sparse_union_array_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr SparseUnionArray)
        B.ManagedPtr.newObject SparseUnionArray ptr
        
    

-- | Type class for types which can be safely cast to `SparseUnionArray`, for instance with `toSparseUnionArray`.
class (GObject o, O.IsDescendantOf SparseUnionArray o) => IsSparseUnionArray o
instance (GObject o, O.IsDescendantOf SparseUnionArray o) => IsSparseUnionArray o

instance O.HasParentTypes SparseUnionArray
type instance O.ParentTypes SparseUnionArray = '[Arrow.UnionArray.UnionArray, Arrow.Array.Array, GObject.Object.Object]

-- | Cast to `SparseUnionArray`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toSparseUnionArray :: (MonadIO m, IsSparseUnionArray o) => o -> m SparseUnionArray
toSparseUnionArray = liftIO . unsafeCastTo SparseUnionArray

-- | A convenience alias for `Nothing` :: `Maybe` `SparseUnionArray`.
noSparseUnionArray :: Maybe SparseUnionArray
noSparseUnionArray = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveSparseUnionArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveSparseUnionArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveSparseUnionArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveSparseUnionArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveSparseUnionArrayMethod "count" o = Arrow.Array.ArrayCountMethodInfo
    ResolveSparseUnionArrayMethod "countValues" o = Arrow.Array.ArrayCountValuesMethodInfo
    ResolveSparseUnionArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveSparseUnionArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveSparseUnionArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveSparseUnionArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveSparseUnionArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveSparseUnionArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveSparseUnionArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveSparseUnionArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveSparseUnionArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveSparseUnionArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveSparseUnionArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveSparseUnionArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveSparseUnionArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveSparseUnionArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveSparseUnionArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveSparseUnionArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveSparseUnionArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveSparseUnionArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveSparseUnionArrayMethod "take" o = Arrow.Array.ArrayTakeMethodInfo
    ResolveSparseUnionArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveSparseUnionArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveSparseUnionArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveSparseUnionArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveSparseUnionArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveSparseUnionArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveSparseUnionArrayMethod "getField" o = Arrow.UnionArray.UnionArrayGetFieldMethodInfo
    ResolveSparseUnionArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveSparseUnionArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveSparseUnionArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveSparseUnionArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveSparseUnionArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveSparseUnionArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveSparseUnionArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveSparseUnionArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveSparseUnionArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveSparseUnionArrayMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveSparseUnionArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveSparseUnionArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveSparseUnionArrayMethod t SparseUnionArray, O.MethodInfo info SparseUnionArray p) => OL.IsLabel t (SparseUnionArray -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList SparseUnionArray
type instance O.AttributeList SparseUnionArray = SparseUnionArrayAttributeList
type SparseUnionArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList SparseUnionArray = SparseUnionArraySignalList
type SparseUnionArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method SparseUnionArray::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "type_ids"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Int8Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "The field type IDs for each value as #GArrowInt8Array."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "fields"
--           , argType =
--               TGList (TInterface Name { namespace = "Arrow" , name = "Array" })
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "The arrays for each field\n  as #GList of #GArrowArray."
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
--                  Name { namespace = "Arrow" , name = "SparseUnionArray" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_sparse_union_array_new" garrow_sparse_union_array_new :: 
    Ptr Arrow.Int8Array.Int8Array ->        -- type_ids : TInterface (Name {namespace = "Arrow", name = "Int8Array"})
    Ptr (GList (Ptr Arrow.Array.Array)) ->  -- fields : TGList (TInterface (Name {namespace = "Arrow", name = "Array"}))
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr SparseUnionArray)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
sparseUnionArrayNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Int8Array.IsInt8Array a, Arrow.Array.IsArray b) =>
    a
    -- ^ /@typeIds@/: The field type IDs for each value as t'GI.Arrow.Objects.Int8Array.Int8Array'.
    -> [b]
    -- ^ /@fields@/: The arrays for each field
    --   as t'GI.GLib.Structs.List.List' of t'GI.Arrow.Objects.Array.Array'.
    -> m (Maybe SparseUnionArray)
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.SparseUnionArray.SparseUnionArray'
    --   or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
sparseUnionArrayNew typeIds fields = liftIO $ do
    typeIds' <- unsafeManagedPtrCastPtr typeIds
    fields' <- mapM unsafeManagedPtrCastPtr fields
    fields'' <- packGList fields'
    onException (do
        result <- propagateGError $ garrow_sparse_union_array_new typeIds' fields''
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject SparseUnionArray) result'
            return result''
        touchManagedPtr typeIds
        mapM_ touchManagedPtr fields
        g_list_free fields''
        return maybeResult
     ) (do
        g_list_free fields''
     )

#if defined(ENABLE_OVERLOADING)
#endif

-- method SparseUnionArray::new_data_type
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "data_type"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "SparseUnionDataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The data type for the sparse array."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "type_ids"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Int8Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "The field type IDs for each value as #GArrowInt8Array."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "fields"
--           , argType =
--               TGList (TInterface Name { namespace = "Arrow" , name = "Array" })
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "The arrays for each field\n  as #GList of #GArrowArray."
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
--                  Name { namespace = "Arrow" , name = "SparseUnionArray" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_sparse_union_array_new_data_type" garrow_sparse_union_array_new_data_type :: 
    Ptr Arrow.SparseUnionDataType.SparseUnionDataType -> -- data_type : TInterface (Name {namespace = "Arrow", name = "SparseUnionDataType"})
    Ptr Arrow.Int8Array.Int8Array ->        -- type_ids : TInterface (Name {namespace = "Arrow", name = "Int8Array"})
    Ptr (GList (Ptr Arrow.Array.Array)) ->  -- fields : TGList (TInterface (Name {namespace = "Arrow", name = "Array"}))
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr SparseUnionArray)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
sparseUnionArrayNewDataType ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.SparseUnionDataType.IsSparseUnionDataType a, Arrow.Int8Array.IsInt8Array b, Arrow.Array.IsArray c) =>
    a
    -- ^ /@dataType@/: The data type for the sparse array.
    -> b
    -- ^ /@typeIds@/: The field type IDs for each value as t'GI.Arrow.Objects.Int8Array.Int8Array'.
    -> [c]
    -- ^ /@fields@/: The arrays for each field
    --   as t'GI.GLib.Structs.List.List' of t'GI.Arrow.Objects.Array.Array'.
    -> m (Maybe SparseUnionArray)
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.SparseUnionArray.SparseUnionArray'
    --   or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
sparseUnionArrayNewDataType dataType typeIds fields = liftIO $ do
    dataType' <- unsafeManagedPtrCastPtr dataType
    typeIds' <- unsafeManagedPtrCastPtr typeIds
    fields' <- mapM unsafeManagedPtrCastPtr fields
    fields'' <- packGList fields'
    onException (do
        result <- propagateGError $ garrow_sparse_union_array_new_data_type dataType' typeIds' fields''
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject SparseUnionArray) result'
            return result''
        touchManagedPtr dataType
        touchManagedPtr typeIds
        mapM_ touchManagedPtr fields
        g_list_free fields''
        return maybeResult
     ) (do
        g_list_free fields''
     )

#if defined(ENABLE_OVERLOADING)
#endif


