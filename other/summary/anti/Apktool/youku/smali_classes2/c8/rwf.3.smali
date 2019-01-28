.class public Lc8/rwf;
.super Ljava/lang/Object;
.source "NoOpCacheEventListener.java"

# interfaces
.implements Lc8/Apf;


# static fields
.field private static sInstance:Lc8/rwf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lc8/rwf;->sInstance:Lc8/rwf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static declared-synchronized instance()Lc8/rwf;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lc8/rwf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/rwf;->sInstance:Lc8/rwf;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lc8/rwf;

    invoke-direct {v0}, Lc8/rwf;-><init>()V

    sput-object v0, Lc8/rwf;->sInstance:Lc8/rwf;

    .line 27
    :cond_0
    sget-object v0, Lc8/rwf;->sInstance:Lc8/rwf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onEviction(Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;IJ)V
    .locals 0
    .param p1, "evictionReason"    # Lcom/taobao/fresco/disk/cache/CacheEventListener$EvictionReason;
    .param p2, "itemCount"    # I
    .param p3, "itemSize"    # J

    .prologue
    .line 53
    return-void
.end method

.method public onHit()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public onMiss()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public onReadException()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public onWriteAttempt()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onWriteException()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method
