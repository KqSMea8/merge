.class public Lc8/cAb;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SqliteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/bAb;
    }
.end annotation


# static fields
.field private static final DATABASE_VERSION:I = 0x2

.field private static bDbError:Z

.field private static dbErrorHandle:Landroid/database/DatabaseErrorHandler;


# instance fields
.field private mCloseDbTask:Lc8/bAb;

.field private mWritableCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mcloseFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lc8/cAb;->bDbError:Z

    .line 22
    new-instance v0, Lc8/aAb;

    invoke-direct {v0}, Lc8/aAb;-><init>()V

    sput-object v0, Lc8/cAb;->dbErrorHandle:Landroid/database/DatabaseErrorHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbname"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v3, 0x0

    const/4 v4, 0x2

    sget-object v5, Lc8/cAb;->dbErrorHandle:Landroid/database/DatabaseErrorHandler;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc8/cAb;->mWritableCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    new-instance v0, Lc8/bAb;

    invoke-direct {v0, p0}, Lc8/bAb;-><init>(Lc8/cAb;)V

    iput-object v0, p0, Lc8/cAb;->mCloseDbTask:Lc8/bAb;

    .line 31
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 15
    sput-boolean p0, Lc8/cAb;->bDbError:Z

    return p0
.end method

.method static synthetic access$100(Lc8/cAb;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lc8/cAb;

    .prologue
    .line 15
    iget-object v0, p0, Lc8/cAb;->mWritableCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lc8/cAb;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lc8/cAb;

    .prologue
    .line 15
    iget-object v0, p0, Lc8/cAb;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$202(Lc8/cAb;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0
    .param p0, "x0"    # Lc8/cAb;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 15
    iput-object p1, p0, Lc8/cAb;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method


# virtual methods
.method public closeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 90
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized closeWritableDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 72
    monitor-enter p0

    if-nez p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 76
    :cond_1
    :try_start_0
    iget-object v0, p0, Lc8/cAb;->mWritableCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lc8/cAb;->mcloseFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lc8/cAb;->mcloseFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 81
    :cond_2
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lc8/cAb;->mCloseDbTask:Lc8/bAb;

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v1, v2, v4, v5}, Lc8/eCb;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lc8/cAb;->mcloseFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/cAb;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    .line 57
    sget-boolean v1, Lc8/cAb;->bDbError:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 58
    const/4 v1, 0x0

    .line 68
    :goto_0
    monitor-exit p0

    return-object v1

    .line 60
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lc8/cAb;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 62
    :cond_1
    iget-object v1, p0, Lc8/cAb;->mWritableCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :goto_1
    :try_start_2
    iget-object v1, p0, Lc8/cAb;->mWritableDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "TAG"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "e"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 56
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 47
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 37
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v1, "PRAGMA journal_mode=DELETE"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Lc8/cAb;->closeCursor(Landroid/database/Cursor;)V

    .line 42
    :goto_0
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 43
    return-void

    .line 40
    :catch_0
    move-exception v1

    invoke-virtual {p0, v0}, Lc8/cAb;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lc8/cAb;->closeCursor(Landroid/database/Cursor;)V

    throw v1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 51
    return-void
.end method
