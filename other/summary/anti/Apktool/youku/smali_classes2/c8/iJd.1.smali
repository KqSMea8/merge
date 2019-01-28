.class public Lc8/iJd;
.super Ljava/lang/Object;
.source "ANImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/eJd;,
        Lc8/gJd;,
        Lc8/hJd;,
        Lc8/fJd;
    }
.end annotation


# static fields
.field private static final cacheSize:I

.field private static final maxMemory:I


# instance fields
.field private mBatchResponseDelayMs:I

.field private final mBatchedResponses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/eJd;",
            ">;"
        }
    .end annotation
.end field

.field private final mCache:Lc8/fJd;

.field private final mHandler:Landroid/os/Handler;

.field private final mInFlightRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/eJd;",
            ">;"
        }
    .end annotation
.end field

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 46
    sput v0, Lc8/iJd;->maxMemory:I

    div-int/lit8 v0, v0, 0x8

    sput v0, Lc8/iJd;->cacheSize:I

    return-void
.end method

.method public constructor <init>(Lc8/fJd;)V
    .locals 2
    .param p1, "imageCache"    # Lc8/fJd;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x64

    iput v0, p0, Lc8/iJd;->mBatchResponseDelayMs:I

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/iJd;->mInFlightRequests:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/iJd;->mBatchedResponses:Ljava/util/HashMap;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/iJd;->mHandler:Landroid/os/Handler;

    .line 90
    iput-object p1, p0, Lc8/iJd;->mCache:Lc8/fJd;

    .line 91
    return-void
.end method

.method static synthetic access$200(Lc8/iJd;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/iJd;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/iJd;->mBatchedResponses:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$602(Lc8/iJd;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lc8/iJd;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 38
    iput-object p1, p0, Lc8/iJd;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method
