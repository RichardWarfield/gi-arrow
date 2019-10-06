{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.NumericArray
    ( 

-- * Exported types
    NumericArray(..)                        ,
    IsNumericArray                          ,
    toNumericArray                          ,
    noNumericArray                          ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveNumericArrayMethod               ,
#endif


-- ** mean #method:mean#

#if defined(ENABLE_OVERLOADING)
    NumericArrayMeanMethodInfo              ,
#endif
    numericArrayMean                        ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.PrimitiveArray as Arrow.PrimitiveArray
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype NumericArray = NumericArray (ManagedPtr NumericArray)
    deriving (Eq)
foreign import ccall "garrow_numeric_array_get_type"
    c_garrow_numeric_array_get_type :: IO GType

instance GObject NumericArray where
    gobjectType = c_garrow_numeric_array_get_type
    

-- | Convert 'NumericArray' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue NumericArray where
    toGValue o = do
        gtype <- c_garrow_numeric_array_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr NumericArray)
        B.ManagedPtr.newObject NumericArray ptr
        
    

-- | Type class for types which can be safely cast to `NumericArray`, for instance with `toNumericArray`.
class (GObject o, O.IsDescendantOf NumericArray o) => IsNumericArray o
instance (GObject o, O.IsDescendantOf NumericArray o) => IsNumericArray o

instance O.HasParentTypes NumericArray
type instance O.ParentTypes NumericArray = '[Arrow.PrimitiveArray.PrimitiveArray, Arrow.Array.Array, GObject.Object.Object]

-- | Cast to `NumericArray`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toNumericArray :: (MonadIO m, IsNumericArray o) => o -> m NumericArray
toNumericArray = liftIO . unsafeCastTo NumericArray

-- | A convenience alias for `Nothing` :: `Maybe` `NumericArray`.
noNumericArray :: Maybe NumericArray
noNumericArray = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveNumericArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveNumericArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveNumericArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveNumericArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveNumericArrayMethod "count" o = Arrow.Array.ArrayCountMethodInfo
    ResolveNumericArrayMethod "countValues" o = Arrow.Array.ArrayCountValuesMethodInfo
    ResolveNumericArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveNumericArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveNumericArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveNumericArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveNumericArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveNumericArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveNumericArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveNumericArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveNumericArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveNumericArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveNumericArrayMethod "mean" o = NumericArrayMeanMethodInfo
    ResolveNumericArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveNumericArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveNumericArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveNumericArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveNumericArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveNumericArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveNumericArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveNumericArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveNumericArrayMethod "take" o = Arrow.Array.ArrayTakeMethodInfo
    ResolveNumericArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveNumericArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveNumericArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveNumericArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveNumericArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveNumericArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveNumericArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveNumericArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveNumericArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveNumericArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveNumericArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveNumericArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveNumericArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveNumericArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveNumericArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveNumericArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveNumericArrayMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveNumericArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveNumericArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveNumericArrayMethod t NumericArray, O.MethodInfo info NumericArray p) => OL.IsLabel t (NumericArray -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList NumericArray
type instance O.AttributeList NumericArray = NumericArrayAttributeList
type NumericArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList NumericArray = NumericArraySignalList
type NumericArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method NumericArray::mean
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "NumericArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowNumericArray."
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

foreign import ccall "garrow_numeric_array_mean" garrow_numeric_array_mean :: 
    Ptr NumericArray ->                     -- array : TInterface (Name {namespace = "Arrow", name = "NumericArray"})
    Ptr (Ptr GError) ->                     -- error
    IO CDouble

-- | /No description available in the introspection data./
-- 
-- /Since: 0.13.0/
numericArrayMean ::
    (B.CallStack.HasCallStack, MonadIO m, IsNumericArray a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.NumericArray.NumericArray'.
    -> m Double
    -- ^ __Returns:__ The value of the computed mean. /(Can throw 'Data.GI.Base.GError.GError')/
numericArrayMean array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    onException (do
        result <- propagateGError $ garrow_numeric_array_mean array'
        let result' = realToFrac result
        touchManagedPtr array
        return result'
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data NumericArrayMeanMethodInfo
instance (signature ~ (m Double), MonadIO m, IsNumericArray a) => O.MethodInfo NumericArrayMeanMethodInfo a signature where
    overloadedMethod = numericArrayMean

#endif


