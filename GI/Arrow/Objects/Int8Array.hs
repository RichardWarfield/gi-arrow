{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.Int8Array
    ( 

-- * Exported types
    Int8Array(..)                           ,
    IsInt8Array                             ,
    toInt8Array                             ,
    noInt8Array                             ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveInt8ArrayMethod                  ,
#endif


-- ** compare #method:compare#

#if defined(ENABLE_OVERLOADING)
    Int8ArrayCompareMethodInfo              ,
#endif
    int8ArrayCompare                        ,


-- ** getValue #method:getValue#

#if defined(ENABLE_OVERLOADING)
    Int8ArrayGetValueMethodInfo             ,
#endif
    int8ArrayGetValue                       ,


-- ** getValues #method:getValues#

#if defined(ENABLE_OVERLOADING)
    Int8ArrayGetValuesMethodInfo            ,
#endif
    int8ArrayGetValues                      ,


-- ** new #method:new#

    int8ArrayNew                            ,


-- ** sum #method:sum#

#if defined(ENABLE_OVERLOADING)
    Int8ArraySumMethodInfo                  ,
#endif
    int8ArraySum                            ,




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
newtype Int8Array = Int8Array (ManagedPtr Int8Array)
    deriving (Eq)
foreign import ccall "garrow_int8_array_get_type"
    c_garrow_int8_array_get_type :: IO GType

instance GObject Int8Array where
    gobjectType = c_garrow_int8_array_get_type
    

-- | Convert 'Int8Array' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Int8Array where
    toGValue o = do
        gtype <- c_garrow_int8_array_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Int8Array)
        B.ManagedPtr.newObject Int8Array ptr
        
    

-- | Type class for types which can be safely cast to `Int8Array`, for instance with `toInt8Array`.
class (GObject o, O.IsDescendantOf Int8Array o) => IsInt8Array o
instance (GObject o, O.IsDescendantOf Int8Array o) => IsInt8Array o

instance O.HasParentTypes Int8Array
type instance O.ParentTypes Int8Array = '[Arrow.NumericArray.NumericArray, Arrow.PrimitiveArray.PrimitiveArray, Arrow.Array.Array, GObject.Object.Object]

-- | Cast to `Int8Array`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toInt8Array :: (MonadIO m, IsInt8Array o) => o -> m Int8Array
toInt8Array = liftIO . unsafeCastTo Int8Array

-- | A convenience alias for `Nothing` :: `Maybe` `Int8Array`.
noInt8Array :: Maybe Int8Array
noInt8Array = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveInt8ArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveInt8ArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveInt8ArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveInt8ArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveInt8ArrayMethod "compare" o = Int8ArrayCompareMethodInfo
    ResolveInt8ArrayMethod "count" o = Arrow.Array.ArrayCountMethodInfo
    ResolveInt8ArrayMethod "countValues" o = Arrow.Array.ArrayCountValuesMethodInfo
    ResolveInt8ArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveInt8ArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveInt8ArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveInt8ArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveInt8ArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveInt8ArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveInt8ArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveInt8ArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveInt8ArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveInt8ArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveInt8ArrayMethod "mean" o = Arrow.NumericArray.NumericArrayMeanMethodInfo
    ResolveInt8ArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveInt8ArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveInt8ArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveInt8ArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveInt8ArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveInt8ArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveInt8ArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveInt8ArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveInt8ArrayMethod "sum" o = Int8ArraySumMethodInfo
    ResolveInt8ArrayMethod "take" o = Arrow.Array.ArrayTakeMethodInfo
    ResolveInt8ArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveInt8ArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveInt8ArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveInt8ArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveInt8ArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveInt8ArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveInt8ArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveInt8ArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveInt8ArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveInt8ArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveInt8ArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveInt8ArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveInt8ArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveInt8ArrayMethod "getValue" o = Int8ArrayGetValueMethodInfo
    ResolveInt8ArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveInt8ArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveInt8ArrayMethod "getValues" o = Int8ArrayGetValuesMethodInfo
    ResolveInt8ArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveInt8ArrayMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveInt8ArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveInt8ArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveInt8ArrayMethod t Int8Array, O.MethodInfo info Int8Array p) => OL.IsLabel t (Int8Array -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Int8Array
type instance O.AttributeList Int8Array = Int8ArrayAttributeList
type Int8ArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Int8Array = Int8ArraySignalList
type Int8ArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Int8Array::new
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Int8Array" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int8_array_new" garrow_int8_array_new :: 
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr Int8Array)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
int8ArrayNew ::
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
    -> m Int8Array
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.Int8Array.Int8Array'.
int8ArrayNew length_ data_ nullBitmap nNulls = liftIO $ do
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_int8_array_new length_ data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "int8ArrayNew" result
    result' <- (wrapObject Int8Array) result
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Int8Array::compare
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Int8Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowInt8Array."
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
--           , argType = TBasicType TInt8
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

