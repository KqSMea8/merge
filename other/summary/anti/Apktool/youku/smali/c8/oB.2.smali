.class public Lc8/oB;
.super Ljava/lang/Object;
.source "WindVaneSDKForTB.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WindVaneSDKForTB"

.field private static inited:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isForeground:Z

.field public static wvAdapter:Lc8/mC;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    sput-boolean v1, Lc8/oB;->isForeground:Z

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lc8/oB;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    const/4 v0, 0x0

    sput-object v0, Lc8/oB;->wvAdapter:Lc8/mC;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lc8/oB;->isForeground:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 50
    sput-boolean p0, Lc8/oB;->isForeground:Z

    return p0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;ILc8/BB;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheDir"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "params"    # Lc8/BB;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 60
    sget-object v0, Lc8/oB;->inited:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    iget-object v0, p3, Lc8/BB;->ucsdkappkeySec:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "YKIXAXN/9v6Tez0oeIRx9ilCfTkSFozXf+nmGRTPG7ruP1KycnZL8vCcjyaMMGajricmE9blrBlr\nO+HGrJUsuw==\n"

    aput-object v1, v0, v3

    const-string/jumbo v1, "RjpgSKj6piHyametkuIC/9mWn1DKkVntRLhh4mOYlf6/g/wO1kioAHE7weTqAdqn05FXCu0dJU+p6pKC6I+k8w=="

    aput-object v1, v0, v2

    iput-object v0, p3, Lc8/BB;->ucsdkappkeySec:[Ljava/lang/String;

    .line 68
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lc8/mB;->init(Landroid/content/Context;Ljava/lang/String;ILc8/BB;)V

    .line 70
    new-instance v0, Lc8/jG;

    invoke-direct {v0}, Lc8/jG;-><init>()V

    invoke-static {v0}, Lc8/xG;->registerWvPackageAppConfig(Lc8/kG;)V

    .line 71
    invoke-static {}, Lc8/sG;->getInstance()Lc8/sG;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lc8/sG;->init(Landroid/content/Context;Z)V

    .line 76
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget v0, v0, Lc8/EB;->urlRuleStatus:I

    if-eqz v0, :cond_1

    .line 77
    new-instance v0, Lc8/EH;

    invoke-direct {v0}, Lc8/EH;-><init>()V

    invoke-static {v0}, Lc8/CH;->registerWVURLIntercepter(Lc8/GH;)V

    .line 82
    :cond_1
    invoke-static {}, Lc8/tE;->setup()V

    .line 87
    invoke-static {}, Lc8/LF;->init()V

    .line 89
    invoke-static {}, Lc8/rC;->initJsApi()V

    .line 94
    invoke-static {}, Lc8/OH;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    invoke-static {}, Lc8/KF;->getInstance()Lc8/KF;

    move-result-object v1

    sget v2, Lc8/qH;->WV_BACKWARD_EVENT:I

    invoke-virtual {v0, v1, v2}, Lc8/qH;->addEventListener(Lc8/pH;I)V

    .line 96
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    const/16 v1, 0xbc1

    invoke-virtual {v0, v1}, Lc8/qH;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 99
    :cond_2
    new-instance v0, Lc8/nC;

    invoke-direct {v0}, Lc8/nC;-><init>()V

    invoke-static {v0}, Lc8/rI;->registerWVURLintercepter(Lc8/sI;)V

    .line 101
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v0

    new-instance v1, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;

    invoke-direct {v1}, Lcom/taobao/windvane/extra/ut/UTCrashCaughtListner;-><init>()V

    invoke-virtual {v0, v1}, Lc8/XSb;->setCrashCaughtListener(Lc8/SSb;)V

    .line 104
    :try_start_0
    invoke-static {}, Lc8/pC;->getInstance()Lc8/pC;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/pC;->init(Landroid/content/Context;)V

    .line 105
    new-instance v0, Lc8/nB;

    invoke-direct {v0}, Lc8/nB;-><init>()V

    invoke-static {v0}, Lc8/msf;->registerOnlineNotify(Lc8/jsf;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
