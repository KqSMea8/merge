.class public Lc8/HZe;
.super Ljava/lang/Object;
.source "CipherErrorCode.java"


# static fields
.field public static final CIPHERDB_ERR_ARGUMENT:I = -0x2

.field public static final CIPHERDB_ERR_ARGUMENT_MSG:Ljava/lang/String; = "Input argument error"

.field public static final CIPHERDB_ERR_CLOSED:I = -0x9

.field public static final CIPHERDB_ERR_CLOSED_MSG:Ljava/lang/String; = "The db is closed, please open first"

.field public static final CIPHERDB_ERR_GENERAL:I = -0x1

.field public static final CIPHERDB_ERR_GENERAL_MSG:Ljava/lang/String; = "General error"

.field public static final CIPHERDB_ERR_HANDLE:I = -0x3

.field public static final CIPHERDB_ERR_HANDLE_MSG:Ljava/lang/String; = "Handle is NULL"

.field public static final CIPHERDB_ERR_JVM:I = -0x7

.field public static final CIPHERDB_ERR_JVM_MSG:Ljava/lang/String; = "JVM error"

.field public static final CIPHERDB_ERR_LINK:I = -0x64

.field public static final CIPHERDB_ERR_LINK_MSG:Ljava/lang/String; = "Cipher db so load fail"

.field public static final CIPHERDB_ERR_NOCODEC:I = -0x4

.field public static final CIPHERDB_ERR_NOCODEC_MSG:Ljava/lang/String; = "SQLITE_HAS_CODEC undefined"

.field public static final CIPHERDB_ERR_NONE:I = 0x0

.field public static final CIPHERDB_ERR_NONE_MSG:Ljava/lang/String; = "Successful"

.field public static final CIPHERDB_ERR_OPEN:I = -0x5

.field public static final CIPHERDB_ERR_OPEN_MSG:Ljava/lang/String; = "Data base is already open"

.field public static final CIPHERDB_ERR_TRANSACTION:I = -0x6

.field public static final CIPHERDB_ERR_TRANSACTION_MSG:Ljava/lang/String; = "A transaction is in progress"

.field public static final CIPHERDB_ERR_VERSION:I = -0x8

.field public static final CIPHERDB_ERR_VERSION_MSG:Ljava/lang/String; = "The CipherDB new version is lower than the old version"

.field public static final CIPHERDB_SQLITE_ABORT:I = 0x4

.field public static final CIPHERDB_SQLITE_ABORT_MSG:Ljava/lang/String; = "Callback routine requested an abort"

.field public static final CIPHERDB_SQLITE_AUTH:I = 0x17

.field public static final CIPHERDB_SQLITE_AUTH_MSG:Ljava/lang/String; = "Authorization denied"

.field public static final CIPHERDB_SQLITE_BUSY:I = 0x5

.field public static final CIPHERDB_SQLITE_BUSY_MSG:Ljava/lang/String; = "The database file is locked"

.field public static final CIPHERDB_SQLITE_CANTOPEN:I = 0xe

.field public static final CIPHERDB_SQLITE_CANTOPEN_MSG:Ljava/lang/String; = "Unable to open the database file"

.field public static final CIPHERDB_SQLITE_CONSTRAINT:I = 0x13

.field public static final CIPHERDB_SQLITE_CONSTRAINT_MSG:Ljava/lang/String; = "Abort due to constraint violation"

.field public static final CIPHERDB_SQLITE_CORRUPT:I = 0xb

.field public static final CIPHERDB_SQLITE_CORRUPT_MSG:Ljava/lang/String; = "The database disk image is malformed"

.field public static final CIPHERDB_SQLITE_DONE:I = 0x65

.field public static final CIPHERDB_SQLITE_DONE_MSG:Ljava/lang/String; = "sqlite3_step() has finished executing"

.field public static final CIPHERDB_SQLITE_EMPTY:I = 0x10

.field public static final CIPHERDB_SQLITE_EMPTY_MSG:Ljava/lang/String; = "Database is empty"

.field public static final CIPHERDB_SQLITE_ERROR:I = 0x1

.field public static final CIPHERDB_SQLITE_ERROR_MSG:Ljava/lang/String; = "SQL error or missing database"

.field public static final CIPHERDB_SQLITE_FORMAT:I = 0x18

.field public static final CIPHERDB_SQLITE_FORMAT_MSG:Ljava/lang/String; = "Auxiliary database format error"

