{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.UInt16Array
    ( 

-- * Exported types
    UInt16Array(..)                         ,
    IsUInt16Array                           ,
    toUInt16Array                           ,
    noUInt16Array                           ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveUInt16ArrayMethod                ,
#endif


-- ** compare #method:compare#

#if defined(ENABLE_OVERLOADING)
    UInt16ArrayCompareMethodInfo            ,
#endif
    uInt16ArrayCompare                      ,


-- ** getValue #method:getValue#

#if defined(ENABLE_OVERLOADING)
    UInt16ArrayGetValueMethodInfo           ,
#endif
    uInt16ArrayGetValue                     ,


-- ** getValues #method:getValues#

#if defined(ENABLE_OVERLOADING)
    UInt16ArrayGetValuesMethodInfo          ,
#endif
    uInt16ArrayGetValues                    ,


-- ** new #method:new#

    uInt16ArrayNew                          ,


-- ** sum #method:sum#

#if defined(ENABLE_OVERLOADING)
    UInt16ArraySumMethodInfo                ,
#endif
    uInt16ArraySum                          ,




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
newtype UInt16Array = UInt16Array (ManagedPtr UInt16Array)
    deriving (Eq)
foreign import ccall "garrow_uint16_array_get_type"
    c_garrow_uint16_array_get_type :: IO GType

instance GObject UInt16Array where
    gobjectType = c_garrow_uint16_array_get_type
    

-- | Convert 'UInt16Array' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue UInt16Array where
    toGValue o = do
        gtype <- c_garrow_uint16_array_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr UInt16Array)
        B.ManagedPtr.newObject UInt16Array ptr
        
    

-- | Type class for types which can be safely cast to `UInt16Array`, for instance with `toUInt16Array`.
class (GObject o, O.IsDescendantOf UInt16Array o) => IsUInt16Array o
instance (GObject o, O.IsDescendantOf UInt16Array o) => IsUInt16Array o

instance O.HasParentTypes UInt16Array
type instance O.ParentTypes UInt16Array = '[Arrow.NumericArray.NumericArray, Arrow.PrimitiveArray.PrimitiveArray, Arrow.Array.Array, GObject.Object.Object]

-- | Cast to `UInt16Array`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toUInt16Array :: (MonadIO m, IsUInt16Array o) => o -> m UInt16Array
toUInt16Array = liftIO . unsafeCastTo UInt16Array

-- | A convenience alias for `Nothing` :: `Maybe` `UInt16Array`.
noUInt16Array :: Maybe UInt16Array
noUInt16Array = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveUInt16ArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveUInt16ArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUInt16ArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUInt16ArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveUInt16ArrayMethod "compare" o = UInt16ArrayCompareMethodInfo
    ResolveUInt16ArrayMethod "count" o = Arrow.Array.ArrayCountMethodInfo
    ResolveUInt16ArrayMethod "countValues" o = Arrow.Array.ArrayCountValuesMethodInfo
    ResolveUInt16ArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveUInt16ArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveUInt16ArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveUInt16ArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveUInt16ArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUInt16ArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUInt16ArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUInt16ArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUInt16ArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveUInt16ArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveUInt16ArrayMethod "mean" o = Arrow.NumericArray.NumericArrayMeanMethodInfo
    ResolveUInt16ArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUInt16ArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUInt16ArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUInt16ArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUInt16ArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUInt16ArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveUInt16ArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUInt16ArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUInt16ArrayMethod "sum" o = UInt16ArraySumMethodInfo
    ResolveUInt16ArrayMethod "take" o = Arrow.Array.ArrayTakeMethodInfo
    ResolveUInt16ArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUInt16ArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveUInt16ArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveUInt16ArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUInt16ArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUInt16ArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveUInt16ArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUInt16ArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveUInt16ArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveUInt16ArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveUInt16ArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveUInt16ArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUInt16ArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUInt16ArrayMethod "getValue" o = UInt16ArrayGetValueMethodInfo
    ResolveUInt16ArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveUInt16ArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveUInt16ArrayMethod "getValues" o = UInt16ArrayGetValuesMethodInfo
    ResolveUInt16ArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUInt16ArrayMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveUInt16ArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUInt16ArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUInt16ArrayMethod t UInt16Array, O.MethodInfo info UInt16Array p) => OL.IsLabel t (UInt16Array -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList UInt16Array
type instance O.AttributeList UInt16Array = UInt16ArrayAttributeList
type UInt16ArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList UInt16Array = UInt16ArraySignalList
type UInt16ArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method UInt16Array::new
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
--               (TInterface Name { namespace = "Arrow" , name = "UInt16Array" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint16_array_new" garrow_uint16_array_new :: 
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr UInt16Array)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.4.0/
uInt16ArrayNew ::
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
    -> m UInt16Array
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.UInt16Array.UInt16Array'.
uInt16ArrayNew length_ data_ nullBitmap nNulls = liftIO $ do
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_uint16_array_new length_ data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "uInt16ArrayNew" result
    result' <- (wrapObject UInt16Array) result
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method UInt16Array::compare
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UInt16Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt16Array."
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
--           , argType = TBasicType TUInt16
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

foreign import ccall "garrow_uint16_array_compare" garrow_uint16_array_compare :: 
    Ptr UInt16Array ->                      -- array : TInterface (Name {namespace = "Arrow", name = "UInt16Array"})
    Word16 ->                               -- value : TBasicType TUInt16
    Ptr Arrow.CompareOptions.CompareOptions -> -- options : TInterface (Name {namespace = "Arrow", name = "CompareOptions"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.BooleanArray.BooleanArray)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
uInt16ArrayCompare ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt16Array a, Arrow.CompareOptions.IsCompareOptions b) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.UInt16Array.UInt16Array'.
    -> Word16
    -- ^ /@value@/: The value to compare.
    -> b
    -- ^ /@options@/: A t'GI.Arrow.Objects.CompareOptions.CompareOptions'.
    -> m (Maybe Arrow.BooleanArray.BooleanArray)
    -- ^ __Returns:__ The t'GI.Arrow.Objects.BooleanArray.BooleanArray' as
    --   the result compared a numeric array with a scalar on success,
    --   'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
uInt16ArrayCompare array value options = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    options' <- unsafeManagedPtrCastPtr options
    onException (do
        result <- propagateGError $ garrow_uint16_array_compare array' value options'
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
data UInt16ArrayCompareMethodInfo
instance (signature ~ (Word16 -> b -> m (Maybe Arrow.BooleanArray.BooleanArray)), MonadIO m, IsUInt16Array a, Arrow.CompareOptions.IsCompareOptions b) => O.MethodInfo UInt16ArrayCompareMethodInfo a signature where
    overloadedMethod = uInt16ArrayCompare

#endif

-- method UInt16Array::get_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UInt16Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt16Array."
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
-- returnType: Just (TBasicType TUInt16)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint16_array_get_value" garrow_uint16_array_get_value :: 
    Ptr UInt16Array ->                      -- array : TInterface (Name {namespace = "Arrow", name = "UInt16Array"})
    Int64 ->                                -- i : TBasicType TInt64
    IO Word16

-- | /No description available in the introspection data./
uInt16ArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt16Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.UInt16Array.UInt16Array'.
    -> Int64
    -- ^ /@i@/: The index of the target value.
    -> m Word16
    -- ^ __Returns:__ The i-th value.
uInt16ArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_uint16_array_get_value array' i
    touchManagedPtr array
    return result

#if defined(ENABLE_OVERLOADING)
data UInt16ArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Word16), MonadIO m, IsUInt16Array a) => O.MethodInfo UInt16ArrayGetValueMethodInfo a signature where
    overloadedMethod = uInt16ArrayGetValue

#endif

-- method UInt16Array::get_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UInt16Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt16Array."
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
-- returnType: Just (TCArray False (-1) 1 (TBasicType TUInt16))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint16_array_get_values" garrow_uint16_array_get_values :: 
    Ptr UInt16Array ->                      -- array : TInterface (Name {namespace = "Arrow", name = "UInt16Array"})
    Ptr Int64 ->                            -- length : TBasicType TInt64
    IO (Ptr Word16)

-- | /No description available in the introspection data./
uInt16ArrayGetValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt16Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.UInt16Array.UInt16Array'.
    -> m [Word16]
    -- ^ __Returns:__ The raw values.
uInt16ArrayGetValues array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    length_ <- allocMem :: IO (Ptr Int64)
    result <- garrow_uint16_array_get_values array' length_
    length_' <- peek length_
    checkUnexpectedReturnNULL "uInt16ArrayGetValues" result
    result' <- (unpackStorableArrayWithLength length_') result
    touchManagedPtr array
    freeMem length_
    return result'

