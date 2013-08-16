#include <sqlite3.h>
#include <bindings.dsl.h>

-- | <http://www.sqlite.org/c3ref/intro.html>

module Bindings.Sqlite3 where
#strict_import

#num SQLITE_SHM_NLOCK

#num SQLITE_VTAB_CONSTRAINT_SUPPORT

#opaque_t sqlite3_backup

#opaque_t sqlite3_context

#globalvar sqlite3_data_directory , Ptr CChar

#starttype sqlite3_file
#field pMethods , Ptr <sqlite3_io_methods>
#stoptype

#starttype sqlite3_index_info
#field nConstraint , CInt
#field aConstraint , Ptr <sqlite3_index_constraint>
#field nOrderBy , CInt
#field aOrderBy , Ptr <sqlite3_index_orderby>
#field aConstraintUsage , Ptr <sqlite3_index_constraint_usage>
#field idxNum , CInt
#field idxStr , CString
#field needToFreeIdxStr , CInt
#field orderByConsumed , CInt
#field estimatedCost , CDouble
#stoptype
#starttype struct sqlite3_index_constraint
#field iColumn , CInt
#field op , CUChar
#field usable , CUChar
#stoptype
#starttype struct sqlite3_index_orderby
#field iColumn , CInt
#field desc , CUChar
#stoptype
#starttype struct sqlite3_index_constraint_usage
#field argvIndex , CInt
#field omit , CUChar
#stoptype

#starttype sqlite3_io_methods
#field iVersion , CInt
#field xClose , FunPtr (Ptr <sqlite3_file> -> IO CInt)
#field xRead , FunPtr (Ptr <sqlite3_file> -> Ptr () -> \
 CInt -> <sqlite3_int64> -> IO CInt)
#field xWrite , FunPtr (Ptr <sqlite3_file> -> Ptr () -> \
 CInt -> <sqlite3_int64> -> IO ())
#field xTruncate , FunPtr (Ptr <sqlite3_file> -> \
 <sqlite3_int64> -> IO CInt)
#field xSync , FunPtr (Ptr <sqlite3_file> -> CInt -> IO CInt)
#field xFileSize , FunPtr (Ptr <sqlite3_file> -> \
 Ptr <sqlite3_int64> -> IO CInt)
#field xLock , FunPtr (Ptr <sqlite3_file> -> CInt -> IO CInt)
#field xUnlock , FunPtr (Ptr <sqlite3_file> -> CInt -> IO CInt)
#field xCheckReservedLock , FunPtr (Ptr <sqlite3_file> -> \
 Ptr CInt -> IO CInt)
#field xFileControl , FunPtr (Ptr <sqlite3_file> -> \
 CInt -> Ptr () -> IO CInt)
#field xSectorSize , FunPtr (Ptr <sqlite3_file> -> IO CInt)
#field xDeviceCharacteristics , FunPtr (Ptr <sqlite3_file> -> \
 IO CInt)
#field xShmMap , FunPtr (Ptr <sqlite3_file> -> CInt -> CInt -> \
 CInt -> Ptr (Ptr ()) -> IO CInt)
#field xShmLock , FunPtr (Ptr <sqlite3_file> -> CInt -> CInt -> \
 CInt -> IO CInt)
#field xShmBarrier , FunPtr (Ptr <sqlite3_file> -> IO ())
#field xShmUnmap , FunPtr (Ptr <sqlite3_file> -> CInt -> IO CInt)
#field xFetch, FunPtr (Ptr <sqlite3_file> -> <sqlite3_int64> -> \
 CInt -> Ptr (Ptr ()) -> IO CInt)
#field xUnfetch, FunPtr (Ptr <sqlite3_file> -> <sqlite3_int64> -> \
 Ptr () -> IO CInt)
#stoptype

#starttype sqlite3_mem_methods
#field xMalloc , FunPtr (CInt -> IO (Ptr ()))
#field xFree , FunPtr (Ptr () -> IO ())
#field xRealloc , FunPtr (Ptr () -> CInt -> IO (Ptr ()))
#field xSize , FunPtr (Ptr () -> IO CInt)
#field xRoundup , FunPtr (CInt -> IO CInt)
#field xInit , FunPtr (Ptr () -> IO CInt)
#field xShutdown , FunPtr (Ptr () -> IO ())
#field pAppData , Ptr ()
#stoptype

#opaque_t sqlite3_mutex

#starttype sqlite3_mutex_methods
#field xMutexInit , FunPtr (IO CInt)
#field xMutexEnd , FunPtr (IO CInt)
#field xMutexAlloc , FunPtr (CInt -> IO (Ptr <sqlite3_mutex>))
#field xMutexFree , FunPtr (Ptr <sqlite3_mutex> -> IO ())
#field xMutexEnter , FunPtr (Ptr <sqlite3_mutex> -> IO ())
#field xMutexTry , FunPtr (Ptr <sqlite3_mutex> -> IO CInt)
#field xMutexLeave , FunPtr (Ptr <sqlite3_mutex> -> IO ())
#field xMutexHeld , FunPtr (Ptr <sqlite3_mutex> -> IO CInt)
#field xMutexNotheld , FunPtr (Ptr <sqlite3_mutex> -> IO CInt)
#stoptype

#opaque_t sqlite3_pcache

#starttype sqlite3_pcache_page
#field pBuf , Ptr ()
#field pExtra , Ptr ()
#stoptype

#globalvar sqlite3_temp_directory , CString

#callback_t sqlite3_syscall_ptr , IO ()
#starttype sqlite3_vfs
#field iVersion , CInt
#field szOsFile , CInt
#field mxPathname , CInt
#field pNext , Ptr <sqlite3_vfs>
#field zName , CString
#field pAppData , Ptr ()
#field xOpen , FunPtr (Ptr <sqlite3_vfs> -> CString -> \
 Ptr <sqlite3_file> -> CInt -> Ptr CInt -> IO CInt)
#field xDelete , FunPtr (Ptr <sqlite3_vfs> -> \
 CString -> CInt -> IO CInt)
#field xAccess , FunPtr (Ptr <sqlite3_vfs> -> CString -> \
 CInt -> Ptr CInt -> IO CInt)
#field xFullPathname , FunPtr (Ptr <sqlite3_vfs> -> \
 CString -> CInt -> CString -> IO CInt)
#field xDlOpen , FunPtr (Ptr <sqlite3_vfs> -> CString -> IO (Ptr ()))
#field xDlError , FunPtr (Ptr <sqlite3_vfs> -> \
 CInt -> CString -> IO ())
