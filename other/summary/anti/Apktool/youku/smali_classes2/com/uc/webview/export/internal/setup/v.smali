.class public Lcom/uc/webview/export/internal/setup/v;
.super Lcom/uc/webview/export/utility/SetupTask;
.source "ProGuard"


# static fields
.field private static b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/uc/webview/export/internal/setup/UCSetupTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/uc/webview/export/internal/setup/o;

.field private c:Lcom/uc/webview/export/internal/setup/o;

.field private d:Landroid/content/Context;

.field private e:Lcom/uc/webview/export/cyclone/UCElapseTime;

.field private f:Lcom/uc/webview/export/internal/setup/UCSetupException;

.field private g:Lcom/uc/webview/export/internal/setup/UCSetupTask;

.field private h:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Lcom/uc/webview/export/internal/setup/o;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Lcom/uc/webview/export/internal/setup/o;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/uc/webview/export/internal/setup/af;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Lcom/uc/webview/export/internal/setup/o;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Lcom/uc/webview/export/internal/setup/o;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Lcom/uc/webview/export/internal/setup/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/setup/v;->b:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/uc/webview/export/utility/SetupTask;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/v;->j:Z

    .line 56
    new-instance v0, Lcom/uc/webview/export/internal/setup/w;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/w;-><init>(Lcom/uc/webview/export/internal/setup/v;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->l:Landroid/webkit/ValueCallback;

    .line 325
    new-instance v0, Lcom/uc/webview/export/internal/setup/x;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/x;-><init>(Lcom/uc/webview/export/internal/setup/v;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->m:Landroid/webkit/ValueCallback;

    .line 364
    new-instance v0, Lcom/uc/webview/export/internal/setup/y;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/y;-><init>(Lcom/uc/webview/export/internal/setup/v;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->n:Landroid/webkit/ValueCallback;

    return-void
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/v;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/v;Lcom/uc/webview/export/internal/setup/UCSetupException;)Lcom/uc/webview/export/internal/setup/UCSetupException;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/v;->f:Lcom/uc/webview/export/internal/setup/UCSetupException;

    return-object p1
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/v;Lcom/uc/webview/export/internal/setup/UCSetupTask;)Lcom/uc/webview/export/internal/setup/UCSetupTask;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/v;->g:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    return-object p1
.end method

.method private a(Lcom/uc/webview/export/internal/setup/o;)Lcom/uc/webview/export/internal/setup/o;
    .locals 3

    .prologue
    .line 511
    const/16 v0, 0x2711

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/uc/webview/export/internal/setup/o;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/v;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 512
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/o;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "setup"

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/v;->i:Landroid/webkit/ValueCallback;

    .line 513
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "load"

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/v;->i:Landroid/webkit/ValueCallback;

    .line 514
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "init"

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/v;->i:Landroid/webkit/ValueCallback;

    .line 515
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "switch"

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/v;->i:Landroid/webkit/ValueCallback;

    .line 516
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "stat"

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/v;->h:Landroid/webkit/ValueCallback;

    .line 517
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "success"

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/v;->l:Landroid/webkit/ValueCallback;

    .line 518
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "exception"

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/v;->m:Landroid/webkit/ValueCallback;

    .line 519
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 520
    return-object p1
.end method

.method private a(Lcom/uc/webview/export/internal/setup/o;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/o;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 524
    invoke-direct {p0, p1}, Lcom/uc/webview/export/internal/setup/v;->a(Lcom/uc/webview/export/internal/setup/o;)Lcom/uc/webview/export/internal/setup/o;

    move-result-object v0

    const-string/jumbo v1, "dexFilePath"

    .line 525
    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "soFilePath"

    .line 526
    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "resFilePath"

    .line 527
    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "ucmZipFile"

    .line 528
    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "ucmLibDir"

    .line 529
    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "ucmKrlDir"

    .line 530
    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "ucmCfgFile"

    .line 531
    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "start"

    .line 532
    invoke-virtual {p1, p2}, Lcom/uc/webview/export/internal/setup/o;->getSetupCrashImproverInst(Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/UCSetupTask$a;

    move-result-object v2

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->d:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "die"

    .line 533
    invoke-virtual {p1, p2}, Lcom/uc/webview/export/internal/setup/o;->getSetupCrashImproverInst(Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/UCSetupTask$a;

    move-result-object v2

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/UCSetupTask$a;->e:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "crash_none"

    .line 534
    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/o;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "crash_seen"

    .line 535
    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/o;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "crash_repeat"

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/v;->n:Landroid/webkit/ValueCallback;

    .line 536
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 537
    return-object p1
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/v;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/v;->k:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a()Ljava/util/Stack;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/uc/webview/export/internal/setup/v;->b:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/setup/v;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/uc/webview/export/internal/setup/v;->callbackFinishStat(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/uc/webview/export/internal/setup/v;)Lcom/uc/webview/export/internal/setup/UCSetupException;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->f:Lcom/uc/webview/export/internal/setup/UCSetupException;

    return-object v0
.end method

.method private b()Lcom/uc/webview/export/internal/setup/o;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 440
    .line 441
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "dexFilePath"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 444
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 445
    new-instance v1, Lcom/uc/webview/export/internal/setup/ao;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/ao;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/uc/webview/export/internal/setup/v;->a(Lcom/uc/webview/export/internal/setup/o;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/o;

    move-result-object v1

    const-string/jumbo v3, "dexFilePath"

    .line 446
    invoke-virtual {v1, v3, v0}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "soFilePath"

    const-string/jumbo v3, "soFilePath"

    .line 447
    invoke-virtual {p0, v3}, Lcom/uc/webview/export/internal/setup/v;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "resFilePath"

    const-string/jumbo v3, "resFilePath"

    .line 448
    invoke-virtual {p0, v3}, Lcom/uc/webview/export/internal/setup/v;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    move-object v1, v0

    .line 481
    :goto_0
    const-string/jumbo v0, "ucmUpdUrl"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/v;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 482
    invoke-virtual {p0, v2, v2}, Lcom/uc/webview/export/internal/setup/v;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 485
    const/16 v0, 0x2712

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/v;->d:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 486
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_8

    .line 488
    if-eqz v1, :cond_0

    .line 489
    sget-object v2, Lcom/uc/webview/export/internal/setup/v;->b:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 492
    new-instance v0, Lcom/uc/webview/export/internal/setup/ao;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/ao;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/v;->a(Lcom/uc/webview/export/internal/setup/o;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/o;

    move-result-object v0

    const-string/jumbo v2, "chkDecFinish"

    .line 493
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v2, "ucmKrlDir"

    .line 494
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    .line 507
    :goto_1
    return-object v0

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "ucmZipFile"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 451
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 452
    new-instance v1, Lcom/uc/webview/export/internal/setup/i;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/i;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/uc/webview/export/internal/setup/v;->a(Lcom/uc/webview/export/internal/setup/o;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/o;

    move-result-object v1

    const-string/jumbo v3, "ucmZipFile"

    .line 453
    invoke-virtual {v1, v3, v0}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    move-object v1, v0

    goto :goto_0

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "ucmLibDir"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 456
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 457
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/v;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v3, "forbid_repair"

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 458
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 459
    :cond_3
    sget-object v1, Lcom/uc/webview/export/internal/setup/v;->b:Ljava/util/Stack;

    new-instance v3, Lcom/uc/webview/export/internal/setup/u;

    invoke-direct {v3}, Lcom/uc/webview/export/internal/setup/u;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "RepairSetupTask_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/uc/webview/export/internal/setup/v;->a(Lcom/uc/webview/export/internal/setup/o;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/o;

    move-result-object v3

    const-string/jumbo v4, "ucmLibDir"

    .line 460
    invoke-virtual {v3, v4, v0}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v3

    .line 459
    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    :cond_4
    new-instance v1, Lcom/uc/webview/export/internal/setup/ao;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/ao;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/uc/webview/export/internal/setup/v;->a(Lcom/uc/webview/export/internal/setup/o;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/o;

    move-result-object v1

    const-string/jumbo v3, "ucmLibDir"

    .line 463
    invoke-virtual {v1, v3, v0}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    move-object v1, v0

    .line 464
    goto/16 :goto_0

    .line 465
    :cond_5
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "ucmKrlDir"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 466
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 467
    new-instance v1, Lcom/uc/webview/export/internal/setup/ao;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/ao;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/uc/webview/export/internal/setup/v;->a(Lcom/uc/webview/export/internal/setup/o;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/o;

    move-result-object v1

    const-string/jumbo v3, "ucmKrlDir"

    .line 468
    invoke-virtual {v1, v3, v0}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    move-object v1, v0

    goto/16 :goto_0

    .line 470
    :cond_6
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "ucmCfgFile"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 471
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 472
    new-instance v1, Lcom/uc/webview/export/internal/setup/ao;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/ao;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/uc/webview/export/internal/setup/v;->a(Lcom/uc/webview/export/internal/setup/o;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/o;

    move-result-object v1

    const-string/jumbo v3, "ucmCfgFile"

    .line 473
    invoke-virtual {v1, v3, v0}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    move-object v1, v0

    goto/16 :goto_0

    .line 497
    :cond_7
    if-nez v1, :cond_8

    .line 498
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xbc9

    const-string/jumbo v2, "At least 1 of OPTION_DEX_FILE_PATH|OPTION_UCM_LIB_DIR|OPTION_UCM_KRL_DIR|OPTION_UCM_CFG_FILE|OPTION_UCM_UPD_URL should be given."

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 502
    :cond_8
    if-nez v1, :cond_9

    .line 503
    const-string/jumbo v0, ""

    .line 504
    new-instance v1, Lcom/uc/webview/export/internal/setup/ao;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/ao;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/uc/webview/export/internal/setup/v;->a(Lcom/uc/webview/export/internal/setup/o;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/o;

    move-result-object v1

    :cond_9
    move-object v0, v1

    .line 507
    goto/16 :goto_1

    :cond_a
    move-object v1, v2

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/uc/webview/export/internal/setup/v;)Lcom/uc/webview/export/internal/setup/UCSetupTask;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->g:Lcom/uc/webview/export/internal/setup/UCSetupTask;

    return-object v0
.end method

.method static synthetic d(Lcom/uc/webview/export/internal/setup/v;)Lcom/uc/webview/export/cyclone/UCElapseTime;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->e:Lcom/uc/webview/export/cyclone/UCElapseTime;

    return-object v0
.end method

.method static synthetic e(Lcom/uc/webview/export/internal/setup/v;)Ljava/util/List;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/uc/webview/export/internal/setup/v;)Lcom/uc/webview/export/internal/setup/o;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->c:Lcom/uc/webview/export/internal/setup/o;

    return-object v0
.end method

.method static synthetic g(Lcom/uc/webview/export/internal/setup/v;)Lcom/uc/webview/export/internal/setup/o;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->c:Lcom/uc/webview/export/internal/setup/o;

    return-object v0
.end method

.method static synthetic h(Lcom/uc/webview/export/internal/setup/v;)Landroid/webkit/ValueCallback;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->m:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic i(Lcom/uc/webview/export/internal/setup/v;)Landroid/webkit/ValueCallback;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->l:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic j(Lcom/uc/webview/export/internal/setup/v;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/uc/webview/export/internal/setup/v;->j:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 395
    new-instance v0, Lcom/uc/webview/export/internal/setup/be;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/be;-><init>()V

    const/16 v1, 0x2711

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 396
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/be;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/v;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 397
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/o;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "ucmZipDir"

    .line 398
    invoke-virtual {v0, v1, v6}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "ucmZipFile"

    .line 399
    invoke-virtual {v0, v1, v6}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "sdk_setup"

    .line 400
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "chkMultiCore"

    .line 401
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v2, "stat"

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/v;->h:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/v;->h:Landroid/webkit/ValueCallback;

    .line 402
    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/o;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "switch"

    new-instance v2, Lcom/uc/webview/export/internal/setup/ab;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/internal/setup/ab;-><init>(Lcom/uc/webview/export/internal/setup/v;)V

    .line 403
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "downloadException"

    new-instance v2, Lcom/uc/webview/export/internal/setup/aa;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/internal/setup/aa;-><init>(Lcom/uc/webview/export/internal/setup/v;)V

    .line 412
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "updateProgress"

    new-instance v2, Lcom/uc/webview/export/internal/setup/z;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/internal/setup/z;-><init>(Lcom/uc/webview/export/internal/setup/v;)V

    .line 423
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->a:Lcom/uc/webview/export/internal/setup/o;

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->c:Lcom/uc/webview/export/internal/setup/o;

    .line 432
    if-eqz p2, :cond_0

    .line 433
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->c:Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "dlChecker"

    invoke-virtual {v0, v1, p2}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 434
    :cond_0
    invoke-static {p1}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->c:Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "ucmUpdUrl"

    invoke-virtual {v0, v1, p1}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 436
    :cond_1
    return-void

    .line 401
    :cond_2
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    invoke-direct {v1, p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 542
    new-instance v0, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v0}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->e:Lcom/uc/webview/export/cyclone/UCElapseTime;

    .line 545
    const-string/jumbo v0, "ucmZipDir"

    .line 546
    invoke-virtual {p0, v0, v5}, Lcom/uc/webview/export/internal/setup/v;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v1, "sdk_setup"

    .line 547
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 549
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/v;->setupGlobalOnce()V

    .line 551
    const-string/jumbo v0, "CONTEXT"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/v;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->d:Landroid/content/Context;

    .line 553
    const/16 v0, 0x271b

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/v;->j:Z

    .line 559
    const/16 v0, 0x2717

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "stat"

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/v;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    .line 560
    const-string/jumbo v1, "stat"

    new-instance v2, Lcom/uc/webview/export/internal/setup/ac;

    invoke-direct {v2, p0, v0}, Lcom/uc/webview/export/internal/setup/ac;-><init>(Lcom/uc/webview/export/internal/setup/v;Landroid/webkit/ValueCallback;)V

    invoke-virtual {p0, v1, v2}, Lcom/uc/webview/export/internal/setup/v;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 597
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v1, "sdk_stp"

    invoke-direct {v0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/v;->callbackStat(Landroid/util/Pair;)V

    .line 601
    :try_start_0
    new-instance v0, Lcom/uc/webview/export/internal/setup/q;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/q;-><init>()V

    sput-object v0, Lcom/uc/webview/export/cyclone/UCCyclone;->statCallback:Landroid/webkit/ValueCallback;

    check-cast v0, Lcom/uc/webview/export/internal/setup/q;

    const/16 v1, 0x2711

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 602
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/q;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/q;

    const-string/jumbo v1, "stat"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    .line 603
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/q;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/q;

    .line 604
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/q;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 606
    :goto_0
    :try_start_1
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    new-instance v1, Lcom/uc/webview/export/cyclone/UCDex;

    invoke-direct {v1}, Lcom/uc/webview/export/cyclone/UCDex;-><init>()V

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0x2711

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 612
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    const-wide/16 v2, 0x1388

    .line 613
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->start(J)Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 615
    :goto_1
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask$a;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->i:Landroid/webkit/ValueCallback;

    .line 619
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->h:Landroid/webkit/ValueCallback;

    .line 621
    new-instance v0, Lcom/uc/webview/export/internal/setup/ak;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/ak;-><init>()V

    invoke-direct {p0, v0}, Lcom/uc/webview/export/internal/setup/v;->a(Lcom/uc/webview/export/internal/setup/o;)Lcom/uc/webview/export/internal/setup/o;

    move-result-object v0

    .line 623
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/v;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v2, "SYSTEM_WEBVIEW"

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 624
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/Boolean;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 658
    :goto_2
    return-void

    .line 628
    :cond_0
    sget-object v1, Lcom/uc/webview/export/internal/setup/v;->b:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iget-boolean v0, p0, Lcom/uc/webview/export/internal/setup/v;->j:Z

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "soFilePath"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 632
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/v;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v2, "resFilePath"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 633
    new-instance v2, Lcom/uc/webview/export/internal/setup/am;

    invoke-direct {v2}, Lcom/uc/webview/export/internal/setup/am;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ThickSetupTask_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/uc/webview/export/internal/setup/v;->a(Lcom/uc/webview/export/internal/setup/o;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/o;

    move-result-object v2

    const-string/jumbo v3, "soFilePath"

    .line 634
    invoke-virtual {v2, v3, v0}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v2, "resFilePath"

    .line 635
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    .line 636
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/o;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 637
    const-string/jumbo v0, "Thick SDK"

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/v;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "loadPolicy"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 640
    if-nez v0, :cond_2

    .line 641
    const-string/jumbo v0, "UCMOBILE_OR_SPECIFIED"

    .line 643
    :cond_2
    const-string/jumbo v1, "SHARE_CORE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 644
    new-instance v0, Lcom/uc/webview/export/internal/setup/ax;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/ax;-><init>()V

    const-string/jumbo v1, "UCMobileSetupTask"

    invoke-direct {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/v;->a(Lcom/uc/webview/export/internal/setup/o;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/o;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    goto :goto_2

    .line 645
    :cond_3
    const-string/jumbo v1, "SPECIFIED_ONLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 646
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/v;->b()Lcom/uc/webview/export/internal/setup/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/o;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    goto/16 :goto_2

    .line 648
    :cond_4
    const-string/jumbo v1, "SPECIFIED_OR_UCMOBILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 649
    sget-object v0, Lcom/uc/webview/export/internal/setup/v;->b:Ljava/util/Stack;

    new-instance v1, Lcom/uc/webview/export/internal/setup/ax;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/ax;-><init>()V

    const-string/jumbo v2, "UCMobileSetupTask"

    invoke-direct {p0, v1, v2}, Lcom/uc/webview/export/internal/setup/v;->a(Lcom/uc/webview/export/internal/setup/o;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/v;->b()Lcom/uc/webview/export/internal/setup/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/o;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    goto/16 :goto_2

    .line 652
    :cond_5
    sget-object v0, Lcom/uc/webview/export/internal/setup/v;->b:Ljava/util/Stack;

    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/v;->b()Lcom/uc/webview/export/internal/setup/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    new-instance v0, Lcom/uc/webview/export/internal/setup/ax;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/ax;-><init>()V

    const-string/jumbo v1, "UCMobileSetupTask"

    invoke-direct {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/v;->a(Lcom/uc/webview/export/internal/setup/o;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/o;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
