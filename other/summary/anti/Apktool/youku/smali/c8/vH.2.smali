.class public Lc8/vH;
.super Ljava/lang/Object;
.source "WVFixedThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/uH;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x1

.field private static SingleExecutor:Ljava/util/concurrent/ExecutorService;

.field public static bufferSize:I

.field private static threadManager:Lc8/vH;


# instance fields
.field private tempBuffer:Lc8/uH;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lc8/vH;->SingleExecutor:Ljava/util/concurrent/ExecutorService;

    .line 18
    sput-object v0, Lc8/vH;->threadManager:Lc8/vH;

    .line 22
    const/16 v0, 0x1000

    sput v0, Lc8/vH;->bufferSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/vH;->tempBuffer:Lc8/uH;

    .line 61
    return-void
.end method

.method public static getInstance()Lc8/vH;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lc8/vH;->threadManager:Lc8/vH;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lc8/vH;

    invoke-direct {v0}, Lc8/vH;-><init>()V

    sput-object v0, Lc8/vH;->threadManager:Lc8/vH;

    .line 31
    :cond_0
    sget-object v0, Lc8/vH;->threadManager:Lc8/vH;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 37
    sget-object v0, Lc8/vH;->SingleExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lc8/vH;->SingleExecutor:Ljava/util/concurrent/ExecutorService;

    .line 39
    :cond_0
    if-nez p1, :cond_1

    .line 40
    const-string/jumbo v0, "WVThreadPool"

    const-string/jumbo v1, "executeSingle is null."

    invoke-static {v0, v1}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_1
    sget-object v0, Lc8/vH;->SingleExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getTempBuffer()Lc8/uH;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lc8/vH;->tempBuffer:Lc8/uH;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lc8/uH;

    invoke-direct {v0}, Lc8/uH;-><init>()V

    iput-object v0, p0, Lc8/vH;->tempBuffer:Lc8/uH;

    .line 50
    :cond_0
    iget-object v0, p0, Lc8/vH;->tempBuffer:Lc8/uH;

    return-object v0
.end method

.method public reSetTempBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-object v0, p0, Lc8/vH;->tempBuffer:Lc8/uH;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/vH;->tempBuffer:Lc8/uH;

    invoke-static {v0}, Lc8/uH;->access$000(Lc8/uH;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    iget-object v0, p0, Lc8/vH;->tempBuffer:Lc8/uH;

    iput-object v2, v0, Lc8/uH;->tempBuffer:[B

    .line 56
    iget-object v0, p0, Lc8/vH;->tempBuffer:Lc8/uH;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/uH;->access$002(Lc8/uH;Z)Z

    .line 57
    iput-object v2, p0, Lc8/vH;->tempBuffer:Lc8/uH;

    .line 59
    :cond_1
    return-void
.end method
