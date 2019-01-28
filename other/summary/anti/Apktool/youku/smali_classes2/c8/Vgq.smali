.class public Lc8/Vgq;
.super Lc8/Xgq;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Xgq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lc8/Xgq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Kgq;)V
    .locals 0
    .param p1, "x0"    # Lc8/Kgq;

    .prologue
    .line 69
    invoke-direct {p0}, Lc8/Vgq;-><init>()V

    return-void
.end method


# virtual methods
.method defaultCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lc8/Ehq;

    invoke-direct {v0}, Lc8/Ehq;-><init>()V

    return-object v0
.end method

.method defaultClient()Lc8/Ohq;
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lc8/Xgq;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-static {}, Lc8/Wgq;->instantiate()Lc8/Phq;

    move-result-object v0

    .line 81
    .local v0, "client":Lc8/Phq;
    :goto_0
    new-instance v1, Lc8/Rgq;

    invoke-direct {v1, p0, v0}, Lc8/Rgq;-><init>(Lc8/Vgq;Lc8/Phq;)V

    return-object v1

    .line 79
    .end local v0    # "client":Lc8/Phq;
    :cond_0
    new-instance v0, Lc8/Zhq;

    invoke-direct {v0}, Lc8/Zhq;-><init>()V

    .restart local v0    # "client":Lc8/Phq;
    goto :goto_0
.end method

.method defaultConverter()Lc8/aiq;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lc8/ciq;

    new-instance v1, Lc8/Gjd;

    invoke-direct {v1}, Lc8/Gjd;-><init>()V

    invoke-direct {v0, v1}, Lc8/ciq;-><init>(Lc8/Gjd;)V

    return-object v0
.end method

.method defaultHttpExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lc8/Tgq;

    invoke-direct {v0, p0}, Lc8/Tgq;-><init>(Lc8/Vgq;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method defaultLog()Lc8/phq;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lc8/Ugq;

    invoke-direct {v0, p0}, Lc8/Ugq;-><init>(Lc8/Vgq;)V

    return-object v0
.end method
