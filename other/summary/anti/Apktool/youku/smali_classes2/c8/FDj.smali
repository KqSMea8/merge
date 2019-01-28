.class public Lc8/FDj;
.super Ljava/lang/Object;
.source "MTopManager.java"


# static fields
.field private static volatile inited:Z

.field private static mtopInstance:Lc8/AOp;

.field private static ttid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lc8/FDj;->inited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getMtopInstance()Lc8/AOp;
    .locals 5

    .prologue
    .line 44
    const-class v1, Lc8/FDj;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lc8/FDj;->inited:Z

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->sInstalledVersionName:Ljava/lang/String;

    invoke-static {}, Lc8/Iin;->getTTID()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lc8/IDj;->getUtdid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lc8/FDj;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    sget-object v0, Lc8/FDj;->mtopInstance:Lc8/AOp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getTtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lc8/FDj;->ttid:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "ttid"    # Ljava/lang/String;
    .param p3, "utdid"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p0, p1, p2, p3}, Lc8/FDj;->initImpl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private static initImpl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "ttid"    # Ljava/lang/String;
    .param p3, "utdid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 64
    new-instance v1, Lc8/lMp;

    invoke-direct {v1}, Lc8/lMp;-><init>()V

    invoke-static {v1}, Lc8/BMp;->setLogAdapter(Lc8/kMp;)V

    .line 67
    const-string/jumbo v1, "INNER"

    const-string/jumbo v2, "ENABLE_NEW_DEVICE_ID"

    invoke-static {v1, v2, v3}, Lc8/IOp;->setEnableProperty(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    const-string/jumbo v1, "INNER"

    const-string/jumbo v2, "ENABLE_NOTIFY_SESSION_RET"

    invoke-static {v1, v2, v5}, Lc8/IOp;->setEnableProperty(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 71
    const-string/jumbo v1, "INNER"

    const/4 v2, 0x2

    invoke-static {v1, v3, v2}, Lc8/IOp;->setAppKeyIndex(Ljava/lang/String;II)V

    .line 72
    const-string/jumbo v1, "INNER"

    invoke-static {v1, p1}, Lc8/IOp;->setAppVersion(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v1, "INNER"

    const-string/jumbo v2, "acs.youku.com"

    const-string/jumbo v3, "pre-acs.youku.com"

    const-string/jumbo v4, "daily-acs.youku.com"

    invoke-static {v1, v2, v3, v4}, Lc8/IOp;->setMtopDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sput-object p2, Lc8/FDj;->ttid:Ljava/lang/String;

    .line 77
    const-string/jumbo v1, "INNER"

    invoke-static {v1, p0, p2}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lc8/AOp;

    move-result-object v1

    .line 78
    invoke-virtual {v1, p2}, Lc8/AOp;->registerTtid(Ljava/lang/String;)Lc8/AOp;

    move-result-object v1

    .line 79
    invoke-virtual {v1, p3}, Lc8/AOp;->registerUtdid(Ljava/lang/String;)Lc8/AOp;

    move-result-object v1

    sput-object v1, Lc8/FDj;->mtopInstance:Lc8/AOp;

    .line 82
    :try_start_0
    sget-object v1, Lc8/FDj;->mtopInstance:Lc8/AOp;

    new-instance v2, Lc8/mko;

    invoke-direct {v2}, Lc8/mko;-><init>()V

    invoke-static {v1, v2}, Lc8/nNf;->setLoginImpl(Lc8/AOp;Lc8/jNf;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    sput-boolean v5, Lc8/FDj;->inited:Z

    .line 88
    invoke-static {}, Lc8/tSh;->fetchWhiteListConfigs()V

    .line 89
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "var3":Ljava/lang/Throwable;
    const-string/jumbo v1, "MTopManager"

    invoke-static {v1, v0}, Lc8/nSh;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