#field xDlSym , FunPtr (Ptr <sqlite3_vfs> -> \
 Ptr () -> CString -> IO (FunPtr (IO ())))
#field xDlClose , FunPtr (Ptr <sqlite3_vfs> -> Ptr () -> IO ())
#field xRandomness , FunPtr (Ptr <sqlite3_vfs> -> \
 CInt -> CString -> IO CInt)
#field xSleep , FunPtr (Ptr <sqlite3_vfs> -> CInt -> IO CInt)
#field xCurrentTime , FunPtr (Ptr <sqlite3_vfs> -> \
 Ptr CDouble -> IO CInt)
#field xGetLastError , FunPtr (Ptr <sqlite3_vfs> -> \
 CInt -> CString -> IO CInt)
#field xCurrentTimeInt64 , FunPtr (Ptr <sqlite3_vfs> -> \
 Ptr <sqlite3_int64> -> IO CInt)
#field xSetSystemCall , FunPtr (Ptr <sqlite3_vfs> -> CString -> \
 <sqlite3_syscall_ptr> -> IO CInt)
#field xGetSystemCall , FunPtr (Ptr <sqlite3_vfs> -> CString -> \
 IO <sqlite3_syscall_ptr>)
#field xNextSystemCall , FunPtr (Ptr <sqlite3_vfs> -> CString -> \
 IO CString)
#stoptype

#starttype sqlite3_vtab
#field pModule , Ptr <sqlite3_module>
#field zErrMsg , CString
#stoptype

#ccall sqlite3_aggregate_context , Ptr <sqlite3_context> -> \
    CInt -> IO (Ptr ())

#ccall sqlite3_auto_extension , FunPtr (IO ()) -> IO CInt

#ccall sqlite3_bind_parameter_count , Ptr <sqlite3_stmt> -> IO CInt

#ccall sqlite3_bind_parameter_index , Ptr <sqlite3_stmt> -> \
    CString -> IO CInt

#ccall sqlite3_bind_parameter_name , Ptr <sqlite3_stmt> -> \
    CInt -> IO CString

#ccall sqlite3_blob_bytes , Ptr <sqlite3_blob> -> IO CInt

#ccall sqlite3_blob_close , Ptr <sqlite3_blob> -> IO CInt

#ccall sqlite3_blob_open , Ptr <sqlite3> -> CString -> CString -> \
    CString -> <sqlite3_int64> -> CInt -> Ptr (Ptr <sqlite3_blob>) -> \
    IO CInt

#ccall sqlite3_blob_read , Ptr <sqlite3_blob> -> Ptr () -> \
    CInt -> CInt -> IO CInt

#ccall sqlite3_blob_reopen , Ptr <sqlite3_blob> -> <sqlite3_int64> -> IO CInt

#ccall sqlite3_blob_write , Ptr <sqlite3_blob> -> Ptr () -> \
    CInt -> CInt -> IO CInt

#ccall sqlite3_busy_handler , Ptr <sqlite3> -> FunPtr (Ptr () -> \
    CInt -> IO CInt) -> Ptr () -> IO CInt

#ccall sqlite3_busy_timeout , Ptr <sqlite3> -> CInt -> IO CInt

#ccall sqlite3_changes , Ptr <sqlite3> -> IO CInt

#ccall sqlite3_clear_bindings , Ptr <sqlite3_stmt> -> IO CInt

#ccall sqlite3_column_count , Ptr <sqlite3_stmt> -> IO CInt

#ccall sqlite3_context_db_handle , Ptr <sqlite3_context> -> \
    IO (Ptr <sqlite3>)

#ccall sqlite3_data_count , Ptr <sqlite3_stmt> -> IO CInt

#ccall sqlite3_db_filename , Ptr <sqlite3> -> CString -> IO CString

#ccall sqlite3_db_handle , Ptr <sqlite3_stmt> -> IO (Ptr <sqlite3>)

#ccall sqlite3_db_mutex , Ptr <sqlite3> -> IO (Ptr <sqlite3_mutex>)

#ccall sqlite3_db_readonly , Ptr <sqlite3> -> CString -> IO CInt

#ccall sqlite3_db_release_memory , Ptr <sqlite3> -> IO CInt

#ccall sqlite3_db_status , Ptr <sqlite3> -> CInt -> Ptr CInt -> \
    Ptr CInt -> CInt -> IO CInt

#ccall sqlite3_declare_vtab , Ptr <sqlite3> -> CString -> IO CInt

#ccall sqlite3_enable_load_extension , Ptr <sqlite3> -> CInt -> IO CInt

#ccall sqlite3_enable_shared_cache , CInt -> IO CInt

#ccall sqlite3_exec , Ptr <sqlite3> -> CString -> FunPtr (Ptr () -> \
    CInt -> Ptr CString -> Ptr CString -> IO CInt) -> Ptr () -> \
    Ptr CString -> IO CInt

#ccall sqlite3_extended_result_codes , Ptr <sqlite3> -> CInt -> IO CInt

#ccall sqlite3_file_control , Ptr <sqlite3> -> CString -> CInt -> \
    Ptr () -> IO CInt

#ccall sqlite3_finalize , Ptr <sqlite3_stmt> -> IO CInt

#ccall sqlite3_interrupt , Ptr <sqlite3> -> IO ()

#ccall sqlite3_last_insert_rowid , Ptr <sqlite3> -> IO <sqlite3_int64>

#ccall sqlite3_limit , Ptr <sqlite3> -> CInt -> CInt -> IO CInt

#ccall sqlite3_load_extension , Ptr <sqlite3> -> CString -> \
    CString -> Ptr CString -> IO CInt

#ccall sqlite3_next_stmt , Ptr <sqlite3> -> Ptr <sqlite3_stmt> -> \
    IO (Ptr <sqlite3_stmt>)

#ccall sqlite3_overload_function , Ptr <sqlite3> -> CString -> CInt -> IO CInt

#ccall sqlite3_progress_handler , Ptr <sqlite3> -> CInt -> \
    FunPtr (Ptr () -> IO CInt) -> Ptr () -> IO ()

#ccall sqlite3_randomness , CInt -> Ptr () -> IO ()

#ccall sqlite3_release_memory , CInt -> IO CInt

#ccall sqlite3_reset , Ptr <sqlite3_stmt> -> IO CInt

#ccall sqlite3_reset_auto_extension , IO ()

