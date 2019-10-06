{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.NullArrayBuilder
    ( 

-- * Exported types
    NullArrayBuilder(..)                    ,
    IsNullArrayBuilder                      ,
    toNullArrayBuilder                      ,
    noNullArrayBuilder                      ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveNullArrayBuilderMethod           ,
#endif


-- ** appendNull #method:appendNull#

#if defined(ENABLE_OVERLOADING)
    NullArrayBuilderAppendNullMethodInfo    ,
#endif
    nullArrayBuilderAppendNull              ,


-- ** appendNulls #method:appendNulls#

#if defined(ENABLE_OVERLOADING)
    NullArrayBuilderAppendNullsMethodInfo   ,
#endif
    nullArrayBuilderAppendNulls             ,


-- ** new #method:new#

    nullArrayBuilderNew                     ,




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
newtype NullArrayBuilder = NullArrayBuilder (ManagedPtr NullArrayBuilder)
    deriving (Eq)
foreign import ccall "garrow_null_array_builder_get_type"
    c_garrow_null_array_builder_get_type :: IO GType

instance GObject NullArrayBuilder where
    gobjectType = c_garrow_null_array_builder_get_type
    

-- | Convert 'NullArrayBuilder' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue NullArrayBuilder where
    toGValue o = do
        gtype <- c_garrow_null_array_builder_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr NullArrayBuilder)
        B.ManagedPtr.newObject NullArrayBuilder ptr
        
    

-- | Type class for types which can be safely cast to `NullArrayBuilder`, for instance with `toNullArrayBuilder`.
class (GObject o, O.IsDescendantOf NullArrayBuilder o) => IsNullArrayBuilder o
instance (GObject o, O.IsDescendantOf NullArrayBuilder o) => IsNullArrayBuilder o

instance O.HasParentTypes NullArrayBuilder
type instance O.ParentTypes NullArrayBuilder = '[Arrow.ArrayBuilder.ArrayBuilder, GObject.Object.Object]

-- | Cast to `NullArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toNullArrayBuilder :: (MonadIO m, IsNullArrayBuilder o) => o -> m NullArrayBuilder
toNullArrayBuilder = liftIO . unsafeCastTo NullArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `NullArrayBuilder`.
noNullArrayBuilder :: Maybe NullArrayBuilder
noNullArrayBuilder = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveNullArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveNullArrayBuilderMethod "appendNull" o = NullArrayBuilderAppendNullMethodInfo
    ResolveNullArrayBuilderMethod "appendNulls" o = NullArrayBuilderAppendNullsMethodInfo
    ResolveNullArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveNullArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveNullArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveNullArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveNullArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveNullArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveNullArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveNullArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveNullArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveNullArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveNullArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveNullArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveNullArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveNullArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveNullArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveNullArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveNullArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveNullArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveNullArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveNullArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveNullArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveNullArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveNullArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveNullArrayBuilderMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveNullArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveNullArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveNullArrayBuilderMethod t NullArrayBuilder, O.MethodInfo info NullArrayBuilder p) => OL.IsLabel t (NullArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList NullArrayBuilder
type instance O.AttributeList NullArrayBuilder = NullArrayBuilderAttributeList
type NullArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList NullArrayBuilder = NullArrayBuilderSignalList
type NullArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method NullArrayBuilder::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface
--                  Name { namespace = "Arrow" , name = "NullArrayBuilder" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_null_array_builder_new" garrow_null_array_builder_new :: 
    IO (Ptr NullArrayBuilder)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.13.0/
nullArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m NullArrayBuilder
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.NullArrayBuilder.NullArrayBuilder'.
nullArrayBuilderNew  = liftIO $ do
    result <- garrow_null_array_builder_new
    checkUnexpectedReturnNULL "nullArrayBuilderNew" result
    result' <- (wrapObject NullArrayBuilder) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method NullArrayBuilder::append_null
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "NullArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowNullArrayBuilder."
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

foreign import ccall "garrow_null_array_builder_append_null" garrow_null_array_builder_append_null :: 
    Ptr NullArrayBuilder ->                 -- builder : TInterface (Name {namespace = "Arrow", name = "NullArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.13.0/
nullArrayBuilderAppendNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsNullArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.NullArrayBuilder.NullArrayBuilder'.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
nullArrayBuilderAppendNull builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_null_array_builder_append_null builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data NullArrayBuilderAppendNullMethodInfo
instance (signature ~ (m ()), MonadIO m, IsNullArrayBuilder a) => O.MethodInfo NullArrayBuilderAppendNullMethodInfo a signature where
    overloadedMethod = nullArrayBuilderAppendNull

#endif

-- method NullArrayBuilder::append_nulls
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "builder"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "NullArrayBuilder" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowNullArrayBuilder."
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

foreign import ccall "garrow_null_array_builder_append_nulls" garrow_null_array_builder_append_nulls :: 
    Ptr NullArrayBuilder ->                 -- builder : TInterface (Name {namespace = "Arrow", name = "NullArrayBuilder"})
    Int64 ->                                -- n : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

-- | Append multiple nulls at once. It\'s more efficient than multiple
-- @append_null()@ calls.
-- 
-- /Since: 0.13.0/
nullArrayBuilderAppendNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsNullArrayBuilder a) =>
    a
    -- ^ /@builder@/: A t'GI.Arrow.Objects.NullArrayBuilder.NullArrayBuilder'.
    -> Int64
    -- ^ /@n@/: The number of null values to be appended.
    -> m ()
    -- ^ /(Can throw 'Data.GI.Base.GError.GError')/
nullArrayBuilderAppendNulls builder n = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_null_array_builder_append_nulls builder' n
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
data NullArrayBuilderAppendNullsMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsNullArrayBuilder a) => O.MethodInfo NullArrayBuilderAppendNullsMethodInfo a signature where
    overloadedMethod = nullArrayBuilderAppendNulls

#endif


