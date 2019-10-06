{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.Decimal128ArrayBuilder
    ( 

-- * Exported types
    Decimal128ArrayBuilder(..)              ,
    IsDecimal128ArrayBuilder                ,
    toDecimal128ArrayBuilder                ,
    noDecimal128ArrayBuilder                ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveDecimal128ArrayBuilderMethod     ,
#endif


-- ** append #method:append#

#if defined(ENABLE_OVERLOADING)
    Decimal128ArrayBuilderAppendMethodInfo  ,
#endif
    decimal128ArrayBuilderAppend            ,


-- ** appendNull #method:appendNull#

#if defined(ENABLE_OVERLOADING)
    Decimal128ArrayBuilderAppendNullMethodInfo,
#endif
    decimal128ArrayBuilderAppendNull        ,


-- ** appendValue #method:appendValue#

#if defined(ENABLE_OVERLOADING)
    Decimal128ArrayBuilderAppendValueMethodInfo,
#endif
    decimal128ArrayBuilderAppendValue       ,


-- ** new #method:new#

    decimal128ArrayBuilderNew               ,




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

import {-# SOURCE #-} qualified GI.Arrow.Objects.ArrayBuilder as Arrow.ArrayBuilder
import {-# SOURCE #-} qualified GI.Arrow.Objects.Decimal128 as Arrow.Decimal128
import {-# SOURCE #-} qualified GI.Arrow.Objects.Decimal128DataType as Arrow.Decimal128DataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Decimal128ArrayBuilder = Decimal128ArrayBuilder (ManagedPtr Decimal128ArrayBuilder)
    deriving (Eq)
foreign import ccall "garrow_decimal128_array_builder_get_type"
    c_garrow_decimal128_array_builder_get_type :: IO GType

instance GObject Decimal128ArrayBuilder where
    gobjectType = c_garrow_decimal128_array_builder_get_type
    

-- | Convert 'Decimal128ArrayBuilder' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Decimal128ArrayBuilder where
    toGValue o = do
        gtype <- c_garrow_decimal128_array_builder_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Decimal128ArrayBuilder)
        B.ManagedPtr.newObject Decimal128ArrayBuilder ptr
        
    

-- | Type class for types which can be safely cast to `Decimal128ArrayBuilder`, for instance with `toDecimal128ArrayBuilder`.
class (GObject o, O.IsDescendantOf Decimal128ArrayBuilder o) => IsDecimal128ArrayBuilder o
instance (GObject o, O.IsDescendantOf Decimal128ArrayBuilder o) => IsDecimal128ArrayBuilder o

instance O.HasParentTypes Decimal128ArrayBuilder
type instance O.ParentTypes Decimal128ArrayBuilder = '[Arrow.ArrayBuilder.ArrayBuilder, GObject.Object.Object]

-- | Cast to `Decimal128ArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDecimal128ArrayBuilder :: (MonadIO m, IsDecimal128ArrayBuilder o) => o -> m Decimal128ArrayBuilder
toDecimal128ArrayBuilder = liftIO . unsafeCastTo Decimal128ArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `Decimal128ArrayBuilder`.
noDecimal128ArrayBuilder :: Maybe Decimal128ArrayBuilder
noDecimal128ArrayBuilder = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveDecimal128ArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveDecimal128ArrayBuilderMethod "append" o = Decimal128ArrayBuilderAppendMethodInfo
    ResolveDecimal128ArrayBuilderMethod "appendNull" o = Decimal128ArrayBuilderAppendNullMethodInfo
    ResolveDecimal128ArrayBuilderMethod "appendValue" o = Decimal128ArrayBuilderAppendValueMethodInfo
    ResolveDecimal128ArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDecimal128ArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDecimal128ArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveDecimal128ArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDecimal128ArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDecimal128ArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDecimal128ArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDecimal128ArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDecimal128ArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDecimal128ArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDecimal128ArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDecimal128ArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDecimal128ArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDecimal128ArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDecimal128ArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDecimal128ArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDecimal128ArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDecimal128ArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDecimal128ArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDecimal128ArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDecimal128ArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveDecimal128ArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveDecimal128ArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDecimal128ArrayBuilderMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveDecimal128ArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDecimal128ArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDecimal128ArrayBuilderMethod t Decimal128ArrayBuilder, O.MethodInfo info Decimal128ArrayBuilder p) => OL.IsLabel t (Decimal128ArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Decimal128ArrayBuilder
type instance O.AttributeList Decimal128ArrayBuilder = Decimal128ArrayBuilderAttributeList
type Decimal128ArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Decimal128ArrayBuilder = Decimal128ArrayBuilderSignalList
type Decimal128ArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Decimal128ArrayBuilder::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "data_type"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "Decimal128DataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "#GArrowDecimal128DataType for the decimal."
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
--               (TInterface
--                  Name { namespace = "Arrow" , name = "Decimal128ArrayBuilder" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_array_builder_new" garrow_decimal128_array_builder_new :: 
    Ptr Arrow.Decimal128DataType.Decimal128DataType -> -- data_type : TInterface (Name {namespace = "Arrow", name = "Decimal128DataType"})
    IO (Ptr Decimal128ArrayBuilder)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.10.0/
decimal128ArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Decimal128DataType.IsDecimal128DataType a) =>
    a
    -- ^ /@dataType@/: t'GI.Arrow.Objects.Decimal128DataType.Decimal128DataType' for the decimal.
    -> m Decimal128ArrayBuilder
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.Decimal128ArrayBuilder.Decimal128ArrayBuilder'.
decimal128ArrayBuilderNew dataType = liftIO $ do
    dataType' <- unsafeManagedPtrCastPtr dataType
    result <- garrow_decimal128_array_builder_new dataType'
    checkUnexpectedReturnNULL "decimal128ArrayBuilderNew" result
    result' <- (wrapObject Decimal128ArrayBuilder) result
    touchManagedPtr dataType
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Decimal128ArrayBuilder::append
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "Decimal128ArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128ArrayBuilder."
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
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A decimal value." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_decimal128_array_builder_append" garrow_decimal128_array_builder_append :: 
    Ptr Decimal128ArrayBuilder ->           -- builder : TInterface (Name {namespace = "Arrow", name = "Decimal128ArrayBuilder"})
    Ptr Arrow.Decimal128.Decimal128 ->      -- value : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{-# DEPRECATED decimal128ArrayBuilderAppend ["(Since version 0.12.0)","","  Use 'GI.Arrow.Objects.Decimal128ArrayBuilder.decimal128ArrayBuilderAppendValue' instead."] #-}
-- | /No description available in the introspection data./
-- 
-- /Since: 0.10.0/
decimal128ArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128ArrayBuilder a, Arrow.Decimal128.IsDecimal128 b) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.Decimal128ArrayBuilder.Decimal128ArrayBuilder'.
    -> b
    -- ^ /@value@/: A decimal value.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
decimal128ArrayBuilderAppend builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    value' <- unsafeManagedPtrCastPtr value
    onException (do
        _ <- propagateGError $ garrow_decimal128_array_builder_append builder' value'
        touchManagedPtr builder
        touchManagedPtr value
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data Decimal128ArrayBuilderAppendMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsDecimal128ArrayBuilder a, Arrow.Decimal128.IsDecimal128 b) => O.MethodInfo Decimal128ArrayBuilderAppendMethodInfo a signature where
    overloadedMethod = decimal128ArrayBuilderAppend

#endif

-- method Decimal128ArrayBuilder::append_null
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "Decimal128ArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128ArrayBuilder."
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
-- returnType: Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_decimal128_array_builder_append_null" garrow_decimal128_array_builder_append_null :: 
    Ptr Decimal128ArrayBuilder ->           -- builder : TInterface (Name {namespace = "Arrow", name = "Decimal128ArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
decimal128ArrayBuilderAppendNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128ArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.Decimal128ArrayBuilder.Decimal128ArrayBuilder'.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
decimal128ArrayBuilderAppendNull builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_decimal128_array_builder_append_null builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data Decimal128ArrayBuilderAppendNullMethodInfo
instance (signature ~ (m ()), MonadIO m, IsDecimal128ArrayBuilder a) => O.MethodInfo Decimal128ArrayBuilderAppendNullMethodInfo a signature where
    overloadedMethod = decimal128ArrayBuilderAppendNull

#endif

-- method Decimal128ArrayBuilder::append_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "Decimal128ArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128ArrayBuilder."
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
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A decimal value." , sinceVersion = Nothing }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: []
-- returnType: Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_decimal128_array_builder_append_value" garrow_decimal128_array_builder_append_value :: 
    Ptr Decimal128ArrayBuilder ->           -- builder : TInterface (Name {namespace = "Arrow", name = "Decimal128ArrayBuilder"})
    Ptr Arrow.Decimal128.Decimal128 ->      -- value : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
decimal128ArrayBuilderAppendValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128ArrayBuilder a, Arrow.Decimal128.IsDecimal128 b) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.Decimal128ArrayBuilder.Decimal128ArrayBuilder'.
    -> b
    -- ^ /@value@/: A decimal value.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
decimal128ArrayBuilderAppendValue builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    value' <- unsafeManagedPtrCastPtr value
    onException (do
        _ <- propagateGError $ garrow_decimal128_array_builder_append_value builder' value'
        touchManagedPtr builder
        touchManagedPtr value
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data Decimal128ArrayBuilderAppendValueMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsDecimal128ArrayBuilder a, Arrow.Decimal128.IsDecimal128 b) => O.MethodInfo Decimal128ArrayBuilderAppendValueMethodInfo a signature where
    overloadedMethod = decimal128ArrayBuilderAppendValue

#endif


