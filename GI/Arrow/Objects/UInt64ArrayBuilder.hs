{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.UInt64ArrayBuilder
    ( 

-- * Exported types
    UInt64ArrayBuilder(..)                  ,
    IsUInt64ArrayBuilder                    ,
    toUInt64ArrayBuilder                    ,
    noUInt64ArrayBuilder                    ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveUInt64ArrayBuilderMethod         ,
#endif


-- ** append #method:append#

#if defined(ENABLE_OVERLOADING)
    UInt64ArrayBuilderAppendMethodInfo      ,
#endif
    uInt64ArrayBuilderAppend                ,


-- ** appendNull #method:appendNull#

#if defined(ENABLE_OVERLOADING)
    UInt64ArrayBuilderAppendNullMethodInfo  ,
#endif
    uInt64ArrayBuilderAppendNull            ,


-- ** appendNulls #method:appendNulls#

#if defined(ENABLE_OVERLOADING)
    UInt64ArrayBuilderAppendNullsMethodInfo ,
#endif
    uInt64ArrayBuilderAppendNulls           ,


-- ** appendValue #method:appendValue#

#if defined(ENABLE_OVERLOADING)
    UInt64ArrayBuilderAppendValueMethodInfo ,
#endif
    uInt64ArrayBuilderAppendValue           ,


-- ** appendValues #method:appendValues#

#if defined(ENABLE_OVERLOADING)
    UInt64ArrayBuilderAppendValuesMethodInfo,
#endif
    uInt64ArrayBuilderAppendValues          ,


-- ** new #method:new#

    uInt64ArrayBuilderNew                   ,




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
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype UInt64ArrayBuilder = UInt64ArrayBuilder (ManagedPtr UInt64ArrayBuilder)
    deriving (Eq)
foreign import ccall "garrow_uint64_array_builder_get_type"
    c_garrow_uint64_array_builder_get_type :: IO GType

instance GObject UInt64ArrayBuilder where
    gobjectType = c_garrow_uint64_array_builder_get_type
    

-- | Convert 'UInt64ArrayBuilder' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue UInt64ArrayBuilder where
    toGValue o = do
        gtype <- c_garrow_uint64_array_builder_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr UInt64ArrayBuilder)
        B.ManagedPtr.newObject UInt64ArrayBuilder ptr
        
    

-- | Type class for types which can be safely cast to `UInt64ArrayBuilder`, for instance with `toUInt64ArrayBuilder`.
class (GObject o, O.IsDescendantOf UInt64ArrayBuilder o) => IsUInt64ArrayBuilder o
instance (GObject o, O.IsDescendantOf UInt64ArrayBuilder o) => IsUInt64ArrayBuilder o

instance O.HasParentTypes UInt64ArrayBuilder
type instance O.ParentTypes UInt64ArrayBuilder = '[Arrow.ArrayBuilder.ArrayBuilder, GObject.Object.Object]

-- | Cast to `UInt64ArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toUInt64ArrayBuilder :: (MonadIO m, IsUInt64ArrayBuilder o) => o -> m UInt64ArrayBuilder
toUInt64ArrayBuilder = liftIO . unsafeCastTo UInt64ArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `UInt64ArrayBuilder`.
noUInt64ArrayBuilder :: Maybe UInt64ArrayBuilder
noUInt64ArrayBuilder = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveUInt64ArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveUInt64ArrayBuilderMethod "append" o = UInt64ArrayBuilderAppendMethodInfo
    ResolveUInt64ArrayBuilderMethod "appendNull" o = UInt64ArrayBuilderAppendNullMethodInfo
    ResolveUInt64ArrayBuilderMethod "appendNulls" o = UInt64ArrayBuilderAppendNullsMethodInfo
    ResolveUInt64ArrayBuilderMethod "appendValue" o = UInt64ArrayBuilderAppendValueMethodInfo
    ResolveUInt64ArrayBuilderMethod "appendValues" o = UInt64ArrayBuilderAppendValuesMethodInfo
    ResolveUInt64ArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUInt64ArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUInt64ArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveUInt64ArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUInt64ArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUInt64ArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUInt64ArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUInt64ArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUInt64ArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUInt64ArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUInt64ArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUInt64ArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUInt64ArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUInt64ArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUInt64ArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUInt64ArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUInt64ArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUInt64ArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUInt64ArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUInt64ArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUInt64ArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveUInt64ArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveUInt64ArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUInt64ArrayBuilderMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveUInt64ArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUInt64ArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUInt64ArrayBuilderMethod t UInt64ArrayBuilder, O.MethodInfo info UInt64ArrayBuilder p) => OL.IsLabel t (UInt64ArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList UInt64ArrayBuilder
type instance O.AttributeList UInt64ArrayBuilder = UInt64ArrayBuilderAttributeList
type UInt64ArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList UInt64ArrayBuilder = UInt64ArrayBuilderSignalList
type UInt64ArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method UInt64ArrayBuilder::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Arrow" , name = "UInt64ArrayBuilder" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint64_array_builder_new" garrow_uint64_array_builder_new :: 
    IO (Ptr UInt64ArrayBuilder)

-- | /No description available in the introspection data./
uInt64ArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m UInt64ArrayBuilder
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.UInt64ArrayBuilder.UInt64ArrayBuilder'.
uInt64ArrayBuilderNew  = liftIO $ do
    result <- garrow_uint64_array_builder_new
    checkUnexpectedReturnNULL "uInt64ArrayBuilderNew" result
    result' <- (wrapObject UInt64ArrayBuilder) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method UInt64ArrayBuilder::append
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "UInt64ArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt64ArrayBuilder."
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
--           , argType = TBasicType TUInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "An uint64 value." , sinceVersion = Nothing }
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

foreign import ccall "garrow_uint64_array_builder_append" garrow_uint64_array_builder_append :: 
    Ptr UInt64ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "UInt64ArrayBuilder"})
    Word64 ->                               -- value : TBasicType TUInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{-# DEPRECATED uInt64ArrayBuilderAppend ["(Since version 0.12.0)","","  Use 'GI.Arrow.Objects.UInt64ArrayBuilder.uInt64ArrayBuilderAppendValue' instead."] #-}
-- | /No description available in the introspection data./
uInt64ArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt64ArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.UInt64ArrayBuilder.UInt64ArrayBuilder'.
    -> Word64
    -- ^ /@value@/: An uint64 value.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
uInt64ArrayBuilderAppend builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_uint64_array_builder_append builder' value
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data UInt64ArrayBuilderAppendMethodInfo
instance (signature ~ (Word64 -> m ()), MonadIO m, IsUInt64ArrayBuilder a) => O.MethodInfo UInt64ArrayBuilderAppendMethodInfo a signature where
    overloadedMethod = uInt64ArrayBuilderAppend

#endif

-- method UInt64ArrayBuilder::append_null
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "UInt64ArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt64ArrayBuilder."
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

foreign import ccall "garrow_uint64_array_builder_append_null" garrow_uint64_array_builder_append_null :: 
    Ptr UInt64ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "UInt64ArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
uInt64ArrayBuilderAppendNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt64ArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.UInt64ArrayBuilder.UInt64ArrayBuilder'.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
uInt64ArrayBuilderAppendNull builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_uint64_array_builder_append_null builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data UInt64ArrayBuilderAppendNullMethodInfo
instance (signature ~ (m ()), MonadIO m, IsUInt64ArrayBuilder a) => O.MethodInfo UInt64ArrayBuilderAppendNullMethodInfo a signature where
    overloadedMethod = uInt64ArrayBuilderAppendNull

#endif

-- method UInt64ArrayBuilder::append_nulls
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "UInt64ArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt64ArrayBuilder."
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

foreign import ccall "garrow_uint64_array_builder_append_nulls" garrow_uint64_array_builder_append_nulls :: 
    Ptr UInt64ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "UInt64ArrayBuilder"})
    Int64 ->                                -- n : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Append multiple nulls at once. It\'s more efficient than multiple
-- @append_null()@ calls.
-- 
-- /Since: 0.8.0/
uInt64ArrayBuilderAppendNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt64ArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.UInt64ArrayBuilder.UInt64ArrayBuilder'.
    -> Int64
    -- ^ /@n@/: The number of null values to be appended.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
uInt64ArrayBuilderAppendNulls builder n = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_uint64_array_builder_append_nulls builder' n
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data UInt64ArrayBuilderAppendNullsMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsUInt64ArrayBuilder a) => O.MethodInfo UInt64ArrayBuilderAppendNullsMethodInfo a signature where
    overloadedMethod = uInt64ArrayBuilderAppendNulls

#endif

-- method UInt64ArrayBuilder::append_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "UInt64ArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt64ArrayBuilder."
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
--           , argType = TBasicType TUInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "An uint64 value." , sinceVersion = Nothing }
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

foreign import ccall "garrow_uint64_array_builder_append_value" garrow_uint64_array_builder_append_value :: 
    Ptr UInt64ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "UInt64ArrayBuilder"})
    Word64 ->                               -- value : TBasicType TUInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
uInt64ArrayBuilderAppendValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt64ArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.UInt64ArrayBuilder.UInt64ArrayBuilder'.
    -> Word64
    -- ^ /@value@/: An uint64 value.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
uInt64ArrayBuilderAppendValue builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_uint64_array_builder_append_value builder' value
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data UInt64ArrayBuilderAppendValueMethodInfo
instance (signature ~ (Word64 -> m ()), MonadIO m, IsUInt64ArrayBuilder a) => O.MethodInfo UInt64ArrayBuilderAppendValueMethodInfo a signature where
    overloadedMethod = uInt64ArrayBuilderAppendValue

#endif

-- method UInt64ArrayBuilder::append_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface
--                 Name { namespace = "Arrow" , name = "UInt64ArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowUInt64ArrayBuilder."
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
--           , argType = TCArray False (-1) 2 (TBasicType TUInt64)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The array of uint64."
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

foreign import ccall "garrow_uint64_array_builder_append_values" garrow_uint64_array_builder_append_values :: 
    Ptr UInt64ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "UInt64ArrayBuilder"})
    Ptr Word64 ->                           -- values : TCArray False (-1) 2 (TBasicType TUInt64)
    Int64 ->                                -- values_length : TBasicType TInt64
    Ptr CInt ->                             -- is_valids : TCArray False (-1) 4 (TBasicType TBoolean)
    Int64 ->                                -- is_valids_length : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Append multiple values at once. It\'s more efficient than multiple
-- @append()@ and @append_null()@ calls.
-- 
-- /Since: 0.8.0/
uInt64ArrayBuilderAppendValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt64ArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.UInt64ArrayBuilder.UInt64ArrayBuilder'.
    -> [Word64]
    -- ^ /@values@/: The array of uint64.
    -> Maybe ([Bool])
    -- ^ /@isValids@/: The array of
    --   boolean that shows whether the Nth value is valid or not. If the
    --   Nth @is_valids@ is 'P.True', the Nth @values@ is valid value. Otherwise
    --   the Nth value is null value.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
uInt64ArrayBuilderAppendValues builder values isValids = liftIO $ do
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
        _ <- propagateGError $ garrow_uint64_array_builder_append_values builder' values' valuesLength maybeIsValids isValidsLength
        touchManagedPtr builder
        freeMem values'
        freeMem maybeIsValids
        return ()
     ) (do
        freeMem values'
        freeMem maybeIsValids
     )

#if defined(ENABLE_OVERLOADING)
data UInt64ArrayBuilderAppendValuesMethodInfo
instance (signature ~ ([Word64] -> Maybe ([Bool]) -> m ()), MonadIO m, IsUInt64ArrayBuilder a) => O.MethodInfo UInt64ArrayBuilderAppendValuesMethodInfo a signature where
    overloadedMethod = uInt64ArrayBuilderAppendValues

#endif