.field public static final CIPHERDB_SQLITE_FULL:I = 0xd

.field public static final CIPHERDB_SQLITE_FULL_MSG:Ljava/lang/String; = "Insertion failed because database is full"

.field public static final CIPHERDB_SQLITE_INTERNAL:I = 0x2

.field public static final CIPHERDB_SQLITE_INTERNAL_MSG:Ljava/lang/String; = "Internal logic error in SQLite"

.field public static final CIPHERDB_SQLITE_INTERRUPT:I = 0x9

.field public static final CIPHERDB_SQLITE_INTERRUPT_MSG:Ljava/lang/String; = "Operation terminated by sqlite3_interrupt()"

.field public static final CIPHERDB_SQLITE_IOERR:I = 0xa

.field public static final CIPHERDB_SQLITE_IOERR_MSG:Ljava/lang/String; = "Some kind of disk I/O error occurred"

.field public static final CIPHERDB_SQLITE_LOCKED:I = 0x6

.field public static final CIPHERDB_SQLITE_LOCKED_MSG:Ljava/lang/String; = "A table in the database is locked"

.field public static final CIPHERDB_SQLITE_MISMATCH:I = 0x14

.field public static final CIPHERDB_SQLITE_MISMATCH_MSG:Ljava/lang/String; = "Data type mismatch"

.field public static final CIPHERDB_SQLITE_MISUSE:I = 0x15

.field public static final CIPHERDB_SQLITE_MISUSE_MSG:Ljava/lang/String; = "Library used incorrectly"

.field public static final CIPHERDB_SQLITE_NOLFS:I = 0x16

.field public static final CIPHERDB_SQLITE_NOLFS_MSG:Ljava/lang/String; = "Uses OS features not supported on host"

.field public static final CIPHERDB_SQLITE_NOMEM:I = 0x7

.field public static final CIPHERDB_SQLITE_NOMEM_MSG:Ljava/lang/String; = "A malloc() failed"

.field public static final CIPHERDB_SQLITE_NOTADB:I = 0x1a

.field public static final CIPHERDB_SQLITE_NOTADB_MSG:Ljava/lang/String; = "File is encrypted or is not a database"

.field public static final CIPHERDB_SQLITE_NOTFOUND:I = 0xc

.field public static final CIPHERDB_SQLITE_NOTFOUND_MSG:Ljava/lang/String; = "Unknown opcode in sqlite3_file_control()"

.field public static final CIPHERDB_SQLITE_NOTICE:I = 0x1b

.field public static final CIPHERDB_SQLITE_NOTICE_MSG:Ljava/lang/String; = "Notifications from sqlite3_log()"

.field public static final CIPHERDB_SQLITE_PERM:I = 0x3

.field public static final CIPHERDB_SQLITE_PERM_MSG:Ljava/lang/String; = "Access permission denied"

.field public static final CIPHERDB_SQLITE_PROTOCOL:I = 0xf

.field public static final CIPHERDB_SQLITE_PROTOCOL_MSG:Ljava/lang/String; = "Database lock protocol error"

.field public static final CIPHERDB_SQLITE_RANGE:I = 0x19

.field public static final CIPHERDB_SQLITE_RANGE_MSG:Ljava/lang/String; = "2nd parameter to sqlite3_bind out of range"

.field public static final CIPHERDB_SQLITE_READONLY:I = 0x8

.field public static final CIPHERDB_SQLITE_READONLY_MSG:Ljava/lang/String; = "Attempt to write a readonly database"

.field public static final CIPHERDB_SQLITE_ROW:I = 0x64

.field public static final CIPHERDB_SQLITE_ROW_MSG:Ljava/lang/String; = "sqlite3_step() has another row ready"

.field public static final CIPHERDB_SQLITE_SCHEMA:I = 0x11

.field public static final CIPHERDB_SQLITE_SCHEMA_MSG:Ljava/lang/String; = "The database schema changed"

.field public static final CIPHERDB_SQLITE_TOOBIG:I = 0x12

.field public static final CIPHERDB_SQLITE_TOOBIG_MSG:Ljava/lang/String; = "String or BLOB exceeds size limit"

.field public static final CIPHERDB_SQLITE_WARNING:I = 0x1c

.field public static final CIPHERDB_SQLITE_WARNING_MSG:Ljava/lang/String; = "Warnings from sqlite3_log()"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