#ccall sqlite3_set_authorizer , Ptr <sqlite3> -> FunPtr (Ptr () -> \
    CInt -> CString -> CString -> CString -> CString -> IO CInt) -> \
    Ptr () -> IO CInt

#ccall sqlite3_sleep , CInt -> IO CInt

#ccall sqlite3_soft_heap_limit64 , <sqlite3_int64> -> IO <sqlite3_int64>

#ccall sqlite3_sql , Ptr <sqlite3_stmt> -> IO CString

#ccall sqlite3_status , CInt -> Ptr CInt -> Ptr CInt -> CInt -> IO CInt

#ccall sqlite3_step , Ptr <sqlite3_stmt> -> IO CInt

#ccall sqlite3_stmt_busy , Ptr <sqlite3_stmt> -> IO CInt

#ccall sqlite3_stmt_readonly , Ptr <sqlite3_stmt> -> IO CInt

#ccall sqlite3_stmt_status , Ptr <sqlite3_stmt> -> CInt -> CInt -> IO CInt

#ccall sqlite3_strglob , CString -> CString -> IO CInt

#ccall sqlite3_table_column_metadata , Ptr <sqlite3> -> CString -> \
    CString -> CString -> Ptr CString -> Ptr CString -> Ptr CInt -> \
    Ptr CInt -> Ptr CInt -> IO CInt

#ccall sqlite3_threadsafe , IO CInt

#ccall sqlite3_total_changes , Ptr <sqlite3> -> IO CInt

#ccall sqlite3_unlock_notify , Ptr <sqlite3> -> FunPtr (Ptr (Ptr ()) -> \
    CInt -> IO ()) -> Ptr () -> IO CInt

#ccall sqlite3_update_hook , Ptr <sqlite3> -> FunPtr (Ptr () -> \
    CInt -> CString -> CString -> <sqlite3_int64> -> IO ()) -> \
    Ptr () -> IO (Ptr ())

#ccall sqlite3_user_data , Ptr <sqlite3_context> -> IO (Ptr ())

#ccall sqlite3_vtab_on_conflict , Ptr <sqlite3> -> IO CInt

#ccall sqlite3_wal_autocheckpoint , Ptr <sqlite3> -> CInt -> IO CInt

#ccall sqlite3_wal_checkpoint , Ptr <sqlite3> -> CString -> IO CInt

#ccall sqlite3_wal_checkpoint_v2 , Ptr <sqlite3> -> CString -> CInt -> \
    Ptr CInt -> Ptr CInt -> IO CInt

#ccall sqlite3_wal_hook , Ptr <sqlite3> -> FunPtr (Ptr () -> Ptr <sqlite3> -> \
    CString -> CInt -> IO CInt) -> Ptr () -> IO (Ptr ())

#num SQLITE_OK
#num SQLITE_ERROR
#num SQLITE_INTERNAL
#num SQLITE_PERM
#num SQLITE_ABORT
#num SQLITE_BUSY
#num SQLITE_LOCKED
#num SQLITE_NOMEM
#num SQLITE_READONLY
#num SQLITE_INTERRUPT
#num SQLITE_IOERR
#num SQLITE_CORRUPT
#num SQLITE_NOTFOUND
#num SQLITE_FULL
#num SQLITE_CANTOPEN
#num SQLITE_PROTOCOL
#num SQLITE_EMPTY
#num SQLITE_SCHEMA
#num SQLITE_TOOBIG
#num SQLITE_CONSTRAINT
#num SQLITE_MISMATCH
#num SQLITE_MISUSE
#num SQLITE_NOLFS
#num SQLITE_AUTH
#num SQLITE_FORMAT
#num SQLITE_RANGE
#num SQLITE_NOTADB
#num SQLITE_NOTICE
#num SQLITE_WARNING
#num SQLITE_ROW
#num SQLITE_DONE

#num SQLITE_IOERR_READ
#num SQLITE_IOERR_SHORT_READ
#num SQLITE_IOERR_WRITE
#num SQLITE_IOERR_FSYNC
#num SQLITE_IOERR_DIR_FSYNC
#num SQLITE_IOERR_TRUNCATE
#num SQLITE_IOERR_FSTAT
#num SQLITE_IOERR_UNLOCK
#num SQLITE_IOERR_RDLOCK
#num SQLITE_IOERR_DELETE
#num SQLITE_IOERR_BLOCKED
#num SQLITE_IOERR_NOMEM
#num SQLITE_IOERR_ACCESS
#num SQLITE_IOERR_CHECKRESERVEDLOCK
#num SQLITE_IOERR_LOCK
#num SQLITE_IOERR_CLOSE
#num SQLITE_IOERR_DIR_CLOSE
#num SQLITE_IOERR_SHMOPEN
#num SQLITE_IOERR_SHMSIZE
#num SQLITE_IOERR_SHMLOCK
#num SQLITE_IOERR_SHMMAP
#num SQLITE_IOERR_SEEK
#num SQLITE_IOERR_DELETE_NOENT
#num SQLITE_IOERR_MMAP
#num SQLITE_LOCKED_SHAREDCACHE
#num SQLITE_BUSY_RECOVERY
#num SQLITE_CANTOPEN_NOTEMPDIR
#num SQLITE_CANTOPEN_ISDIR
#num SQLITE_CANTOPEN_FULLPATH
#num SQLITE_CORRUPT_VTAB
#num SQLITE_READONLY_RECOVERY
#num SQLITE_READONLY_CANTLOCK
#num SQLITE_READONLY_ROLLBACK
#num SQLITE_ABORT_ROLLBACK
#num SQLITE_CONSTRAINT_CHECK
#num SQLITE_CONSTRAINT_COMMITHOOK
#num SQLITE_CONSTRAINT_FOREIGNKEY
#num SQLITE_CONSTRAINT_FUNCTION
#num SQLITE_CONSTRAINT_NOTNULL
#num SQLITE_CONSTRAINT_PRIMARYKEY
#num SQLITE_CONSTRAINT_TRIGGER
#num SQLITE_CONSTRAINT_UNIQUE
#num SQLITE_CONSTRAINT_VTAB
#num SQLITE_NOTICE_RECOVER_WAL
#num SQLITE_NOTICE_RECOVER_ROLLBACK

#num SQLITE_ACCESS_EXISTS
#num SQLITE_ACCESS_READWRITE
#num SQLITE_ACCESS_READ

