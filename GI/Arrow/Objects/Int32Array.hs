{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.Int32Array
    ( 

-- * Exported types
    Int32Array(..)                          ,
    IsInt32Array                            ,
    toInt32Array                            ,
    noInt32Array                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveInt32ArrayMethod                 ,
#endif


-- ** compare #method:compare#

#if defined(ENABLE_OVERLOADING)
    Int32ArrayCompareMethodInfo             ,
#endif
    int32ArrayCompare                       ,


-- ** getValue #method:getValue#

#if defined(ENABLE_OVERLOADING)
    Int32ArrayGetValueMethodInfo            ,
#endif
    int32ArrayGetValue                      ,


-- ** getValues #method:getValues#

#if defined(ENABLE_OVERLOADING)
    Int32ArrayGetValuesMethodInfo           ,
#endif
    int32ArrayGetValues                     ,


-- ** new #method:new#

    int32ArrayNew                           ,


-- ** sum #method:sum#

#if defined(ENABLE_OVERLOADING)
    Int32ArraySumMethodInfo                 ,
#endif
    int32ArraySum                           ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.BooleanArray as Arrow.BooleanArray
import {-# SOURCE #-} qualified GI.Arrow.Objects.Buffer as Arrow.Buffer
import {-# SOURCE #-} qualified GI.Arrow.Objects.CompareOptions as Arrow.CompareOptions
import {-# SOURCE #-} qualified GI.Arrow.Objects.NumericArray as Arrow.NumericArray
import {-# SOURCE #-} qualified GI.Arrow.Objects.PrimitiveArray as Arrow.PrimitiveArray
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Int32Array = Int32Array (ManagedPtr Int32Array)
    deriving (Eq)
foreign import ccall "garrow_int32_array_get_type"
    c_garrow_int32_array_get_type :: IO GType

instance GObject Int32Array where
    gobjectType = c_garrow_int32_array_get_type
    

-- | Convert 'Int32Array' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Int32Array where
    toGValue o = do
        gtype <- c_garrow_int32_array_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Int32Array)
        B.ManagedPtr.newObject Int32Array ptr
        
    

-- | Type class for types which can be safely cast to `Int32Array`, for instance with `toInt32Array`.
class (GObject o, O.IsDescendantOf Int32Array o) => IsInt32Array o
instance (GObject o, O.IsDescendantOf Int32Array o) => IsInt32Array o

instance O.HasParentTypes Int32Array
type instance O.ParentTypes Int32Array = '[Arrow.NumericArray.NumericArray, Arrow.PrimitiveArray.PrimitiveArray, Arrow.Array.Array, GObject.Object.Object]

-- | Cast to `Int32Array`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toInt32Array :: (MonadIO m, IsInt32Array o) => o -> m Int32Array
toInt32Array = liftIO . unsafeCastTo Int32Array

-- | A convenience alias for `Nothing` :: `Maybe` `Int32Array`.
noInt32Array :: Maybe Int32Array
noInt32Array = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveInt32ArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveInt32ArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveInt32ArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveInt32ArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveInt32ArrayMethod "compare" o = Int32ArrayCompareMethodInfo
    ResolveInt32ArrayMethod "count" o = Arrow.Array.ArrayCountMethodInfo
    ResolveInt32ArrayMethod "countValues" o = Arrow.Array.ArrayCountValuesMethodInfo
    ResolveInt32ArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveInt32ArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveInt32ArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveInt32ArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveInt32ArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveInt32ArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveInt32ArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveInt32ArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveInt32ArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveInt32ArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveInt32ArrayMethod "mean" o = Arrow.NumericArray.NumericArrayMeanMethodInfo
    ResolveInt32ArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveInt32ArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveInt32ArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveInt32ArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveInt32ArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveInt32ArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveInt32ArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveInt32ArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveInt32ArrayMethod "sum" o = Int32ArraySumMethodInfo
    ResolveInt32ArrayMethod "take" o = Arrow.Array.ArrayTakeMethodInfo
    ResolveInt32ArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveInt32ArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveInt32ArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveInt32ArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveInt32ArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveInt32ArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveInt32ArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveInt32ArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveInt32ArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveInt32ArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveInt32ArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveInt32ArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveInt32ArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveInt32ArrayMethod "getValue" o = Int32ArrayGetValueMethodInfo
    ResolveInt32ArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveInt32ArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveInt32ArrayMethod "getValues" o = Int32ArrayGetValuesMethodInfo
    ResolveInt32ArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveInt32ArrayMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveInt32ArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveInt32ArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveInt32ArrayMethod t Int32Array, O.MethodInfo info Int32Array p) => OL.IsLabel t (Int32Array -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Int32Array
type instance O.AttributeList Int32Array = Int32ArrayAttributeList
type Int32ArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Int32Array = Int32ArraySignalList
type Int32ArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Int32Array::new
-- method type : Constructor
-- Args: [ Arg
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
--           { argCName = "data"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Buffer" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The binary data in Arrow format of the array."
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
-- returnType: Just
--               (TInterface Name { namespace = "Arrow" , name = "Int32Array" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int32_array_new" garrow_int32_array_new :: 
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr Int32Array)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
int32ArrayNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Buffer.IsBuffer a, Arrow.Buffer.IsBuffer b) =>
    Int64
    -- ^ /@length@/: The number of elements.
    -> a
    -- ^ /@data@/: The binary data in Arrow format of the array.
    -> Maybe (b)
    -- ^ /@nullBitmap@/: The bitmap that shows null elements. The
    --   N-th element is null when the N-th bit is 0, not null otherwise.
    --   If the array has no null elements, the bitmap must be 'P.Nothing' and
    --   /@nNulls@/ is 0.
    -> Int64
    -- ^ /@nNulls@/: The number of null elements. If -1 is specified, the
    --   number of nulls are computed from /@nullBitmap@/.
    -> m Int32Array
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.Int32Array.Int32Array'.
int32ArrayNew length_ data_ nullBitmap nNulls = liftIO $ do
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_int32_array_new length_ data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "int32ArrayNew" result
    result' <- (wrapObject Int32Array) result
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Int32Array::compare
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Int32Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt32Array."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "value"
--           , argType = TBasicType TInt32
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The value to compare."
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
--               TInterface Name { namespace = "Arrow" , name = "CompareOptions" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowCompareOptions."
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
--               (TInterface Name { namespace = "Arrow" , name = "BooleanArray" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_int32_array_compare" garrow_int32_array_compare :: 
    Ptr Int32Array ->                       -- array : TInterface (Name {namespace = "Arrow", name = "Int32Array"})
    Int32 ->                                -- value : TBasicType TInt32
    Ptr Arrow.CompareOptions.CompareOptions -> -- options : TInterface (Name {namespace = "Arrow", name = "CompareOptions"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.BooleanArray.BooleanArray)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
int32ArrayCompare ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt32Array a, Arrow.CompareOptions.IsCompareOptions b) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.UInt32Array.UInt32Array'.
    -> Int32
    -- ^ /@value@/: The value to compare.
    -> b
    -- ^ /@options@/: A t'GI.Arrow.Objects.CompareOptions.CompareOptions'.
    -> m (Maybe Arrow.BooleanArray.BooleanArray)
    -- ^ __Returns:__ The t'GI.Arrow.Objects.BooleanArray.BooleanArray' as
    --   the result compared a numeric array with a scalar on success,
    --   'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
int32ArrayCompare array value options = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    options' <- unsafeManagedPtrCastPtr options
    onException (do
        result <- propagateGError $ garrow_int32_array_compare array' value options'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Arrow.BooleanArray.BooleanArray) result'
            return result''
        touchManagedPtr array
        touchManagedPtr options
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data Int32ArrayCompareMethodInfo
instance (signature ~ (Int32 -> b -> m (Maybe Arrow.BooleanArray.BooleanArray)), MonadIO m, IsInt32Array a, Arrow.CompareOptions.IsCompareOptions b) => O.MethodInfo Int32ArrayCompareMethodInfo a signature where
    overloadedMethod = int32ArrayCompare

#endif

-- method Int32Array::get_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Int32Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowInt32Array."
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
-- returnType: Just (TBasicType TInt32)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int32_array_get_value" garrow_int32_array_get_value :: 
    Ptr Int32Array ->                       -- array : TInterface (Name {namespace = "Arrow", name = "Int32Array"})
    Int64 ->                                -- i : TBasicType TInt64
    IO Int32

-- | /No description available in the introspection data./
int32ArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt32Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.Int32Array.Int32Array'.
    -> Int64
    -- ^ /@i@/: The index of the target value.
    -> m Int32
    -- ^ __Returns:__ The i-th value.
int32ArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_int32_array_get_value array' i
    touchManagedPtr array
    return result

#if defined(ENABLE_OVERLOADING)
data Int32ArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Int32), MonadIO m, IsInt32Array a) => O.MethodInfo Int32ArrayGetValueMethodInfo a signature where
    overloadedMethod = int32ArrayGetValue

#endif

-- method Int32Array::get_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Int32Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowInt32Array."
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
--           , direction = DirectionOut
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The number of values."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: [ Arg
--              { argCName = "length"
--              , argType = TBasicType TInt64
--              , direction = DirectionOut
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "The number of values."
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferEverything
--              }
--          ]
-- returnType: Just (TCArray False (-1) 1 (TBasicType TInt32))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int32_array_get_values" garrow_int32_array_get_values :: 
    Ptr Int32Array ->                       -- array : TInterface (Name {namespace = "Arrow", name = "Int32Array"})
    Ptr Int64 ->                            -- length : TBasicType TInt64
    IO (Ptr Int32)

-- | /No description available in the introspection data./
int32ArrayGetValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt32Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.Int32Array.Int32Array'.
    -> m [Int32]
    -- ^ __Returns:__ The raw values.
int32ArrayGetValues array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    length_ <- allocMem :: IO (Ptr Int64)
    result <- garrow_int32_array_get_values array' length_
    length_' <- peek length_
    checkUnexpectedReturnNULL "int32ArrayGetValues" result
    result' <- (unpackStorableArrayWithLength length_') result
    touchManagedPtr array
    freeMem length_
    return result'

#if defined(ENABLE_OVERLOADING)
data Int32ArrayGetValuesMethodInfo
instance (signature ~ (m [Int32]), MonadIO m, IsInt32Array a) => O.MethodInfo Int32ArrayGetValuesMethodInfo a signature where
    overloadedMethod = int32ArrayGetValues

#endif

-- method Int32Array::sum
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Int32Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowInt32Array."
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
-- returnType: Just (TBasicType TInt64)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_int32_array_sum" garrow_int32_array_sum :: 
    Ptr Int32Array ->                       -- array : TInterface (Name {namespace = "Arrow", name = "Int32Array"})
    Ptr (Ptr GError) ->                     -- error
    IO Int64

-- | /No description available in the introspection data./
-- 
-- /Since: 0.13.0/
int32ArraySum ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt32Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.Int32Array.Int32Array'.
    -> m Int64
    -- ^ __Returns:__ The value of the computed sum on success,
    --   If an error is occurred, the returned value is untrustful value. /(Can throw 'Data.GI.Base.GError.GError')/
int32ArraySum array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    onException (do
        result <- propagateGError $ garrow_int32_array_sum array'
        touchManagedPtr array
        return result
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data Int32ArraySumMethodInfo
instance (signature ~ (m Int64), MonadIO m, IsInt32Array a) => O.MethodInfo Int32ArraySumMethodInfo a signature where
    overloadedMethod = int32ArraySum

#endif