#if defined(ENABLE_OVERLOADING)
data UInt16ArrayGetValuesMethodInfo
instance (signature ~ (m [Word16]), MonadIO m, IsUInt16Array a) => O.MethodInfo UInt16ArrayGetValuesMethodInfo a signature where
    overloadedMethod = uInt16ArrayGetValues

#endif

-- method UInt16Array::sum
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UInt16Array" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt16Array."
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
-- returnType: Just (TBasicType TUInt64)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_uint16_array_sum" garrow_uint16_array_sum :: 
    Ptr UInt16Array ->                      -- array : TInterface (Name {namespace = "Arrow", name = "UInt16Array"})
    Ptr (Ptr GError) ->                     -- error
    IO Word64

-- | /No description available in the introspection data./
-- 
-- /Since: 0.13.0/
uInt16ArraySum ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt16Array a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.UInt16Array.UInt16Array'.
    -> m Word64
    -- ^ __Returns:__ The value of the computed sum on success,
    --   If an error is occurred, the returned value is untrustful value. /(Can throw 'Data.GI.Base.GError.GError')/
uInt16ArraySum array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    onException (do
        result <- propagateGError $ garrow_uint16_array_sum array'
        touchManagedPtr array
        return result
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data UInt16ArraySumMethodInfo
instance (signature ~ (m Word64), MonadIO m, IsUInt16Array a) => O.MethodInfo UInt16ArraySumMethodInfo a signature where
    overloadedMethod = uInt16ArraySum

#endif