foreign import ccall "garrow_int8_array_compare" garrow_int8_array_compare :: 
    Ptr Int8Array ->                        -- array : TInterface (Name {namespace = "Arrow", name = "Int8Array"})
    Int8 ->                                 -- value : TBasicType TInt8
    Ptr Arrow.CompareOptions.CompareOptions -> -- options : TInterface (Name {namespace = "Arrow", name = "CompareOptions"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.BooleanArray.BooleanArray)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
int8ArrayCompare ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt8Array a, Arrow.CompareOptions.IsCompareOptions b) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.Int8Array.Int8Array'.
    -> Int8
    -- ^ /@value@/: The value to compare.
    -> b
    -- ^ /@options@/: A t'GI.Arrow.Objects.CompareOptions.CompareOptions'.
    -> m (Maybe Arrow.BooleanArray.BooleanArray)
    -- ^ __Returns:__ The t'GI.Arrow.Objects.BooleanArray.BooleanArray' as
    --   the result compared a numeric array with a scalar on success,
    --   'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
int8ArrayCompare array value options = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    options' <- unsafeManagedPtrCastPtr options
    onException (do
        result <- propagateGError $ garrow_int8_array_compare array' value options'
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
data Int8ArrayCompareMethodInfo
instance (signature ~ (Int8 -> b -> m (Maybe Arrow.BooleanArray.BooleanArray)), MonadIO m, IsInt8Array a, Arrow.CompareOptions.IsCompareOptions b) => O.MethodInfo Int8ArrayCompareMethodInfo a signature where
    overloadedMethod = int8ArrayCompare

#endif

-- method Int8Array::get_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Int8Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowInt8Array."
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
-- returnType: Just (TBasicType TInt8)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int8_array_get_value" garrow_int8_array_get_value :: 
    Ptr Int8Array ->                        -- array : TInterface (Name {namespace = "Arrow", name = "Int8Array"})
    Int64 ->                                -- i : TBasicType TInt64
    IO Int8

-- | /No description available in the introspection data./
int8ArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt8Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.Int8Array.Int8Array'.
    -> Int64
    -- ^ /@i@/: The index of the target value.
    -> m Int8
    -- ^ __Returns:__ The i-th value.
int8ArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_int8_array_get_value array' i
    touchManagedPtr array
    return result

#if defined(ENABLE_OVERLOADING)
data Int8ArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Int8), MonadIO m, IsInt8Array a) => O.MethodInfo Int8ArrayGetValueMethodInfo a signature where
    overloadedMethod = int8ArrayGetValue

#endif

-- method Int8Array::get_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Int8Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowInt8Array."
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
-- returnType: Just (TCArray False (-1) 1 (TBasicType TInt8))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int8_array_get_values" garrow_int8_array_get_values :: 
    Ptr Int8Array ->                        -- array : TInterface (Name {namespace = "Arrow", name = "Int8Array"})
    Ptr Int64 ->                            -- length : TBasicType TInt64
    IO (Ptr Int8)

-- | /No description available in the introspection data./
int8ArrayGetValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt8Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.Int8Array.Int8Array'.
    -> m [Int8]
    -- ^ __Returns:__ The raw values.
int8ArrayGetValues array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    length_ <- allocMem :: IO (Ptr Int64)
    result <- garrow_int8_array_get_values array' length_
    length_' <- peek length_
    checkUnexpectedReturnNULL "int8ArrayGetValues" result
    result' <- (unpackStorableArrayWithLength length_') result
    touchManagedPtr array
    freeMem length_
    return result'

#if defined(ENABLE_OVERLOADING)
data Int8ArrayGetValuesMethodInfo
instance (signature ~ (m [Int8]), MonadIO m, IsInt8Array a) => O.MethodInfo Int8ArrayGetValuesMethodInfo a signature where
    overloadedMethod = int8ArrayGetValues

#endif

-- method Int8Array::sum
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Int8Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowInt8Array."
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

foreign import ccall "garrow_int8_array_sum" garrow_int8_array_sum :: 
    Ptr Int8Array ->                        -- array : TInterface (Name {namespace = "Arrow", name = "Int8Array"})
    Ptr (Ptr GError) ->                     -- error
    IO Int64

-- | /No description available in the introspection data./
-- 
-- /Since: 0.13.0/
int8ArraySum ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt8Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.Int8Array.Int8Array'.
    -> m Int64
    -- ^ __Returns:__ The value of the computed sum on success,
    --   If an error is occurred, the returned value is untrustful value. /(Can throw 'Data.GI.Base.GError.GError')/
int8ArraySum array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    onException (do
        result <- propagateGError $ garrow_int8_array_sum array'
        touchManagedPtr array
        return result
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data Int8ArraySumMethodInfo
instance (signature ~ (m Int64), MonadIO m, IsInt8Array a) => O.MethodInfo Int8ArraySumMethodInfo a signature where
    overloadedMethod = int8ArraySum

#endif


