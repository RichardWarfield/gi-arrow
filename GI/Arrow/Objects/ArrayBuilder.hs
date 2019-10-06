{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.ArrayBuilder
    ( 

-- * Exported types
    ArrayBuilder(..)                        ,
    IsArrayBuilder                          ,
    toArrayBuilder                          ,
    noArrayBuilder                          ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveArrayBuilderMethod               ,
#endif


-- ** finish #method:finish#

#if defined(ENABLE_OVERLOADING)
    ArrayBuilderFinishMethodInfo            ,
#endif
    arrayBuilderFinish                      ,


-- ** getValueDataType #method:getValueDataType#

#if defined(ENABLE_OVERLOADING)
    ArrayBuilderGetValueDataTypeMethodInfo  ,
#endif
    arrayBuilderGetValueDataType            ,


-- ** getValueType #method:getValueType#

#if defined(ENABLE_OVERLOADING)
    ArrayBuilderGetValueTypeMethodInfo      ,
#endif
    arrayBuilderGetValueType                ,




 -- * Properties
-- ** arrayBuilder #attr:arrayBuilder#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    ArrayBuilderArrayBuilderPropertyInfo    ,
#endif
#if defined(ENABLE_OVERLOADING)
    arrayBuilderArrayBuilder                ,
#endif
    constructArrayBuilderArrayBuilder       ,




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

import {-# SOURCE #-} qualified GI.Arrow.Enums as Arrow.Enums
import {-# SOURCE #-} qualified GI.Arrow.Objects.Array as Arrow.Array
import {-# SOURCE #-} qualified GI.Arrow.Objects.DataType as Arrow.DataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype ArrayBuilder = ArrayBuilder (ManagedPtr ArrayBuilder)
    deriving (Eq)
foreign import ccall "garrow_array_builder_get_type"
    c_garrow_array_builder_get_type :: IO GType

instance GObject ArrayBuilder where
    gobjectType = c_garrow_array_builder_get_type
    

-- | Convert 'ArrayBuilder' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue ArrayBuilder where
    toGValue o = do
        gtype <- c_garrow_array_builder_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr ArrayBuilder)
        B.ManagedPtr.newObject ArrayBuilder ptr
        
    

-- | Type class for types which can be safely cast to `ArrayBuilder`, for instance with `toArrayBuilder`.
class (GObject o, O.IsDescendantOf ArrayBuilder o) => IsArrayBuilder o
instance (GObject o, O.IsDescendantOf ArrayBuilder o) => IsArrayBuilder o

instance O.HasParentTypes ArrayBuilder
type instance O.ParentTypes ArrayBuilder = '[GObject.Object.Object]

-- | Cast to `ArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toArrayBuilder :: (MonadIO m, IsArrayBuilder o) => o -> m ArrayBuilder
toArrayBuilder = liftIO . unsafeCastTo ArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `ArrayBuilder`.
noArrayBuilder :: Maybe ArrayBuilder
noArrayBuilder = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveArrayBuilderMethod "finish" o = ArrayBuilderFinishMethodInfo
    ResolveArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveArrayBuilderMethod "getValueDataType" o = ArrayBuilderGetValueDataTypeMethodInfo
    ResolveArrayBuilderMethod "getValueType" o = ArrayBuilderGetValueTypeMethodInfo
    ResolveArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveArrayBuilderMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveArrayBuilderMethod t ArrayBuilder, O.MethodInfo info ArrayBuilder p) => OL.IsLabel t (ArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "array-builder"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a `GValueConstruct` with valid value for the “@array-builder@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructArrayBuilderArrayBuilder :: (IsArrayBuilder o, MIO.MonadIO m) => Ptr () -> m (GValueConstruct o)
constructArrayBuilderArrayBuilder val = MIO.liftIO $ B.Properties.constructObjectPropertyPtr "array-builder" val

#if defined(ENABLE_OVERLOADING)
data ArrayBuilderArrayBuilderPropertyInfo
instance AttrInfo ArrayBuilderArrayBuilderPropertyInfo where
    type AttrAllowedOps ArrayBuilderArrayBuilderPropertyInfo = '[ 'AttrConstruct]
    type AttrBaseTypeConstraint ArrayBuilderArrayBuilderPropertyInfo = IsArrayBuilder
    type AttrSetTypeConstraint ArrayBuilderArrayBuilderPropertyInfo = (~) (Ptr ())
    type AttrTransferTypeConstraint ArrayBuilderArrayBuilderPropertyInfo = (~) (Ptr ())
    type AttrTransferType ArrayBuilderArrayBuilderPropertyInfo = Ptr ()
    type AttrGetType ArrayBuilderArrayBuilderPropertyInfo = ()
    type AttrLabel ArrayBuilderArrayBuilderPropertyInfo = "array-builder"
    type AttrOrigin ArrayBuilderArrayBuilderPropertyInfo = ArrayBuilder
    attrGet = undefined
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructArrayBuilderArrayBuilder
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList ArrayBuilder
type instance O.AttributeList ArrayBuilder = ArrayBuilderAttributeList
type ArrayBuilderAttributeList = ('[ '("arrayBuilder", ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
arrayBuilderArrayBuilder :: AttrLabelProxy "arrayBuilder"
arrayBuilderArrayBuilder = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList ArrayBuilder = ArrayBuilderSignalList
type ArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method ArrayBuilder::finish
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "ArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowArrayBuilder."
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
-- throws : True
-- Skip return : False

foreign import ccall "garrow_array_builder_finish" garrow_array_builder_finish :: 
    Ptr ArrayBuilder ->                     -- builder : TInterface (Name {namespace = "Arrow", name = "ArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.Array.Array)

-- | /No description available in the introspection data./
arrayBuilderFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.ArrayBuilder.ArrayBuilder'.
    -> m Arrow.Array.Array
    -- ^ __Returns:__ The built t'GI.Arrow.Objects.Array.Array' on success,
    --   'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
arrayBuilderFinish builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        result <- propagateGError $ garrow_array_builder_finish builder'
        checkUnexpectedReturnNULL "arrayBuilderFinish" result
        result' <- (wrapObject Arrow.Array.Array) result
        touchManagedPtr builder
        return result'
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data ArrayBuilderFinishMethodInfo
instance (signature ~ (m Arrow.Array.Array), MonadIO m, IsArrayBuilder a) => O.MethodInfo ArrayBuilderFinishMethodInfo a signature where
    overloadedMethod = arrayBuilderFinish

#endif

-- method ArrayBuilder::get_value_data_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "ArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowArrayBuilder."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "DataType" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_array_builder_get_value_data_type" garrow_array_builder_get_value_data_type :: 
    Ptr ArrayBuilder ->                     -- builder : TInterface (Name {namespace = "Arrow", name = "ArrayBuilder"})
    IO (Ptr Arrow.DataType.DataType)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.9.0/
arrayBuilderGetValueDataType ::
    (B.CallStack.HasCallStack, MonadIO m, IsArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.ArrayBuilder.ArrayBuilder'.
    -> m Arrow.DataType.DataType
    -- ^ __Returns:__ The t'GI.Arrow.Objects.DataType.DataType' of the value of
    --   the array builder.
arrayBuilderGetValueDataType builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    result <- garrow_array_builder_get_value_data_type builder'
    checkUnexpectedReturnNULL "arrayBuilderGetValueDataType" result
    result' <- (wrapObject Arrow.DataType.DataType) result
    touchManagedPtr builder
    return result'

#if defined(ENABLE_OVERLOADING)
data ArrayBuilderGetValueDataTypeMethodInfo
instance (signature ~ (m Arrow.DataType.DataType), MonadIO m, IsArrayBuilder a) => O.MethodInfo ArrayBuilderGetValueDataTypeMethodInfo a signature where
    overloadedMethod = arrayBuilderGetValueDataType

#endif

-- method ArrayBuilder::get_value_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "ArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowArrayBuilder."
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
-- returnType: Just (TInterface Name { namespace = "Arrow" , name = "Type" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_array_builder_get_value_type" garrow_array_builder_get_value_type :: 
    Ptr ArrayBuilder ->                     -- builder : TInterface (Name {namespace = "Arrow", name = "ArrayBuilder"})
    IO CUInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.9.0/
arrayBuilderGetValueType ::
    (B.CallStack.HasCallStack, MonadIO m, IsArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.ArrayBuilder.ArrayBuilder'.
    -> m Arrow.Enums.Type
    -- ^ __Returns:__ The t'GI.Arrow.Enums.Type' of the value of the array builder.
arrayBuilderGetValueType builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    result <- garrow_array_builder_get_value_type builder'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr builder
    return result'

#if defined(ENABLE_OVERLOADING)
data ArrayBuilderGetValueTypeMethodInfo
instance (signature ~ (m Arrow.Enums.Type), MonadIO m, IsArrayBuilder a) => O.MethodInfo ArrayBuilderGetValueTypeMethodInfo a signature where
    overloadedMethod = arrayBuilderGetValueType

#endif


