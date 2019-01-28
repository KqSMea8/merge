.class public Lc8/Tub;
.super Ljava/lang/Object;
.source "PrefetchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/bvb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private connection:Lc8/Iub;

.field private executor:Ljava/util/concurrent/Executor;

.field private externalCacheChecker:Lc8/Uub;

.field private httpAdapter:Lc8/DVf;

.field private listener:Lc8/Vub;

.field private processor:Lc8/avb;

.field private remoteConfig:Lc8/Mub;


# direct methods
.method public constructor <init>(Lc8/DVf;)V
    .locals 0
    .param p1, "httpAdapter"    # Lc8/DVf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput-object p1, p0, Lc8/Tub;->httpAdapter:Lc8/DVf;

    .line 492
    return-void
.end method


# virtual methods
.method build()Lc8/bvb;
    .locals 7

    .prologue
    .line 531
    new-instance v0, Lc8/bvb;

    iget-object v1, p0, Lc8/Tub;->connection:Lc8/Iub;

    iget-object v2, p0, Lc8/Tub;->externalCacheChecker:Lc8/Uub;

    iget-object v3, p0, Lc8/Tub;->httpAdapter:Lc8/DVf;

    iget-object v4, p0, Lc8/Tub;->remoteConfig:Lc8/Mub;

    iget-object v5, p0, Lc8/Tub;->processor:Lc8/avb;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lc8/bvb;-><init>(Lc8/Iub;Lc8/Uub;Lc8/DVf;Lc8/Mub;Lc8/avb;Lc8/Rub;)V

    .line 532
    .local v0, "manager":Lc8/bvb;
    iget-object v1, p0, Lc8/Tub;->listener:Lc8/Vub;

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lc8/Tub;->listener:Lc8/Vub;

    invoke-virtual {v0, v1}, Lc8/bvb;->setListener(Lc8/Vub;)V

    .line 535
    :cond_0
    iget-object v1, p0, Lc8/Tub;->executor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_1

    .line 536
    iget-object v1, p0, Lc8/Tub;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lc8/bvb;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 538
    :cond_1
    return-object v0
.end method

.method withConnectionCheck(Lc8/Iub;)Lc8/Tub;
    .locals 0
    .param p1, "connection"    # Lc8/Iub;

    .prologue
    .line 496
    iput-object p1, p0, Lc8/Tub;->connection:Lc8/Iub;

    .line 497
    return-object p0
.end method

.method withExternalCacheChecker(Lc8/Uub;)Lc8/Tub;
    .locals 0
    .param p1, "checker"    # Lc8/Uub;

    .prologue
    .line 502
    iput-object p1, p0, Lc8/Tub;->externalCacheChecker:Lc8/Uub;

    .line 503
    return-object p0
.end method

.method withListener(Lc8/Vub;)Lc8/Tub;
    .locals 0
    .param p1, "listener"    # Lc8/Vub;

    .prologue
    .line 525
    iput-object p1, p0, Lc8/Tub;->listener:Lc8/Vub;

    .line 526
    return-object p0
.end method

.method withRemoteConfig(Lc8/Mub;)Lc8/Tub;
    .locals 0
    .param p1, "remoteConfig"    # Lc8/Mub;

    .prologue
    .line 508
    iput-object p1, p0, Lc8/Tub;->remoteConfig:Lc8/Mub;

    .line 509
    return-object p0
.end method

.method withThreadExecutor(Ljava/util/concurrent/Executor;)Lc8/Tub;
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 520
    iput-object p1, p0, Lc8/Tub;->executor:Ljava/util/concurrent/Executor;

    .line 521
    return-object p0
.end method

.method withUriProcessor(Lc8/avb;)Lc8/Tub;
    .locals 0
    .param p1, "processor"    # Lc8/avb;

    .prologue
    .line 514
    iput-object p1, p0, Lc8/Tub;->processor:Lc8/avb;

    .line 515
    return-object p0
.end method
