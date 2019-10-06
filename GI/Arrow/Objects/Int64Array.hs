{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.Int64Array
    ( 

-- * Exported types
    Int64Array(..)                          ,
    IsInt64Array                            ,
    toInt64Array                            ,
    noInt64Array                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveInt64ArrayMethod                 ,
#endif


-- ** compare #method:compare#

#if defined(ENABLE_OVERLOADING)
    Int64ArrayCompareMethodInfo             ,
#endif
    int64ArrayCompare                       ,


-- ** getValue #method:getValue#

#if defined(ENABLE_OVERLOADING)
    Int64ArrayGetValueMethodInfo            ,
#endif
    int64ArrayGetValue                      ,


-- ** getValues #method:getValues#

#if defined(ENABLE_OVERLOADING)
    Int64ArrayGetValuesMethodInfo           ,
#endif
    int64ArrayGetValues                     ,


-- ** new #method:new#

    int64ArrayNew                           ,


-- ** sum #method:sum#

#if defined(ENABLE_OVERLOADING)
    Int64ArraySumMethodInfo                 ,
#endif
    int64ArraySum                           ,




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
newtype Int64Array = Int64Array (ManagedPtr Int64Array)
    deriving (Eq)
foreign import ccall "garrow_int64_array_get_type"
    c_garrow_int64_array_get_type :: IO GType

instance GObject Int64Array where
    gobjectType = c_garrow_int64_array_get_type
    

-- | Convert 'Int64Array' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Int64Array where
    toGValue o = do
        gtype <- c_garrow_int64_array_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Int64Array)
        B.ManagedPtr.newObject Int64Array ptr
        
    

-- | Type class for types which can be safely cast to `Int64Array`, for instance with `toInt64Array`.
class (GObject o, O.IsDescendantOf Int64Array o) => IsInt64Array o
instance (GObject o, O.IsDescendantOf Int64Array o) => IsInt64Array o

instance O.HasParentTypes Int64Array
type instance O.ParentTypes Int64Array = '[Arrow.NumericArray.NumericArray, Arrow.PrimitiveArray.PrimitiveArray, Arrow.Array.Array, GObject.Object.Object]

-- | Cast to `Int64Array`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toInt64Array :: (MonadIO m, IsInt64Array o) => o -> m Int64Array
toInt64Array = liftIO . unsafeCastTo Int64Array

-- | A convenience alias for `Nothing` :: `Maybe` `Int64Array`.
noInt64Array :: Maybe Int64Array
noInt64Array = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveInt64ArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveInt64ArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveInt64ArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveInt64ArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveInt64ArrayMethod "compare" o = Int64ArrayCompareMethodInfo
    ResolveInt64ArrayMethod "count" o = Arrow.Array.ArrayCountMethodInfo
    ResolveInt64ArrayMethod "countValues" o = Arrow.Array.ArrayCountValuesMethodInfo
    ResolveInt64ArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveInt64ArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveInt64ArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveInt64ArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveInt64ArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveInt64ArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveInt64ArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveInt64ArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveInt64ArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveInt64ArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveInt64ArrayMethod "mean" o = Arrow.NumericArray.NumericArrayMeanMethodInfo
    ResolveInt64ArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveInt64ArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveInt64ArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveInt64ArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveInt64ArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveInt64ArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveInt64ArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveInt64ArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveInt64ArrayMethod "sum" o = Int64ArraySumMethodInfo
    ResolveInt64ArrayMethod "take" o = Arrow.Array.ArrayTakeMethodInfo
    ResolveInt64ArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveInt64ArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveInt64ArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveInt64ArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveInt64ArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveInt64ArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveInt64ArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveInt64ArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveInt64ArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveInt64ArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveInt64ArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveInt64ArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveInt64ArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveInt64ArrayMethod "getValue" o = Int64ArrayGetValueMethodInfo
    ResolveInt64ArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveInt64ArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveInt64ArrayMethod "getValues" o = Int64ArrayGetValuesMethodInfo
    ResolveInt64ArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveInt64ArrayMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveInt64ArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveInt64ArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveInt64ArrayMethod t Int64Array, O.MethodInfo info Int64Array p) => OL.IsLabel t (Int64Array -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Int64Array
type instance O.AttributeList Int64Array = Int64ArrayAttributeList
type Int64ArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Int64Array = Int64ArraySignalList
type Int64ArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Int64Array::new
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
--               (TInterface Name { namespace = "Arrow" , name = "Int64Array" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int64_array_new" garrow_int64_array_new :: 
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr Int64Array)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
int64ArrayNew ::
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
    -> m Int64Array
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.Int64Array.Int64Array'.
int64ArrayNew length_ data_ nullBitmap nNulls = liftIO $ do
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_int64_array_new length_ data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "int64ArrayNew" result
    result' <- (wrapObject Int64Array) result
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Int64Array::compare
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Int64Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowInt64Array."
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
--           , argType = TBasicType TInt64
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

foreign import ccall "garrow_int64_array_compare" garrow_int64_array_compare :: 
    Ptr Int64Array ->                       -- array : TInterface (Name {namespace = "Arrow", name = "Int64Array"})
    Int64 ->                                -- value : TBasicType TInt64
    Ptr Arrow.CompareOptions.CompareOptions -> -- options : TInterface (Name {namespace = "Arrow", name = "CompareOptions"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.BooleanArray.BooleanArray)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
int64ArrayCompare ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt64Array a, Arrow.CompareOptions.IsCompareOptions b) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.Int64Array.Int64Array'.
    -> Int64
    -- ^ /@value@/: The value to compare.
    -> b
    -- ^ /@options@/: A t'GI.Arrow.Objects.CompareOptions.CompareOptions'.
    -> m (Maybe Arrow.BooleanArray.BooleanArray)
    -- ^ __Returns:__ The t'GI.Arrow.Objects.BooleanArray.BooleanArray' as
    --   the result compared a numeric array with a scalar on success,
    --   'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
int64ArrayCompare array value options = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    options' <- unsafeManagedPtrCastPtr options
    onException (do
        result <- propagateGError $ garrow_int64_array_compare array' value options'
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
data Int64ArrayCompareMethodInfo
instance (signature ~ (Int64 -> b -> m (Maybe Arrow.BooleanArray.BooleanArray)), MonadIO m, IsInt64Array a, Arrow.CompareOptions.IsCompareOptions b) => O.MethodInfo Int64ArrayCompareMethodInfo a signature where
    overloadedMethod = int64ArrayCompare

#endif

-- method Int64Array::get_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Int64Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowInt64Array."
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
-- returnType: Just (TBasicType TInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int64_array_get_value" garrow_int64_array_get_value :: 
    Ptr Int64Array ->                       -- array : TInterface (Name {namespace = "Arrow", name = "Int64Array"})
    Int64 ->                                -- i : TBasicType TInt64
    IO Int64

-- | /No description available in the introspection data./
int64ArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt64Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.Int64Array.Int64Array'.
    -> Int64
    -- ^ /@i@/: The index of the target value.
    -> m Int64
    -- ^ __Returns:__ The i-th value.
int64ArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_int64_array_get_value array' i
    touchManagedPtr array
    return result

#if defined(ENABLE_OVERLOADING)
data Int64ArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Int64), MonadIO m, IsInt64Array a) => O.MethodInfo Int64ArrayGetValueMethodInfo a signature where
    overloadedMethod = int64ArrayGetValue

#endif

-- method Int64Array::get_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Int64Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowInt64Array."
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
-- returnType: Just (TCArray False (-1) 1 (TBasicType TInt64))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int64_array_get_values" garrow_int64_array_get_values :: 
    Ptr Int64Array ->                       -- array : TInterface (Name {namespace = "Arrow", name = "Int64Array"})
    Ptr Int64 ->                            -- length : TBasicType TInt64
    IO (Ptr Int64)

-- | /No description available in the introspection data./
int64ArrayGetValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt64Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.Int64Array.Int64Array'.
    -> m [Int64]
    -- ^ __Returns:__ The raw values.
int64ArrayGetValues array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    length_ <- allocMem :: IO (Ptr Int64)
    result <- garrow_int64_array_get_values array' length_
    length_' <- peek length_
    checkUnexpectedReturnNULL "int64ArrayGetValues" result
    result' <- (unpackStorableArrayWithLength length_') result
    touchManagedPtr array
    freeMem length_
    return result'

#if defined(ENABLE_OVERLOADING)
data Int64ArrayGetValuesMethodInfo
instance (signature ~ (m [Int64]), MonadIO m, IsInt64Array a) => O.MethodInfo Int64ArrayGetValuesMethodInfo a signature where
    overloadedMethod = int64ArrayGetValues

#endif

-- method Int64Array::sum
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Int64Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowInt64Array."
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

foreign import ccall "garrow_int64_array_sum" garrow_int64_array_sum :: 
    Ptr Int64Array ->                       -- array : TInterface (Name {namespace = "Arrow", name = "Int64Array"})
    Ptr (Ptr GError) ->                     -- error
    IO Int64

-- | /No description available in the introspection data./
-- 
-- /Since: 0.13.0/
int64ArraySum ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt64Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.Int64Array.Int64Array'.
    -> m Int64
    -- ^ __Returns:__ The value of the computed sum on success,
    --   If an error is occurred, the returned value is untrustful value. /(Can throw 'Data.GI.Base.GError.GError')/
int64ArraySum array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    onException (do
        result <- propagateGError $ garrow_int64_array_sum array'
        touchManagedPtr array
        return result
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data Int64ArraySumMethodInfo
instance (signature ~ (m Int64), MonadIO m, IsInt64Array a) => O.MethodInfo Int64ArraySumMethodInfo a signature where
    overloadedMethod = int64ArraySum

#endif


