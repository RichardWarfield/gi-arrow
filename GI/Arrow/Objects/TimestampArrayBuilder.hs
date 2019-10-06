{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.TimestampArrayBuilder
    ( 

-- * Exported types
    TimestampArrayBuilder(..)               ,
    IsTimestampArrayBuilder                 ,
    toTimestampArrayBuilder                 ,
    noTimestampArrayBuilder                 ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveTimestampArrayBuilderMethod      ,
#endif


-- ** append #method:append#

#if defined(ENABLE_OVERLOADING)
    TimestampArrayBuilderAppendMethodInfo   ,
#endif
    timestampArrayBuilderAppend             ,


-- ** appendNull #method:appendNull#

#if defined(ENABLE_OVERLOADING)
    TimestampArrayBuilderAppendNullMethodInfo,
#endif
    timestampArrayBuilderAppendNull         ,


-- ** appendNulls #method:appendNulls#

#if defined(ENABLE_OVERLOADING)
    TimestampArrayBuilderAppendNullsMethodInfo,
#endif
    timestampArrayBuilderAppendNulls        ,


-- ** appendValue #method:appendValue#

#if defined(ENABLE_OVERLOADING)
    TimestampArrayBuilderAppendValueMethodInfo,
#endif
    timestampArrayBuilderAppendValue        ,


-- ** appendValues #method:appendValues#

#if defined(ENABLE_OVERLOADING)
    TimestampArrayBuilderAppendValuesMethodInfo,
#endif
    timestampArrayBuilderAppendValues       ,


-- ** new #method:new#

    timestampArrayBuilderNew                ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.TimestampDataType as Arrow.TimestampDataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype TimestampArrayBuilder = TimestampArrayBuilder (ManagedPtr TimestampArrayBuilder)
    deriving (Eq)
foreign import ccall "garrow_timestamp_array_builder_get_type"
    c_garrow_timestamp_array_builder_get_type :: IO GType

instance GObject TimestampArrayBuilder where
    gobjectType = c_garrow_timestamp_array_builder_get_type
    

-- | Convert 'TimestampArrayBuilder' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue TimestampArrayBuilder where
    toGValue o = do
        gtype <- c_garrow_timestamp_array_builder_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr TimestampArrayBuilder)
        B.ManagedPtr.newObject TimestampArrayBuilder ptr
        
    

-- | Type class for types which can be safely cast to `TimestampArrayBuilder`, for instance with `toTimestampArrayBuilder`.
class (GObject o, O.IsDescendantOf TimestampArrayBuilder o) => IsTimestampArrayBuilder o
instance (GObject o, O.IsDescendantOf TimestampArrayBuilder o) => IsTimestampArrayBuilder o

instance O.HasParentTypes TimestampArrayBuilder
type instance O.ParentTypes TimestampArrayBuilder = '[Arrow.ArrayBuilder.ArrayBuilder, GObject.Object.Object]

-- | Cast to `TimestampArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTimestampArrayBuilder :: (MonadIO m, IsTimestampArrayBuilder o) => o -> m TimestampArrayBuilder
toTimestampArrayBuilder = liftIO . unsafeCastTo TimestampArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `TimestampArrayBuilder`.
noTimestampArrayBuilder :: Maybe TimestampArrayBuilder
noTimestampArrayBuilder = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveTimestampArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveTimestampArrayBuilderMethod "append" o = TimestampArrayBuilderAppendMethodInfo
    ResolveTimestampArrayBuilderMethod "appendNull" o = TimestampArrayBuilderAppendNullMethodInfo
    ResolveTimestampArrayBuilderMethod "appendNulls" o = TimestampArrayBuilderAppendNullsMethodInfo
    ResolveTimestampArrayBuilderMethod "appendValue" o = TimestampArrayBuilderAppendValueMethodInfo
    ResolveTimestampArrayBuilderMethod "appendValues" o = TimestampArrayBuilderAppendValuesMethodInfo
    ResolveTimestampArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTimestampArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTimestampArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveTimestampArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTimestampArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTimestampArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTimestampArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTimestampArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTimestampArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTimestampArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTimestampArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTimestampArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTimestampArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTimestampArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTimestampArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTimestampArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTimestampArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTimestampArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTimestampArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTimestampArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTimestampArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveTimestampArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveTimestampArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTimestampArrayBuilderMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveTimestampArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTimestampArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTimestampArrayBuilderMethod t TimestampArrayBuilder, O.MethodInfo info TimestampArrayBuilder p) => OL.IsLabel t (TimestampArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList TimestampArrayBuilder
type instance O.AttributeList TimestampArrayBuilder = TimestampArrayBuilderAttributeList
type TimestampArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList TimestampArrayBuilder = TimestampArrayBuilderSignalList
type TimestampArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method TimestampArrayBuilder::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "data_type"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "TimestampDataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowTimestampDataType."
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
--                  Name { namespace = "Arrow" , name = "TimestampArrayBuilder" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_timestamp_array_builder_new" garrow_timestamp_array_builder_new :: 
    Ptr Arrow.TimestampDataType.TimestampDataType -> -- data_type : TInterface (Name {namespace = "Arrow", name = "TimestampDataType"})
    IO (Ptr TimestampArrayBuilder)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.7.0/
timestampArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.TimestampDataType.IsTimestampDataType a) =>
    a
    -- ^ /@dataType@/: A t'GI.Arrow.Objects.TimestampDataType.TimestampDataType'.
    -> m TimestampArrayBuilder
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.TimestampArrayBuilder.TimestampArrayBuilder'.
timestampArrayBuilderNew dataType = liftIO $ do
    dataType' <- unsafeManagedPtrCastPtr dataType
    result <- garrow_timestamp_array_builder_new dataType'
    checkUnexpectedReturnNULL "timestampArrayBuilderNew" result
    result' <- (wrapObject TimestampArrayBuilder) result
    touchManagedPtr dataType
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method TimestampArrayBuilder::append
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "TimestampArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowTimestampArrayBuilder."
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
--                 { rawDocText =
--                     Just
--                       "The number of milliseconds since UNIX epoch in signed 64bit integer."
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

foreign import ccall "garrow_timestamp_array_builder_append" garrow_timestamp_array_builder_append :: 
    Ptr TimestampArrayBuilder ->            -- builder : TInterface (Name {namespace = "Arrow", name = "TimestampArrayBuilder"})
    Int64 ->                                -- value : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{-# DEPRECATED timestampArrayBuilderAppend ["(Since version 0.12.0)","","  Use 'GI.Arrow.Objects.TimestampArrayBuilder.timestampArrayBuilderAppendValue' instead."] #-}
-- | /No description available in the introspection data./
-- 
-- /Since: 0.7.0/
timestampArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsTimestampArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.TimestampArrayBuilder.TimestampArrayBuilder'.
    -> Int64
    -- ^ /@value@/: The number of milliseconds since UNIX epoch in signed 64bit integer.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
timestampArrayBuilderAppend builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_timestamp_array_builder_append builder' value
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data TimestampArrayBuilderAppendMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsTimestampArrayBuilder a) => O.MethodInfo TimestampArrayBuilderAppendMethodInfo a signature where
    overloadedMethod = timestampArrayBuilderAppend

#endif

-- method TimestampArrayBuilder::append_null
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "TimestampArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowTimestampArrayBuilder."
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

foreign import ccall "garrow_timestamp_array_builder_append_null" garrow_timestamp_array_builder_append_null :: 
    Ptr TimestampArrayBuilder ->            -- builder : TInterface (Name {namespace = "Arrow", name = "TimestampArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.7.0/
timestampArrayBuilderAppendNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsTimestampArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.TimestampArrayBuilder.TimestampArrayBuilder'.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
timestampArrayBuilderAppendNull builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_timestamp_array_builder_append_null builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data TimestampArrayBuilderAppendNullMethodInfo
instance (signature ~ (m ()), MonadIO m, IsTimestampArrayBuilder a) => O.MethodInfo TimestampArrayBuilderAppendNullMethodInfo a signature where
    overloadedMethod = timestampArrayBuilderAppendNull

#endif

-- method TimestampArrayBuilder::append_nulls
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "TimestampArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowTimestampArrayBuilder."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The number of null values to be appended."
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

foreign import ccall "garrow_timestamp_array_builder_append_nulls" garrow_timestamp_array_builder_append_nulls :: 
    Ptr TimestampArrayBuilder ->            -- builder : TInterface (Name {namespace = "Arrow", name = "TimestampArrayBuilder"})
    Int64 ->                                -- n : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Append multiple nulls at once. It\'s more efficient than multiple
-- @append_null()@ calls.
-- 
-- /Since: 0.8.0/
timestampArrayBuilderAppendNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsTimestampArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.TimestampArrayBuilder.TimestampArrayBuilder'.
    -> Int64
    -- ^ /@n@/: The number of null values to be appended.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
timestampArrayBuilderAppendNulls builder n = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_timestamp_array_builder_append_nulls builder' n
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data TimestampArrayBuilderAppendNullsMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsTimestampArrayBuilder a) => O.MethodInfo TimestampArrayBuilderAppendNullsMethodInfo a signature where
    overloadedMethod = timestampArrayBuilderAppendNulls

#endif

-- method TimestampArrayBuilder::append_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "TimestampArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowTimestampArrayBuilder."
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
--                 { rawDocText =
--                     Just
--                       "The number of milliseconds since UNIX epoch in signed 64bit integer."
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

foreign import ccall "garrow_timestamp_array_builder_append_value" garrow_timestamp_array_builder_append_value :: 
    Ptr TimestampArrayBuilder ->            -- builder : TInterface (Name {namespace = "Arrow", name = "TimestampArrayBuilder"})
    Int64 ->                                -- value : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
timestampArrayBuilderAppendValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsTimestampArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.TimestampArrayBuilder.TimestampArrayBuilder'.
    -> Int64
    -- ^ /@value@/: The number of milliseconds since UNIX epoch in signed 64bit integer.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
timestampArrayBuilderAppendValue builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_timestamp_array_builder_append_value builder' value
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data TimestampArrayBuilderAppendValueMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsTimestampArrayBuilder a) => O.MethodInfo TimestampArrayBuilderAppendValueMethodInfo a signature where
    overloadedMethod = timestampArrayBuilderAppendValue

#endif

-- method TimestampArrayBuilder::append_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "TimestampArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowTimestampArrayBuilder."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "values"
--           , argType = TCArray False (-1) 2 (TBasicType TInt64)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "The array of\n  the number of milliseconds since UNIX epoch in signed 64bit integer."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "values_length"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The length of `values`."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "is_valids"
--           , argType = TCArray False (-1) 4 (TBasicType TBoolean)
--           , direction = DirectionIn
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "The array of\n  boolean that shows whether the Nth value is valid or not. If the\n  Nth `is_valids` is %TRUE, the Nth `values` is valid value. Otherwise\n  the Nth value is null value."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "is_valids_length"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The length of `is_valids`."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       ]
-- Lengths: [ Arg
--              { argCName = "is_valids_length"
--              , argType = TBasicType TInt64
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "The length of `is_valids`."
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          , Arg
--              { argCName = "values_length"
--              , argType = TBasicType TInt64
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "The length of `values`."
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_timestamp_array_builder_append_values" garrow_timestamp_array_builder_append_values :: 
    Ptr TimestampArrayBuilder ->            -- builder : TInterface (Name {namespace = "Arrow", name = "TimestampArrayBuilder"})
    Ptr Int64 ->                            -- values : TCArray False (-1) 2 (TBasicType TInt64)
    Int64 ->                                -- values_length : TBasicType TInt64
    Ptr CInt ->                             -- is_valids : TCArray False (-1) 4 (TBasicType TBoolean)
    Int64 ->                                -- is_valids_length : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Append multiple values at once. It\'s more efficient than multiple
-- @append()@ and @append_null()@ calls.
-- 
-- /Since: 0.8.0/
timestampArrayBuilderAppendValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsTimestampArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.TimestampArrayBuilder.TimestampArrayBuilder'.
    -> [Int64]
    -- ^ /@values@/: The array of
    --   the number of milliseconds since UNIX epoch in signed 64bit integer.
    -> Maybe ([Bool])
    -- ^ /@isValids@/: The array of
    --   boolean that shows whether the Nth value is valid or not. If the
    --   Nth @is_valids@ is 'P.True', the Nth @values@ is valid value. Otherwise
    --   the Nth value is null value.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
timestampArrayBuilderAppendValues builder values isValids = liftIO $ do
    let isValidsLength = case isValids of
            Nothing -> 0
            Just jIsValids -> fromIntegral $ length jIsValids
    let valuesLength = fromIntegral $ length values
    builder' <- unsafeManagedPtrCastPtr builder
    values' <- packStorableArray values
    maybeIsValids <- case isValids of
        Nothing -> return nullPtr
        Just jIsValids -> do
            jIsValids' <- (packMapStorableArray (fromIntegral . fromEnum)) jIsValids
            return jIsValids'
    onException (do
        _ <- propagateGError $ garrow_timestamp_array_builder_append_values builder' values' valuesLength maybeIsValids isValidsLength
        touchManagedPtr builder
        freeMem values'
        freeMem maybeIsValids
        return ()
     ) (do
        freeMem values'
        freeMem maybeIsValids
     )

#if defined(ENABLE_OVERLOADING)
data TimestampArrayBuilderAppendValuesMethodInfo
instance (signature ~ ([Int64] -> Maybe ([Bool]) -> m ()), MonadIO m, IsTimestampArrayBuilder a) => O.MethodInfo TimestampArrayBuilderAppendValuesMethodInfo a signature where
    overloadedMethod = timestampArrayBuilderAppendValues

#endif