#num SQLITE_CREATE_INDEX
#num SQLITE_CREATE_TABLE
#num SQLITE_CREATE_TEMP_INDEX
#num SQLITE_CREATE_TEMP_TABLE
#num SQLITE_CREATE_TEMP_TRIGGER
#num SQLITE_CREATE_TEMP_VIEW
#num SQLITE_CREATE_TRIGGER
#num SQLITE_CREATE_VIEW
#num SQLITE_DELETE
#num SQLITE_DROP_INDEX
#num SQLITE_DROP_TABLE
#num SQLITE_DROP_TEMP_INDEX
#num SQLITE_DROP_TEMP_TABLE
#num SQLITE_DROP_TEMP_TRIGGER
#num SQLITE_DROP_TEMP_VIEW
#num SQLITE_DROP_TRIGGER
#num SQLITE_DROP_VIEW
#num SQLITE_INSERT
#num SQLITE_PRAGMA
#num SQLITE_READ
#num SQLITE_SELECT
#num SQLITE_TRANSACTION
#num SQLITE_UPDATE
#num SQLITE_ATTACH
#num SQLITE_DETACH
#num SQLITE_ALTER_TABLE
#num SQLITE_REINDEX
#num SQLITE_ANALYZE
#num SQLITE_CREATE_VTABLE
#num SQLITE_DROP_VTABLE
#num SQLITE_FUNCTION
#num SQLITE_SAVEPOINT
#num SQLITE_COPY

#num SQLITE_UTF8
#num SQLITE_UTF16LE
#num SQLITE_UTF16BE
#num SQLITE_UTF16
#num SQLITE_ANY
#num SQLITE_UTF16_ALIGNED

#num SQLITE_INTEGER
#num SQLITE_FLOAT
#num SQLITE_BLOB
#num SQLITE_NULL
#num SQLITE_TEXT
#num SQLITE3_TEXT

#num SQLITE_CHECKPOINT_PASSIVE
#num SQLITE_CHECKPOINT_FULL
#num SQLITE_CHECKPOINT_RESTART

#num SQLITE_CONFIG_SINGLETHREAD
#num SQLITE_CONFIG_MULTITHREAD
#num SQLITE_CONFIG_SERIALIZED
#num SQLITE_CONFIG_MALLOC
#num SQLITE_CONFIG_GETMALLOC
#num SQLITE_CONFIG_SCRATCH
#num SQLITE_CONFIG_PAGECACHE
#num SQLITE_CONFIG_HEAP
#num SQLITE_CONFIG_MEMSTATUS
#num SQLITE_CONFIG_MUTEX
#num SQLITE_CONFIG_GETMUTEX
#num SQLITE_CONFIG_LOOKASIDE
#num SQLITE_CONFIG_PCACHE
#num SQLITE_CONFIG_GETPCACHE
#num SQLITE_CONFIG_LOG
#num SQLITE_CONFIG_URI
#num SQLITE_CONFIG_PCACHE2
#num SQLITE_CONFIG_GETPCACHE2
#num SQLITE_CONFIG_COVERING_INDEX_SCAN
#num SQLITE_CONFIG_SQLLOG
#num SQLITE_CONFIG_MMAP_SIZE

#num SQLITE_DBCONFIG_LOOKASIDE
#num SQLITE_DBCONFIG_ENABLE_FKEY
#num SQLITE_DBCONFIG_ENABLE_TRIGGER

#num SQLITE_DENY
#num SQLITE_IGNORE

#num SQLITE_ROLLBACK
#num SQLITE_FAIL
#num SQLITE_REPLACE

#num SQLITE_FCNTL_LOCKSTATE
#num SQLITE_GET_LOCKPROXYFILE
#num SQLITE_SET_LOCKPROXYFILE
#num SQLITE_LAST_ERRNO
#num SQLITE_FCNTL_SIZE_HINT
#num SQLITE_FCNTL_CHUNK_SIZE
#num SQLITE_FCNTL_FILE_POINTER
#num SQLITE_FCNTL_SYNC_OMITTED
#num SQLITE_FCNTL_WIN32_AV_RETRY
#num SQLITE_FCNTL_PERSIST_WAL
#num SQLITE_FCNTL_OVERWRITE
#num SQLITE_FCNTL_VFSNAME
#num SQLITE_FCNTL_POWERSAFE_OVERWRITE
#num SQLITE_FCNTL_PRAGMA
#num SQLITE_FCNTL_BUSYHANDLER
#num SQLITE_FCNTL_TEMPFILENAME
#num SQLITE_FCNTL_MMAP_SIZE

#num SQLITE_INDEX_CONSTRAINT_EQ
#num SQLITE_INDEX_CONSTRAINT_GT
#num SQLITE_INDEX_CONSTRAINT_LE
#num SQLITE_INDEX_CONSTRAINT_LT
#num SQLITE_INDEX_CONSTRAINT_GE
#num SQLITE_INDEX_CONSTRAINT_MATCH

#num SQLITE_IOCAP_ATOMIC
#num SQLITE_IOCAP_ATOMIC512
#num SQLITE_IOCAP_ATOMIC1K
#num SQLITE_IOCAP_ATOMIC2K
#num SQLITE_IOCAP_ATOMIC4K
#num SQLITE_IOCAP_ATOMIC8K
#num SQLITE_IOCAP_ATOMIC16K
#num SQLITE_IOCAP_ATOMIC32K
#num SQLITE_IOCAP_ATOMIC64K
#num SQLITE_IOCAP_SAFE_APPEND
#num SQLITE_IOCAP_SEQUENTIAL
#num SQLITE_IOCAP_UNDELETABLE_WHEN_OPEN
#num SQLITE_IOCAP_POWERSAFE_OVERWRITE

#num SQLITE_LOCK_NONE
#num SQLITE_LOCK_SHARED
#num SQLITE_LOCK_RESERVED
#num SQLITE_LOCK_PENDING
#num SQLITE_LOCK_EXCLUSIVE

#num SQLITE_MUTEX_FAST
#num SQLITE_MUTEX_RECURSIVE
#num SQLITE_MUTEX_STATIC_MASTER
#num SQLITE_MUTEX_STATIC_MEM
#num SQLITE_MUTEX_STATIC_MEM2
#num SQLITE_MUTEX_STATIC_OPEN
#num SQLITE_MUTEX_STATIC_PRNG
#num SQLITE_MUTEX_STATIC_LRU
#num SQLITE_MUTEX_STATIC_LRU2
#num SQLITE_MUTEX_STATIC_PMEM

