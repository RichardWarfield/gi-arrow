{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.Decimal128
    ( 

-- * Exported types
    Decimal128(..)                          ,
    IsDecimal128                            ,
    toDecimal128                            ,
    noDecimal128                            ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveDecimal128Method                 ,
#endif


-- ** abs #method:abs#

#if defined(ENABLE_OVERLOADING)
    Decimal128AbsMethodInfo                 ,
#endif
    decimal128Abs                           ,


-- ** divide #method:divide#

#if defined(ENABLE_OVERLOADING)
    Decimal128DivideMethodInfo              ,
#endif
    decimal128Divide                        ,


-- ** equal #method:equal#

#if defined(ENABLE_OVERLOADING)
    Decimal128EqualMethodInfo               ,
#endif
    decimal128Equal                         ,


-- ** greaterThan #method:greaterThan#

#if defined(ENABLE_OVERLOADING)
    Decimal128GreaterThanMethodInfo         ,
#endif
    decimal128GreaterThan                   ,


-- ** greaterThanOrEqual #method:greaterThanOrEqual#

#if defined(ENABLE_OVERLOADING)
    Decimal128GreaterThanOrEqualMethodInfo  ,
#endif
    decimal128GreaterThanOrEqual            ,


-- ** lessThan #method:lessThan#

#if defined(ENABLE_OVERLOADING)
    Decimal128LessThanMethodInfo            ,
#endif
    decimal128LessThan                      ,


-- ** lessThanOrEqual #method:lessThanOrEqual#

#if defined(ENABLE_OVERLOADING)
    Decimal128LessThanOrEqualMethodInfo     ,
#endif
    decimal128LessThanOrEqual               ,


-- ** minus #method:minus#

#if defined(ENABLE_OVERLOADING)
    Decimal128MinusMethodInfo               ,
#endif
    decimal128Minus                         ,


-- ** multiply #method:multiply#

#if defined(ENABLE_OVERLOADING)
    Decimal128MultiplyMethodInfo            ,
#endif
    decimal128Multiply                      ,


-- ** negate #method:negate#

#if defined(ENABLE_OVERLOADING)
    Decimal128NegateMethodInfo              ,
#endif
    decimal128Negate                        ,


-- ** newInteger #method:newInteger#

    decimal128NewInteger                    ,


-- ** newString #method:newString#

    decimal128NewString                     ,


-- ** notEqual #method:notEqual#

#if defined(ENABLE_OVERLOADING)
    Decimal128NotEqualMethodInfo            ,
#endif
    decimal128NotEqual                      ,


-- ** plus #method:plus#

#if defined(ENABLE_OVERLOADING)
    Decimal128PlusMethodInfo                ,
#endif
    decimal128Plus                          ,


-- ** toInteger #method:toInteger#

#if defined(ENABLE_OVERLOADING)
    Decimal128ToIntegerMethodInfo           ,
#endif
    decimal128ToInteger                     ,


-- ** toString #method:toString#

#if defined(ENABLE_OVERLOADING)
    Decimal128ToStringMethodInfo            ,
#endif
    decimal128ToString                      ,


-- ** toStringScale #method:toStringScale#

#if defined(ENABLE_OVERLOADING)
    Decimal128ToStringScaleMethodInfo       ,
#endif
    decimal128ToStringScale                 ,




 -- * Properties
-- ** decimal128 #attr:decimal128#
-- | /No description available in the introspection data./

#if defined(ENABLE_OVERLOADING)
    Decimal128Decimal128PropertyInfo        ,
#endif
    constructDecimal128Decimal128           ,
#if defined(ENABLE_OVERLOADING)
    decimal128Decimal128                    ,
#endif




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

import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Decimal128 = Decimal128 (ManagedPtr Decimal128)
    deriving (Eq)
foreign import ccall "garrow_decimal128_get_type"
    c_garrow_decimal128_get_type :: IO GType

instance GObject Decimal128 where
    gobjectType = c_garrow_decimal128_get_type
    

-- | Convert 'Decimal128' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue Decimal128 where
    toGValue o = do
        gtype <- c_garrow_decimal128_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr Decimal128)
        B.ManagedPtr.newObject Decimal128 ptr
        
    

-- | Type class for types which can be safely cast to `Decimal128`, for instance with `toDecimal128`.
class (GObject o, O.IsDescendantOf Decimal128 o) => IsDecimal128 o
instance (GObject o, O.IsDescendantOf Decimal128 o) => IsDecimal128 o

instance O.HasParentTypes Decimal128
type instance O.ParentTypes Decimal128 = '[GObject.Object.Object]

-- | Cast to `Decimal128`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDecimal128 :: (MonadIO m, IsDecimal128 o) => o -> m Decimal128
toDecimal128 = liftIO . unsafeCastTo Decimal128

-- | A convenience alias for `Nothing` :: `Maybe` `Decimal128`.
noDecimal128 :: Maybe Decimal128
noDecimal128 = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveDecimal128Method (t :: Symbol) (o :: *) :: * where
    ResolveDecimal128Method "abs" o = Decimal128AbsMethodInfo
    ResolveDecimal128Method "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDecimal128Method "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDecimal128Method "divide" o = Decimal128DivideMethodInfo
    ResolveDecimal128Method "equal" o = Decimal128EqualMethodInfo
    ResolveDecimal128Method "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDecimal128Method "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDecimal128Method "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDecimal128Method "greaterThan" o = Decimal128GreaterThanMethodInfo
    ResolveDecimal128Method "greaterThanOrEqual" o = Decimal128GreaterThanOrEqualMethodInfo
    ResolveDecimal128Method "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDecimal128Method "lessThan" o = Decimal128LessThanMethodInfo
    ResolveDecimal128Method "lessThanOrEqual" o = Decimal128LessThanOrEqualMethodInfo
    ResolveDecimal128Method "minus" o = Decimal128MinusMethodInfo
    ResolveDecimal128Method "multiply" o = Decimal128MultiplyMethodInfo
    ResolveDecimal128Method "negate" o = Decimal128NegateMethodInfo
    ResolveDecimal128Method "notEqual" o = Decimal128NotEqualMethodInfo
    ResolveDecimal128Method "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDecimal128Method "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDecimal128Method "plus" o = Decimal128PlusMethodInfo
    ResolveDecimal128Method "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDecimal128Method "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDecimal128Method "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDecimal128Method "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDecimal128Method "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDecimal128Method "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDecimal128Method "toInteger" o = Decimal128ToIntegerMethodInfo
    ResolveDecimal128Method "toString" o = Decimal128ToStringMethodInfo
    ResolveDecimal128Method "toStringScale" o = Decimal128ToStringScaleMethodInfo
    ResolveDecimal128Method "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDecimal128Method "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDecimal128Method "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDecimal128Method "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDecimal128Method "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDecimal128Method "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDecimal128Method "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveDecimal128Method "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDecimal128Method l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDecimal128Method t Decimal128, O.MethodInfo info Decimal128 p) => OL.IsLabel t (Decimal128 -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "decimal128"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

-- | Construct a `GValueConstruct` with valid value for the “@decimal128@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructDecimal128Decimal128 :: (IsDecimal128 o, MIO.MonadIO m) => Ptr () -> m (GValueConstruct o)
constructDecimal128Decimal128 val = MIO.liftIO $ B.Properties.constructObjectPropertyPtr "decimal128" val

#if defined(ENABLE_OVERLOADING)
data Decimal128Decimal128PropertyInfo
instance AttrInfo Decimal128Decimal128PropertyInfo where
    type AttrAllowedOps Decimal128Decimal128PropertyInfo = '[ 'AttrConstruct]
    type AttrBaseTypeConstraint Decimal128Decimal128PropertyInfo = IsDecimal128
    type AttrSetTypeConstraint Decimal128Decimal128PropertyInfo = (~) (Ptr ())
    type AttrTransferTypeConstraint Decimal128Decimal128PropertyInfo = (~) (Ptr ())
    type AttrTransferType Decimal128Decimal128PropertyInfo = Ptr ()
    type AttrGetType Decimal128Decimal128PropertyInfo = ()
    type AttrLabel Decimal128Decimal128PropertyInfo = "decimal128"
    type AttrOrigin Decimal128Decimal128PropertyInfo = Decimal128
    attrGet = undefined
    attrSet = undefined
    attrTransfer _ v = do
        return v
    attrConstruct = constructDecimal128Decimal128
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList Decimal128
type instance O.AttributeList Decimal128 = Decimal128AttributeList
type Decimal128AttributeList = ('[ '("decimal128", Decimal128Decimal128PropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
decimal128Decimal128 :: AttrLabelProxy "decimal128"
decimal128Decimal128 = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList Decimal128 = Decimal128SignalList
type Decimal128SignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Decimal128::new_integer
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "data"
--           , argType = TBasicType TInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The data of the decimal."
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
--               (TInterface Name { namespace = "Arrow" , name = "Decimal128" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_new_integer" garrow_decimal128_new_integer :: 
    Int64 ->                                -- data : TBasicType TInt64
    IO (Ptr Decimal128)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.10.0/
decimal128NewInteger ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Int64
    -- ^ /@data@/: The data of the decimal.
    -> m Decimal128
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.Decimal128.Decimal128'.
decimal128NewInteger data_ = liftIO $ do
    result <- garrow_decimal128_new_integer data_
    checkUnexpectedReturnNULL "decimal128NewInteger" result
    result' <- (wrapObject Decimal128) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Decimal128::new_string
-- method type : Constructor
-- Args: [ Arg
--           { argCName = "data"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The data of the decimal."
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
--               (TInterface Name { namespace = "Arrow" , name = "Decimal128" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_new_string" garrow_decimal128_new_string :: 
    CString ->                              -- data : TBasicType TUTF8
    IO (Ptr Decimal128)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.10.0/
decimal128NewString ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    -- ^ /@data@/: The data of the decimal.
    -> m Decimal128
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.Decimal128.Decimal128'.
decimal128NewString data_ = liftIO $ do
    data_' <- textToCString data_
    result <- garrow_decimal128_new_string data_'
    checkUnexpectedReturnNULL "decimal128NewString" result
    result' <- (wrapObject Decimal128) result
    freeMem data_'
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method Decimal128::abs
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decimal"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128."
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_abs" garrow_decimal128_abs :: 
    Ptr Decimal128 ->                       -- decimal : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    IO ()

-- | Computes the absolute value of the /@decimal@/ destructively.
-- 
-- /Since: 0.10.0/
decimal128Abs ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128 a) =>
    a
    -- ^ /@decimal@/: A t'GI.Arrow.Objects.Decimal128.Decimal128'.
    -> m ()
decimal128Abs decimal = liftIO $ do
    decimal' <- unsafeManagedPtrCastPtr decimal
    garrow_decimal128_abs decimal'
    touchManagedPtr decimal
    return ()

#if defined(ENABLE_OVERLOADING)
data Decimal128AbsMethodInfo
instance (signature ~ (m ()), MonadIO m, IsDecimal128 a) => O.MethodInfo Decimal128AbsMethodInfo a signature where
    overloadedMethod = decimal128Abs

#endif

-- method Decimal128::divide
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "left"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "right"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "remainder"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionOut
--           , mayBeNull = True
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just
--                       "A return location for the remainder\n  value of these decimals. The returned #GArrowDecimal128 be\n  unreferred with g_object_unref() when no longer needed."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferEverything
--           }
--       ]
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Arrow" , name = "Decimal128" })
-- throws : True
-- Skip return : False

foreign import ccall "garrow_decimal128_divide" garrow_decimal128_divide :: 
    Ptr Decimal128 ->                       -- left : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    Ptr Decimal128 ->                       -- right : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    Ptr (Ptr Decimal128) ->                 -- remainder : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Decimal128)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.11.0/
decimal128Divide ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128 a, IsDecimal128 b) =>
    a
    -- ^ /@left@/: A t'GI.Arrow.Objects.Decimal128.Decimal128'.
    -> b
    -- ^ /@right@/: A t'GI.Arrow.Objects.Decimal128.Decimal128'.
    -> m ((Maybe Decimal128, Maybe Decimal128))
    -- ^ __Returns:__ The divided value of
    --   these decimals or 'P.Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/
decimal128Divide left right = liftIO $ do
    left' <- unsafeManagedPtrCastPtr left
    right' <- unsafeManagedPtrCastPtr right
    remainder <- allocMem :: IO (Ptr (Ptr Decimal128))
    onException (do
        result <- propagateGError $ garrow_decimal128_divide left' right' remainder
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Decimal128) result'
            return result''
        remainder' <- peek remainder
        maybeRemainder' <- convertIfNonNull remainder' $ \remainder'' -> do
            remainder''' <- (wrapObject Decimal128) remainder''
            return remainder'''
        touchManagedPtr left
        touchManagedPtr right
        freeMem remainder
        return (maybeResult, maybeRemainder')
     ) (do
        freeMem remainder
     )

#if defined(ENABLE_OVERLOADING)
data Decimal128DivideMethodInfo
instance (signature ~ (b -> m ((Maybe Decimal128, Maybe Decimal128))), MonadIO m, IsDecimal128 a, IsDecimal128 b) => O.MethodInfo Decimal128DivideMethodInfo a signature where
    overloadedMethod = decimal128Divide

#endif

-- method Decimal128::equal
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decimal"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "other_decimal"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128 to be compared."
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
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_equal" garrow_decimal128_equal :: 
    Ptr Decimal128 ->                       -- decimal : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    Ptr Decimal128 ->                       -- other_decimal : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
decimal128Equal ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128 a, IsDecimal128 b) =>
    a
    -- ^ /@decimal@/: A t'GI.Arrow.Objects.Decimal128.Decimal128'.
    -> b
    -- ^ /@otherDecimal@/: A t'GI.Arrow.Objects.Decimal128.Decimal128' to be compared.
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the decimal is equal to the other decimal, 'P.False'
    --   otherwise.
decimal128Equal decimal otherDecimal = liftIO $ do
    decimal' <- unsafeManagedPtrCastPtr decimal
    otherDecimal' <- unsafeManagedPtrCastPtr otherDecimal
    result <- garrow_decimal128_equal decimal' otherDecimal'
    let result' = (/= 0) result
    touchManagedPtr decimal
    touchManagedPtr otherDecimal
    return result'

#if defined(ENABLE_OVERLOADING)
data Decimal128EqualMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsDecimal128 a, IsDecimal128 b) => O.MethodInfo Decimal128EqualMethodInfo a signature where
    overloadedMethod = decimal128Equal

#endif

-- method Decimal128::greater_than
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decimal"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "other_decimal"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128 to be compared."
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
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_greater_than" garrow_decimal128_greater_than :: 
    Ptr Decimal128 ->                       -- decimal : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    Ptr Decimal128 ->                       -- other_decimal : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
decimal128GreaterThan ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128 a, IsDecimal128 b) =>
    a
    -- ^ /@decimal@/: A t'GI.Arrow.Objects.Decimal128.Decimal128'.
    -> b
    -- ^ /@otherDecimal@/: A t'GI.Arrow.Objects.Decimal128.Decimal128' to be compared.
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the decimal is greater than the other decimal,
    --   'P.False' otherwise.
