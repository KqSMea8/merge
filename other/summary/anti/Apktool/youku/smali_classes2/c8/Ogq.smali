.class public Lc8/Ogq;
.super Lc8/Xgq;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Xgq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Android"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lc8/Xgq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Kgq;)V
    .locals 0
    .param p1, "x0"    # Lc8/Kgq;

    .prologue
    .line 115
    invoke-direct {p0}, Lc8/Ogq;-><init>()V

    return-void
.end method


# virtual methods
.method defaultCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lc8/Ihq;

    invoke-direct {v0}, Lc8/Ihq;-><init>()V

    return-object v0
.end method

.method defaultClient()Lc8/Ohq;
    .locals 3

    .prologue
    .line 122
    invoke-static {}, Lc8/Xgq;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-static {}, Lc8/Wgq;->instantiate()Lc8/Phq;

    move-result-object v0

    .line 129
    .local v0, "client":Lc8/Phq;
    :goto_0
    new-instance v1, Lc8/Lgq;

    invoke-direct {v1, p0, v0}, Lc8/Lgq;-><init>(Lc8/Ogq;Lc8/Phq;)V

    return-object v1

    .line 124
    .end local v0    # "client":Lc8/Phq;
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    .line 125
    new-instance v0, Lc8/Ghq;

    invoke-direct {v0}, Lc8/Ghq;-><init>()V

    .restart local v0    # "client":Lc8/Phq;
    goto :goto_0

    .line 127
    .end local v0    # "client":Lc8/Phq;
    :cond_1
    new-instance v0, Lc8/Zhq;

    invoke-direct {v0}, Lc8/Zhq;-><init>()V

    .restart local v0    # "client":Lc8/Phq;
    goto :goto_0
.end method

.method defaultConverter()Lc8/aiq;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lc8/ciq;

    new-instance v1, Lc8/Gjd;

    invoke-direct {v1}, Lc8/Gjd;-><init>()V

    invoke-direct {v0, v1}, Lc8/ciq;-><init>(Lc8/Gjd;)V

    return-object v0
.end method

.method defaultHttpExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lc8/Ngq;

    invoke-direct {v0, p0}, Lc8/Ngq;-><init>(Lc8/Ogq;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method defaultLog()Lc8/phq;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lc8/Hhq;

    const-string/jumbo v1, "Retrofit"

    invoke-direct {v0, v1}, Lc8/Hhq;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