#num SQLITE_OPEN_READONLY
#num SQLITE_OPEN_READWRITE
#num SQLITE_OPEN_CREATE
#num SQLITE_OPEN_DELETEONCLOSE
#num SQLITE_OPEN_EXCLUSIVE
#num SQLITE_OPEN_AUTOPROXY
#num SQLITE_OPEN_URI
#num SQLITE_OPEN_MEMORY
#num SQLITE_OPEN_MAIN_DB
#num SQLITE_OPEN_TEMP_DB
#num SQLITE_OPEN_TRANSIENT_DB
#num SQLITE_OPEN_MAIN_JOURNAL
#num SQLITE_OPEN_TEMP_JOURNAL
#num SQLITE_OPEN_SUBJOURNAL
#num SQLITE_OPEN_MASTER_JOURNAL
#num SQLITE_OPEN_NOMUTEX
#num SQLITE_OPEN_FULLMUTEX
#num SQLITE_OPEN_SHAREDCACHE
#num SQLITE_OPEN_PRIVATECACHE
#num SQLITE_OPEN_WAL

#num SQLITE_SHM_UNLOCK
#num SQLITE_SHM_LOCK
#num SQLITE_SHM_SHARED
#num SQLITE_SHM_EXCLUSIVE

#globalarray SQLITE_VERSION , CChar
#num SQLITE_VERSION_NUMBER
#globalarray SQLITE_SOURCE_ID , CChar

#callback_t sqlite3_destructor_type , Ptr () -> IO ()
#function_pointer SQLITE_STATIC
#function_pointer SQLITE_TRANSIENT

#num SQLITE_STATUS_MEMORY_USED
#num SQLITE_STATUS_PAGECACHE_USED
#num SQLITE_STATUS_PAGECACHE_OVERFLOW
#num SQLITE_STATUS_SCRATCH_USED
#num SQLITE_STATUS_SCRATCH_OVERFLOW
#num SQLITE_STATUS_MALLOC_SIZE
#num SQLITE_STATUS_PARSER_STACK
#num SQLITE_STATUS_PAGECACHE_SIZE
#num SQLITE_STATUS_SCRATCH_SIZE
#num SQLITE_STATUS_MALLOC_COUNT

#num SQLITE_SYNC_NORMAL
#num SQLITE_SYNC_FULL
#num SQLITE_SYNC_DATAONLY

#num SQLITE_TESTCTRL_FIRST
#num SQLITE_TESTCTRL_PRNG_SAVE
#num SQLITE_TESTCTRL_PRNG_RESTORE
#num SQLITE_TESTCTRL_PRNG_RESET
#num SQLITE_TESTCTRL_BITVEC_TEST
#num SQLITE_TESTCTRL_FAULT_INSTALL
#num SQLITE_TESTCTRL_BENIGN_MALLOC_HOOKS
#num SQLITE_TESTCTRL_PENDING_BYTE
#num SQLITE_TESTCTRL_ASSERT
#num SQLITE_TESTCTRL_ALWAYS
#num SQLITE_TESTCTRL_RESERVE
#num SQLITE_TESTCTRL_OPTIMIZATIONS
#num SQLITE_TESTCTRL_ISKEYWORD
#num SQLITE_TESTCTRL_SCRATCHMALLOC
#num SQLITE_TESTCTRL_LOCALTIME_FAULT
#num SQLITE_TESTCTRL_EXPLAIN_STMT
#num SQLITE_TESTCTRL_LAST

#num SQLITE_LIMIT_LENGTH
#num SQLITE_LIMIT_SQL_LENGTH
#num SQLITE_LIMIT_COLUMN
#num SQLITE_LIMIT_EXPR_DEPTH
#num SQLITE_LIMIT_COMPOUND_SELECT
#num SQLITE_LIMIT_VDBE_OP
#num SQLITE_LIMIT_FUNCTION_ARG
#num SQLITE_LIMIT_ATTACHED
#num SQLITE_LIMIT_LIKE_PATTERN_LENGTH
#num SQLITE_LIMIT_VARIABLE_NUMBER
#num SQLITE_LIMIT_TRIGGER_DEPTH

#num SQLITE_DBSTATUS_LOOKASIDE_USED
#num SQLITE_DBSTATUS_CACHE_USED
#num SQLITE_DBSTATUS_SCHEMA_USED
#num SQLITE_DBSTATUS_STMT_USED
#num SQLITE_DBSTATUS_LOOKASIDE_HIT
#num SQLITE_DBSTATUS_LOOKASIDE_MISS_SIZE
#num SQLITE_DBSTATUS_LOOKASIDE_MISS_FULL
#num SQLITE_DBSTATUS_CACHE_HIT
#num SQLITE_DBSTATUS_CACHE_MISS
#num SQLITE_DBSTATUS_CACHE_WRITE
#num SQLITE_DBSTATUS_MAX

#num SQLITE_STMTSTATUS_FULLSCAN_STEP
#num SQLITE_STMTSTATUS_SORT
#num SQLITE_STMTSTATUS_AUTOINDEX

#integral_t sqlite3_int64
#integral_t sqlite3_uint64

#starttype sqlite3_module
#field iVersion , CInt
#field xCreate , FunPtr (Ptr <sqlite3> -> Ptr () -> CInt -> \
 Ptr CString -> Ptr (Ptr <sqlite3_vtab>) -> Ptr CString -> IO CInt)
#field xConnect , FunPtr (Ptr <sqlite3> -> Ptr () -> CInt -> \
 Ptr CString -> Ptr (Ptr <sqlite3_vtab>) -> Ptr CString -> IO CInt)
#field xBestIndex , FunPtr (Ptr <sqlite3_vtab> -> \
 Ptr <sqlite3_index_info> -> IO CInt)
#field xDisconnect , FunPtr (Ptr <sqlite3_vtab> -> IO CInt)
#field xDestroy , FunPtr (Ptr <sqlite3_vtab> -> IO CInt)
#field xOpen , FunPtr (Ptr <sqlite3_vtab> -> \
 Ptr (Ptr <sqlite3_vtab_cursor>) -> IO CInt)
#field xClose , FunPtr (Ptr <sqlite3_vtab_cursor> -> IO CInt)
#field xFilter , FunPtr (Ptr <sqlite3_vtab_cursor> -> CInt -> \
 CString -> CInt -> Ptr (Ptr <sqlite3_value>) -> IO CInt)
#field xNext , FunPtr (Ptr <sqlite3_vtab_cursor> -> IO CInt)
#field xEof , FunPtr (Ptr <sqlite3_vtab_cursor> -> IO CInt)
#field xColumn , FunPtr (Ptr <sqlite3_vtab_cursor> -> \
 Ptr <sqlite3_context> -> CInt -> IO CInt)
