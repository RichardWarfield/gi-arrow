

-- | Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
-- License    : LGPL-2.1
-- Maintainer : Iñaki García Etxebarria

#if (MIN_VERSION_haskell_gi_overloading(1,0,0) && !defined(__HADDOCK_VERSION__))
#define ENABLE_OVERLOADING
#endif

module GI.Arrow.Enums
    ( 

 -- * Enumerations
-- ** CompareOperator #enum:CompareOperator#

    CompareOperator(..)                     ,


-- ** CompressionType #enum:CompressionType#

    CompressionType(..)                     ,


-- ** CountMode #enum:CountMode#

    CountMode(..)                           ,


-- ** Error #enum:Error#

    Error(..)                               ,
    catchError                              ,
    handleError                             ,


-- ** FileMode #enum:FileMode#

    FileMode(..)                            ,


-- ** JSONReadUnexpectedFieldBehavior #enum:JSONReadUnexpectedFieldBehavior#

    JSONReadUnexpectedFieldBehavior(..)     ,


-- ** MetadataVersion #enum:MetadataVersion#

    MetadataVersion(..)                     ,


-- ** TimeUnit #enum:TimeUnit#

    TimeUnit(..)                            ,


-- ** Type #enum:Type#

    Type(..)                                ,




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


-- Enum Type
-- | They are corresponding to @arrow::Type::type@ values.
data Type = 
      TypeNa
    -- ^ A degenerate NULL type represented as 0 bytes\/bits.
    | TypeBoolean
    -- ^ A boolean value represented as 1 bit.
    | TypeUint8
    -- ^ Little-endian 8bit unsigned integer.
    | TypeInt8
    -- ^ Little-endian 8bit signed integer.
    | TypeUint16
    -- ^ Little-endian 16bit unsigned integer.
    | TypeInt16
    -- ^ Little-endian 16bit signed integer.
    | TypeUint32
    -- ^ Little-endian 32bit unsigned integer.
    | TypeInt32
    -- ^ Little-endian 32bit signed integer.
    | TypeUint64
    -- ^ Little-endian 64bit unsigned integer.
    | TypeInt64
    -- ^ Little-endian 64bit signed integer.
    | TypeHalfFloat
    -- ^ 2-byte floating point value.
    | TypeFloat
    -- ^ 4-byte floating point value.
    | TypeDouble
    -- ^ 8-byte floating point value.
    | TypeString
    -- ^ UTF-8 variable-length string.
    | TypeBinary
    -- ^ Variable-length bytes (no guarantee of UTF-8-ness).
    | TypeFixedSizeBinary
    -- ^ Fixed-size binary. Each value occupies
    --   the same number of bytes.
    | TypeDate32
    -- ^ int32 days since the UNIX epoch.
    | TypeDate64
    -- ^ int64 milliseconds since the UNIX epoch.
    | TypeTimestamp
    -- ^ Exact timestamp encoded with int64 since UNIX epoch.
    --   Default unit millisecond.
    | TypeTime32
    -- ^ Exact time encoded with int32, supporting seconds or milliseconds
    | TypeTime64
    -- ^ Exact time encoded with int64, supporting micro- or nanoseconds
    | TypeInterval
    -- ^ YEAR_MONTH or DAY_TIME interval in SQL style.
    | TypeDecimal
    -- ^ Precision- and scale-based decimal
    --   type. Storage type depends on the parameters.
    | TypeList
    -- ^ A list of some logical data type.
    | TypeStruct
    -- ^ Struct of logical types.
    | TypeUnion
    -- ^ Unions of logical types.
    | TypeDictionary
    -- ^ Dictionary aka Category type.
    | AnotherType Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum Type where
    fromEnum TypeNa = 0
    fromEnum TypeBoolean = 1
    fromEnum TypeUint8 = 2
    fromEnum TypeInt8 = 3
    fromEnum TypeUint16 = 4
    fromEnum TypeInt16 = 5
    fromEnum TypeUint32 = 6
    fromEnum TypeInt32 = 7
    fromEnum TypeUint64 = 8
    fromEnum TypeInt64 = 9
    fromEnum TypeHalfFloat = 10
    fromEnum TypeFloat = 11
    fromEnum TypeDouble = 12
    fromEnum TypeString = 13
    fromEnum TypeBinary = 14
    fromEnum TypeFixedSizeBinary = 15
    fromEnum TypeDate32 = 16
    fromEnum TypeDate64 = 17
    fromEnum TypeTimestamp = 18
    fromEnum TypeTime32 = 19
    fromEnum TypeTime64 = 20
    fromEnum TypeInterval = 21
    fromEnum TypeDecimal = 22
    fromEnum TypeList = 23
    fromEnum TypeStruct = 24
    fromEnum TypeUnion = 25
    fromEnum TypeDictionary = 26
    fromEnum (AnotherType k) = k

    toEnum 0 = TypeNa
    toEnum 1 = TypeBoolean
    toEnum 2 = TypeUint8
    toEnum 3 = TypeInt8
    toEnum 4 = TypeUint16
    toEnum 5 = TypeInt16
    toEnum 6 = TypeUint32
    toEnum 7 = TypeInt32
    toEnum 8 = TypeUint64
    toEnum 9 = TypeInt64
    toEnum 10 = TypeHalfFloat
    toEnum 11 = TypeFloat
    toEnum 12 = TypeDouble
    toEnum 13 = TypeString
    toEnum 14 = TypeBinary
    toEnum 15 = TypeFixedSizeBinary
    toEnum 16 = TypeDate32
    toEnum 17 = TypeDate64
    toEnum 18 = TypeTimestamp
    toEnum 19 = TypeTime32
    toEnum 20 = TypeTime64
    toEnum 21 = TypeInterval
    toEnum 22 = TypeDecimal
    toEnum 23 = TypeList
    toEnum 24 = TypeStruct
    toEnum 25 = TypeUnion
    toEnum 26 = TypeDictionary
    toEnum k = AnotherType k

instance P.Ord Type where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

foreign import ccall "garrow_type_get_type" c_garrow_type_get_type :: 
    IO GType

instance BoxedEnum Type where
    boxedEnumType _ = c_garrow_type_get_type

-- Enum TimeUnit
-- | They are corresponding to @arrow::TimeUnit::type@ values.
data TimeUnit = 
      TimeUnitSecond
    -- ^ Second.
    | TimeUnitMilli
    -- ^ Millisecond.
    | TimeUnitMicro
    -- ^ Microsecond.
    | TimeUnitNano
    -- ^ Nanosecond.
    | AnotherTimeUnit Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum TimeUnit where
    fromEnum TimeUnitSecond = 0
    fromEnum TimeUnitMilli = 1
    fromEnum TimeUnitMicro = 2
    fromEnum TimeUnitNano = 3
    fromEnum (AnotherTimeUnit k) = k

    toEnum 0 = TimeUnitSecond
    toEnum 1 = TimeUnitMilli
    toEnum 2 = TimeUnitMicro
    toEnum 3 = TimeUnitNano
    toEnum k = AnotherTimeUnit k

instance P.Ord TimeUnit where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

foreign import ccall "garrow_time_unit_get_type" c_garrow_time_unit_get_type :: 
    IO GType

instance BoxedEnum TimeUnit where
    boxedEnumType _ = c_garrow_time_unit_get_type

-- Enum MetadataVersion
-- | They are corresponding to @arrow::ipc::MetadataVersion::type@
-- values.
data MetadataVersion = 
      MetadataVersionV1
    -- ^ Version 1.
    | MetadataVersionV2
    -- ^ Version 2.
    | MetadataVersionV3
    -- ^ Version 3.
    | AnotherMetadataVersion Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum MetadataVersion where
    fromEnum MetadataVersionV1 = 0
    fromEnum MetadataVersionV2 = 1
    fromEnum MetadataVersionV3 = 2
    fromEnum (AnotherMetadataVersion k) = k

    toEnum 0 = MetadataVersionV1
    toEnum 1 = MetadataVersionV2
    toEnum 2 = MetadataVersionV3
    toEnum k = AnotherMetadataVersion k

instance P.Ord MetadataVersion where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

foreign import ccall "garrow_metadata_version_get_type" c_garrow_metadata_version_get_type :: 
    IO GType

instance BoxedEnum MetadataVersion where
    boxedEnumType _ = c_garrow_metadata_version_get_type

-- Enum JSONReadUnexpectedFieldBehavior
-- | They are corresponding to @arrow::json::UnexpectedFieldBehavior@ values.
data JSONReadUnexpectedFieldBehavior = 
      JSONReadUnexpectedFieldBehaviorIgnore
    -- ^ Ignore other fields.
    | JSONReadUnexpectedFieldBehaviorError
    -- ^ Return error.
    | JSONReadUnexpectedFieldBehaviorInferType
    -- ^ Infer a type.
    | AnotherJSONReadUnexpectedFieldBehavior Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum JSONReadUnexpectedFieldBehavior where
    fromEnum JSONReadUnexpectedFieldBehaviorIgnore = 0
    fromEnum JSONReadUnexpectedFieldBehaviorError = 1
    fromEnum JSONReadUnexpectedFieldBehaviorInferType = 2
    fromEnum (AnotherJSONReadUnexpectedFieldBehavior k) = k

    toEnum 0 = JSONReadUnexpectedFieldBehaviorIgnore
    toEnum 1 = JSONReadUnexpectedFieldBehaviorError
    toEnum 2 = JSONReadUnexpectedFieldBehaviorInferType
    toEnum k = AnotherJSONReadUnexpectedFieldBehavior k

instance P.Ord JSONReadUnexpectedFieldBehavior where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

foreign import ccall "garrow_json_read_unexpected_field_behavior_get_type" c_garrow_json_read_unexpected_field_behavior_get_type :: 
    IO GType

instance BoxedEnum JSONReadUnexpectedFieldBehavior where
    boxedEnumType _ = c_garrow_json_read_unexpected_field_behavior_get_type

-- Enum FileMode
-- | They are corresponding to @arrow::io::FileMode::type@ values.
data FileMode = 
      FileModeRead
    -- ^ For read.
    | FileModeWrite
    -- ^ For write.
    | FileModeReadwrite
    -- ^ For read-write.
    | AnotherFileMode Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum FileMode where
    fromEnum FileModeRead = 0
    fromEnum FileModeWrite = 1
    fromEnum FileModeReadwrite = 2
    fromEnum (AnotherFileMode k) = k

    toEnum 0 = FileModeRead
    toEnum 1 = FileModeWrite
    toEnum 2 = FileModeReadwrite
    toEnum k = AnotherFileMode k

instance P.Ord FileMode where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

foreign import ccall "garrow_file_mode_get_type" c_garrow_file_mode_get_type :: 
    IO GType

instance BoxedEnum FileMode where
    boxedEnumType _ = c_garrow_file_mode_get_type

-- Enum Error
-- | The error codes are used by all arrow-glib functions.
-- 
-- They are corresponding to @arrow::Status@ values.
data Error = 
      ErrorOutOfMemory
    -- ^ Out of memory error.
    | ErrorKey
    -- ^ Key error.
    | ErrorType
    -- ^ Type error.
    | ErrorInvalid
    -- ^ Invalid value error.
    | ErrorIo
    -- ^ IO error.
    | ErrorCapacity
    -- ^ Capacity error.
    | ErrorIndex
    -- ^ Index error.
    | ErrorUnknown
    -- ^ Unknown error.
    | ErrorNotImplemented
    -- ^ The feature is not implemented.
    | ErrorSerialization
    -- ^ Serialization error.
    | ErrorPython
    -- ^ Python error.
    | ErrorPlasmaObjectExists
    -- ^ Object already exists on Plasma.
    | ErrorPlasmaObjectNonexistent
    -- ^ Object doesn\'t exist on Plasma.
    | ErrorPlasmaStoreFull
    -- ^ Store full error on Plasma.
    | ErrorPlasmaObjectAlreadySealed
    -- ^ Object already sealed on Plasma.
    | ErrorCodeGeneration
    -- ^ Error generating code for expression evaluation
    --   in Gandiva.
    | ErrorExpressionValidation
    -- ^ Validation errors in expression given for code generation.
    | ErrorExecution
    -- ^ Execution error while evaluating the expression against a record batch.
    | AnotherError Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum Error where
    fromEnum ErrorOutOfMemory = 1
    fromEnum ErrorKey = 2
    fromEnum ErrorType = 3
    fromEnum ErrorInvalid = 4
    fromEnum ErrorIo = 5
    fromEnum ErrorCapacity = 6
    fromEnum ErrorIndex = 7
    fromEnum ErrorUnknown = 9
    fromEnum ErrorNotImplemented = 10
    fromEnum ErrorSerialization = 11
    fromEnum ErrorPython = 12
    fromEnum ErrorPlasmaObjectExists = 20
    fromEnum ErrorPlasmaObjectNonexistent = 21
    fromEnum ErrorPlasmaStoreFull = 22
    fromEnum ErrorPlasmaObjectAlreadySealed = 23
    fromEnum ErrorCodeGeneration = 40
    fromEnum ErrorExpressionValidation = 41
    fromEnum ErrorExecution = 42
    fromEnum (AnotherError k) = k

    toEnum 1 = ErrorOutOfMemory
    toEnum 2 = ErrorKey
    toEnum 3 = ErrorType
    toEnum 4 = ErrorInvalid
    toEnum 5 = ErrorIo
    toEnum 6 = ErrorCapacity
    toEnum 7 = ErrorIndex
    toEnum 9 = ErrorUnknown
    toEnum 10 = ErrorNotImplemented
    toEnum 11 = ErrorSerialization
    toEnum 12 = ErrorPython
    toEnum 20 = ErrorPlasmaObjectExists
    toEnum 21 = ErrorPlasmaObjectNonexistent
    toEnum 22 = ErrorPlasmaStoreFull
    toEnum 23 = ErrorPlasmaObjectAlreadySealed
    toEnum 40 = ErrorCodeGeneration
    toEnum 41 = ErrorExpressionValidation
    toEnum 42 = ErrorExecution
    toEnum k = AnotherError k

instance P.Ord Error where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

instance GErrorClass Error where
    gerrorClassDomain _ = "garrow-error-quark"

-- | Catch exceptions of type `Error`. This is a specialized version of `Data.GI.Base.GError.catchGErrorJustDomain`.
catchError ::
    IO a ->
    (Error -> GErrorMessage -> IO a) ->
    IO a
catchError = catchGErrorJustDomain

-- | Handle exceptions of type `Error`. This is a specialized version of `Data.GI.Base.GError.handleGErrorJustDomain`.
handleError ::
    (Error -> GErrorMessage -> IO a) ->
    IO a ->
    IO a
handleError = handleGErrorJustDomain

foreign import ccall "garrow_error_get_type" c_garrow_error_get_type :: 
    IO GType

instance BoxedEnum Error where
    boxedEnumType _ = c_garrow_error_get_type

-- Enum CountMode
-- | They are corresponding to @arrow::compute::CountOptions::mode@ values.
data CountMode = 
      CountModeAll
    -- ^ Count all non-null values.
    | CountModeNull
    -- ^ Count all null values.
    | AnotherCountMode Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum CountMode where
    fromEnum CountModeAll = 0
    fromEnum CountModeNull = 1
    fromEnum (AnotherCountMode k) = k

    toEnum 0 = CountModeAll
    toEnum 1 = CountModeNull
    toEnum k = AnotherCountMode k

instance P.Ord CountMode where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

foreign import ccall "garrow_count_mode_get_type" c_garrow_count_mode_get_type :: 
    IO GType

instance BoxedEnum CountMode where
    boxedEnumType _ = c_garrow_count_mode_get_type

-- Enum CompressionType
-- | They are corresponding to @arrow::Compression::type@ values.
data CompressionType = 
      CompressionTypeUncompressed
    -- ^ Not compressed.
    | CompressionTypeSnappy
    -- ^ Snappy compression.
    | CompressionTypeGzip
    -- ^ gzip compression.
    | CompressionTypeBrotli
    -- ^ Brotli compression.
    | CompressionTypeZstd
    -- ^ Zstandard compression.
    | CompressionTypeLz4
    -- ^ LZ4 compression.
    | CompressionTypeLzo
    -- ^ LZO compression.
    | CompressionTypeBz2
    -- ^ bzip2 compression.
    | AnotherCompressionType Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum CompressionType where
    fromEnum CompressionTypeUncompressed = 0
    fromEnum CompressionTypeSnappy = 1
    fromEnum CompressionTypeGzip = 2
    fromEnum CompressionTypeBrotli = 3
    fromEnum CompressionTypeZstd = 4
    fromEnum CompressionTypeLz4 = 5
    fromEnum CompressionTypeLzo = 6
    fromEnum CompressionTypeBz2 = 7
    fromEnum (AnotherCompressionType k) = k

    toEnum 0 = CompressionTypeUncompressed
    toEnum 1 = CompressionTypeSnappy
    toEnum 2 = CompressionTypeGzip
    toEnum 3 = CompressionTypeBrotli
    toEnum 4 = CompressionTypeZstd
    toEnum 5 = CompressionTypeLz4
    toEnum 6 = CompressionTypeLzo
    toEnum 7 = CompressionTypeBz2
    toEnum k = AnotherCompressionType k

instance P.Ord CompressionType where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

foreign import ccall "garrow_compression_type_get_type" c_garrow_compression_type_get_type :: 
    IO GType

instance BoxedEnum CompressionType where
    boxedEnumType _ = c_garrow_compression_type_get_type

-- Enum CompareOperator
-- | They are corresponding to @arrow::compute::CompareOperator@ values.
data CompareOperator = 
      CompareOperatorEqual
    -- ^ Equal operator.
    | CompareOperatorNotEqual
    -- ^ Not equal operator.
    | CompareOperatorGreater
    -- ^ Greater operator.
    | CompareOperatorGreaterEqual
    -- ^ Greater equal operator.
    | CompareOperatorLess
    -- ^ Less operator.
    | CompareOperatorLessEqual
    -- ^ Less equal operator.
    | AnotherCompareOperator Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum CompareOperator where
    fromEnum CompareOperatorEqual = 0
    fromEnum CompareOperatorNotEqual = 1
    fromEnum CompareOperatorGreater = 2
    fromEnum CompareOperatorGreaterEqual = 3
    fromEnum CompareOperatorLess = 4
    fromEnum CompareOperatorLessEqual = 5
    fromEnum (AnotherCompareOperator k) = k

    toEnum 0 = CompareOperatorEqual
    toEnum 1 = CompareOperatorNotEqual
    toEnum 2 = CompareOperatorGreater
    toEnum 3 = CompareOperatorGreaterEqual
    toEnum 4 = CompareOperatorLess
    toEnum 5 = CompareOperatorLessEqual
    toEnum k = AnotherCompareOperator k

instance P.Ord CompareOperator where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

foreign import ccall "garrow_compare_operator_get_type" c_garrow_compare_operator_get_type :: 
    IO GType

instance BoxedEnum CompareOperator where
    boxedEnumType _ = c_garrow_compare_operator_get_type


