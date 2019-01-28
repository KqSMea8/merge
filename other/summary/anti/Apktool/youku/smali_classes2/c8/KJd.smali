.class public final Lc8/KJd;
.super Ljava/lang/Object;
.source "SegmentPool.java"


# static fields
.field static byteCount:J

.field static next:Lc8/JJd;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static recycle(Lc8/JJd;)V
    .locals 8
    .param p0, "segment"    # Lc8/JJd;

    .prologue
    const-wide/16 v6, 0x800

    .line 49
    iget-object v0, p0, Lc8/JJd;->next:Lc8/JJd;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/JJd;->prev:Lc8/JJd;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 50
    :cond_1
    iget-boolean v0, p0, Lc8/JJd;->shared:Z

    if-eqz v0, :cond_2

    .line 57
    :goto_0
    return-void

    .line 51
    :cond_2
    const-class v1, Lc8/KJd;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-wide v2, Lc8/KJd;->byteCount:J

    add-long/2addr v2, v6

    const-wide/32 v4, 0x10000

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    monitor-exit v1

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 53
    :cond_3
    :try_start_1
    sget-wide v2, Lc8/KJd;->byteCount:J

    add-long/2addr v2, v6

    sput-wide v2, Lc8/KJd;->byteCount:J

    .line 54
    sget-object v0, Lc8/KJd;->next:Lc8/JJd;

    iput-object v0, p0, Lc8/JJd;->next:Lc8/JJd;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lc8/JJd;->limit:I

    iput v0, p0, Lc8/JJd;->pos:I

    .line 56
    sput-object p0, Lc8/KJd;->next:Lc8/JJd;

    .line 57
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static take()Lc8/JJd;
    .locals 8

    .prologue
    .line 36
    const-class v2, Lc8/KJd;

    monitor-enter v2

    .line 37
    :try_start_0
    sget-object v1, Lc8/KJd;->next:Lc8/JJd;

    if-eqz v1, :cond_0

    .line 38
    sget-object v0, Lc8/KJd;->next:Lc8/JJd;

    .line 39
    .local v0, "result":Lc8/JJd;
    iget-object v1, v0, Lc8/JJd;->next:Lc8/JJd;

    sput-object v1, Lc8/KJd;->next:Lc8/JJd;

    .line 40
    const/4 v1, 0x0

    iput-object v1, v0, Lc8/JJd;->next:Lc8/JJd;

    .line 41
    sget-wide v4, Lc8/KJd;->byteCount:J

    const-wide/16 v6, 0x800

    sub-long/2addr v4, v6

    sput-wide v4, Lc8/KJd;->byteCount:J

    .line 42
    monitor-exit v2

    .line 45
    .end local v0    # "result":Lc8/JJd;
    :goto_0
    return-object v0

    .line 44
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    new-instance v0, Lc8/JJd;

    invoke-direct {v0}, Lc8/JJd;-><init>()V

    goto :goto_0

    .line 44
    .restart local v0    # "result":Lc8/JJd;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
