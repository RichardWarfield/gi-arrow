{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.DoubleArray
    ( 

-- * Exported types
    DoubleArray(..)                         ,
    IsDoubleArray                           ,
    toDoubleArray                           ,
    noDoubleArray                           ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveDoubleArrayMethod                ,
#endif


-- ** compare #method:compare#

#if defined(ENABLE_OVERLOADING)
    DoubleArrayCompareMethodInfo            ,
#endif
    doubleArrayCompare                      ,


-- ** getValue #method:getValue#

#if defined(ENABLE_OVERLOADING)
    DoubleArrayGetValueMethodInfo           ,
#endif
    doubleArrayGetValue                     ,


-- ** getValues #method:getValues#

#if defined(ENABLE_OVERLOADING)
    DoubleArrayGetValuesMethodInfo          ,
#endif
    doubleArrayGetValues                    ,


-- ** new #method:new#

    doubleArrayNew                          ,


-- ** sum #method:sum#

#if defined(ENABLE_OVERLOADING)
    DoubleArraySumMethodInfo                ,
#endif
    doubleArraySum                          ,




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
newtype DoubleArray = DoubleArray (ManagedPtr DoubleArray)
    deriving (Eq)
foreign import ccall "garrow_double_array_get_type"
    c_garrow_double_array_get_type :: IO GType

instance GObject DoubleArray where
    gobjectType = c_garrow_double_array_get_type
    

-- | Convert 'DoubleArray' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue DoubleArray where
    toGValue o = do
        gtype <- c_garrow_double_array_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr DoubleArray)
        B.ManagedPtr.newObject DoubleArray ptr
        
    

-- | Type class for types which can be safely cast to `DoubleArray`, for instance with `toDoubleArray`.
class (GObject o, O.IsDescendantOf DoubleArray o) => IsDoubleArray o
instance (GObject o, O.IsDescendantOf DoubleArray o) => IsDoubleArray o

instance O.HasParentTypes DoubleArray
type instance O.ParentTypes DoubleArray = '[Arrow.NumericArray.NumericArray, Arrow.PrimitiveArray.PrimitiveArray, Arrow.Array.Array, GObject.Object.Object]

-- | Cast to `DoubleArray`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDoubleArray :: (MonadIO m, IsDoubleArray o) => o -> m DoubleArray
toDoubleArray = liftIO . unsafeCastTo DoubleArray

-- | A convenience alias for `Nothing` :: `Maybe` `DoubleArray`.
noDoubleArray :: Maybe DoubleArray
noDoubleArray = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveDoubleArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveDoubleArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDoubleArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDoubleArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveDoubleArrayMethod "compare" o = DoubleArrayCompareMethodInfo
    ResolveDoubleArrayMethod "count" o = Arrow.Array.ArrayCountMethodInfo
    ResolveDoubleArrayMethod "countValues" o = Arrow.Array.ArrayCountValuesMethodInfo
    ResolveDoubleArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveDoubleArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveDoubleArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveDoubleArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveDoubleArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDoubleArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDoubleArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDoubleArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDoubleArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveDoubleArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveDoubleArrayMethod "mean" o = Arrow.NumericArray.NumericArrayMeanMethodInfo
    ResolveDoubleArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDoubleArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDoubleArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDoubleArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDoubleArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDoubleArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveDoubleArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDoubleArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDoubleArrayMethod "sum" o = DoubleArraySumMethodInfo
    ResolveDoubleArrayMethod "take" o = Arrow.Array.ArrayTakeMethodInfo
    ResolveDoubleArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDoubleArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveDoubleArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveDoubleArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDoubleArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDoubleArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveDoubleArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDoubleArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveDoubleArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveDoubleArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveDoubleArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveDoubleArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDoubleArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDoubleArrayMethod "getValue" o = DoubleArrayGetValueMethodInfo
    ResolveDoubleArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveDoubleArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveDoubleArrayMethod "getValues" o = DoubleArrayGetValuesMethodInfo
    ResolveDoubleArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDoubleArrayMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveDoubleArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDoubleArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDoubleArrayMethod t DoubleArray, O.MethodInfo info DoubleArray p) => OL.IsLabel t (DoubleArray -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList DoubleArray
type instance O.AttributeList DoubleArray = DoubleArrayAttributeList
type DoubleArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList DoubleArray = DoubleArraySignalList
type DoubleArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method DoubleArray::new
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
--               (TInterface Name { namespace = "Arrow" , name = "DoubleArray" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_double_array_new" garrow_double_array_new :: 
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr DoubleArray)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
doubleArrayNew ::
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
    -> m DoubleArray
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.DoubleArray.DoubleArray'.
doubleArrayNew length_ data_ nullBitmap nNulls = liftIO $ do
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_double_array_new length_ data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "doubleArrayNew" result
    result' <- (wrapObject DoubleArray) result
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method DoubleArray::compare
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "DoubleArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDoubleArray."
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
--           , argType = TBasicType TDouble
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

foreign import ccall "garrow_double_array_compare" garrow_double_array_compare :: 
    Ptr DoubleArray ->                      -- array : TInterface (Name {namespace = "Arrow", name = "DoubleArray"})
    CDouble ->                              -- value : TBasicType TDouble
    Ptr Arrow.CompareOptions.CompareOptions -> -- options : TInterface (Name {namespace = "Arrow", name = "CompareOptions"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.BooleanArray.BooleanArray)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
doubleArrayCompare ::
    (B.CallStack.HasCallStack, MonadIO m, IsDoubleArray a, Arrow.CompareOptions.IsCompareOptions b) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.DoubleArray.DoubleArray'.
    -> Double
    -- ^ /@value@/: The value to compare.
    -> b
    -- ^ /@options@/: A t'GI.Arrow.Objects.CompareOptions.CompareOptions'.
    -> m (Maybe Arrow.BooleanArray.BooleanArray)
    -- ^ __Returns:__ The t'GI.Arrow.Objects.BooleanArray.BooleanArray' as
    --   the result compared a numeric array with a scalar on success,
    --   'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
doubleArrayCompare array value options = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    let value' = realToFrac value
    options' <- unsafeManagedPtrCastPtr options
    onException (do
        result <- propagateGError $ garrow_double_array_compare array' value' options'
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
data DoubleArrayCompareMethodInfo
instance (signature ~ (Double -> b -> m (Maybe Arrow.BooleanArray.BooleanArray)), MonadIO m, IsDoubleArray a, Arrow.CompareOptions.IsCompareOptions b) => O.MethodInfo DoubleArrayCompareMethodInfo a signature where
    overloadedMethod = doubleArrayCompare

#endif

-- method DoubleArray::get_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "DoubleArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDoubleArray."
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
-- returnType: Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_double_array_get_value" garrow_double_array_get_value :: 
    Ptr DoubleArray ->                      -- array : TInterface (Name {namespace = "Arrow", name = "DoubleArray"})
    Int64 ->                                -- i : TBasicType TInt64
    IO CDouble

-- | /No description available in the introspection data./
doubleArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsDoubleArray a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.DoubleArray.DoubleArray'.
    -> Int64
    -- ^ /@i@/: The index of the target value.
    -> m Double
    -- ^ __Returns:__ The i-th value.
doubleArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_double_array_get_value array' i
    let result' = realToFrac result
    touchManagedPtr array
    return result'

#if defined(ENABLE_OVERLOADING)
data DoubleArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Double), MonadIO m, IsDoubleArray a) => O.MethodInfo DoubleArrayGetValueMethodInfo a signature where
    overloadedMethod = doubleArrayGetValue

#endif

-- method DoubleArray::get_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "DoubleArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDoubleArray."
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
-- returnType: Just (TCArray False (-1) 1 (TBasicType TDouble))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_double_array_get_values" garrow_double_array_get_values :: 
    Ptr DoubleArray ->                      -- array : TInterface (Name {namespace = "Arrow", name = "DoubleArray"})
    Ptr Int64 ->                            -- length : TBasicType TInt64
    IO (Ptr CDouble)

-- | /No description available in the introspection data./
doubleArrayGetValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsDoubleArray a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.DoubleArray.DoubleArray'.
    -> m [Double]
    -- ^ __Returns:__ The raw values.
doubleArrayGetValues array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    length_ <- allocMem :: IO (Ptr Int64)
    result <- garrow_double_array_get_values array' length_
    length_' <- peek length_
    checkUnexpectedReturnNULL "doubleArrayGetValues" result
    result' <- (unpackMapStorableArrayWithLength realToFrac length_') result
    touchManagedPtr array
    freeMem length_
    return result'

#if defined(ENABLE_OVERLOADING)
data DoubleArrayGetValuesMethodInfo
instance (signature ~ (m [Double]), MonadIO m, IsDoubleArray a) => O.MethodInfo DoubleArrayGetValuesMethodInfo a signature where
    overloadedMethod = doubleArrayGetValues

#endif

-- method DoubleArray::sum
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "DoubleArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDoubleArray."
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
-- returnType: Just (TBasicType TDouble)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_double_array_sum" garrow_double_array_sum :: 
    Ptr DoubleArray ->                      -- array : TInterface (Name {namespace = "Arrow", name = "DoubleArray"})
    Ptr (Ptr GError) ->                     -- error
    IO CDouble

-- | /No description available in the introspection data./
-- 
-- /Since: 0.13.0/
doubleArraySum ::
    (B.CallStack.HasCallStack, MonadIO m, IsDoubleArray a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.DoubleArray.DoubleArray'.
    -> m Double
    -- ^ __Returns:__ The value of the computed sum on success,
    --   If an error is occurred, the returned value is untrustful value. /(Can throw 'Data.GI.Base.GError.GError')/
doubleArraySum array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    onException (do
        result <- propagateGError $ garrow_double_array_sum array'
        let result' = realToFrac result
        touchManagedPtr array
        return result'
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data DoubleArraySumMethodInfo
instance (signature ~ (m Double), MonadIO m, IsDoubleArray a) => O.MethodInfo DoubleArraySumMethodInfo a signature where
    overloadedMethod = doubleArraySum

#endif


