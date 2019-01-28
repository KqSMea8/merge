.class public final Lc8/Gko;
.super Ljava/lang/Object;
.source "Passport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Fko;
    }
.end annotation


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final MAX_UNINIT_CALL:I = 0x14

.field private static final PASSPORT_SERVICE:Ljava/lang/String; = "com.youku.usercenter.passport.remote.PassportService"

.field public static final SERVICE_CONNECT_TIMEOUT:I = 0x2710

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "YKLogin.PassportSDK-Api"

.field private static sConfig:Lcom/youku/usercenter/passport/remote/PassportConfig;

.field private static sContext:Landroid/content/Context;

.field private static sDebug:Z

.field private static sInitProcesses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInitStartTime:J

.field private static sListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/lko;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sLoginImpl:Lc8/mko;

.field private static sMissCallExceedUploaded:Z

.field private static sPassportInitted:Z

.field private static sPassportService:Lc8/Ipo;

.field private static sReInit:Z

.field private static sReceiver:Lc8/Hko;

.field private static sRetryCount:I

.field private static sServiceConnection:Landroid/content/ServiceConnection;

.field private static volatile sUnInitCall:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/Gko;->sListenerList:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lc8/Gko;->sInitProcesses:Ljava/util/HashSet;

    .line 88
    sput-boolean v1, Lc8/Gko;->sPassportInitted:Z

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/Gko;->sLock:Ljava/lang/Object;

    .line 94
    sput-boolean v1, Lc8/Gko;->sDebug:Z

    .line 96
    sput v1, Lc8/Gko;->sUnInitCall:I

    .line 98
    sput v1, Lc8/Gko;->sRetryCount:I

    .line 100
    sput-boolean v1, Lc8/Gko;->sMissCallExceedUploaded:Z

    .line 106
    sput-boolean v1, Lc8/Gko;->sReInit:Z

    .line 108
    const-wide/16 v0, 0x0

    sput-wide v0, Lc8/Gko;->sInitStartTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1360
    return-void
.end method

