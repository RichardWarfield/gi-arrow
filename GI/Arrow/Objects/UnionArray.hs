{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.UnionArray
    ( 

-- * Exported types
    UnionArray(..)                          ,
    IsUnionArray                            ,
    toUnionArray                            ,
    noUnionArray                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveUnionArrayMethod                 ,
#endif


-- ** getField #method:getField#

#if defined(ENABLE_OVERLOADING)
    UnionArrayGetFieldMethodInfo            ,
#endif
    unionArrayGetField                      ,




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
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype UnionArray = UnionArray (ManagedPtr UnionArray)
    deriving (Eq)
foreign import ccall "garrow_union_array_get_type"
    c_garrow_union_array_get_type :: IO GType

instance GObject UnionArray where
    gobjectType = c_garrow_union_array_get_type
    

-- | Convert 'UnionArray' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue UnionArray where
    toGValue o = do
        gtype <- c_garrow_union_array_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr UnionArray)
        B.ManagedPtr.newObject UnionArray ptr
        
    

-- | Type class for types which can be safely cast to `UnionArray`, for instance with `toUnionArray`.
class (GObject o, O.IsDescendantOf UnionArray o) => IsUnionArray o
instance (GObject o, O.IsDescendantOf UnionArray o) => IsUnionArray o

instance O.HasParentTypes UnionArray
type instance O.ParentTypes UnionArray = '[Arrow.Array.Array, GObject.Object.Object]

-- | Cast to `UnionArray`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toUnionArray :: (MonadIO m, IsUnionArray o) => o -> m UnionArray
toUnionArray = liftIO . unsafeCastTo UnionArray

-- | A convenience alias for `Nothing` :: `Maybe` `UnionArray`.
noUnionArray :: Maybe UnionArray
noUnionArray = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveUnionArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveUnionArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUnionArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUnionArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveUnionArrayMethod "count" o = Arrow.Array.ArrayCountMethodInfo
    ResolveUnionArrayMethod "countValues" o = Arrow.Array.ArrayCountValuesMethodInfo
    ResolveUnionArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveUnionArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveUnionArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveUnionArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveUnionArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUnionArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUnionArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUnionArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUnionArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveUnionArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveUnionArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUnionArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUnionArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUnionArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUnionArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUnionArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveUnionArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUnionArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUnionArrayMethod "take" o = Arrow.Array.ArrayTakeMethodInfo
    ResolveUnionArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUnionArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveUnionArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveUnionArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUnionArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUnionArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUnionArrayMethod "getField" o = UnionArrayGetFieldMethodInfo
    ResolveUnionArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveUnionArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveUnionArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveUnionArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveUnionArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUnionArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUnionArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveUnionArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveUnionArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUnionArrayMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveUnionArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUnionArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUnionArrayMethod t UnionArray, O.MethodInfo info UnionArray p) => OL.IsLabel t (UnionArray -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList UnionArray
type instance O.AttributeList UnionArray = UnionArrayAttributeList
type UnionArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList UnionArray = UnionArraySignalList
type UnionArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method UnionArray::get_field
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "array"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "UnionArray" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUnionArray."
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
--           , argType = TBasicType TInt
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The index of the field in the union."
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

foreign import ccall "garrow_union_array_get_field" garrow_union_array_get_field :: 
    Ptr UnionArray ->                       -- array : TInterface (Name {namespace = "Arrow", name = "UnionArray"})
    Int32 ->                                -- i : TBasicType TInt
    IO (Ptr Arrow.Array.Array)

-- | /No description available in the introspection data./
unionArrayGetField ::
    (B.CallStack.HasCallStack, MonadIO m, IsUnionArray a) =>
    a
    -- ^ /@array@/: A t'GI.Arrow.Objects.UnionArray.UnionArray'.
    -> Int32
    -- ^ /@i@/: The index of the field in the union.
    -> m (Maybe Arrow.Array.Array)
    -- ^ __Returns:__ The i-th field values as a
    --   t'GI.Arrow.Objects.Array.Array' or 'P.Nothing' on out of range.
unionArrayGetField array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_union_array_get_field array' i
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (wrapObject Arrow.Array.Array) result'
        return result''
    touchManagedPtr array
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data UnionArrayGetFieldMethodInfo
instance (signature ~ (Int32 -> m (Maybe Arrow.Array.Array)), MonadIO m, IsUnionArray a) => O.MethodInfo UnionArrayGetFieldMethodInfo a signature where
    overloadedMethod = unionArrayGetField

#endif


