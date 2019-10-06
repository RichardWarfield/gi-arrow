{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.Int16Array
    ( 

-- * Exported types
    Int16Array(..)                          ,
    IsInt16Array                            ,
    toInt16Array                            ,
    noInt16Array                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveInt16ArrayMethod                 ,
#endif


-- ** compare #method:compare#

#if defined(ENABLE_OVERLOADING)
    Int16ArrayCompareMethodInfo             ,
#endif
    int16ArrayCompare                       ,


-- ** getValue #method:getValue#

#if defined(ENABLE_OVERLOADING)
    Int16ArrayGetValueMethodInfo            ,
#endif
    int16ArrayGetValue                      ,


-- ** getValues #method:getValues#

#if defined(ENABLE_OVERLOADING)
    Int16ArrayGetValuesMethodInfo           ,
#endif
    int16ArrayGetValues                     ,


-- ** new #method:new#

    int16ArrayNew                           ,


-- ** sum #method:sum#

#if defined(ENABLE_OVERLOADING)
    Int16ArraySumMethodInfo                 ,
#endif
    int16ArraySum                           ,




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
newtype Int16Array = Int16Array (ManagedPtr Int16Array)
    deriving (Eq)
foreign import ccall "garrow_int16_array_get_type"
    c_garrow_int16_array_get_type :: IO GType

instance GObject Int16Array where
    gobjectType = c_garrow_int16_array_get_type
    

-- | Convert 'Int16Array' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Int16Array where
    toGValue o = do
        gtype <- c_garrow_int16_array_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Int16Array)
        B.ManagedPtr.newObject Int16Array ptr
        
    

-- | Type class for types which can be safely cast to `Int16Array`, for instance with `toInt16Array`.
class (GObject o, O.IsDescendantOf Int16Array o) => IsInt16Array o
instance (GObject o, O.IsDescendantOf Int16Array o) => IsInt16Array o

instance O.HasParentTypes Int16Array
type instance O.ParentTypes Int16Array = '[Arrow.NumericArray.NumericArray, Arrow.PrimitiveArray.PrimitiveArray, Arrow.Array.Array, GObject.Object.Object]

-- | Cast to `Int16Array`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toInt16Array :: (MonadIO m, IsInt16Array o) => o -> m Int16Array
toInt16Array = liftIO . unsafeCastTo Int16Array

-- | A convenience alias for `Nothing` :: `Maybe` `Int16Array`.
noInt16Array :: Maybe Int16Array
noInt16Array = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveInt16ArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveInt16ArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveInt16ArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveInt16ArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveInt16ArrayMethod "compare" o = Int16ArrayCompareMethodInfo
    ResolveInt16ArrayMethod "count" o = Arrow.Array.ArrayCountMethodInfo
    ResolveInt16ArrayMethod "countValues" o = Arrow.Array.ArrayCountValuesMethodInfo
    ResolveInt16ArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveInt16ArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveInt16ArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveInt16ArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveInt16ArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveInt16ArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveInt16ArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveInt16ArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveInt16ArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveInt16ArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveInt16ArrayMethod "mean" o = Arrow.NumericArray.NumericArrayMeanMethodInfo
    ResolveInt16ArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveInt16ArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveInt16ArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveInt16ArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveInt16ArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveInt16ArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveInt16ArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveInt16ArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveInt16ArrayMethod "sum" o = Int16ArraySumMethodInfo
    ResolveInt16ArrayMethod "take" o = Arrow.Array.ArrayTakeMethodInfo
    ResolveInt16ArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveInt16ArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveInt16ArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveInt16ArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveInt16ArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveInt16ArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveInt16ArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveInt16ArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveInt16ArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveInt16ArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveInt16ArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveInt16ArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveInt16ArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveInt16ArrayMethod "getValue" o = Int16ArrayGetValueMethodInfo
    ResolveInt16ArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveInt16ArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveInt16ArrayMethod "getValues" o = Int16ArrayGetValuesMethodInfo
    ResolveInt16ArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveInt16ArrayMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveInt16ArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveInt16ArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveInt16ArrayMethod t Int16Array, O.MethodInfo info Int16Array p) => OL.IsLabel t (Int16Array -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Int16Array
type instance O.AttributeList Int16Array = Int16ArrayAttributeList
type Int16ArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Int16Array = Int16ArraySignalList
type Int16ArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Int16Array::new
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
--               (TInterface Name { namespace = "Arrow" , name = "Int16Array" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int16_array_new" garrow_int16_array_new :: 
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr Int16Array)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
int16ArrayNew ::
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
    -> m Int16Array
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.Int16Array.Int16Array'.
int16ArrayNew length_ data_ nullBitmap nNulls = liftIO $ do
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_int16_array_new length_ data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "int16ArrayNew" result
    result' <- (wrapObject Int16Array) result
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Int16Array::compare
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Int16Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowInt16Array."
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
--           , argType = TBasicType TInt16
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

foreign import ccall "garrow_int16_array_compare" garrow_int16_array_compare :: 
    Ptr Int16Array ->                       -- array : TInterface (Name {namespace = "Arrow", name = "Int16Array"})
    Int16 ->                                -- value : TBasicType TInt16
    Ptr Arrow.CompareOptions.CompareOptions -> -- options : TInterface (Name {namespace = "Arrow", name = "CompareOptions"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.BooleanArray.BooleanArray)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
int16ArrayCompare ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt16Array a, Arrow.CompareOptions.IsCompareOptions b) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.Int16Array.Int16Array'.
    -> Int16
    -- ^ /@value@/: The value to compare.
    -> b
    -- ^ /@options@/: A t'GI.Arrow.Objects.CompareOptions.CompareOptions'.
    -> m (Maybe Arrow.BooleanArray.BooleanArray)
    -- ^ __Returns:__ The t'GI.Arrow.Objects.BooleanArray.BooleanArray' as
    --   the result compared a numeric array with a scalar on success,
    --   'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
int16ArrayCompare array value options = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    options' <- unsafeManagedPtrCastPtr options
    onException (do
        result <- propagateGError $ garrow_int16_array_compare array' value options'
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
data Int16ArrayCompareMethodInfo
instance (signature ~ (Int16 -> b -> m (Maybe Arrow.BooleanArray.BooleanArray)), MonadIO m, IsInt16Array a, Arrow.CompareOptions.IsCompareOptions b) => O.MethodInfo Int16ArrayCompareMethodInfo a signature where
    overloadedMethod = int16ArrayCompare

#endif

-- method Int16Array::get_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Int16Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowInt16Array."
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
-- returnType: Just (TBasicType TInt16)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int16_array_get_value" garrow_int16_array_get_value :: 
    Ptr Int16Array ->                       -- array : TInterface (Name {namespace = "Arrow", name = "Int16Array"})
    Int64 ->                                -- i : TBasicType TInt64
    IO Int16

-- | /No description available in the introspection data./
int16ArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt16Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.Int16Array.Int16Array'.
    -> Int64
    -- ^ /@i@/: The index of the target value.
    -> m Int16
    -- ^ __Returns:__ The i-th value.
int16ArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_int16_array_get_value array' i
    touchManagedPtr array
    return result

#if defined(ENABLE_OVERLOADING)
data Int16ArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Int16), MonadIO m, IsInt16Array a) => O.MethodInfo Int16ArrayGetValueMethodInfo a signature where
    overloadedMethod = int16ArrayGetValue

#endif

-- method Int16Array::get_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Int16Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowInt16Array."
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
-- returnType: Just (TCArray False (-1) 1 (TBasicType TInt16))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int16_array_get_values" garrow_int16_array_get_values :: 
    Ptr Int16Array ->                       -- array : TInterface (Name {namespace = "Arrow", name = "Int16Array"})
    Ptr Int64 ->                            -- length : TBasicType TInt64
    IO (Ptr Int16)

-- | /No description available in the introspection data./
int16ArrayGetValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt16Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.Int16Array.Int16Array'.
    -> m [Int16]
    -- ^ __Returns:__ The raw values.
int16ArrayGetValues array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    length_ <- allocMem :: IO (Ptr Int64)
    result <- garrow_int16_array_get_values array' length_
    length_' <- peek length_
    checkUnexpectedReturnNULL "int16ArrayGetValues" result
    result' <- (unpackStorableArrayWithLength length_') result
    touchManagedPtr array
    freeMem length_
    return result'