#field xRowid , FunPtr (Ptr <sqlite3_vtab_cursor> -> \
 Ptr <sqlite3_int64> -> IO CInt)
#field xUpdate , FunPtr (Ptr <sqlite3_vtab> -> CInt -> \
 Ptr (Ptr <sqlite3_value>) -> Ptr <sqlite3_int64> -> IO CInt)
#field xBegin , FunPtr (Ptr <sqlite3_vtab> -> IO CInt)
#field xSync , FunPtr (Ptr <sqlite3_vtab> -> IO CInt)
#field xCommit , FunPtr (Ptr <sqlite3_vtab> -> IO CInt)
#field xRollback , FunPtr (Ptr <sqlite3_vtab> -> IO CInt)
#field xFindFunction , FunPtr (Ptr <sqlite3_vtab> -> CInt -> CString -> \
 Ptr (FunPtr (Ptr <sqlite3_context> -> CInt -> Ptr (Ptr <sqlite3_value>) -> \
 Ptr (Ptr ()) -> IO ())) -> Ptr (Ptr ()) -> IO CInt)
#field xRename , FunPtr (Ptr <sqlite3_vtab> -> CString -> IO CInt)
#field xSavepoint , FunPtr (Ptr <sqlite3_vtab> -> CInt -> IO CInt)
#field xRelease , FunPtr (Ptr <sqlite3_vtab> -> CInt -> IO CInt)
#field xRollbackTo , FunPtr (Ptr <sqlite3_vtab> -> CInt -> IO CInt)
#stoptype

#starttype sqlite3_vtab_cursor
#field pVtab , Ptr <sqlite3_vtab>
#stoptype

#opaque_t sqlite3_blob
#opaque_t sqlite3

#starttype sqlite3_pcache_methods2
#field iVersion , CInt
#field pArg , Ptr ()
#field xInit , FunPtr (Ptr () -> IO CInt)
#field xShutdown , FunPtr (Ptr () -> IO ())
#field xCreate , FunPtr (CInt -> CInt -> CInt -> IO (Ptr <sqlite3_pcache>))
#field xCachesize , FunPtr (Ptr <sqlite3_pcache> -> CInt -> IO ())
#field xPagecount , FunPtr (Ptr <sqlite3_pcache> -> IO CInt)
#field xFetch , FunPtr (Ptr <sqlite3_pcache> -> CUInt -> CInt -> IO (Ptr <sqlite3_pcache_page>))
#field xUnpin , FunPtr (Ptr <sqlite3_pcache> -> Ptr <sqlite3_pcache_page> -> CInt -> IO ())
#field xRekey , FunPtr (Ptr <sqlite3_pcache> -> Ptr <sqlite3_pcache_page> -> CUInt -> CUInt -> IO ())
#field xTruncate , FunPtr (Ptr <sqlite3_pcache> -> CUInt -> IO ())
#field xDestroy , FunPtr (Ptr <sqlite3_pcache> -> IO ())
#field xShrink , FunPtr (Ptr <sqlite3_pcache> -> IO ())
#stoptype

#opaque_t sqlite3_stmt
#opaque_t sqlite3_value

#ccall sqlite3_backup_init , Ptr <sqlite3> -> CString -> \
    Ptr <sqlite3> -> CString -> IO (Ptr <sqlite3_backup>)
#ccall sqlite3_backup_step , Ptr <sqlite3_backup> -> CInt -> IO CInt
#ccall sqlite3_backup_finish , Ptr <sqlite3_backup> -> IO CInt
#ccall sqlite3_backup_remaining , Ptr <sqlite3_backup> -> IO CInt
#ccall sqlite3_backup_pagecount , Ptr <sqlite3_backup> -> IO CInt

#ccall sqlite3_close , Ptr <sqlite3> -> IO CInt
#ccall sqlite3_close_v2 , Ptr <sqlite3> -> IO CInt

#ccall sqlite3_collation_needed , Ptr <sqlite3> -> \
  Ptr () -> FunPtr (Ptr () -> Ptr <sqlite3> -> CInt -> \
  CString -> IO ()) -> IO CInt
#ccall sqlite3_collation_needed16 , Ptr <sqlite3> -> \
  Ptr () -> FunPtr (Ptr () -> Ptr <sqlite3> -> CInt -> \
  Ptr () -> IO ()) -> IO CInt

#ccall sqlite3_column_database_name , Ptr <sqlite3_stmt> -> \
    CInt -> IO CString 
#ccall sqlite3_column_database_name16 , Ptr <sqlite3_stmt> -> \
    CInt -> IO (Ptr ())
#ccall sqlite3_column_table_name , Ptr <sqlite3_stmt> -> \
    CInt -> IO CString 
#ccall sqlite3_column_table_name16 , Ptr <sqlite3_stmt> -> \
    CInt -> IO (Ptr ())
#ccall sqlite3_column_origin_name , Ptr <sqlite3_stmt> -> \
    CInt -> IO CString 
#ccall sqlite3_column_origin_name16 , Ptr <sqlite3_stmt> -> \
    CInt -> IO (Ptr ())

#ccall sqlite3_column_decltype , Ptr <sqlite3_stmt> -> \
    CInt -> IO CString 
#ccall sqlite3_column_decltype16 , Ptr <sqlite3_stmt> -> \
    CInt -> IO (Ptr ())

#ccall sqlite3_column_name , Ptr <sqlite3_stmt> -> CInt -> \
    IO CString 
#ccall sqlite3_column_name16 , Ptr <sqlite3_stmt> -> CInt -> \
    IO (Ptr ())

#ccall sqlite3_commit_hook , Ptr <sqlite3> -> FunPtr (Ptr () -> \
    IO CInt) -> Ptr () -> IO (Ptr ())
#ccall sqlite3_rollback_hook , Ptr <sqlite3> -> FunPtr (Ptr () -> \
    IO ()) -> Ptr () -> IO (Ptr ())

#ccall sqlite3_complete , CString -> IO CInt
#ccall sqlite3_complete16 , Ptr () -> IO CInt

#ccall sqlite3_create_collation , Ptr <sqlite3> -> CString -> \
    CInt -> Ptr () -> FunPtr (Ptr () -> CInt -> Ptr () -> \
    CInt -> Ptr () -> IO CInt) -> IO CInt