decimal128GreaterThan decimal otherDecimal = liftIO $ do
    decimal' <- unsafeManagedPtrCastPtr decimal
    otherDecimal' <- unsafeManagedPtrCastPtr otherDecimal
    result <- garrow_decimal128_greater_than decimal' otherDecimal'
    let result' = (/= 0) result
    touchManagedPtr decimal
    touchManagedPtr otherDecimal
    return result'

#if defined(ENABLE_OVERLOADING)
data Decimal128GreaterThanMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsDecimal128 a, IsDecimal128 b) => O.MethodInfo Decimal128GreaterThanMethodInfo a signature where
    overloadedMethod = decimal128GreaterThan

#endif

-- method Decimal128::greater_than_or_equal
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decimal"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "other_decimal"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128 to be compared."
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
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_greater_than_or_equal" garrow_decimal128_greater_than_or_equal :: 
    Ptr Decimal128 ->                       -- decimal : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    Ptr Decimal128 ->                       -- other_decimal : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
decimal128GreaterThanOrEqual ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128 a, IsDecimal128 b) =>
    a
    -- ^ /@decimal@/: A t'GI.Arrow.Objects.Decimal128.Decimal128'.
    -> b
    -- ^ /@otherDecimal@/: A t'GI.Arrow.Objects.Decimal128.Decimal128' to be compared.
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the decimal is greater than the other decimal
    --   or equal to the other decimal, 'P.False' otherwise.
decimal128GreaterThanOrEqual decimal otherDecimal = liftIO $ do
    decimal' <- unsafeManagedPtrCastPtr decimal
    otherDecimal' <- unsafeManagedPtrCastPtr otherDecimal
    result <- garrow_decimal128_greater_than_or_equal decimal' otherDecimal'
    let result' = (/= 0) result
    touchManagedPtr decimal
    touchManagedPtr otherDecimal
    return result'

#if defined(ENABLE_OVERLOADING)
data Decimal128GreaterThanOrEqualMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsDecimal128 a, IsDecimal128 b) => O.MethodInfo Decimal128GreaterThanOrEqualMethodInfo a signature where
    overloadedMethod = decimal128GreaterThanOrEqual

#endif

-- method Decimal128::less_than
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decimal"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "other_decimal"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128 to be compared."
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
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_less_than" garrow_decimal128_less_than :: 
    Ptr Decimal128 ->                       -- decimal : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    Ptr Decimal128 ->                       -- other_decimal : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
decimal128LessThan ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128 a, IsDecimal128 b) =>
    a
    -- ^ /@decimal@/: A t'GI.Arrow.Objects.Decimal128.Decimal128'.
    -> b
    -- ^ /@otherDecimal@/: A t'GI.Arrow.Objects.Decimal128.Decimal128' to be compared.
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the decimal is less than the other decimal,
    --   'P.False' otherwise.
decimal128LessThan decimal otherDecimal = liftIO $ do
    decimal' <- unsafeManagedPtrCastPtr decimal
    otherDecimal' <- unsafeManagedPtrCastPtr otherDecimal
    result <- garrow_decimal128_less_than decimal' otherDecimal'
    let result' = (/= 0) result
    touchManagedPtr decimal
    touchManagedPtr otherDecimal
    return result'

#if defined(ENABLE_OVERLOADING)
data Decimal128LessThanMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsDecimal128 a, IsDecimal128 b) => O.MethodInfo Decimal128LessThanMethodInfo a signature where
    overloadedMethod = decimal128LessThan

#endif

-- method Decimal128::less_than_or_equal
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decimal"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "other_decimal"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128 to be compared."
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
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_less_than_or_equal" garrow_decimal128_less_than_or_equal :: 
    Ptr Decimal128 ->                       -- decimal : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    Ptr Decimal128 ->                       -- other_decimal : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
decimal128LessThanOrEqual ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128 a, IsDecimal128 b) =>
    a
    -- ^ /@decimal@/: A t'GI.Arrow.Objects.Decimal128.Decimal128'.
    -> b
    -- ^ /@otherDecimal@/: A t'GI.Arrow.Objects.Decimal128.Decimal128' to be compared.
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the decimal is less than the other decimal
    --   or equal to the other decimal, 'P.False' otherwise.
decimal128LessThanOrEqual decimal otherDecimal = liftIO $ do
    decimal' <- unsafeManagedPtrCastPtr decimal
    otherDecimal' <- unsafeManagedPtrCastPtr otherDecimal
    result <- garrow_decimal128_less_than_or_equal decimal' otherDecimal'
    let result' = (/= 0) result
    touchManagedPtr decimal
    touchManagedPtr otherDecimal
    return result'

#if defined(ENABLE_OVERLOADING)
data Decimal128LessThanOrEqualMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsDecimal128 a, IsDecimal128 b) => O.MethodInfo Decimal128LessThanOrEqualMethodInfo a signature where
    overloadedMethod = decimal128LessThanOrEqual

#endif

-- method Decimal128::minus
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "left"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "right"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128."
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
--               (TInterface Name { namespace = "Arrow" , name = "Decimal128" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_minus" garrow_decimal128_minus :: 
    Ptr Decimal128 ->                       -- left : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    Ptr Decimal128 ->                       -- right : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    IO (Ptr Decimal128)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.11.0/
decimal128Minus ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128 a, IsDecimal128 b) =>
    a
    -- ^ /@left@/: A t'GI.Arrow.Objects.Decimal128.Decimal128'.
    -> b
    -- ^ /@right@/: A t'GI.Arrow.Objects.Decimal128.Decimal128'.
    -> m Decimal128
    -- ^ __Returns:__ The subtracted value of these decimals.
decimal128Minus left right = liftIO $ do
    left' <- unsafeManagedPtrCastPtr left
    right' <- unsafeManagedPtrCastPtr right
    result <- garrow_decimal128_minus left' right'
    checkUnexpectedReturnNULL "decimal128Minus" result
    result' <- (wrapObject Decimal128) result
    touchManagedPtr left
    touchManagedPtr right
    return result'

#if defined(ENABLE_OVERLOADING)
data Decimal128MinusMethodInfo
instance (signature ~ (b -> m Decimal128), MonadIO m, IsDecimal128 a, IsDecimal128 b) => O.MethodInfo Decimal128MinusMethodInfo a signature where
    overloadedMethod = decimal128Minus

#endif

-- method Decimal128::multiply
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "left"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "right"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128."
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
--               (TInterface Name { namespace = "Arrow" , name = "Decimal128" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_multiply" garrow_decimal128_multiply :: 
    Ptr Decimal128 ->                       -- left : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    Ptr Decimal128 ->                       -- right : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    IO (Ptr Decimal128)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.11.0/
decimal128Multiply ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128 a, IsDecimal128 b) =>
    a
    -- ^ /@left@/: A t'GI.Arrow.Objects.Decimal128.Decimal128'.
    -> b
    -- ^ /@right@/: A t'GI.Arrow.Objects.Decimal128.Decimal128'.
    -> m Decimal128
    -- ^ __Returns:__ The multiplied value of these decimals.
decimal128Multiply left right = liftIO $ do
    left' <- unsafeManagedPtrCastPtr left
    right' <- unsafeManagedPtrCastPtr right
    result <- garrow_decimal128_multiply left' right'
    checkUnexpectedReturnNULL "decimal128Multiply" result
    result' <- (wrapObject Decimal128) result
    touchManagedPtr left
    touchManagedPtr right
    return result'

#if defined(ENABLE_OVERLOADING)
data Decimal128MultiplyMethodInfo
instance (signature ~ (b -> m Decimal128), MonadIO m, IsDecimal128 a, IsDecimal128 b) => O.MethodInfo Decimal128MultiplyMethodInfo a signature where
    overloadedMethod = decimal128Multiply

#endif

-- method Decimal128::negate
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decimal"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128."
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
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_negate" garrow_decimal128_negate :: 
    Ptr Decimal128 ->                       -- decimal : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    IO ()

-- | Negate the current value of the /@decimal@/ destructively.
-- 
-- /Since: 0.10.0/
decimal128Negate ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128 a) =>
    a
    -- ^ /@decimal@/: A t'GI.Arrow.Objects.Decimal128.Decimal128'.
    -> m ()
decimal128Negate decimal = liftIO $ do
    decimal' <- unsafeManagedPtrCastPtr decimal
    garrow_decimal128_negate decimal'
    touchManagedPtr decimal
    return ()

#if defined(ENABLE_OVERLOADING)
data Decimal128NegateMethodInfo
instance (signature ~ (m ()), MonadIO m, IsDecimal128 a) => O.MethodInfo Decimal128NegateMethodInfo a signature where
    overloadedMethod = decimal128Negate

#endif

-- method Decimal128::not_equal
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decimal"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "other_decimal"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128 to be compared."
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
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_not_equal" garrow_decimal128_not_equal :: 
    Ptr Decimal128 ->                       -- decimal : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    Ptr Decimal128 ->                       -- other_decimal : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    IO CInt

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
decimal128NotEqual ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128 a, IsDecimal128 b) =>
    a
    -- ^ /@decimal@/: A t'GI.Arrow.Objects.Decimal128.Decimal128'.
    -> b
    -- ^ /@otherDecimal@/: A t'GI.Arrow.Objects.Decimal128.Decimal128' to be compared.
    -> m Bool
    -- ^ __Returns:__ 'P.True' if the decimal isn\'t equal to the other decimal,
    --   'P.False' otherwise.
decimal128NotEqual decimal otherDecimal = liftIO $ do
    decimal' <- unsafeManagedPtrCastPtr decimal
    otherDecimal' <- unsafeManagedPtrCastPtr otherDecimal
    result <- garrow_decimal128_not_equal decimal' otherDecimal'
    let result' = (/= 0) result
    touchManagedPtr decimal
    touchManagedPtr otherDecimal
    return result'

#if defined(ENABLE_OVERLOADING)
data Decimal128NotEqualMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsDecimal128 a, IsDecimal128 b) => O.MethodInfo Decimal128NotEqualMethodInfo a signature where
    overloadedMethod = decimal128NotEqual

#endif

-- method Decimal128::plus
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "left"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "right"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128."
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
--               (TInterface Name { namespace = "Arrow" , name = "Decimal128" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_plus" garrow_decimal128_plus :: 
    Ptr Decimal128 ->                       -- left : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    Ptr Decimal128 ->                       -- right : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    IO (Ptr Decimal128)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.11.0/
decimal128Plus ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128 a, IsDecimal128 b) =>
    a
    -- ^ /@left@/: A t'GI.Arrow.Objects.Decimal128.Decimal128'.
    -> b
    -- ^ /@right@/: A t'GI.Arrow.Objects.Decimal128.Decimal128'.
    -> m Decimal128
    -- ^ __Returns:__ The added value of these decimals.
decimal128Plus left right = liftIO $ do
    left' <- unsafeManagedPtrCastPtr left
    right' <- unsafeManagedPtrCastPtr right
    result <- garrow_decimal128_plus left' right'
    checkUnexpectedReturnNULL "decimal128Plus" result
    result' <- (wrapObject Decimal128) result
    touchManagedPtr left
    touchManagedPtr right
    return result'

#if defined(ENABLE_OVERLOADING)
data Decimal128PlusMethodInfo
instance (signature ~ (b -> m Decimal128), MonadIO m, IsDecimal128 a, IsDecimal128 b) => O.MethodInfo Decimal128PlusMethodInfo a signature where
    overloadedMethod = decimal128Plus

#endif

-- method Decimal128::to_integer
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decimal"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128."
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
-- returnType: Just (TBasicType TInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_to_integer" garrow_decimal128_to_integer :: 
    Ptr Decimal128 ->                       -- decimal : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    IO Int64

-- | /No description available in the introspection data./
-- 
-- /Since: 0.10.0/
decimal128ToInteger ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128 a) =>
    a
    -- ^ /@decimal@/: A t'GI.Arrow.Objects.Decimal128.Decimal128'.
    -> m Int64
    -- ^ __Returns:__ The 64-bit integer representation of the decimal.
decimal128ToInteger decimal = liftIO $ do
    decimal' <- unsafeManagedPtrCastPtr decimal
    result <- garrow_decimal128_to_integer decimal'
    touchManagedPtr decimal
    return result

#if defined(ENABLE_OVERLOADING)
data Decimal128ToIntegerMethodInfo
instance (signature ~ (m Int64), MonadIO m, IsDecimal128 a) => O.MethodInfo Decimal128ToIntegerMethodInfo a signature where
    overloadedMethod = decimal128ToInteger

#endif

-- method Decimal128::to_string
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decimal"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128."
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
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_to_string" garrow_decimal128_to_string :: 
    Ptr Decimal128 ->                       -- decimal : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    IO CString

-- | /No description available in the introspection data./
-- 
-- /Since: 0.10.0/
decimal128ToString ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128 a) =>
    a
    -- ^ /@decimal@/: A t'GI.Arrow.Objects.Decimal128.Decimal128'.
    -> m T.Text
    -- ^ __Returns:__ The string representation of the decimal.
    -- 
    --   It should be freed with 'GI.GLib.Functions.free' when no longer needed.
