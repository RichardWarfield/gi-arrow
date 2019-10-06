{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.Time64DataType
    ( 

-- * Exported types
    Time64DataType(..)                      ,
    IsTime64DataType                        ,
    toTime64DataType                        ,
    noTime64DataType                        ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveTime64DataTypeMethod             ,
#endif


-- ** new #method:new#

    time64DataTypeNew                       ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.DataType as Arrow.DataType
import {-# SOURCE #-} qualified GI.Arrow.Objects.TimeDataType as Arrow.TimeDataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Time64DataType = Time64DataType (ManagedPtr Time64DataType)
    deriving (Eq)
foreign import ccall "garrow_time64_data_type_get_type"
    c_garrow_time64_data_type_get_type :: IO GType

instance GObject Time64DataType where
    gobjectType = c_garrow_time64_data_type_get_type
    

-- | Convert 'Time64DataType' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Time64DataType where
    toGValue o = do
        gtype <- c_garrow_time64_data_type_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Time64DataType)
        B.ManagedPtr.newObject Time64DataType ptr
        
    

-- | Type class for types which can be safely cast to `Time64DataType`, for instance with `toTime64DataType`.
class (GObject o, O.IsDescendantOf Time64DataType o) => IsTime64DataType o
instance (GObject o, O.IsDescendantOf Time64DataType o) => IsTime64DataType o

instance O.HasParentTypes Time64DataType
type instance O.ParentTypes Time64DataType = '[Arrow.TimeDataType.TimeDataType, Arrow.DataType.DataType, GObject.Object.Object]

-- | Cast to `Time64DataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTime64DataType :: (MonadIO m, IsTime64DataType o) => o -> m Time64DataType
toTime64DataType = liftIO . unsafeCastTo Time64DataType

-- | A convenience alias for `Nothing` :: `Maybe` `Time64DataType`.
noTime64DataType :: Maybe Time64DataType
noTime64DataType = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveTime64DataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveTime64DataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTime64DataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTime64DataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveTime64DataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTime64DataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTime64DataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTime64DataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTime64DataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTime64DataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTime64DataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTime64DataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTime64DataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTime64DataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTime64DataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTime64DataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTime64DataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveTime64DataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTime64DataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTime64DataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTime64DataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveTime64DataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTime64DataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTime64DataTypeMethod "getUnit" o = Arrow.TimeDataType.TimeDataTypeGetUnitMethodInfo
    ResolveTime64DataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTime64DataTypeMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveTime64DataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTime64DataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTime64DataTypeMethod t Time64DataType, O.MethodInfo info Time64DataType p) => OL.IsLabel t (Time64DataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Time64DataType
type instance O.AttributeList Time64DataType = Time64DataTypeAttributeList
type Time64DataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Time64DataType = Time64DataTypeSignalList
type Time64DataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Time64DataType::new
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "unit"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "TimeUnit" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "%GARROW_TIME_UNIT_SECOND or %GARROW_TIME_UNIT_MILLI."
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
--               (TInterface Name { namespace = "Arrow" , name = "Time64DataType" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_time64_data_type_new" garrow_time64_data_type_new :: 
    CUInt ->                                -- unit : TInterface (Name {namespace = "Arrow", name = "TimeUnit"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Time64DataType)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.7.0/
time64DataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Arrow.Enums.TimeUnit
    -- ^ /@unit@/: 'GI.Arrow.Enums.TimeUnitSecond' or 'GI.Arrow.Enums.TimeUnitMilli'.
    -> m (Maybe Time64DataType)
    -- ^ __Returns:__ 
    --   A newly created the number of seconds or milliseconds since
    --   midnight in 64-bit signed integer data type. /(Can throw 'Data.GI.Base.GError.GError')/
time64DataTypeNew unit = liftIO $ do
    let unit' = (fromIntegral . fromEnum) unit
    onException (do
        result <- propagateGError $ garrow_time64_data_type_new unit'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Time64DataType) result'
            return result''
        return maybeResult
     ) (do
        return ()
     )

#if defined(ENABLE_OVERLOADING)
#endif