#ccall sqlite3_create_collation_v2 , Ptr <sqlite3> -> CString -> \
    CInt -> Ptr () -> FunPtr (Ptr () -> CInt -> Ptr () -> \
    CInt -> Ptr () -> IO CInt) -> FunPtr (Ptr () -> IO ()) -> IO CInt
#ccall sqlite3_create_collation16 , Ptr <sqlite3> -> Ptr () -> \
    CInt -> Ptr () -> FunPtr (Ptr () -> CInt -> Ptr () -> \
    CInt -> Ptr () -> IO CInt) -> IO CInt

#ccall sqlite3_create_module , Ptr <sqlite3> -> CString -> \
    Ptr <sqlite3_module> -> Ptr () -> IO CInt
#ccall sqlite3_create_module_v2 , Ptr <sqlite3> -> CString -> \
    Ptr <sqlite3_module> -> Ptr () -> FunPtr (Ptr () -> IO ()) -> IO CInt

#ccall sqlite3_errcode , Ptr <sqlite3> -> IO CInt
#ccall sqlite3_extended_errcode , Ptr <sqlite3> -> IO CInt
#ccall sqlite3_errmsg , Ptr <sqlite3> -> IO CString
#ccall sqlite3_errmsg16 , Ptr <sqlite3> -> IO (Ptr ())
#ccall sqlite3_errstr , CInt -> IO CString

#ccall sqlite3_malloc , CInt -> IO (Ptr ())
#ccall sqlite3_realloc , Ptr () -> CInt -> IO (Ptr ())
#ccall sqlite3_free , Ptr () -> IO ()

#ccall sqlite3_get_table , Ptr <sqlite3> -> CString -> \
    Ptr (Ptr CString) -> Ptr CInt -> Ptr CInt -> \
    Ptr CString -> IO CInt
#ccall sqlite3_free_table , Ptr CString -> IO ()

#ccall sqlite3_get_auxdata , Ptr <sqlite3_context> -> \
    CInt -> IO (Ptr ())
#ccall sqlite3_set_auxdata , Ptr <sqlite3_context> -> CInt -> \
    Ptr () -> FunPtr (Ptr () -> IO ()) -> IO ()

#ccall sqlite3_initialize , IO CInt
#ccall sqlite3_shutdown , IO CInt
#ccall sqlite3_os_init , IO CInt
#ccall sqlite3_os_end , IO CInt

#globalarray sqlite3_version , CChar
#ccall sqlite3_libversion , IO CString
#ccall sqlite3_sourceid , IO CString
#ccall sqlite3_libversion_number , IO CInt

#ccall sqlite3_memory_used , IO <sqlite3_int64>
#ccall sqlite3_memory_highwater , CInt  -> IO <sqlite3_int64>

#ccall sqlite3_mutex_alloc , CInt -> IO (Ptr <sqlite3_mutex>)
#ccall sqlite3_mutex_free , Ptr <sqlite3_mutex> -> IO ()
#ccall sqlite3_mutex_enter , Ptr <sqlite3_mutex> -> IO ()
#ccall sqlite3_mutex_try , Ptr <sqlite3_mutex> -> IO CInt
#ccall sqlite3_mutex_leave , Ptr <sqlite3_mutex> -> IO ()

#ccall sqlite3_open , CString -> Ptr (Ptr <sqlite3>) -> IO CInt
#ccall sqlite3_open16 , Ptr () -> Ptr (Ptr <sqlite3>) -> IO CInt
#ccall sqlite3_open_v2 , CString -> Ptr (Ptr <sqlite3>) -> \
    CInt -> CString -> IO CInt

#ccall sqlite3_trace , Ptr <sqlite3> -> FunPtr (Ptr () -> CString -> \
    IO ()) -> Ptr () -> IO (Ptr ())
#ccall sqlite3_profile , Ptr <sqlite3> -> FunPtr (Ptr () -> CString -> \
    <sqlite3_uint64> -> IO ()) -> Ptr () -> IO (Ptr ())

#ccall sqlite3_result_blob , Ptr <sqlite3_context> -> Ptr () -> \
    CInt -> FunPtr (Ptr () -> IO ()) -> IO ()
#ccall sqlite3_result_double , Ptr <sqlite3_context> -> \
    CDouble -> IO ()
#ccall sqlite3_result_error , Ptr <sqlite3_context> -> \
    CString -> CInt -> IO ()
#ccall sqlite3_result_error16 , Ptr <sqlite3_context> -> \
    Ptr () -> CInt -> IO ()
#ccall sqlite3_result_error_toobig , Ptr <sqlite3_context> -> IO ()
#ccall sqlite3_result_error_nomem , Ptr <sqlite3_context> -> IO ()
#ccall sqlite3_result_error_code , Ptr <sqlite3_context> -> \
    CInt -> IO ()
#ccall sqlite3_result_int , Ptr <sqlite3_context> -> CInt -> IO ()
#ccall sqlite3_result_int64 , Ptr <sqlite3_context> -> <sqlite3_int64> -> IO ()
#ccall sqlite3_result_null , Ptr <sqlite3_context> -> IO ()
#ccall sqlite3_result_text , Ptr <sqlite3_context> -> CString -> \
    CInt -> FunPtr (Ptr () -> IO ()) -> IO ()
#ccall sqlite3_result_text16 , Ptr <sqlite3_context> -> Ptr () -> \
    CInt -> FunPtr (Ptr () -> IO ()) -> IO ()
#ccall sqlite3_result_text16le , Ptr <sqlite3_context> -> Ptr () -> \
    CInt -> FunPtr (Ptr () -> IO ()) -> IO ()
#ccall sqlite3_result_text16be , Ptr <sqlite3_context> -> Ptr () -> \
    CInt -> FunPtr (Ptr () -> IO ()) -> IO ()
#ccall sqlite3_result_value , Ptr <sqlite3_context> -> \
    Ptr <sqlite3_value> -> IO ()
#ccall sqlite3_result_zeroblob , Ptr <sqlite3_context> -> \
    CInt -> IO ()

#ccall sqlite3_stricmp , CString -> CString -> IO CInt
#ccall sqlite3_strnicmp , CString -> CString -> CInt -> IO CInt

#ccall sqlite3_uri_parameter , CString -> CString -> IO CString
#ccall sqlite3_uri_boolean , CString -> CString -> CInt -> IO CInt
#ccall sqlite3_uri_int64 , CString -> CString -> <sqlite3_int64> -> \
    IO <sqlite3_int64>

