{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.NullArray
    ( 

-- * Exported types
    NullArray(..)                           ,
    IsNullArray                             ,
    toNullArray                             ,
    noNullArray                             ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveNullArrayMethod                  ,
#endif


-- ** new #method:new#

    nullArrayNew                            ,




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
newtype NullArray = NullArray (ManagedPtr NullArray)
    deriving (Eq)
foreign import ccall "garrow_null_array_get_type"
    c_garrow_null_array_get_type :: IO GType

instance GObject NullArray where
    gobjectType = c_garrow_null_array_get_type
    

-- | Convert 'NullArray' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue NullArray where
    toGValue o = do
        gtype <- c_garrow_null_array_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr NullArray)
        B.ManagedPtr.newObject NullArray ptr
        
    

-- | Type class for types which can be safely cast to `NullArray`, for instance with `toNullArray`.
class (GObject o, O.IsDescendantOf NullArray o) => IsNullArray o
instance (GObject o, O.IsDescendantOf NullArray o) => IsNullArray o

instance O.HasParentTypes NullArray
type instance O.ParentTypes NullArray = '[Arrow.Array.Array, GObject.Object.Object]

-- | Cast to `NullArray`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toNullArray :: (MonadIO m, IsNullArray o) => o -> m NullArray
toNullArray = liftIO . unsafeCastTo NullArray

-- | A convenience alias for `Nothing` :: `Maybe` `NullArray`.
noNullArray :: Maybe NullArray
noNullArray = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveNullArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveNullArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveNullArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveNullArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveNullArrayMethod "count" o = Arrow.Array.ArrayCountMethodInfo
    ResolveNullArrayMethod "countValues" o = Arrow.Array.ArrayCountValuesMethodInfo
    ResolveNullArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveNullArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveNullArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveNullArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveNullArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveNullArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveNullArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveNullArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveNullArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveNullArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveNullArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveNullArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveNullArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveNullArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveNullArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveNullArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveNullArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveNullArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveNullArrayMethod "take" o = Arrow.Array.ArrayTakeMethodInfo
    ResolveNullArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveNullArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveNullArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveNullArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveNullArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveNullArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveNullArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveNullArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveNullArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveNullArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveNullArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveNullArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveNullArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveNullArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveNullArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveNullArrayMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveNullArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveNullArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveNullArrayMethod t NullArray, O.MethodInfo info NullArray p) => OL.IsLabel t (NullArray -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList NullArray
type instance O.AttributeList NullArray = NullArrayAttributeList
type NullArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList NullArray = NullArraySignalList
type NullArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method NullArray::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "length"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "An array length." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "NullArray" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_null_array_new" garrow_null_array_new :: 
    Int64 ->                                -- length : TBasicType TInt64
    IO (Ptr NullArray)

-- | /No description available in the introspection data./
nullArrayNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Int64
    -- ^ /@length@/: An array length.
    -> m NullArray
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.NullArray.NullArray'.
nullArrayNew length_ = liftIO $ do
    result <- garrow_null_array_new length_
    checkUnexpectedReturnNULL "nullArrayNew" result
    result' <- (wrapObject NullArray) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif


