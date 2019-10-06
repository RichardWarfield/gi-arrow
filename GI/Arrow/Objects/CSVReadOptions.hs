{-# LANGUAGE TypeApplications #-}


-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria
-- 
-- /No description available in the introspection data./

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Objects.CSVReadOptions
    ( 
#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsGetColumnTypesMethodInfo  ,
#endif

-- * Exported types
    CSVReadOptions(..)                      ,
    IsCSVReadOptions                        ,
    toCSVReadOptions                        ,
    noCSVReadOptions                        ,


 -- * Methods
-- ** Overloaded methods #method:Overloaded methods#

#if defined(ENABLE_OVERLOADING)
    ResolveCSVReadOptionsMethod             ,
#endif


-- ** addColumnType #method:addColumnType#

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsAddColumnTypeMethodInfo   ,
#endif
    cSVReadOptionsAddColumnType             ,


-- ** addFalseValue #method:addFalseValue#

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsAddFalseValueMethodInfo   ,
#endif
    cSVReadOptionsAddFalseValue             ,


-- ** addNullValue #method:addNullValue#

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsAddNullValueMethodInfo    ,
#endif
    cSVReadOptionsAddNullValue              ,


-- ** addSchema #method:addSchema#

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsAddSchemaMethodInfo       ,
#endif
    cSVReadOptionsAddSchema                 ,


-- ** addTrueValue #method:addTrueValue#

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsAddTrueValueMethodInfo    ,
#endif
    cSVReadOptionsAddTrueValue              ,


-- ** getFalseValues #method:getFalseValues#

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsGetFalseValuesMethodInfo  ,
#endif
    cSVReadOptionsGetFalseValues            ,


-- ** getNullValues #method:getNullValues#

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsGetNullValuesMethodInfo   ,
#endif
    cSVReadOptionsGetNullValues             ,


-- ** getTrueValues #method:getTrueValues#

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsGetTrueValuesMethodInfo   ,
#endif
    cSVReadOptionsGetTrueValues             ,


-- ** new #method:new#

    cSVReadOptionsNew                       ,


-- ** setFalseValues #method:setFalseValues#

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsSetFalseValuesMethodInfo  ,
#endif
    cSVReadOptionsSetFalseValues            ,


-- ** setNullValues #method:setNullValues#

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsSetNullValuesMethodInfo   ,
#endif
    cSVReadOptionsSetNullValues             ,


-- ** setTrueValues #method:setTrueValues#

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsSetTrueValuesMethodInfo   ,
#endif
    cSVReadOptionsSetTrueValues             ,




 -- * Properties
-- ** allowNewlinesInValues #attr:allowNewlinesInValues#
-- | Whether values are allowed to contain CR (0x0d) and LF (0x0a) characters.
-- 
-- /Since: 0.12.0/

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsAllowNewlinesInValuesPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    cSVReadOptionsAllowNewlinesInValues     ,
#endif
    constructCSVReadOptionsAllowNewlinesInValues,
    getCSVReadOptionsAllowNewlinesInValues  ,
    setCSVReadOptionsAllowNewlinesInValues  ,


-- ** allowNullStrings #attr:allowNullStrings#
-- | Whether string \/ binary columns can have null values.
-- If 'P.True', then strings in \"null_values\" are considered null for string columns.
-- If 'P.False', then all strings are valid string values.
-- 
-- /Since: 0.14.0/

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsAllowNullStringsPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    cSVReadOptionsAllowNullStrings          ,
#endif
    constructCSVReadOptionsAllowNullStrings ,
    getCSVReadOptionsAllowNullStrings       ,
    setCSVReadOptionsAllowNullStrings       ,


-- ** blockSize #attr:blockSize#
-- | Block size we request from the IO layer; also determines the size
-- of chunks when t'GI.Arrow.Objects.CSVReadOptions.CSVReadOptions':@/use-threads/@ is 'P.True'.
-- 
-- /Since: 0.12.0/

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsBlockSizePropertyInfo     ,
#endif
#if defined(ENABLE_OVERLOADING)
    cSVReadOptionsBlockSize                 ,
#endif
    constructCSVReadOptionsBlockSize        ,
    getCSVReadOptionsBlockSize              ,
    setCSVReadOptionsBlockSize              ,


-- ** checkUtf8 #attr:checkUtf8#
-- | Whether to check UTF8 validity of string columns.
-- 
-- /Since: 0.12.0/

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsCheckUtf8PropertyInfo     ,
#endif
#if defined(ENABLE_OVERLOADING)
    cSVReadOptionsCheckUtf8                 ,
#endif
    constructCSVReadOptionsCheckUtf8        ,
    getCSVReadOptionsCheckUtf8              ,
    setCSVReadOptionsCheckUtf8              ,


-- ** delimiter #attr:delimiter#
-- | Field delimiter character.
-- 
-- /Since: 0.12.0/

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsDelimiterPropertyInfo     ,
#endif
#if defined(ENABLE_OVERLOADING)
    cSVReadOptionsDelimiter                 ,
#endif
    constructCSVReadOptionsDelimiter        ,
    getCSVReadOptionsDelimiter              ,
    setCSVReadOptionsDelimiter              ,


-- ** escapeCharacter #attr:escapeCharacter#
-- | Escaping character. This is used only when
-- t'GI.Arrow.Objects.CSVReadOptions.CSVReadOptions':@/is-escaped/@ is 'P.True'.
-- 
-- /Since: 0.12.0/

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsEscapeCharacterPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    cSVReadOptionsEscapeCharacter           ,
#endif
    constructCSVReadOptionsEscapeCharacter  ,
    getCSVReadOptionsEscapeCharacter        ,
    setCSVReadOptionsEscapeCharacter        ,


-- ** ignoreEmptyLines #attr:ignoreEmptyLines#
-- | Whether empty lines are ignored. If 'P.False', an empty line
-- represents a simple empty value (assuming a one-column CSV file).
-- 
-- /Since: 0.12.0/

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsIgnoreEmptyLinesPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    cSVReadOptionsIgnoreEmptyLines          ,
#endif
    constructCSVReadOptionsIgnoreEmptyLines ,
    getCSVReadOptionsIgnoreEmptyLines       ,
    setCSVReadOptionsIgnoreEmptyLines       ,


-- ** isDoubleQuoted #attr:isDoubleQuoted#
-- | Whether a quote inside a value is double quoted.
-- 
-- /Since: 0.12.0/

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsIsDoubleQuotedPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    cSVReadOptionsIsDoubleQuoted            ,
#endif
    constructCSVReadOptionsIsDoubleQuoted   ,
    getCSVReadOptionsIsDoubleQuoted         ,
    setCSVReadOptionsIsDoubleQuoted         ,


-- ** isEscaped #attr:isEscaped#
-- | Whether escaping is used.
-- 
-- /Since: 0.12.0/

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsIsEscapedPropertyInfo     ,
#endif
#if defined(ENABLE_OVERLOADING)
    cSVReadOptionsIsEscaped                 ,
#endif
    constructCSVReadOptionsIsEscaped        ,
    getCSVReadOptionsIsEscaped              ,
    setCSVReadOptionsIsEscaped              ,


-- ** isQuoted #attr:isQuoted#
-- | Whether quoting is used.
-- 
-- /Since: 0.12.0/

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsIsQuotedPropertyInfo      ,
#endif
#if defined(ENABLE_OVERLOADING)
    cSVReadOptionsIsQuoted                  ,
#endif
    constructCSVReadOptionsIsQuoted         ,
    getCSVReadOptionsIsQuoted               ,
    setCSVReadOptionsIsQuoted               ,


-- ** nHeaderRows #attr:nHeaderRows#
-- | The number of header rows to skip (including the first row
-- containing column names)
-- 
-- /Since: 0.12.0/

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsNHeaderRowsPropertyInfo   ,
#endif
#if defined(ENABLE_OVERLOADING)
    cSVReadOptionsNHeaderRows               ,
#endif
    constructCSVReadOptionsNHeaderRows      ,
    getCSVReadOptionsNHeaderRows            ,
    setCSVReadOptionsNHeaderRows            ,


-- ** quoteCharacter #attr:quoteCharacter#
-- | Quoting character. This is used only when
-- t'GI.Arrow.Objects.CSVReadOptions.CSVReadOptions':@/is-quoted/@ is 'P.True'.
-- 
-- /Since: 0.12.0/

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsQuoteCharacterPropertyInfo,
#endif
#if defined(ENABLE_OVERLOADING)
    cSVReadOptionsQuoteCharacter            ,
#endif
    constructCSVReadOptionsQuoteCharacter   ,
    getCSVReadOptionsQuoteCharacter         ,
    setCSVReadOptionsQuoteCharacter         ,


-- ** useThreads #attr:useThreads#
-- | Whether to use the global CPU thread pool.
-- 
-- /Since: 0.12.0/

#if defined(ENABLE_OVERLOADING)
    CSVReadOptionsUseThreadsPropertyInfo    ,
#endif
#if defined(ENABLE_OVERLOADING)
    cSVReadOptionsUseThreads                ,
#endif
    constructCSVReadOptionsUseThreads       ,
    getCSVReadOptionsUseThreads             ,
    setCSVReadOptionsUseThreads             ,




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

import {-# SOURCE #-} qualified GI.Arrow.Objects.DataType as Arrow.DataType
import {-# SOURCE #-} qualified GI.Arrow.Objects.Schema as Arrow.Schema
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype CSVReadOptions = CSVReadOptions (ManagedPtr CSVReadOptions)
    deriving (Eq)
foreign import ccall "garrow_csv_read_options_get_type"
    c_garrow_csv_read_options_get_type :: IO GType

instance GObject CSVReadOptions where
    gobjectType = c_garrow_csv_read_options_get_type
    

-- | Convert 'CSVReadOptions' to and from 'Data.GI.Base.GValue.GValue' with 'Data.GI.Base.GValue.toGValue' and 'Data.GI.Base.GValue.fromGValue'.
instance B.GValue.IsGValue CSVReadOptions where
    toGValue o = do
        gtype <- c_garrow_csv_read_options_get_type
        B.ManagedPtr.withManagedPtr o (B.GValue.buildGValue gtype B.GValue.set_object)
        
    fromGValue gv = do
        ptr <- B.GValue.get_object gv :: IO (Ptr CSVReadOptions)
        B.ManagedPtr.newObject CSVReadOptions ptr
        
    

-- | Type class for types which can be safely cast to `CSVReadOptions`, for instance with `toCSVReadOptions`.
class (GObject o, O.IsDescendantOf CSVReadOptions o) => IsCSVReadOptions o
instance (GObject o, O.IsDescendantOf CSVReadOptions o) => IsCSVReadOptions o

instance O.HasParentTypes CSVReadOptions
type instance O.ParentTypes CSVReadOptions = '[GObject.Object.Object]

-- | Cast to `CSVReadOptions`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toCSVReadOptions :: (MonadIO m, IsCSVReadOptions o) => o -> m CSVReadOptions
toCSVReadOptions = liftIO . unsafeCastTo CSVReadOptions

-- | A convenience alias for `Nothing` :: `Maybe` `CSVReadOptions`.
noCSVReadOptions :: Maybe CSVReadOptions
noCSVReadOptions = Nothing

#if defined(ENABLE_OVERLOADING)
type family ResolveCSVReadOptionsMethod (t :: Symbol) (o :: *) :: * where
    ResolveCSVReadOptionsMethod "addColumnType" o = CSVReadOptionsAddColumnTypeMethodInfo
    ResolveCSVReadOptionsMethod "addFalseValue" o = CSVReadOptionsAddFalseValueMethodInfo
    ResolveCSVReadOptionsMethod "addNullValue" o = CSVReadOptionsAddNullValueMethodInfo
    ResolveCSVReadOptionsMethod "addSchema" o = CSVReadOptionsAddSchemaMethodInfo
    ResolveCSVReadOptionsMethod "addTrueValue" o = CSVReadOptionsAddTrueValueMethodInfo
    ResolveCSVReadOptionsMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveCSVReadOptionsMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveCSVReadOptionsMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveCSVReadOptionsMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveCSVReadOptionsMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveCSVReadOptionsMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveCSVReadOptionsMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveCSVReadOptionsMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveCSVReadOptionsMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveCSVReadOptionsMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveCSVReadOptionsMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveCSVReadOptionsMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveCSVReadOptionsMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveCSVReadOptionsMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveCSVReadOptionsMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveCSVReadOptionsMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveCSVReadOptionsMethod "getColumnTypes" o = CSVReadOptionsGetColumnTypesMethodInfo
    ResolveCSVReadOptionsMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveCSVReadOptionsMethod "getFalseValues" o = CSVReadOptionsGetFalseValuesMethodInfo
    ResolveCSVReadOptionsMethod "getNullValues" o = CSVReadOptionsGetNullValuesMethodInfo
    ResolveCSVReadOptionsMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveCSVReadOptionsMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveCSVReadOptionsMethod "getTrueValues" o = CSVReadOptionsGetTrueValuesMethodInfo
    ResolveCSVReadOptionsMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveCSVReadOptionsMethod "setDataFull" o = GObject.Object.ObjectSetDataFullMethodInfo
    ResolveCSVReadOptionsMethod "setFalseValues" o = CSVReadOptionsSetFalseValuesMethodInfo
    ResolveCSVReadOptionsMethod "setNullValues" o = CSVReadOptionsSetNullValuesMethodInfo
    ResolveCSVReadOptionsMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveCSVReadOptionsMethod "setTrueValues" o = CSVReadOptionsSetTrueValuesMethodInfo
    ResolveCSVReadOptionsMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCSVReadOptionsMethod t CSVReadOptions, O.MethodInfo info CSVReadOptions p) => OL.IsLabel t (CSVReadOptions -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod @info
#else
    fromLabel _ = O.overloadedMethod @info
#endif

#endif

-- VVV Prop "allow-newlines-in-values"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@allow-newlines-in-values@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cSVReadOptions #allowNewlinesInValues
-- @
getCSVReadOptionsAllowNewlinesInValues :: (MonadIO m, IsCSVReadOptions o) => o -> m Bool
getCSVReadOptionsAllowNewlinesInValues obj = liftIO $ B.Properties.getObjectPropertyBool obj "allow-newlines-in-values"

-- | Set the value of the “@allow-newlines-in-values@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cSVReadOptions [ #allowNewlinesInValues 'Data.GI.Base.Attributes.:=' value ]
-- @
setCSVReadOptionsAllowNewlinesInValues :: (MonadIO m, IsCSVReadOptions o) => o -> Bool -> m ()
setCSVReadOptionsAllowNewlinesInValues obj val = liftIO $ B.Properties.setObjectPropertyBool obj "allow-newlines-in-values" val

-- | Construct a `GValueConstruct` with valid value for the “@allow-newlines-in-values@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCSVReadOptionsAllowNewlinesInValues :: (IsCSVReadOptions o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructCSVReadOptionsAllowNewlinesInValues val = MIO.liftIO $ B.Properties.constructObjectPropertyBool "allow-newlines-in-values" val

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsAllowNewlinesInValuesPropertyInfo
instance AttrInfo CSVReadOptionsAllowNewlinesInValuesPropertyInfo where
    type AttrAllowedOps CSVReadOptionsAllowNewlinesInValuesPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CSVReadOptionsAllowNewlinesInValuesPropertyInfo = IsCSVReadOptions
    type AttrSetTypeConstraint CSVReadOptionsAllowNewlinesInValuesPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CSVReadOptionsAllowNewlinesInValuesPropertyInfo = (~) Bool
    type AttrTransferType CSVReadOptionsAllowNewlinesInValuesPropertyInfo = Bool
    type AttrGetType CSVReadOptionsAllowNewlinesInValuesPropertyInfo = Bool
    type AttrLabel CSVReadOptionsAllowNewlinesInValuesPropertyInfo = "allow-newlines-in-values"
    type AttrOrigin CSVReadOptionsAllowNewlinesInValuesPropertyInfo = CSVReadOptions
    attrGet = getCSVReadOptionsAllowNewlinesInValues
    attrSet = setCSVReadOptionsAllowNewlinesInValues
    attrTransfer _ v = do
        return v
    attrConstruct = constructCSVReadOptionsAllowNewlinesInValues
    attrClear = undefined
#endif

-- VVV Prop "allow-null-strings"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@allow-null-strings@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cSVReadOptions #allowNullStrings
-- @
getCSVReadOptionsAllowNullStrings :: (MonadIO m, IsCSVReadOptions o) => o -> m Bool
getCSVReadOptionsAllowNullStrings obj = liftIO $ B.Properties.getObjectPropertyBool obj "allow-null-strings"

-- | Set the value of the “@allow-null-strings@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cSVReadOptions [ #allowNullStrings 'Data.GI.Base.Attributes.:=' value ]
-- @
setCSVReadOptionsAllowNullStrings :: (MonadIO m, IsCSVReadOptions o) => o -> Bool -> m ()
setCSVReadOptionsAllowNullStrings obj val = liftIO $ B.Properties.setObjectPropertyBool obj "allow-null-strings" val

-- | Construct a `GValueConstruct` with valid value for the “@allow-null-strings@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCSVReadOptionsAllowNullStrings :: (IsCSVReadOptions o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructCSVReadOptionsAllowNullStrings val = MIO.liftIO $ B.Properties.constructObjectPropertyBool "allow-null-strings" val

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsAllowNullStringsPropertyInfo
instance AttrInfo CSVReadOptionsAllowNullStringsPropertyInfo where
    type AttrAllowedOps CSVReadOptionsAllowNullStringsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CSVReadOptionsAllowNullStringsPropertyInfo = IsCSVReadOptions
    type AttrSetTypeConstraint CSVReadOptionsAllowNullStringsPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CSVReadOptionsAllowNullStringsPropertyInfo = (~) Bool
    type AttrTransferType CSVReadOptionsAllowNullStringsPropertyInfo = Bool
    type AttrGetType CSVReadOptionsAllowNullStringsPropertyInfo = Bool
    type AttrLabel CSVReadOptionsAllowNullStringsPropertyInfo = "allow-null-strings"
    type AttrOrigin CSVReadOptionsAllowNullStringsPropertyInfo = CSVReadOptions
    attrGet = getCSVReadOptionsAllowNullStrings
    attrSet = setCSVReadOptionsAllowNullStrings
    attrTransfer _ v = do
        return v
    attrConstruct = constructCSVReadOptionsAllowNullStrings
    attrClear = undefined
#endif

-- VVV Prop "block-size"
   -- Type: TBasicType TInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@block-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cSVReadOptions #blockSize
-- @
getCSVReadOptionsBlockSize :: (MonadIO m, IsCSVReadOptions o) => o -> m Int32
getCSVReadOptionsBlockSize obj = liftIO $ B.Properties.getObjectPropertyInt32 obj "block-size"

-- | Set the value of the “@block-size@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cSVReadOptions [ #blockSize 'Data.GI.Base.Attributes.:=' value ]
-- @
setCSVReadOptionsBlockSize :: (MonadIO m, IsCSVReadOptions o) => o -> Int32 -> m ()
setCSVReadOptionsBlockSize obj val = liftIO $ B.Properties.setObjectPropertyInt32 obj "block-size" val

-- | Construct a `GValueConstruct` with valid value for the “@block-size@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCSVReadOptionsBlockSize :: (IsCSVReadOptions o, MIO.MonadIO m) => Int32 -> m (GValueConstruct o)
constructCSVReadOptionsBlockSize val = MIO.liftIO $ B.Properties.constructObjectPropertyInt32 "block-size" val

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsBlockSizePropertyInfo
instance AttrInfo CSVReadOptionsBlockSizePropertyInfo where
    type AttrAllowedOps CSVReadOptionsBlockSizePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CSVReadOptionsBlockSizePropertyInfo = IsCSVReadOptions
    type AttrSetTypeConstraint CSVReadOptionsBlockSizePropertyInfo = (~) Int32
    type AttrTransferTypeConstraint CSVReadOptionsBlockSizePropertyInfo = (~) Int32
    type AttrTransferType CSVReadOptionsBlockSizePropertyInfo = Int32
    type AttrGetType CSVReadOptionsBlockSizePropertyInfo = Int32
    type AttrLabel CSVReadOptionsBlockSizePropertyInfo = "block-size"
    type AttrOrigin CSVReadOptionsBlockSizePropertyInfo = CSVReadOptions
    attrGet = getCSVReadOptionsBlockSize
    attrSet = setCSVReadOptionsBlockSize
    attrTransfer _ v = do
        return v
    attrConstruct = constructCSVReadOptionsBlockSize
    attrClear = undefined
#endif

-- VVV Prop "check-utf8"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@check-utf8@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cSVReadOptions #checkUtf8
-- @
getCSVReadOptionsCheckUtf8 :: (MonadIO m, IsCSVReadOptions o) => o -> m Bool
getCSVReadOptionsCheckUtf8 obj = liftIO $ B.Properties.getObjectPropertyBool obj "check-utf8"

-- | Set the value of the “@check-utf8@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cSVReadOptions [ #checkUtf8 'Data.GI.Base.Attributes.:=' value ]
-- @
setCSVReadOptionsCheckUtf8 :: (MonadIO m, IsCSVReadOptions o) => o -> Bool -> m ()
setCSVReadOptionsCheckUtf8 obj val = liftIO $ B.Properties.setObjectPropertyBool obj "check-utf8" val

-- | Construct a `GValueConstruct` with valid value for the “@check-utf8@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCSVReadOptionsCheckUtf8 :: (IsCSVReadOptions o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructCSVReadOptionsCheckUtf8 val = MIO.liftIO $ B.Properties.constructObjectPropertyBool "check-utf8" val

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsCheckUtf8PropertyInfo
instance AttrInfo CSVReadOptionsCheckUtf8PropertyInfo where
    type AttrAllowedOps CSVReadOptionsCheckUtf8PropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CSVReadOptionsCheckUtf8PropertyInfo = IsCSVReadOptions
    type AttrSetTypeConstraint CSVReadOptionsCheckUtf8PropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CSVReadOptionsCheckUtf8PropertyInfo = (~) Bool
    type AttrTransferType CSVReadOptionsCheckUtf8PropertyInfo = Bool
    type AttrGetType CSVReadOptionsCheckUtf8PropertyInfo = Bool
    type AttrLabel CSVReadOptionsCheckUtf8PropertyInfo = "check-utf8"
    type AttrOrigin CSVReadOptionsCheckUtf8PropertyInfo = CSVReadOptions
    attrGet = getCSVReadOptionsCheckUtf8
    attrSet = setCSVReadOptionsCheckUtf8
    attrTransfer _ v = do
        return v
    attrConstruct = constructCSVReadOptionsCheckUtf8
    attrClear = undefined
#endif

-- VVV Prop "delimiter"
   -- Type: TBasicType TInt8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@delimiter@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cSVReadOptions #delimiter
-- @
getCSVReadOptionsDelimiter :: (MonadIO m, IsCSVReadOptions o) => o -> m Int8
getCSVReadOptionsDelimiter obj = liftIO $ B.Properties.getObjectPropertyInt8 obj "delimiter"

-- | Set the value of the “@delimiter@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cSVReadOptions [ #delimiter 'Data.GI.Base.Attributes.:=' value ]
-- @
setCSVReadOptionsDelimiter :: (MonadIO m, IsCSVReadOptions o) => o -> Int8 -> m ()
setCSVReadOptionsDelimiter obj val = liftIO $ B.Properties.setObjectPropertyInt8 obj "delimiter" val

-- | Construct a `GValueConstruct` with valid value for the “@delimiter@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCSVReadOptionsDelimiter :: (IsCSVReadOptions o, MIO.MonadIO m) => Int8 -> m (GValueConstruct o)
constructCSVReadOptionsDelimiter val = MIO.liftIO $ B.Properties.constructObjectPropertyInt8 "delimiter" val

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsDelimiterPropertyInfo
instance AttrInfo CSVReadOptionsDelimiterPropertyInfo where
    type AttrAllowedOps CSVReadOptionsDelimiterPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CSVReadOptionsDelimiterPropertyInfo = IsCSVReadOptions
    type AttrSetTypeConstraint CSVReadOptionsDelimiterPropertyInfo = (~) Int8
    type AttrTransferTypeConstraint CSVReadOptionsDelimiterPropertyInfo = (~) Int8
    type AttrTransferType CSVReadOptionsDelimiterPropertyInfo = Int8
    type AttrGetType CSVReadOptionsDelimiterPropertyInfo = Int8
    type AttrLabel CSVReadOptionsDelimiterPropertyInfo = "delimiter"
    type AttrOrigin CSVReadOptionsDelimiterPropertyInfo = CSVReadOptions
    attrGet = getCSVReadOptionsDelimiter
    attrSet = setCSVReadOptionsDelimiter
    attrTransfer _ v = do
        return v
    attrConstruct = constructCSVReadOptionsDelimiter
    attrClear = undefined
#endif

-- VVV Prop "escape-character"
   -- Type: TBasicType TInt8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@escape-character@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cSVReadOptions #escapeCharacter
-- @
getCSVReadOptionsEscapeCharacter :: (MonadIO m, IsCSVReadOptions o) => o -> m Int8
getCSVReadOptionsEscapeCharacter obj = liftIO $ B.Properties.getObjectPropertyInt8 obj "escape-character"

-- | Set the value of the “@escape-character@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cSVReadOptions [ #escapeCharacter 'Data.GI.Base.Attributes.:=' value ]
-- @
setCSVReadOptionsEscapeCharacter :: (MonadIO m, IsCSVReadOptions o) => o -> Int8 -> m ()
setCSVReadOptionsEscapeCharacter obj val = liftIO $ B.Properties.setObjectPropertyInt8 obj "escape-character" val

-- | Construct a `GValueConstruct` with valid value for the “@escape-character@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCSVReadOptionsEscapeCharacter :: (IsCSVReadOptions o, MIO.MonadIO m) => Int8 -> m (GValueConstruct o)
constructCSVReadOptionsEscapeCharacter val = MIO.liftIO $ B.Properties.constructObjectPropertyInt8 "escape-character" val

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsEscapeCharacterPropertyInfo
instance AttrInfo CSVReadOptionsEscapeCharacterPropertyInfo where
    type AttrAllowedOps CSVReadOptionsEscapeCharacterPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CSVReadOptionsEscapeCharacterPropertyInfo = IsCSVReadOptions
    type AttrSetTypeConstraint CSVReadOptionsEscapeCharacterPropertyInfo = (~) Int8
    type AttrTransferTypeConstraint CSVReadOptionsEscapeCharacterPropertyInfo = (~) Int8
    type AttrTransferType CSVReadOptionsEscapeCharacterPropertyInfo = Int8
    type AttrGetType CSVReadOptionsEscapeCharacterPropertyInfo = Int8
    type AttrLabel CSVReadOptionsEscapeCharacterPropertyInfo = "escape-character"
    type AttrOrigin CSVReadOptionsEscapeCharacterPropertyInfo = CSVReadOptions
    attrGet = getCSVReadOptionsEscapeCharacter
    attrSet = setCSVReadOptionsEscapeCharacter
    attrTransfer _ v = do
        return v
    attrConstruct = constructCSVReadOptionsEscapeCharacter
    attrClear = undefined
#endif

-- VVV Prop "ignore-empty-lines"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@ignore-empty-lines@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cSVReadOptions #ignoreEmptyLines
-- @
getCSVReadOptionsIgnoreEmptyLines :: (MonadIO m, IsCSVReadOptions o) => o -> m Bool
getCSVReadOptionsIgnoreEmptyLines obj = liftIO $ B.Properties.getObjectPropertyBool obj "ignore-empty-lines"

-- | Set the value of the “@ignore-empty-lines@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cSVReadOptions [ #ignoreEmptyLines 'Data.GI.Base.Attributes.:=' value ]
-- @
setCSVReadOptionsIgnoreEmptyLines :: (MonadIO m, IsCSVReadOptions o) => o -> Bool -> m ()
setCSVReadOptionsIgnoreEmptyLines obj val = liftIO $ B.Properties.setObjectPropertyBool obj "ignore-empty-lines" val

-- | Construct a `GValueConstruct` with valid value for the “@ignore-empty-lines@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCSVReadOptionsIgnoreEmptyLines :: (IsCSVReadOptions o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructCSVReadOptionsIgnoreEmptyLines val = MIO.liftIO $ B.Properties.constructObjectPropertyBool "ignore-empty-lines" val

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsIgnoreEmptyLinesPropertyInfo
instance AttrInfo CSVReadOptionsIgnoreEmptyLinesPropertyInfo where
    type AttrAllowedOps CSVReadOptionsIgnoreEmptyLinesPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CSVReadOptionsIgnoreEmptyLinesPropertyInfo = IsCSVReadOptions
    type AttrSetTypeConstraint CSVReadOptionsIgnoreEmptyLinesPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CSVReadOptionsIgnoreEmptyLinesPropertyInfo = (~) Bool
    type AttrTransferType CSVReadOptionsIgnoreEmptyLinesPropertyInfo = Bool
    type AttrGetType CSVReadOptionsIgnoreEmptyLinesPropertyInfo = Bool
    type AttrLabel CSVReadOptionsIgnoreEmptyLinesPropertyInfo = "ignore-empty-lines"
    type AttrOrigin CSVReadOptionsIgnoreEmptyLinesPropertyInfo = CSVReadOptions
    attrGet = getCSVReadOptionsIgnoreEmptyLines
    attrSet = setCSVReadOptionsIgnoreEmptyLines
    attrTransfer _ v = do
        return v
    attrConstruct = constructCSVReadOptionsIgnoreEmptyLines
    attrClear = undefined
#endif

-- VVV Prop "is-double-quoted"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@is-double-quoted@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cSVReadOptions #isDoubleQuoted
-- @
getCSVReadOptionsIsDoubleQuoted :: (MonadIO m, IsCSVReadOptions o) => o -> m Bool
getCSVReadOptionsIsDoubleQuoted obj = liftIO $ B.Properties.getObjectPropertyBool obj "is-double-quoted"

-- | Set the value of the “@is-double-quoted@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cSVReadOptions [ #isDoubleQuoted 'Data.GI.Base.Attributes.:=' value ]
-- @
setCSVReadOptionsIsDoubleQuoted :: (MonadIO m, IsCSVReadOptions o) => o -> Bool -> m ()
setCSVReadOptionsIsDoubleQuoted obj val = liftIO $ B.Properties.setObjectPropertyBool obj "is-double-quoted" val

-- | Construct a `GValueConstruct` with valid value for the “@is-double-quoted@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCSVReadOptionsIsDoubleQuoted :: (IsCSVReadOptions o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructCSVReadOptionsIsDoubleQuoted val = MIO.liftIO $ B.Properties.constructObjectPropertyBool "is-double-quoted" val

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsIsDoubleQuotedPropertyInfo
instance AttrInfo CSVReadOptionsIsDoubleQuotedPropertyInfo where
    type AttrAllowedOps CSVReadOptionsIsDoubleQuotedPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CSVReadOptionsIsDoubleQuotedPropertyInfo = IsCSVReadOptions
    type AttrSetTypeConstraint CSVReadOptionsIsDoubleQuotedPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CSVReadOptionsIsDoubleQuotedPropertyInfo = (~) Bool
    type AttrTransferType CSVReadOptionsIsDoubleQuotedPropertyInfo = Bool
    type AttrGetType CSVReadOptionsIsDoubleQuotedPropertyInfo = Bool
    type AttrLabel CSVReadOptionsIsDoubleQuotedPropertyInfo = "is-double-quoted"
    type AttrOrigin CSVReadOptionsIsDoubleQuotedPropertyInfo = CSVReadOptions
    attrGet = getCSVReadOptionsIsDoubleQuoted
    attrSet = setCSVReadOptionsIsDoubleQuoted
    attrTransfer _ v = do
        return v
    attrConstruct = constructCSVReadOptionsIsDoubleQuoted
    attrClear = undefined
#endif

-- VVV Prop "is-escaped"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@is-escaped@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cSVReadOptions #isEscaped
-- @
getCSVReadOptionsIsEscaped :: (MonadIO m, IsCSVReadOptions o) => o -> m Bool
getCSVReadOptionsIsEscaped obj = liftIO $ B.Properties.getObjectPropertyBool obj "is-escaped"

-- | Set the value of the “@is-escaped@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cSVReadOptions [ #isEscaped 'Data.GI.Base.Attributes.:=' value ]
-- @
setCSVReadOptionsIsEscaped :: (MonadIO m, IsCSVReadOptions o) => o -> Bool -> m ()
setCSVReadOptionsIsEscaped obj val = liftIO $ B.Properties.setObjectPropertyBool obj "is-escaped" val

-- | Construct a `GValueConstruct` with valid value for the “@is-escaped@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCSVReadOptionsIsEscaped :: (IsCSVReadOptions o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructCSVReadOptionsIsEscaped val = MIO.liftIO $ B.Properties.constructObjectPropertyBool "is-escaped" val

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsIsEscapedPropertyInfo
instance AttrInfo CSVReadOptionsIsEscapedPropertyInfo where
    type AttrAllowedOps CSVReadOptionsIsEscapedPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CSVReadOptionsIsEscapedPropertyInfo = IsCSVReadOptions
    type AttrSetTypeConstraint CSVReadOptionsIsEscapedPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CSVReadOptionsIsEscapedPropertyInfo = (~) Bool
    type AttrTransferType CSVReadOptionsIsEscapedPropertyInfo = Bool
    type AttrGetType CSVReadOptionsIsEscapedPropertyInfo = Bool
    type AttrLabel CSVReadOptionsIsEscapedPropertyInfo = "is-escaped"
    type AttrOrigin CSVReadOptionsIsEscapedPropertyInfo = CSVReadOptions
    attrGet = getCSVReadOptionsIsEscaped
    attrSet = setCSVReadOptionsIsEscaped
    attrTransfer _ v = do
        return v
    attrConstruct = constructCSVReadOptionsIsEscaped
    attrClear = undefined
#endif

-- VVV Prop "is-quoted"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@is-quoted@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cSVReadOptions #isQuoted
-- @
getCSVReadOptionsIsQuoted :: (MonadIO m, IsCSVReadOptions o) => o -> m Bool
getCSVReadOptionsIsQuoted obj = liftIO $ B.Properties.getObjectPropertyBool obj "is-quoted"

-- | Set the value of the “@is-quoted@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cSVReadOptions [ #isQuoted 'Data.GI.Base.Attributes.:=' value ]
-- @
setCSVReadOptionsIsQuoted :: (MonadIO m, IsCSVReadOptions o) => o -> Bool -> m ()
setCSVReadOptionsIsQuoted obj val = liftIO $ B.Properties.setObjectPropertyBool obj "is-quoted" val

-- | Construct a `GValueConstruct` with valid value for the “@is-quoted@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCSVReadOptionsIsQuoted :: (IsCSVReadOptions o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructCSVReadOptionsIsQuoted val = MIO.liftIO $ B.Properties.constructObjectPropertyBool "is-quoted" val

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsIsQuotedPropertyInfo
instance AttrInfo CSVReadOptionsIsQuotedPropertyInfo where
    type AttrAllowedOps CSVReadOptionsIsQuotedPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CSVReadOptionsIsQuotedPropertyInfo = IsCSVReadOptions
    type AttrSetTypeConstraint CSVReadOptionsIsQuotedPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CSVReadOptionsIsQuotedPropertyInfo = (~) Bool
    type AttrTransferType CSVReadOptionsIsQuotedPropertyInfo = Bool
    type AttrGetType CSVReadOptionsIsQuotedPropertyInfo = Bool
    type AttrLabel CSVReadOptionsIsQuotedPropertyInfo = "is-quoted"
    type AttrOrigin CSVReadOptionsIsQuotedPropertyInfo = CSVReadOptions
    attrGet = getCSVReadOptionsIsQuoted
    attrSet = setCSVReadOptionsIsQuoted
    attrTransfer _ v = do
        return v
    attrConstruct = constructCSVReadOptionsIsQuoted
    attrClear = undefined
#endif

-- VVV Prop "n-header-rows"
   -- Type: TBasicType TUInt
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@n-header-rows@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cSVReadOptions #nHeaderRows
-- @
getCSVReadOptionsNHeaderRows :: (MonadIO m, IsCSVReadOptions o) => o -> m Word32
getCSVReadOptionsNHeaderRows obj = liftIO $ B.Properties.getObjectPropertyUInt32 obj "n-header-rows"

-- | Set the value of the “@n-header-rows@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cSVReadOptions [ #nHeaderRows 'Data.GI.Base.Attributes.:=' value ]
-- @
setCSVReadOptionsNHeaderRows :: (MonadIO m, IsCSVReadOptions o) => o -> Word32 -> m ()
setCSVReadOptionsNHeaderRows obj val = liftIO $ B.Properties.setObjectPropertyUInt32 obj "n-header-rows" val

-- | Construct a `GValueConstruct` with valid value for the “@n-header-rows@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCSVReadOptionsNHeaderRows :: (IsCSVReadOptions o, MIO.MonadIO m) => Word32 -> m (GValueConstruct o)
constructCSVReadOptionsNHeaderRows val = MIO.liftIO $ B.Properties.constructObjectPropertyUInt32 "n-header-rows" val

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsNHeaderRowsPropertyInfo
instance AttrInfo CSVReadOptionsNHeaderRowsPropertyInfo where
    type AttrAllowedOps CSVReadOptionsNHeaderRowsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CSVReadOptionsNHeaderRowsPropertyInfo = IsCSVReadOptions
    type AttrSetTypeConstraint CSVReadOptionsNHeaderRowsPropertyInfo = (~) Word32
    type AttrTransferTypeConstraint CSVReadOptionsNHeaderRowsPropertyInfo = (~) Word32
    type AttrTransferType CSVReadOptionsNHeaderRowsPropertyInfo = Word32
    type AttrGetType CSVReadOptionsNHeaderRowsPropertyInfo = Word32
    type AttrLabel CSVReadOptionsNHeaderRowsPropertyInfo = "n-header-rows"
    type AttrOrigin CSVReadOptionsNHeaderRowsPropertyInfo = CSVReadOptions
    attrGet = getCSVReadOptionsNHeaderRows
    attrSet = setCSVReadOptionsNHeaderRows
    attrTransfer _ v = do
        return v
    attrConstruct = constructCSVReadOptionsNHeaderRows
    attrClear = undefined
#endif

-- VVV Prop "quote-character"
   -- Type: TBasicType TInt8
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@quote-character@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cSVReadOptions #quoteCharacter
-- @
getCSVReadOptionsQuoteCharacter :: (MonadIO m, IsCSVReadOptions o) => o -> m Int8
getCSVReadOptionsQuoteCharacter obj = liftIO $ B.Properties.getObjectPropertyInt8 obj "quote-character"

-- | Set the value of the “@quote-character@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cSVReadOptions [ #quoteCharacter 'Data.GI.Base.Attributes.:=' value ]
-- @
setCSVReadOptionsQuoteCharacter :: (MonadIO m, IsCSVReadOptions o) => o -> Int8 -> m ()
setCSVReadOptionsQuoteCharacter obj val = liftIO $ B.Properties.setObjectPropertyInt8 obj "quote-character" val

-- | Construct a `GValueConstruct` with valid value for the “@quote-character@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCSVReadOptionsQuoteCharacter :: (IsCSVReadOptions o, MIO.MonadIO m) => Int8 -> m (GValueConstruct o)
constructCSVReadOptionsQuoteCharacter val = MIO.liftIO $ B.Properties.constructObjectPropertyInt8 "quote-character" val

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsQuoteCharacterPropertyInfo
instance AttrInfo CSVReadOptionsQuoteCharacterPropertyInfo where
    type AttrAllowedOps CSVReadOptionsQuoteCharacterPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CSVReadOptionsQuoteCharacterPropertyInfo = IsCSVReadOptions
    type AttrSetTypeConstraint CSVReadOptionsQuoteCharacterPropertyInfo = (~) Int8
    type AttrTransferTypeConstraint CSVReadOptionsQuoteCharacterPropertyInfo = (~) Int8
    type AttrTransferType CSVReadOptionsQuoteCharacterPropertyInfo = Int8
    type AttrGetType CSVReadOptionsQuoteCharacterPropertyInfo = Int8
    type AttrLabel CSVReadOptionsQuoteCharacterPropertyInfo = "quote-character"
    type AttrOrigin CSVReadOptionsQuoteCharacterPropertyInfo = CSVReadOptions
    attrGet = getCSVReadOptionsQuoteCharacter
    attrSet = setCSVReadOptionsQuoteCharacter
    attrTransfer _ v = do
        return v
    attrConstruct = constructCSVReadOptionsQuoteCharacter
    attrClear = undefined
#endif

-- VVV Prop "use-threads"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

-- | Get the value of the “@use-threads@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.get' cSVReadOptions #useThreads
-- @
getCSVReadOptionsUseThreads :: (MonadIO m, IsCSVReadOptions o) => o -> m Bool
getCSVReadOptionsUseThreads obj = liftIO $ B.Properties.getObjectPropertyBool obj "use-threads"

-- | Set the value of the “@use-threads@” property.
-- When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to
-- 
-- @
-- 'Data.GI.Base.Attributes.set' cSVReadOptions [ #useThreads 'Data.GI.Base.Attributes.:=' value ]
-- @
setCSVReadOptionsUseThreads :: (MonadIO m, IsCSVReadOptions o) => o -> Bool -> m ()
setCSVReadOptionsUseThreads obj val = liftIO $ B.Properties.setObjectPropertyBool obj "use-threads" val

-- | Construct a `GValueConstruct` with valid value for the “@use-threads@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
constructCSVReadOptionsUseThreads :: (IsCSVReadOptions o, MIO.MonadIO m) => Bool -> m (GValueConstruct o)
constructCSVReadOptionsUseThreads val = MIO.liftIO $ B.Properties.constructObjectPropertyBool "use-threads" val

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsUseThreadsPropertyInfo
instance AttrInfo CSVReadOptionsUseThreadsPropertyInfo where
    type AttrAllowedOps CSVReadOptionsUseThreadsPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrBaseTypeConstraint CSVReadOptionsUseThreadsPropertyInfo = IsCSVReadOptions
    type AttrSetTypeConstraint CSVReadOptionsUseThreadsPropertyInfo = (~) Bool
    type AttrTransferTypeConstraint CSVReadOptionsUseThreadsPropertyInfo = (~) Bool
    type AttrTransferType CSVReadOptionsUseThreadsPropertyInfo = Bool
    type AttrGetType CSVReadOptionsUseThreadsPropertyInfo = Bool
    type AttrLabel CSVReadOptionsUseThreadsPropertyInfo = "use-threads"
    type AttrOrigin CSVReadOptionsUseThreadsPropertyInfo = CSVReadOptions
    attrGet = getCSVReadOptionsUseThreads
    attrSet = setCSVReadOptionsUseThreads
    attrTransfer _ v = do
        return v
    attrConstruct = constructCSVReadOptionsUseThreads
    attrClear = undefined
#endif

#if defined(ENABLE_OVERLOADING)
instance O.HasAttributeList CSVReadOptions
type instance O.AttributeList CSVReadOptions = CSVReadOptionsAttributeList
type CSVReadOptionsAttributeList = ('[ '("allowNewlinesInValues", CSVReadOptionsAllowNewlinesInValuesPropertyInfo), '("allowNullStrings", CSVReadOptionsAllowNullStringsPropertyInfo), '("blockSize", CSVReadOptionsBlockSizePropertyInfo), '("checkUtf8", CSVReadOptionsCheckUtf8PropertyInfo), '("delimiter", CSVReadOptionsDelimiterPropertyInfo), '("escapeCharacter", CSVReadOptionsEscapeCharacterPropertyInfo), '("ignoreEmptyLines", CSVReadOptionsIgnoreEmptyLinesPropertyInfo), '("isDoubleQuoted", CSVReadOptionsIsDoubleQuotedPropertyInfo), '("isEscaped", CSVReadOptionsIsEscapedPropertyInfo), '("isQuoted", CSVReadOptionsIsQuotedPropertyInfo), '("nHeaderRows", CSVReadOptionsNHeaderRowsPropertyInfo), '("quoteCharacter", CSVReadOptionsQuoteCharacterPropertyInfo), '("useThreads", CSVReadOptionsUseThreadsPropertyInfo)] :: [(Symbol, *)])
#endif

#if defined(ENABLE_OVERLOADING)
cSVReadOptionsAllowNewlinesInValues :: AttrLabelProxy "allowNewlinesInValues"
cSVReadOptionsAllowNewlinesInValues = AttrLabelProxy

cSVReadOptionsAllowNullStrings :: AttrLabelProxy "allowNullStrings"
cSVReadOptionsAllowNullStrings = AttrLabelProxy

cSVReadOptionsBlockSize :: AttrLabelProxy "blockSize"
cSVReadOptionsBlockSize = AttrLabelProxy

cSVReadOptionsCheckUtf8 :: AttrLabelProxy "checkUtf8"
cSVReadOptionsCheckUtf8 = AttrLabelProxy

cSVReadOptionsDelimiter :: AttrLabelProxy "delimiter"
cSVReadOptionsDelimiter = AttrLabelProxy

cSVReadOptionsEscapeCharacter :: AttrLabelProxy "escapeCharacter"
cSVReadOptionsEscapeCharacter = AttrLabelProxy

cSVReadOptionsIgnoreEmptyLines :: AttrLabelProxy "ignoreEmptyLines"
cSVReadOptionsIgnoreEmptyLines = AttrLabelProxy

cSVReadOptionsIsDoubleQuoted :: AttrLabelProxy "isDoubleQuoted"
cSVReadOptionsIsDoubleQuoted = AttrLabelProxy

cSVReadOptionsIsEscaped :: AttrLabelProxy "isEscaped"
cSVReadOptionsIsEscaped = AttrLabelProxy

cSVReadOptionsIsQuoted :: AttrLabelProxy "isQuoted"
cSVReadOptionsIsQuoted = AttrLabelProxy

cSVReadOptionsNHeaderRows :: AttrLabelProxy "nHeaderRows"
cSVReadOptionsNHeaderRows = AttrLabelProxy

cSVReadOptionsQuoteCharacter :: AttrLabelProxy "quoteCharacter"
cSVReadOptionsQuoteCharacter = AttrLabelProxy

cSVReadOptionsUseThreads :: AttrLabelProxy "useThreads"
cSVReadOptionsUseThreads = AttrLabelProxy

#endif

#if defined(ENABLE_OVERLOADING)
type instance O.SignalList CSVReadOptions = CSVReadOptionsSignalList
type CSVReadOptionsSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method CSVReadOptions::new
-- method type : Constructor
-- Args: []
-- Lengths: []
-- returnType: Just
--               (TInterface Name { namespace = "Arrow" , name = "CSVReadOptions" })
-- throws : False
-- Skip return : False

foreign import ccall "garrow_csv_read_options_new" garrow_csv_read_options_new :: 
    IO (Ptr CSVReadOptions)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.12.0/
cSVReadOptionsNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m CSVReadOptions
    -- ^ __Returns:__ A newly created t'GI.Arrow.Objects.CSVReadOptions.CSVReadOptions'.
cSVReadOptionsNew  = liftIO $ do
    result <- garrow_csv_read_options_new
    checkUnexpectedReturnNULL "cSVReadOptionsNew" result
    result' <- (wrapObject CSVReadOptions) result
    return result'

#if defined(ENABLE_OVERLOADING)
#endif

-- method CSVReadOptions::add_column_type
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "options"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "CSVReadOptions" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowCSVReadOptions."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "name"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The name of the target column."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "data_type"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "DataType" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The #GArrowDataType for the column."
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

foreign import ccall "garrow_csv_read_options_add_column_type" garrow_csv_read_options_add_column_type :: 
    Ptr CSVReadOptions ->                   -- options : TInterface (Name {namespace = "Arrow", name = "CSVReadOptions"})
    CString ->                              -- name : TBasicType TUTF8
    Ptr Arrow.DataType.DataType ->          -- data_type : TInterface (Name {namespace = "Arrow", name = "DataType"})
    IO ()

-- | Add value type of a column.
-- 
-- /Since: 0.12.0/
cSVReadOptionsAddColumnType ::
    (B.CallStack.HasCallStack, MonadIO m, IsCSVReadOptions a, Arrow.DataType.IsDataType b) =>
    a
    -- ^ /@options@/: A t'GI.Arrow.Objects.CSVReadOptions.CSVReadOptions'.
    -> T.Text
    -- ^ /@name@/: The name of the target column.
    -> b
    -- ^ /@dataType@/: The t'GI.Arrow.Objects.DataType.DataType' for the column.
    -> m ()
cSVReadOptionsAddColumnType options name dataType = liftIO $ do
    options' <- unsafeManagedPtrCastPtr options
    name' <- textToCString name
    dataType' <- unsafeManagedPtrCastPtr dataType
    garrow_csv_read_options_add_column_type options' name' dataType'
    touchManagedPtr options
    touchManagedPtr dataType
    freeMem name'
    return ()

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsAddColumnTypeMethodInfo
instance (signature ~ (T.Text -> b -> m ()), MonadIO m, IsCSVReadOptions a, Arrow.DataType.IsDataType b) => O.MethodInfo CSVReadOptionsAddColumnTypeMethodInfo a signature where
    overloadedMethod = cSVReadOptionsAddColumnType

#endif

-- method CSVReadOptions::add_false_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "options"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "CSVReadOptions" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowCSVReadOptions."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "false_value"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The value to be processed as false."
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

foreign import ccall "garrow_csv_read_options_add_false_value" garrow_csv_read_options_add_false_value :: 
    Ptr CSVReadOptions ->                   -- options : TInterface (Name {namespace = "Arrow", name = "CSVReadOptions"})
    CString ->                              -- false_value : TBasicType TUTF8
    IO ()

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
cSVReadOptionsAddFalseValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsCSVReadOptions a) =>
    a
    -- ^ /@options@/: A t'GI.Arrow.Objects.CSVReadOptions.CSVReadOptions'.
    -> T.Text
    -- ^ /@falseValue@/: The value to be processed as false.
    -> m ()
cSVReadOptionsAddFalseValue options falseValue = liftIO $ do
    options' <- unsafeManagedPtrCastPtr options
    falseValue' <- textToCString falseValue
    garrow_csv_read_options_add_false_value options' falseValue'
    touchManagedPtr options
    freeMem falseValue'
    return ()

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsAddFalseValueMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsCSVReadOptions a) => O.MethodInfo CSVReadOptionsAddFalseValueMethodInfo a signature where
    overloadedMethod = cSVReadOptionsAddFalseValue

#endif

-- method CSVReadOptions::add_null_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "options"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "CSVReadOptions" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowCSVReadOptions."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "null_value"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The value to be processed as null."
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

foreign import ccall "garrow_csv_read_options_add_null_value" garrow_csv_read_options_add_null_value :: 
    Ptr CSVReadOptions ->                   -- options : TInterface (Name {namespace = "Arrow", name = "CSVReadOptions"})
    CString ->                              -- null_value : TBasicType TUTF8
    IO ()

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
cSVReadOptionsAddNullValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsCSVReadOptions a) =>
    a
    -- ^ /@options@/: A t'GI.Arrow.Objects.CSVReadOptions.CSVReadOptions'.
    -> T.Text
    -- ^ /@nullValue@/: The value to be processed as null.
    -> m ()
cSVReadOptionsAddNullValue options nullValue = liftIO $ do
    options' <- unsafeManagedPtrCastPtr options
    nullValue' <- textToCString nullValue
    garrow_csv_read_options_add_null_value options' nullValue'
    touchManagedPtr options
    freeMem nullValue'
    return ()

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsAddNullValueMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsCSVReadOptions a) => O.MethodInfo CSVReadOptionsAddNullValueMethodInfo a signature where
    overloadedMethod = cSVReadOptionsAddNullValue

#endif

-- method CSVReadOptions::add_schema
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "options"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "CSVReadOptions" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowCSVReadOptions."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "schema"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "Schema" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText =
--                     Just "The #GArrowSchema that specifies columns and their types."
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

foreign import ccall "garrow_csv_read_options_add_schema" garrow_csv_read_options_add_schema :: 
    Ptr CSVReadOptions ->                   -- options : TInterface (Name {namespace = "Arrow", name = "CSVReadOptions"})
    Ptr Arrow.Schema.Schema ->              -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    IO ()

-- | Add value types for columns in the schema.
-- 
-- /Since: 0.12.0/
cSVReadOptionsAddSchema ::
    (B.CallStack.HasCallStack, MonadIO m, IsCSVReadOptions a, Arrow.Schema.IsSchema b) =>
    a
    -- ^ /@options@/: A t'GI.Arrow.Objects.CSVReadOptions.CSVReadOptions'.
    -> b
    -- ^ /@schema@/: The t'GI.Arrow.Objects.Schema.Schema' that specifies columns and their types.
    -> m ()
cSVReadOptionsAddSchema options schema = liftIO $ do
    options' <- unsafeManagedPtrCastPtr options
    schema' <- unsafeManagedPtrCastPtr schema
    garrow_csv_read_options_add_schema options' schema'
    touchManagedPtr options
    touchManagedPtr schema
    return ()

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsAddSchemaMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsCSVReadOptions a, Arrow.Schema.IsSchema b) => O.MethodInfo CSVReadOptionsAddSchemaMethodInfo a signature where
    overloadedMethod = cSVReadOptionsAddSchema

#endif

-- method CSVReadOptions::add_true_value
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "options"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "CSVReadOptions" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowCSVReadOptions."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "true_value"
--           , argType = TBasicType TUTF8
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The value to be processed as true."
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

foreign import ccall "garrow_csv_read_options_add_true_value" garrow_csv_read_options_add_true_value :: 
    Ptr CSVReadOptions ->                   -- options : TInterface (Name {namespace = "Arrow", name = "CSVReadOptions"})
    CString ->                              -- true_value : TBasicType TUTF8
    IO ()

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
cSVReadOptionsAddTrueValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsCSVReadOptions a) =>
    a
    -- ^ /@options@/: A t'GI.Arrow.Objects.CSVReadOptions.CSVReadOptions'.
    -> T.Text
    -- ^ /@trueValue@/: The value to be processed as true.
    -> m ()
cSVReadOptionsAddTrueValue options trueValue = liftIO $ do
    options' <- unsafeManagedPtrCastPtr options
    trueValue' <- textToCString trueValue
    garrow_csv_read_options_add_true_value options' trueValue'
    touchManagedPtr options
    freeMem trueValue'
    return ()

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsAddTrueValueMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsCSVReadOptions a) => O.MethodInfo CSVReadOptionsAddTrueValueMethodInfo a signature where
    overloadedMethod = cSVReadOptionsAddTrueValue

#endif

-- XXX Could not generate method CSVReadOptions::get_column_types
-- Error was : Not implemented: "GHashTable element of type TInterface (Name {namespace = \"Arrow\", name = \"DataType\"}) unsupported."
#if defined(ENABLE_OVERLOADING)
-- XXX: Dummy instance, since code generation failed.
-- Please file a bug at http://github.com/haskell-gi/haskell-gi.
data CSVReadOptionsGetColumnTypesMethodInfo
instance (p ~ (), o ~ O.UnsupportedMethodError "getColumnTypes" CSVReadOptions) => O.MethodInfo CSVReadOptionsGetColumnTypesMethodInfo o p where
    overloadedMethod = undefined
#endif

-- method CSVReadOptions::get_false_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "options"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "CSVReadOptions" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowCSVReadOptions."
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
-- returnType: Just (TCArray True (-1) (-1) (TBasicType TUTF8))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_csv_read_options_get_false_values" garrow_csv_read_options_get_false_values :: 
    Ptr CSVReadOptions ->                   -- options : TInterface (Name {namespace = "Arrow", name = "CSVReadOptions"})
    IO (Ptr CString)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
cSVReadOptionsGetFalseValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsCSVReadOptions a) =>
    a
    -- ^ /@options@/: A t'GI.Arrow.Objects.CSVReadOptions.CSVReadOptions'.
    -> m (Maybe [T.Text])
    -- ^ __Returns:__ 
    --   The values to be processed as false. It\'s a 'P.Nothing'-terminated string array.
    --   If the number of values is zero, this returns 'P.Nothing'.
    --   It must be freed with 'GI.GLib.Functions.strfreev' when no longer needed.
cSVReadOptionsGetFalseValues options = liftIO $ do
    options' <- unsafeManagedPtrCastPtr options
    result <- garrow_csv_read_options_get_false_values options'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- unpackZeroTerminatedUTF8CArray result'
        mapZeroTerminatedCArray freeMem result'
        freeMem result'
        return result''
    touchManagedPtr options
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsGetFalseValuesMethodInfo
instance (signature ~ (m (Maybe [T.Text])), MonadIO m, IsCSVReadOptions a) => O.MethodInfo CSVReadOptionsGetFalseValuesMethodInfo a signature where
    overloadedMethod = cSVReadOptionsGetFalseValues

#endif

-- method CSVReadOptions::get_null_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "options"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "CSVReadOptions" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowCSVReadOptions."
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
-- returnType: Just (TCArray True (-1) (-1) (TBasicType TUTF8))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_csv_read_options_get_null_values" garrow_csv_read_options_get_null_values :: 
    Ptr CSVReadOptions ->                   -- options : TInterface (Name {namespace = "Arrow", name = "CSVReadOptions"})
    IO (Ptr CString)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
cSVReadOptionsGetNullValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsCSVReadOptions a) =>
    a
    -- ^ /@options@/: A t'GI.Arrow.Objects.CSVReadOptions.CSVReadOptions'.
    -> m (Maybe [T.Text])
    -- ^ __Returns:__ 
    --   The values to be processed as null. It\'s a 'P.Nothing'-terminated string array.
    --   If the number of values is zero, this returns 'P.Nothing'.
    --   It must be freed with 'GI.GLib.Functions.strfreev' when no longer needed.
cSVReadOptionsGetNullValues options = liftIO $ do
    options' <- unsafeManagedPtrCastPtr options
    result <- garrow_csv_read_options_get_null_values options'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- unpackZeroTerminatedUTF8CArray result'
        mapZeroTerminatedCArray freeMem result'
        freeMem result'
        return result''
    touchManagedPtr options
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsGetNullValuesMethodInfo
instance (signature ~ (m (Maybe [T.Text])), MonadIO m, IsCSVReadOptions a) => O.MethodInfo CSVReadOptionsGetNullValuesMethodInfo a signature where
    overloadedMethod = cSVReadOptionsGetNullValues

#endif

-- method CSVReadOptions::get_true_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "options"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "CSVReadOptions" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowCSVReadOptions."
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
-- returnType: Just (TCArray True (-1) (-1) (TBasicType TUTF8))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_csv_read_options_get_true_values" garrow_csv_read_options_get_true_values :: 
    Ptr CSVReadOptions ->                   -- options : TInterface (Name {namespace = "Arrow", name = "CSVReadOptions"})
    IO (Ptr CString)

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
cSVReadOptionsGetTrueValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsCSVReadOptions a) =>
    a
    -- ^ /@options@/: A t'GI.Arrow.Objects.CSVReadOptions.CSVReadOptions'.
    -> m (Maybe [T.Text])
    -- ^ __Returns:__ 
    --   The values to be processed as true. It\'s a 'P.Nothing'-terminated string array.
    --   If the number of values is zero, this returns 'P.Nothing'.
    --   It must be freed with 'GI.GLib.Functions.strfreev' when no longer needed.
cSVReadOptionsGetTrueValues options = liftIO $ do
    options' <- unsafeManagedPtrCastPtr options
    result <- garrow_csv_read_options_get_true_values options'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- unpackZeroTerminatedUTF8CArray result'
        mapZeroTerminatedCArray freeMem result'
        freeMem result'
        return result''
    touchManagedPtr options
    return maybeResult

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsGetTrueValuesMethodInfo
instance (signature ~ (m (Maybe [T.Text])), MonadIO m, IsCSVReadOptions a) => O.MethodInfo CSVReadOptionsGetTrueValuesMethodInfo a signature where
    overloadedMethod = cSVReadOptionsGetTrueValues

#endif

-- method CSVReadOptions::set_false_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "options"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "CSVReadOptions" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowCSVReadOptions."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "false_values"
--           , argType = TCArray False (-1) 2 (TBasicType TUTF8)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "\n  The values to be processed as false."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_false_values"
--           , argType = TBasicType TUInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The number of the specified false values."
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
--              { argCName = "n_false_values"
--              , argType = TBasicType TUInt64
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "The number of the specified false values."
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "garrow_csv_read_options_set_false_values" garrow_csv_read_options_set_false_values :: 
    Ptr CSVReadOptions ->                   -- options : TInterface (Name {namespace = "Arrow", name = "CSVReadOptions"})
    Ptr CString ->                          -- false_values : TCArray False (-1) 2 (TBasicType TUTF8)
    Word64 ->                               -- n_false_values : TBasicType TUInt64
    IO ()

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
cSVReadOptionsSetFalseValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsCSVReadOptions a) =>
    a
    -- ^ /@options@/: A t'GI.Arrow.Objects.CSVReadOptions.CSVReadOptions'.
    -> [T.Text]
    -- ^ /@falseValues@/: 
    --   The values to be processed as false.
    -> m ()
cSVReadOptionsSetFalseValues options falseValues = liftIO $ do
    let nFalseValues = fromIntegral $ length falseValues
    options' <- unsafeManagedPtrCastPtr options
    falseValues' <- packUTF8CArray falseValues
    garrow_csv_read_options_set_false_values options' falseValues' nFalseValues
    touchManagedPtr options
    (mapCArrayWithLength nFalseValues) freeMem falseValues'
    freeMem falseValues'
    return ()

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsSetFalseValuesMethodInfo
instance (signature ~ ([T.Text] -> m ()), MonadIO m, IsCSVReadOptions a) => O.MethodInfo CSVReadOptionsSetFalseValuesMethodInfo a signature where
    overloadedMethod = cSVReadOptionsSetFalseValues

#endif

-- method CSVReadOptions::set_null_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "options"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "CSVReadOptions" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowCSVReadOptions."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "null_values"
--           , argType = TCArray False (-1) 2 (TBasicType TUTF8)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "\n  The values to be processed as null."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_null_values"
--           , argType = TBasicType TUInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The number of the specified null values."
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
--              { argCName = "n_null_values"
--              , argType = TBasicType TUInt64
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "The number of the specified null values."
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "garrow_csv_read_options_set_null_values" garrow_csv_read_options_set_null_values :: 
    Ptr CSVReadOptions ->                   -- options : TInterface (Name {namespace = "Arrow", name = "CSVReadOptions"})
    Ptr CString ->                          -- null_values : TCArray False (-1) 2 (TBasicType TUTF8)
    Word64 ->                               -- n_null_values : TBasicType TUInt64
    IO ()

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
cSVReadOptionsSetNullValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsCSVReadOptions a) =>
    a
    -- ^ /@options@/: A t'GI.Arrow.Objects.CSVReadOptions.CSVReadOptions'.
    -> [T.Text]
    -- ^ /@nullValues@/: 
    --   The values to be processed as null.
    -> m ()
cSVReadOptionsSetNullValues options nullValues = liftIO $ do
    let nNullValues = fromIntegral $ length nullValues
    options' <- unsafeManagedPtrCastPtr options
    nullValues' <- packUTF8CArray nullValues
    garrow_csv_read_options_set_null_values options' nullValues' nNullValues
    touchManagedPtr options
    (mapCArrayWithLength nNullValues) freeMem nullValues'
    freeMem nullValues'
    return ()

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsSetNullValuesMethodInfo
instance (signature ~ ([T.Text] -> m ()), MonadIO m, IsCSVReadOptions a) => O.MethodInfo CSVReadOptionsSetNullValuesMethodInfo a signature where
    overloadedMethod = cSVReadOptionsSetNullValues

#endif

-- method CSVReadOptions::set_true_values
-- method type : OrdinaryMethod
-- Args: [ Arg
--           { argCName = "options"
--           , argType =
--               TInterface Name { namespace = "Arrow" , name = "CSVReadOptions" }
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "A #GArrowCSVReadOptions."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "true_values"
--           , argType = TCArray False (-1) 2 (TBasicType TUTF8)
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "\n  The values to be processed as true."
--                 , sinceVersion = Nothing
--                 }
--           , argScope = ScopeTypeInvalid
--           , argClosure = -1
--           , argDestroy = -1
--           , argCallerAllocates = False
--           , transfer = TransferNothing
--           }
--       , Arg
--           { argCName = "n_true_values"
--           , argType = TBasicType TUInt64
--           , direction = DirectionIn
--           , mayBeNull = False
--           , argDoc =
--               Documentation
--                 { rawDocText = Just "The number of the specified true values."
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
--              { argCName = "n_true_values"
--              , argType = TBasicType TUInt64
--              , direction = DirectionIn
--              , mayBeNull = False
--              , argDoc =
--                  Documentation
--                    { rawDocText = Just "The number of the specified true values."
--                    , sinceVersion = Nothing
--                    }
--              , argScope = ScopeTypeInvalid
--              , argClosure = -1
--              , argDestroy = -1
--              , argCallerAllocates = False
--              , transfer = TransferNothing
--              }
--          ]
-- returnType: Nothing
-- throws : False
-- Skip return : False

foreign import ccall "garrow_csv_read_options_set_true_values" garrow_csv_read_options_set_true_values :: 
    Ptr CSVReadOptions ->                   -- options : TInterface (Name {namespace = "Arrow", name = "CSVReadOptions"})
    Ptr CString ->                          -- true_values : TCArray False (-1) 2 (TBasicType TUTF8)
    Word64 ->                               -- n_true_values : TBasicType TUInt64
    IO ()

-- | /No description available in the introspection data./
-- 
-- /Since: 0.14.0/
cSVReadOptionsSetTrueValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsCSVReadOptions a) =>
    a
    -- ^ /@options@/: A t'GI.Arrow.Objects.CSVReadOptions.CSVReadOptions'.
    -> [T.Text]
    -- ^ /@trueValues@/: 
    --   The values to be processed as true.
    -> m ()
cSVReadOptionsSetTrueValues options trueValues = liftIO $ do
    let nTrueValues = fromIntegral $ length trueValues
    options' <- unsafeManagedPtrCastPtr options
    trueValues' <- packUTF8CArray trueValues
    garrow_csv_read_options_set_true_values options' trueValues' nTrueValues
    touchManagedPtr options
    (mapCArrayWithLength nTrueValues) freeMem trueValues'
    freeMem trueValues'
    return ()

#if defined(ENABLE_OVERLOADING)
data CSVReadOptionsSetTrueValuesMethodInfo
instance (signature ~ ([T.Text] -> m ()), MonadIO m, IsCSVReadOptions a) => O.MethodInfo CSVReadOptionsSetTrueValuesMethodInfo a signature where
    overloadedMethod = cSVReadOptionsSetTrueValues

#endif