.method public static SNSAddBind(Lc8/kko;Ljava/lang/String;)V
    .locals 3
    .param p0, "aCallBack"    # Lc8/kko;
    .param p1, "aTlsite"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 489
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    new-instance v2, Lc8/yko;

    invoke-direct {v2, p0}, Lc8/yko;-><init>(Lc8/kko;)V

    invoke-interface {v1, v2, p1}, Lc8/Ipo;->SNSAddBind(Lc8/Fpo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SNSAddBind"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static SNSDeleteBind(Lc8/kko;Ljava/lang/String;)V
    .locals 3
    .param p0, "aCallBack"    # Lc8/kko;
    .param p1, "aTlsite"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 526
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    new-instance v2, Lc8/zko;

    invoke-direct {v2, p0}, Lc8/zko;-><init>(Lc8/kko;)V

    invoke-interface {v1, v2, p1}, Lc8/Ipo;->SNSDeleteBind(Lc8/Fpo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SNSDeleteBind"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$002(Lc8/Ipo;)Lc8/Ipo;
    .locals 0
    .param p0, "x0"    # Lc8/Ipo;

    .prologue
    .line 67
    sput-object p0, Lc8/Gko;->sPassportService:Lc8/Ipo;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;Lc8/kko;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lc8/kko;
    .param p2, "x2"    # Z

    .prologue
    .line 67
    invoke-static {p0, p1, p2}, Lc8/Gko;->initInner(Landroid/content/Context;Lc8/kko;Z)V

    return-void
.end method

.method static synthetic access$1000()J
    .locals 2

    .prologue
    .line 67
    sget-wide v0, Lc8/Gko;->sInitStartTime:J

    return-wide v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lc8/Gko;->sReInit:Z

    return v0
.end method

.method static synthetic access$1102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 67
    sput-boolean p0, Lc8/Gko;->sReInit:Z

    return p0
.end method

.method static synthetic access$200(Landroid/content/Context;Lc8/kko;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lc8/kko;

    .prologue
    .line 67
    invoke-static {p0, p1}, Lc8/Gko;->initInOtherProcess(Landroid/content/Context;Lc8/kko;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;Lc8/kko;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lc8/kko;

    .prologue
    .line 67
    invoke-static {p0, p1}, Lc8/Gko;->connectPassportService(Landroid/content/Context;Lc8/kko;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p0, p1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 67
    sput p0, Lc8/Gko;->sRetryCount:I

    return p0
.end method

.method static synthetic access$600()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lc8/Gko;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700()Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lc8/Gko;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-static {p0}, Lc8/Gko;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 67
    sput-boolean p0, Lc8/Gko;->sPassportInitted:Z

    return p0
.end method

.method public static addBindTaobao(Lc8/Mko;Ljava/lang/String;)V
    .locals 1
    .param p1, "aFrom"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mko",
            "<",
            "Lc8/Oko;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, "aCallBack":Lc8/Mko;, "Lcom/youku/usercenter/passport/api/callback/IRequestCallback<Lcom/youku/usercenter/passport/api/result/Result;>;"
    const-string/jumbo v0, "taobao"

    invoke-static {p0, v0, p1}, Lc8/Gko;->bindSNS(Lc8/Mko;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method public static declared-synchronized addInitProcess(Ljava/lang/String;)V
    .locals 2
    .param p0, "aProcessName"    # Ljava/lang/String;

    .prologue
    .line 182
    const-class v1, Lc8/Gko;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    sget-object v0, Lc8/Gko;->sInitProcesses:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_0
    monitor-exit v1

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static bindMobile(Lc8/Mko;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mko",
            "<",
            "Lc8/Nko;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 895
    .local p0, "aCallback":Lc8/Mko;, "Lcom/youku/usercenter/passport/api/callback/IRequestCallback<Lcom/youku/usercenter/passport/api/result/BindResult;>;"
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 896
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    new-instance v2, Lc8/pko;

    invoke-direct {v2, p0}, Lc8/pko;-><init>(Lc8/Mko;)V

    invoke-interface {v1, v2}, Lc8/Ipo;->bindMobile(Lc8/Fpo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "bindMobile"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static bindSNS(Lc8/Mko;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "aTlSite"    # Ljava/lang/String;
    .param p2, "aFrom"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mko",
            "<",
            "Lc8/Oko;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 559
    .local p0, "aCallback":Lc8/Mko;, "Lcom/youku/usercenter/passport/api/callback/IRequestCallback<Lcom/youku/usercenter/passport/api/result/Result;>;"
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    new-instance v2, Lc8/Ako;

    invoke-direct {v2, p0}, Lc8/Ako;-><init>(Lc8/Mko;)V

    invoke-interface {v1, v2, p1, p2}, Lc8/Ipo;->bindSNS(Lc8/Fpo;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    if-eqz p0, :cond_0

    .line 581
    new-instance v1, Lc8/Oko;

    invoke-direct {v1}, Lc8/Oko;-><init>()V

    invoke-interface {p0, v1}, Lc8/Mko;->onFailure(Lc8/Oko;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bindSNS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 586
    if-eqz p0, :cond_0

    .line 587
    new-instance v1, Lc8/Oko;

    invoke-direct {v1}, Lc8/Oko;-><init>()V

    invoke-interface {p0, v1}, Lc8/Mko;->onFailure(Lc8/Oko;)V

    goto :goto_0
.end method

.method private static bindService(Landroid/content/Context;)V
    .locals 5
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 1114
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Gko;->getInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " 4. prepare bindService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1115
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1116
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.youku.usercenter.passport.remote.PassportService"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1117
    new-instance v2, Lc8/tko;

    invoke-direct {v2}, Lc8/tko;-><init>()V

    sput-object v2, Lc8/Gko;->sServiceConnection:Landroid/content/ServiceConnection;

    .line 1152
    sget-object v2, Lc8/Gko;->sServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1153
    const-string/jumbo v2, "YKLogin.PassportSDK-Api"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Gko;->getInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " 5. start bindService"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Lc8/Gko;->waitUntilConnected(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1157
    const-string/jumbo v2, "YKLogin.PassportSDK-Api"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lc8/Gko;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lc8/Wko;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bindService exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1158
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1157
    invoke-static {v2, v3}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static declared-synchronized connectPassportService(Landroid/content/Context;Lc8/kko;)V
    .locals 3
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "aCallback"    # Lc8/kko;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 1189
    const-class v1, Lc8/Gko;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Gko;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " 1. Try to connect PassportService"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1190
    invoke-static {}, Lc8/Gko;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Gko;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " 2. Begin to connect PassportService"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1192
    invoke-static {p0}, Lc8/Gko;->unbindService(Landroid/content/Context;)V

    .line 1193
    invoke-static {p0}, Lc8/Gko;->bindService(Landroid/content/Context;)V

    .line 1194
    sget-object v0, Lc8/Gko;->sPassportService:Lc8/Ipo;

    if-eqz v0, :cond_1

    .line 1196
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lc8/Gko;->initInner(Landroid/content/Context;Lc8/kko;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 1197
    :cond_1
    :try_start_1
    sget v0, Lc8/Gko;->sRetryCount:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    .line 1198
    sget v0, Lc8/Gko;->sRetryCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lc8/Gko;->sRetryCount:I

    .line 1199
    invoke-static {p0, p1}, Lc8/Gko;->connectPassportService(Landroid/content/Context;Lc8/kko;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1189
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1202
    :cond_2
    :try_start_2
    invoke-static {p0}, Lc8/Wko;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Vko;->commitBindServiceFail(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static countMissCall()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1320
    const-string/jumbo v2, "YKLogin.PassportSDK-Api"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PassportSDK not ready! sPassportService is null = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lc8/Gko;->sPassportService:Lc8/Ipo;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " sPassportInitted = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v3, Lc8/Gko;->sPassportInitted:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    sget v0, Lc8/Gko;->sUnInitCall:I

    add-int/lit8 v0, v0, 0x1

    .line 1323
    sput v0, Lc8/Gko;->sUnInitCall:I

    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    .line 1324
    sget-boolean v0, Lc8/Gko;->sMissCallExceedUploaded:Z

    if-nez v0, :cond_0

    .line 1326
    sget-object v0, Lc8/Gko;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Wko;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Vko;->commitMissCallExceed(Ljava/lang/String;)V

    .line 1327
    sput-boolean v1, Lc8/Gko;->sMissCallExceedUploaded:Z

    .line 1330
    :cond_0
    return-void

    .line 1320
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCookie()Ljava/lang/String;
    .locals 2

    .prologue
    .line 361
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    invoke-interface {v1}, Lc8/Ipo;->getCookie()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 367
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 364
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 365
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "getCookie"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 367
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1357
    sget-object v0, Lc8/Gko;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Wko;->getRunningInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSNSBindInfo(Lc8/Mko;Ljava/lang/String;)V
    .locals 4
    .param p1, "aTlSite"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc8/Pko;",
            ">(",
            "Lc8/Mko",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 793
    .local p0, "aCallback":Lc8/Mko;, "Lcom/youku/usercenter/passport/api/callback/IRequestCallback<TT;>;"
    if-nez p0, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 798
    sget-object v2, Lc8/Gko;->sPassportService:Lc8/Ipo;

    new-instance v3, Lc8/oko;

    invoke-direct {v3, p0}, Lc8/oko;-><init>(Lc8/Mko;)V

    invoke-interface {v2, v3, p1}, Lc8/Ipo;->getSNSBindInfo(Lc8/Fpo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {p0}, Lc8/Wko;->initResult(Lc8/Mko;)Lc8/Pko;

    move-result-object v1

    .line 838
    .local v1, "result":Lc8/Pko;, "TT;"
    if-eqz v1, :cond_2

    .line 839
    invoke-interface {p0, v1}, Lc8/Mko;->onFailure(Lc8/Oko;)V

    .line 841
    :cond_2
    const-string/jumbo v2, "getSNSBindInfo"

    invoke-static {v0, v2}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 831
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "result":Lc8/Pko;, "TT;"
    :cond_3
    :try_start_1
    invoke-static {p0}, Lc8/Wko;->initResult(Lc8/Mko;)Lc8/Pko;

    move-result-object v1

    .line 832
    .restart local v1    # "result":Lc8/Pko;, "TT;"
    if-eqz v1, :cond_0

    .line 833
    invoke-interface {p0, v1}, Lc8/Mko;->onFailure(Lc8/Oko;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getSNSBindInfos(Lc8/Mko;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mko",
            "<",
            "Lc8/Rko;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 734
    .local p0, "aCallback":Lc8/Mko;, "Lcom/youku/usercenter/passport/api/callback/IRequestCallback<Lcom/youku/usercenter/passport/api/result/SNSBindInfos;>;"
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    new-instance v2, Lc8/nko;

    invoke-direct {v2, p0}, Lc8/nko;-><init>(Lc8/Mko;)V

    invoke-interface {v1, v2}, Lc8/Ipo;->getSNSBindInfos(Lc8/Fpo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "getSNSBindInfos"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 394
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    invoke-interface {v1}, Lc8/Ipo;->getSToken()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 397
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 398
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "getSToken"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 400
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getTaobaoBindInfo(Lc8/Mko;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mko",
            "<",
            "Lc8/Sko;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 782
    .local p0, "aCallback":Lc8/Mko;, "Lcom/youku/usercenter/passport/api/callback/IRequestCallback<Lcom/youku/usercenter/passport/api/result/TaobaoBindInfo;>;"
    const-string/jumbo v0, "taobao"

    invoke-static {p0, v0}, Lc8/Gko;->getSNSBindInfo(Lc8/Mko;Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method public static getUpdatedUserInfo(Lc8/Mko;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mko",
            "<",
            "Lc8/Tko;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 974
    .local p0, "aCallback":Lc8/Mko;, "Lcom/youku/usercenter/passport/api/callback/IRequestCallback<Lcom/youku/usercenter/passport/api/result/UserInfoResult;>;"
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 975
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    new-instance v2, Lc8/qko;

    invoke-direct {v2, p0}, Lc8/qko;-><init>(Lc8/Mko;)V

    invoke-interface {v1, v2}, Lc8/Ipo;->getUpdatedUserInfo(Lc8/Fpo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 998
    :catch_0
    move-exception v0

    .line 999
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "getUpdatedUserInfo"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;
    .locals 2

    .prologue
    .line 439
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    invoke-interface {v1}, Lc8/Ipo;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 445
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 442
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 443
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "getUserInfo"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 445
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getUserTags(Lc8/Mko;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "aUserIdType"    # Ljava/lang/String;
    .param p2, "aUserId"    # Ljava/lang/String;
    .param p3, "aReqId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mko",
            "<",
            "Lc8/Uko;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 696
    .local p0, "aCallback":Lc8/Mko;, "Lcom/youku/usercenter/passport/api/callback/IRequestCallback<Lcom/youku/usercenter/passport/api/result/UserTags;>;"
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 697
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    new-instance v2, Lc8/Eko;

    invoke-direct {v2, p0}, Lc8/Eko;-><init>(Lc8/Mko;)V

    invoke-interface {v1, v2, p1, p2, p3}, Lc8/Ipo;->getUserTags(Lc8/Fpo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "getUserTags"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getYktk()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 378
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    invoke-interface {v1}, Lc8/Ipo;->getYktk()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 381
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 382
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "getYktk"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 384
    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method static handleCookieError(IJ)Z
    .locals 3
    .param p0, "aErrorCode"    # I
    .param p1, "aTimeStamp"    # J

    .prologue
    .line 863
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 864
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    invoke-interface {v1, p0, p1, p2}, Lc8/Ipo;->handleCookieError(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 869
    :goto_0
    return v1

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "handleCookieError"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 869
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static handleException(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "aMethod"    # Ljava/lang/String;

    .prologue
    .line 1342
    sget-boolean v0, Lc8/Gko;->sDebug:Z

    if-eqz v0, :cond_0

    .line 1343
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1345
    :cond_0
    const-string/jumbo v0, "YKLogin.PassportSDK-Api"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc8/Gko;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/Wko;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1346
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1345
    invoke-static {v0, v1}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    sget-object v0, Lc8/Gko;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Wko;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lc8/Vko;->commitApiException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    return-void
.end method

.method public static handleMMAuth(Ljava/lang/String;)V
    .locals 2
    .param p0, "aAuthCode"    # Ljava/lang/String;

    .prologue
    .line 477
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    invoke-interface {v1, p0}, Lc8/Ipo;->handleMMAuth(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "handleMMAuth"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static handleMMAuthFail()V
    .locals 2

    .prologue
    .line 1005
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1006
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    invoke-interface {v1}, Lc8/Ipo;->handleMMAuthFail()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1011
    .local v0, "aE":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 1008
    .end local v0    # "aE":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 1009
    .restart local v0    # "aE":Ljava/lang/Throwable;
    const-string/jumbo v1, "handleMMAuthFail"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Lcom/youku/usercenter/passport/remote/PassportConfig;Lc8/kko;)V
    .locals 5
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "aConfig"    # Lcom/youku/usercenter/passport/remote/PassportConfig;
    .param p2, "aCallback"    # Lc8/kko;

    .prologue
    .line 116
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    .local v0, "applicationContext":Landroid/content/Context;
    sput-object v0, Lc8/Gko;->sContext:Landroid/content/Context;

    .line 118
    iget-boolean v2, p1, Lcom/youku/usercenter/passport/remote/PassportConfig;->mDebug:Z

    sput-boolean v2, Lc8/Gko;->sDebug:Z

    .line 119
    sput-object p1, Lc8/Gko;->sConfig:Lcom/youku/usercenter/passport/remote/PassportConfig;

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Gko;->getInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Initiate passport"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    invoke-static {}, Lc8/Lko;->register()V

    .line 122
    invoke-static {p0}, Lc8/Gko;->isMainProcess(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lc8/Gko;->sInitStartTime:J

    .line 125
    invoke-static {v0, p2}, Lc8/Gko;->initInMainProcess(Landroid/content/Context;Lc8/kko;)V

    .line 136
    .end local v0    # "applicationContext":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local v0    # "applicationContext":Landroid/content/Context;
    :cond_1
    sget-object v2, Lc8/Gko;->sInitProcesses:Ljava/util/HashSet;

    invoke-static {p0}, Lc8/Wko;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lc8/Gko;->sInitStartTime:J

    .line 129
    invoke-static {v0, p2}, Lc8/Gko;->initInOtherProcess(Landroid/content/Context;Lc8/kko;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v0    # "applicationContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    const-string/jumbo v2, "YKLogin.PassportSDK-Api"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lc8/Gko;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lc8/Wko;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " init exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 134
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-static {v2, v3}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static initImmediately()Z
    .locals 8

    .prologue
    .line 1222
    sget-object v0, Lc8/Gko;->sContext:Landroid/content/Context;

    .line 1223
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lc8/Wko;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1224
    .local v2, "processName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " passport not init yet!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1225
    const/4 v1, 0x0

    .line 1227
    .local v1, "initiated":Z
    invoke-static {v0}, Lc8/Gko;->isMainProcess(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1228
    sget-wide v4, Lc8/Gko;->sInitStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1229
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sput-wide v4, Lc8/Gko;->sInitStartTime:J

    .line 1231
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_3

    .line 1232
    const-string/jumbo v3, "YKLogin.PassportSDK-Api"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Gko;->getInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " passport initiated in non-main Thread!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lc8/Gko;->connectPassportService(Landroid/content/Context;Lc8/kko;)V

    .line 1236
    invoke-static {}, Lc8/Gko;->isServiceConnected()Z

    move-result v1

    .line 1249
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 1250
    invoke-static {}, Lc8/Gko;->countMissCall()V

    .line 1252
    :cond_2
    return v1

    .line 1239
    :cond_3
    const-string/jumbo v3, "YKLogin.PassportSDK-Api"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Gko;->getInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " passport initiated in main Thread!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v4, Lc8/uko;

    invoke-direct {v4, v0}, Lc8/uko;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1246
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static initInMainProcess(Landroid/content/Context;Lc8/kko;)V
    .locals 2
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "aCallback"    # Lc8/kko;

    .prologue
    .line 140
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lc8/wko;

    invoke-direct {v1, p0, p1}, Lc8/wko;-><init>(Landroid/content/Context;Lc8/kko;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method private static initInOtherProcess(Landroid/content/Context;Lc8/kko;)V
    .locals 2
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "aCallback"    # Lc8/kko;

    .prologue
    .line 173
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lc8/xko;

    invoke-direct {v1, p0, p1}, Lc8/xko;-><init>(Landroid/content/Context;Lc8/kko;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 179
    return-void
.end method

.method private static declared-synchronized initInner(Landroid/content/Context;Lc8/kko;Z)V
    .locals 6
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "aCallback"    # Lc8/kko;
    .param p2, "aMarkInitImmediate"    # Z

    .prologue
    .line 1258
    const-class v4, Lc8/Gko;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lc8/Gko;->isServiceConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 1316
    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    .line 1262
    :cond_1
    :try_start_1
    sget-object v0, Lc8/Gko;->sConfig:Lcom/youku/usercenter/passport/remote/PassportConfig;

    .line 1263
    .local v0, "aPassportConfig":Lcom/youku/usercenter/passport/remote/PassportConfig;
    sget-object v3, Lc8/Gko;->sPassportService:Lc8/Ipo;

    if-eqz v3, :cond_2

    .line 1264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Gko;->getInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " initInner: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1265
    sget-object v3, Lc8/Gko;->sPassportService:Lc8/Ipo;

    new-instance v5, Lc8/vko;

    invoke-direct {v5, p2, p1}, Lc8/vko;-><init>(ZLc8/kko;)V

    invoke-interface {v3, v5, v0}, Lc8/Ipo;->initWithCallback(Lc8/Fpo;Lcom/youku/usercenter/passport/remote/PassportConfig;)V

    .line 1297
    :cond_2
    sget-object v3, Lc8/Gko;->sReceiver:Lc8/Hko;

    if-eqz v3, :cond_3

    .line 1298
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    sget-object v5, Lc8/Gko;->sReceiver:Lc8/Hko;

    invoke-virtual {v3, v5}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1300
    :cond_3
    new-instance v3, Lc8/Hko;

    invoke-direct {v3}, Lc8/Hko;-><init>()V

    sput-object v3, Lc8/Gko;->sReceiver:Lc8/Hko;

    .line 1301
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1302
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "passport_user_login"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1303
    const-string/jumbo v3, "passport_user_logout"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1304
    const-string/jumbo v3, "passport_expire_logout"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1305
    const-string/jumbo v3, "passport_token_refreshed"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1306
    const-string/jumbo v3, "passport_cookie_refreshed"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1307
    const-string/jumbo v3, "passport_login_cancel"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1308
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    sget-object v5, Lc8/Gko;->sReceiver:Lc8/Hko;

    invoke-virtual {v3, v5, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1310
    if-eqz p2, :cond_0

    .line 1311
    const/4 v3, 0x1

    sput-boolean v3, Lc8/Gko;->sPassportInitted:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1313
    .end local v0    # "aPassportConfig":Lcom/youku/usercenter/passport/remote/PassportConfig;
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    .line 1314
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "initInner"

    invoke-static {v1, v3}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1258
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static isBoundMobile()Z
    .locals 2

    .prologue
    .line 879
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    invoke-interface {v1}, Lc8/Ipo;->isBoundMobile()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 885
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return v1

    .line 882
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 883
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "isBoundMobile"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 885
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFingerprintAuthEnabled()Z
    .locals 2

    .prologue
    .line 934
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 935
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    invoke-interface {v1}, Lc8/Ipo;->isFingerprintAuthEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 940
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return v1

    .line 937
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 938
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "isFingerprintAuthEnabled"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 940
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFingerprintAvailable()Z
    .locals 2

    .prologue
    .line 923
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 924
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    invoke-interface {v1}, Lc8/Ipo;->isFingerprintAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 929
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return v1

    .line 926
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 927
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "isFingerprintAvailable"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 929
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isInitted()Z
    .locals 1

    .prologue
    .line 1213
    invoke-static {}, Lc8/Gko;->isServiceConnected()Z

    move-result v0

    .line 1214
    .local v0, "isInitiated":Z
    if-nez v0, :cond_0

    .line 1215
    invoke-static {}, Lc8/Gko;->initImmediately()Z

    move-result v0

    .line 1218
    :cond_0
    return v0
.end method

.method public static isLogin()Z
    .locals 2

    .prologue
    .line 406
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    invoke-interface {v1}, Lc8/Ipo;->isLogin()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 412
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return v1

    .line 409
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 410
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "isLogin"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 412
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isLogining()Z
    .locals 2

    .prologue
    .line 422
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    invoke-interface {v1}, Lc8/Ipo;->isLogining()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 428
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return v1

    .line 425
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 426
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "isLogining"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 428
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isMainProcess(Landroid/content/Context;)Z
    .locals 5
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 193
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {p0}, Lc8/Wko;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "processName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 196
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 197
    const/4 v3, 0x0

    .line 203
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "processName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "isMainProcess"

    invoke-static {v0, v4}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isQuickLoginAvailable()Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 1015
    const/4 v1, 0x0

    .line 1017
    .local v1, "available":Z
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1018
    sget-object v2, Lc8/Gko;->sPassportService:Lc8/Ipo;

    invoke-interface {v2}, Lc8/Ipo;->isQuickLoginAvailable()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1024
    :cond_0
    :goto_0
    return v1

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    .local v0, "aE":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 1022
    const-string/jumbo v2, "isQuickLoginAvailable"

    invoke-static {v0, v2}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isServiceConnected()Z
    .locals 1

    .prologue
    .line 1338
    sget-boolean v0, Lc8/Gko;->sPassportInitted:Z

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Gko;->sPassportService:Lc8/Ipo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logout()V
    .locals 4

    .prologue
    .line 342
    const-string/jumbo v1, "YKLogin.PassportSDK-Api"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "logout start! isLogin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    invoke-interface {v1}, Lc8/Ipo;->logout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    const-string/jumbo v1, "YKLogin.PassportSDK-Api"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "logout end! isLogin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void

    .line 347
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 348
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "logout"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 461
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    invoke-interface {v1, p0, p1, p2}, Lc8/Ipo;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "onActivityResult"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static onCookieRefreshed(Ljava/lang/String;)V
    .locals 4
    .param p0, "aCookie"    # Ljava/lang/String;

    .prologue
    .line 1103
    sget-object v2, Lc8/Gko;->sListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/lko;

    .line 1105
    .local v1, "listener":Lc8/lko;
    :try_start_0
    invoke-interface {v1, p0}, Lc8/lko;->onCookieRefreshed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1106
    :catch_0
    move-exception v0

    .line 1107
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1110
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "listener":Lc8/lko;
    :cond_0
    return-void
.end method

.method static onExpireLogout()V
    .locals 4

    .prologue
    .line 1080
    sget-object v2, Lc8/Gko;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/Gko;->isMainProcess(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1081
    const-string/jumbo v2, "INNER"

    sget-object v3, Lc8/Gko;->sContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v2

    invoke-virtual {v2}, Lc8/AOp;->logout()Lc8/AOp;

    .line 1083
    :cond_0
    sget-object v2, Lc8/Gko;->sListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v1, "listener":Lc8/lko;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listener":Lc8/lko;
    check-cast v1, Lc8/lko;

    .line 1085
    .restart local v1    # "listener":Lc8/lko;
    :try_start_0
    invoke-interface {v1}, Lc8/lko;->onExpireLogout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1090
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method static onLoginCancel()V
    .locals 3

    .prologue
    .line 1057
    sget-object v1, Lc8/Gko;->sLoginImpl:Lc8/mko;

    if-eqz v1, :cond_0

    .line 1058
    sget-object v1, Lc8/Gko;->sLoginImpl:Lc8/mko;

    invoke-virtual {v1}, Lc8/mko;->getOnLoginListener()Lc8/oNf;

    move-result-object v0

    .line 1059
    .local v0, "listener":Lc8/oNf;
    if-eqz v0, :cond_0

    .line 1060
    invoke-interface {v0}, Lc8/oNf;->onLoginCancel()V

    .line 1061
    sget-object v1, Lc8/Gko;->sLoginImpl:Lc8/mko;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc8/mko;->setOnLoginListener(Lc8/oNf;)V

    .line 1064
    :cond_0
    return-void
.end method

.method static onTokenRefreshed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "aSToken"    # Ljava/lang/String;
    .param p1, "aYtid"    # Ljava/lang/String;

    .prologue
    .line 1093
    sget-object v2, Lc8/Gko;->sListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/lko;

    .line 1095
    .local v1, "listener":Lc8/lko;
    :try_start_0
    invoke-interface {v1, p0}, Lc8/lko;->onTokenRefreshed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1096
    :catch_0
    move-exception v0

    .line 1097
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1100
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "listener":Lc8/lko;
    :cond_0
    return-void
.end method

.method static onUserLogin()V
    .locals 4

    .prologue
    .line 1040
    sget-object v2, Lc8/Gko;->sLoginImpl:Lc8/mko;

    if-eqz v2, :cond_0

    .line 1041
    sget-object v2, Lc8/Gko;->sLoginImpl:Lc8/mko;

    invoke-virtual {v2}, Lc8/mko;->getOnLoginListener()Lc8/oNf;

    move-result-object v1

    .line 1042
    .local v1, "listener":Lc8/oNf;
    if-eqz v1, :cond_0

    .line 1043
    invoke-interface {v1}, Lc8/oNf;->onLoginSuccess()V

    .line 1044
    sget-object v2, Lc8/Gko;->sLoginImpl:Lc8/mko;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc8/mko;->setOnLoginListener(Lc8/oNf;)V

    .line 1047
    :cond_0
    sget-object v2, Lc8/Gko;->sListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v0, "e":Ljava/lang/Exception;
    .local v1, "listener":Lc8/lko;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "listener":Lc8/lko;
    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/lko;

    .line 1049
    .restart local v1    # "listener":Lc8/lko;
    :try_start_0
    invoke-interface {v1}, Lc8/lko;->onUserLogin()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1054
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "listener":Lc8/lko;
    :cond_1
    return-void
.end method

.method static onUserLogout()V
    .locals 4

    .prologue
    .line 1067
    sget-object v2, Lc8/Gko;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/Gko;->isMainProcess(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1068
    const-string/jumbo v2, "INNER"

    sget-object v3, Lc8/Gko;->sContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v2

    invoke-virtual {v2}, Lc8/AOp;->logout()Lc8/AOp;

    .line 1070
    :cond_0
    sget-object v2, Lc8/Gko;->sListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v1, "listener":Lc8/lko;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listener":Lc8/lko;
    check-cast v1, Lc8/lko;

    .line 1072
    .restart local v1    # "listener":Lc8/lko;
    :try_start_0
    invoke-interface {v1}, Lc8/lko;->onUserLogout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1073
    :catch_0
    move-exception v0

    .line 1074
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1077
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public static openSecurityCenter()V
    .locals 2

    .prologue
    .line 954
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    sget-object v0, Lc8/Gko;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "passport://browser/securityCenter"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 957
    :cond_0
    return-void
.end method

.method public static openUrlByKey(Ljava/lang/String;)V
    .locals 3
    .param p0, "aUrlKey"    # Ljava/lang/String;

    .prologue
    .line 967
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    sget-object v0, Lc8/Gko;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "passport://browser/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 970
    :cond_0
    return-void
.end method

.method public static refreshSToken()V
    .locals 2

    .prologue
    .line 847
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 848
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    invoke-interface {v1}, Lc8/Ipo;->refreshSToken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    .local v0, "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void

    .line 850
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 851
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "refreshSToken"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized registerListener(Lc8/lko;)V
    .locals 2
    .param p0, "aListener"    # Lc8/lko;

    .prologue
    .line 1028
    const-class v1, Lc8/Gko;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 1029
    :try_start_0
    sget-object v0, Lc8/Gko;->sListenerList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1031
    :cond_0
    monitor-exit v1

    return-void

    .line 1028
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setFingerprintAuthEnabled(Z)V
    .locals 2
    .param p0, "aEnabled"    # Z

    .prologue
    .line 945
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    invoke-interface {v1, p0}, Lc8/Ipo;->setFingerprintAuthEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "setFingerprintAuthEnabled"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static setLoginImpl(Lc8/mko;)V
    .locals 0
    .param p0, "aLoginImpl"    # Lc8/mko;

    .prologue
    .line 188
    sput-object p0, Lc8/Gko;->sLoginImpl:Lc8/mko;

    .line 189
    return-void
.end method

.method public static shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p0, "aWebView"    # Landroid/webkit/WebView;
    .param p1, "aUrl"    # Ljava/lang/String;

    .prologue
    .line 638
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    invoke-interface {v1, p1}, Lc8/Ipo;->shouldOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    new-instance v2, Lc8/Cko;

    invoke-direct {v2, p0}, Lc8/Cko;-><init>(Landroid/webkit/WebView;)V

    invoke-interface {v1, v2}, Lc8/Ipo;->h5ToNativeLogin(Lc8/Fpo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    const/4 v1, 0x1

    .line 658
    :goto_0
    return v1

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "shouldOverrideUrlLoading"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 658
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p0, "aWebView"    # Lcom/uc/webview/export/WebView;
    .param p1, "aUrl"    # Ljava/lang/String;

    .prologue
    .line 671
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    invoke-interface {v1, p1}, Lc8/Ipo;->shouldOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    new-instance v2, Lc8/Dko;

    invoke-direct {v2, p0}, Lc8/Dko;-><init>(Lcom/uc/webview/export/WebView;)V

    invoke-interface {v1, v2}, Lc8/Ipo;->h5ToNativeLogin(Lc8/Fpo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    const/4 v1, 0x1

    .line 691
    :goto_0
    return v1

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "shouldOverrideUrlLoading"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 691
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static startAuthActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "aShortUrl"    # Ljava/lang/String;
    .param p2, "aAuthCode"    # Ljava/lang/String;
    .param p3, "aAuthUrl"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 313
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "short_url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string/jumbo v1, "auth_code"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string/jumbo v1, "auth_url"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v1

    const-string/jumbo v2, "passport://qrauth"

    invoke-virtual {v1, v2}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 318
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public static startAuthActivityForResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "aContext"    # Landroid/app/Activity;
    .param p1, "aShortUrl"    # Ljava/lang/String;
    .param p2, "aAuthCode"    # Ljava/lang/String;
    .param p3, "aAuthUrl"    # Ljava/lang/String;
    .param p4, "aRequestCode"    # I

    .prologue
    .line 331
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 333
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "short_url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string/jumbo v1, "auth_code"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string/jumbo v1, "auth_url"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v1

    invoke-virtual {v1, p4}, Lc8/Ybf;->forResult(I)Lc8/Ybf;

    move-result-object v1

    const-string/jumbo v2, "passport://qrauth"

    invoke-virtual {v1, v2}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 338
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public static startLoginActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "passport://login"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 240
    :cond_0
    return-void
.end method

.method public static startLoginActivity(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aFrom"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 245
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "passport://login"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 248
    :cond_0
    return-void
.end method

.method public static startLoginActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "aFrom"    # Ljava/lang/String;

    .prologue
    .line 257
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 259
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v1

    const-string/jumbo v2, "passport://login"

    invoke-virtual {v1, v2}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 262
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method static startLoginActivity()Z
    .locals 2

    .prologue
    .line 227
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lc8/Gko;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "passport://login"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 229
    const/4 v0, 0x1

    .line 231
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startLoginActivityForResult(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .prologue
    .line 266
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Ybf;->forResult(I)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "passport://login"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 269
    :cond_0
    return-void
.end method

.method public static startLoginActivityForResult(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 3
    .param p0, "aActivity"    # Landroid/app/Activity;
    .param p1, "aReqCode"    # I
    .param p2, "aFrom"    # Ljava/lang/String;

    .prologue
    .line 280
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 282
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "from"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/Ybf;->forResult(I)Lc8/Ybf;

    move-result-object v1

    const-string/jumbo v2, "passport://login"

    invoke-virtual {v1, v2}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 285
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public static startRegisterActivity(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 289
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "passport://register"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 292
    :cond_0
    return-void
.end method

.method public static startRegisterActivityForResult(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .prologue
    .line 296
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Ybf;->forResult(I)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "passport://register"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 299
    :cond_0
    return-void
.end method

.method public static unbindSNS(Lc8/Mko;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "aTlSite"    # Ljava/lang/String;
    .param p2, "aFrom"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mko",
            "<",
            "Lc8/Oko;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 602
    .local p0, "aCallback":Lc8/Mko;, "Lcom/youku/usercenter/passport/api/callback/IRequestCallback<Lcom/youku/usercenter/passport/api/result/Result;>;"
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 603
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    new-instance v2, Lc8/Bko;

    invoke-direct {v2, p0}, Lc8/Bko;-><init>(Lc8/Mko;)V

    invoke-interface {v1, v2, p1, p2}, Lc8/Ipo;->unbindSNS(Lc8/Fpo;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    if-eqz p0, :cond_0

    .line 624
    new-instance v1, Lc8/Oko;

    invoke-direct {v1}, Lc8/Oko;-><init>()V

    invoke-interface {p0, v1}, Lc8/Mko;->onFailure(Lc8/Oko;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbindSNS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 629
    if-eqz p0, :cond_0

    .line 630
    new-instance v1, Lc8/Oko;

    invoke-direct {v1}, Lc8/Oko;-><init>()V

    invoke-interface {p0, v1}, Lc8/Mko;->onFailure(Lc8/Oko;)V

    goto :goto_0
.end method

.method private static unbindService(Landroid/content/Context;)V
    .locals 4
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 1169
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    .line 1170
    sget-object v1, Lc8/Gko;->sServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 1171
    const-string/jumbo v1, "YKLogin.PassportSDK-Api"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Gko;->getInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " 3. unbindService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    sget-object v1, Lc8/Gko;->sServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    :cond_0
    :goto_0
    return-void

    .line 1174
    :catch_0
    move-exception v0

    .line 1175
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "unbindService"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized unregisterListener(Lc8/lko;)V
    .locals 2
    .param p0, "aListener"    # Lc8/lko;

    .prologue
    .line 1034
    const-class v1, Lc8/Gko;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 1035
    :try_start_0
    sget-object v0, Lc8/Gko;->sListenerList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1037
    :cond_0
    monitor-exit v1

    return-void

    .line 1034
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static validatePassport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "aYtid"    # Ljava/lang/String;
    .param p1, "aYktk"    # Ljava/lang/String;

    .prologue
    .line 450
    :try_start_0
    invoke-static {}, Lc8/Gko;->isInitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    sget-object v1, Lc8/Gko;->sPassportService:Lc8/Ipo;

    invoke-interface {v1, p0, p1}, Lc8/Ipo;->validatePassport(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "validatePassport"

    invoke-static {v0, v1}, Lc8/Gko;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static waitUntilConnected(J)V
    .locals 10
    .param p0, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 208
    sget-object v6, Lc8/Gko;->sPassportService:Lc8/Ipo;

    if-nez v6, :cond_2

    .line 209
    sget-object v7, Lc8/Gko;->sLock:Ljava/lang/Object;

    monitor-enter v7

    .line 210
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 211
    .local v4, "start":J
    :cond_0
    sget-object v6, Lc8/Gko;->sPassportService:Lc8/Ipo;

    if-nez v6, :cond_1

    .line 212
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Gko;->getInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " 6. waiting start: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    sget-object v6, Lc8/Gko;->sLock:Ljava/lang/Object;

    invoke-virtual {v6, p0, p1}, Ljava/lang/Object;->wait(J)V

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 215
    .local v2, "end":J
    sub-long v0, v2, v4

    .line 216
    .local v0, "costs":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Gko;->getInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " 8. waiting end: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " costs: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    cmp-long v6, v0, p0

    if-lez v6, :cond_0

    .line 218
    new-instance v6, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v6}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v6

    .line 221
    .end local v0    # "costs":J
    .end local v2    # "end":J
    .end local v4    # "start":J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v4    # "start":J
    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    .end local v4    # "start":J
    :cond_2
    return-void
.end method