decimal128ToString decimal = liftIO $ do
    decimal' <- unsafeManagedPtrCastPtr decimal
    result <- garrow_decimal128_to_string decimal'
    checkUnexpectedReturnNULL "decimal128ToString" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr decimal
    return result'

#if defined(ENABLE_OVERLOADING)
data Decimal128ToStringMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsDecimal128 a) => O.MethodInfo Decimal128ToStringMethodInfo a signature where
    overloadedMethod = decimal128ToString

#endif

-- method Decimal128::to_string_scale
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "decimal"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Decimal128" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowDecimal128."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "scale"
--           , argType = TBasicType TInt32
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The scale of the decimal."
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
-- returnType: Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_to_string_scale" garrow_decimal128_to_string_scale :: 
    Ptr Decimal128 ->                       -- decimal : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    Int32 ->                                -- scale : TBasicType TInt32
    IO CString

-- | /No description available in the introspection data./
-- 
-- /Since: 0.10.0/
decimal128ToStringScale ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128 a) =>
    a
    -- ^ /@decimal@/: A t'GI.Arrow.Objects.Decimal128.Decimal128'.
    -> Int32
    -- ^ /@scale@/: The scale of the decimal.
    -> m T.Text
    -- ^ __Returns:__ The string representation of the decimal.
    -- 
    --   It should be freed with 'GI.GLib.Functions.free' when no longer needed.
decimal128ToStringScale decimal scale = liftIO $ do
    decimal' <- unsafeManagedPtrCastPtr decimal
    result <- garrow_decimal128_to_string_scale decimal' scale
    checkUnexpectedReturnNULL "decimal128ToStringScale" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr decimal
    return result'

#if defined(ENABLE_OVERLOADING)
data Decimal128ToStringScaleMethodInfo
instance (signature ~ (Int32 -> m T.Text), MonadIO m, IsDecimal128 a) => O.MethodInfo Decimal128ToStringScaleMethodInfo a signature where
    overloadedMethod = decimal128ToStringScale

#endif