#if defined(ENABLE_OVERLOADING)
data Int16ArrayGetValuesMethodInfo
instance (signature ~ (m [Int16]), MonadIO m, IsInt16Array a) => O.MethodInfo Int16ArrayGetValuesMethodInfo a signature where
    overloadedMethod = int16ArrayGetValues

#endif

-- method Int16Array::sum
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Int16Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowInt16Array."
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

foreign import ccall "garrow_int16_array_sum" garrow_int16_array_sum :: 
    Ptr Int16Array ->                       -- array : TInterface (Name {namespace = "Arrow", name = "Int16Array"})
    Ptr (Ptr GError) ->                     -- error
    IO Int64

-- | /No description available in the introspection data./
-- 
-- /Since: 0.13.0/
int16ArraySum ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt16Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.Int16Array.Int16Array'.
    -> m Int64
    -- ^ __Returns:__ The value of the computed sum on success,
    --   If an error is occurred, the returned value is untrustful value. /(Can throw 'Data.GI.Base.GError.GError')/
int16ArraySum array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    onException (do
        result <- propagateGError $ garrow_int16_array_sum array'
        touchManagedPtr array
        return result
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data Int16ArraySumMethodInfo
instance (signature ~ (m Int64), MonadIO m, IsInt16Array a) => O.MethodInfo Int16ArraySumMethodInfo a signature where
    overloadedMethod = int16ArraySum

#endif