#ccall sqlite3_value_blob , Ptr <sqlite3_value> -> IO (Ptr ())
#ccall sqlite3_value_bytes , Ptr <sqlite3_value> -> IO CInt
#ccall sqlite3_value_bytes16 , Ptr <sqlite3_value> -> IO CInt
#ccall sqlite3_value_double , Ptr <sqlite3_value> -> IO CDouble
#ccall sqlite3_value_int , Ptr <sqlite3_value> -> IO CInt
#ccall sqlite3_value_int64 , Ptr <sqlite3_value> -> IO <sqlite3_int64>
#ccall sqlite3_value_text , Ptr <sqlite3_value> -> IO (Ptr CUChar)
#ccall sqlite3_value_text16 , Ptr <sqlite3_value> -> IO (Ptr ())
#ccall sqlite3_value_text16le , Ptr <sqlite3_value> -> IO (Ptr ())
#ccall sqlite3_value_text16be , Ptr <sqlite3_value> -> IO (Ptr ())
#ccall sqlite3_value_type , Ptr <sqlite3_value> -> IO CInt
#ccall sqlite3_value_numeric_type , Ptr <sqlite3_value> -> IO CInt

#ccall sqlite3_vfs_find , CString -> IO (Ptr <sqlite3_vfs>)
#ccall sqlite3_vfs_register , Ptr <sqlite3_vfs> -> CInt -> IO CInt
#ccall sqlite3_vfs_unregister , Ptr <sqlite3_vfs> -> IO CInt

#ccall sqlite3_bind_blob , Ptr <sqlite3_stmt> -> CInt -> \
    Ptr () -> CInt -> FunPtr (Ptr () -> IO ()) -> IO CInt
#ccall sqlite3_bind_double , Ptr <sqlite3_stmt> -> CInt -> \
    CDouble -> IO CInt
#ccall sqlite3_bind_int , Ptr <sqlite3_stmt> -> CInt -> \
    CInt -> IO CInt
#ccall sqlite3_bind_int64 , Ptr <sqlite3_stmt> -> CInt -> \
    <sqlite3_int64> -> IO CInt
#ccall sqlite3_bind_null , Ptr <sqlite3_stmt> -> CInt -> IO CInt
#ccall sqlite3_bind_text , Ptr <sqlite3_stmt> -> CInt -> \
    CString -> CInt -> FunPtr (Ptr () -> IO ()) -> IO CInt
#ccall sqlite3_bind_text16 , Ptr <sqlite3_stmt> -> CInt -> \
    Ptr () -> CInt -> FunPtr (Ptr () -> IO ()) -> IO CInt
#ccall sqlite3_bind_value , Ptr <sqlite3_stmt> -> CInt -> \
    Ptr <sqlite3_value> -> IO CInt
#ccall sqlite3_bind_zeroblob , Ptr <sqlite3_stmt> -> CInt -> \
    CInt -> IO CInt

#ccall sqlite3_prepare , Ptr <sqlite3> -> CString -> CInt -> \
    Ptr (Ptr <sqlite3_stmt>) -> Ptr CString -> IO CInt
#ccall sqlite3_prepare_v2 , Ptr <sqlite3> -> CString -> CInt -> \
    Ptr (Ptr <sqlite3_stmt>) -> Ptr CString -> IO CInt
#ccall sqlite3_prepare16 , Ptr <sqlite3> -> Ptr () -> CInt -> \
    Ptr (Ptr <sqlite3_stmt>) -> Ptr (Ptr ()) -> IO CInt
#ccall sqlite3_prepare16_v2 , Ptr <sqlite3> -> Ptr () -> CInt -> \
    Ptr (Ptr <sqlite3_stmt>) -> Ptr (Ptr ()) -> IO CInt

#ccall sqlite3_create_function , \
    Ptr <sqlite3> -> CString -> CInt -> CInt -> Ptr () -> \
    FunPtr (Ptr <sqlite3_context> -> CInt -> \
        Ptr (Ptr <sqlite3_value>) -> IO ()) -> \
    FunPtr (Ptr <sqlite3_context> -> CInt -> \
        Ptr (Ptr <sqlite3_value>) -> IO ()) -> \
    FunPtr (Ptr <sqlite3_context> -> IO ()) -> \
    IO CInt
#ccall sqlite3_create_function16 , \
    Ptr <sqlite3> -> Ptr () -> CInt -> CInt -> Ptr () -> \
    FunPtr (Ptr <sqlite3_context> -> CInt -> \
        Ptr (Ptr <sqlite3_value>) -> IO ()) -> \
    FunPtr (Ptr <sqlite3_context> -> CInt -> \
        Ptr (Ptr <sqlite3_value>) -> IO ()) -> \
    FunPtr (Ptr <sqlite3_context> -> IO ()) -> \
    IO CInt
#ccall sqlite3_create_function_v2 , \
    Ptr <sqlite3> -> CString -> CInt -> CInt -> Ptr () -> \
    FunPtr (Ptr <sqlite3_context> -> CInt -> \
        Ptr (Ptr <sqlite3_value>) -> IO ()) -> \
    FunPtr (Ptr <sqlite3_context> -> CInt -> \
        Ptr (Ptr <sqlite3_value>) -> IO ()) -> \
    FunPtr (Ptr <sqlite3_context> -> IO ()) -> \
    FunPtr (Ptr () -> IO ()) -> \
    IO CInt

#ccall sqlite3_get_autocommit , Ptr <sqlite3> -> IO CInt

#ccall sqlite3_column_blob , Ptr <sqlite3_stmt> -> CInt -> IO (Ptr ())
#ccall sqlite3_column_bytes , Ptr <sqlite3_stmt> -> CInt -> IO CInt
#ccall sqlite3_column_bytes16 , Ptr <sqlite3_stmt> -> CInt -> IO CInt
#ccall sqlite3_column_double , Ptr <sqlite3_stmt> -> CInt -> IO CDouble
#ccall sqlite3_column_int , Ptr <sqlite3_stmt> -> CInt -> IO CInt
#ccall sqlite3_column_int64 , Ptr <sqlite3_stmt> -> \
  CInt -> IO <sqlite3_int64>
#ccall sqlite3_column_text , Ptr <sqlite3_stmt> -> \
  CInt -> IO (Ptr CUChar)
#ccall sqlite3_column_text16 , Ptr <sqlite3_stmt> -> CInt -> IO (Ptr ())
#ccall sqlite3_column_type , Ptr <sqlite3_stmt> -> CInt -> IO CInt
#ccall sqlite3_column_value , Ptr <sqlite3_stmt> -> \
  CInt -> IO (Ptr <sqlite3_value>)
