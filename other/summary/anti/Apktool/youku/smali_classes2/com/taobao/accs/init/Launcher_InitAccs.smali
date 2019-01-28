.class public Lcom/taobao/accs/init/Launcher_InitAccs;
.super Ljava/lang/Object;
.source "Launcher_InitAccs.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/init/Launcher_InitAccs$AccsLoginInfo;
    }
.end annotation


# static fields
.field protected static final SERVICES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Launcher_InitAccs"

.field public static defaultAppkey:Ljava/lang/String;

.field public static mAppReceiver:Lcom/taobao/accs/IAppReceiver;

.field public static mAppkey:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;

.field public static mForceBindUser:Z

.field public static mIsInited:Z

.field public static mSid:Ljava/lang/String;

.field public static mTtid:Ljava/lang/String;

.field public static mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/taobao/accs/init/Launcher_InitAccs;->mForceBindUser:Z

    .line 38
    sput-boolean v0, Lcom/taobao/accs/init/Launcher_InitAccs;->mIsInited:Z

    .line 39
    const-string/jumbo v0, "21646297"

    sput-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->defaultAppkey:Ljava/lang/String;

    .line 144
    new-instance v0, Lcom/taobao/accs/init/Launcher_InitAccs$2;

    invoke-direct {v0}, Lcom/taobao/accs/init/Launcher_InitAccs$2;-><init>()V

    sput-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppReceiver:Lcom/taobao/accs/IAppReceiver;

    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 231
    sput-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->SERVICES:Ljava/util/Map;

    const-string/jumbo v1, "im"

    const-string/jumbo v2, "com.taobao.tao.amp.remote.AccsReceiverCallback"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->SERVICES:Ljava/util/Map;

    const-string/jumbo v1, "powermsg"

    const-string/jumbo v2, "com.taobao.appfrmbundle.mkt.AccsReceiverService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->SERVICES:Ljava/util/Map;

    const-string/jumbo v1, "pmmonitor"

    const-string/jumbo v2, "com.taobao.appfrmbundle.mkt.AccsReceiverService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->SERVICES:Ljava/util/Map;

    const-string/jumbo v1, "motu-remote"

    const-string/jumbo v2, "com.taobao.tao.log.collect.AccsTlogService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->SERVICES:Ljava/util/Map;

    const-string/jumbo v1, "cloudsync"

    const-string/jumbo v2, "com.taobao.datasync.network.accs.AccsCloudSyncService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->SERVICES:Ljava/util/Map;

    const-string/jumbo v1, "acds"

    const-string/jumbo v2, "com.taobao.acds.compact.AccsACDSService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->SERVICES:Ljava/util/Map;

    const-string/jumbo v1, "agooSend"

    const-string/jumbo v2, "org.android.agoo.accs.AgooService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->SERVICES:Ljava/util/Map;

    const-string/jumbo v1, "agooAck"

    const-string/jumbo v2, "org.android.agoo.accs.AgooService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->SERVICES:Ljava/util/Map;

    const-string/jumbo v1, "agooTokenReport"

    const-string/jumbo v2, "org.android.agoo.accs.AgooService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->SERVICES:Ljava/util/Map;

    const-string/jumbo v1, "AliLive"

    const-string/jumbo v2, "com.taobao.playbudyy.gameplugin.danmu.DanmuCallbackService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->SERVICES:Ljava/util/Map;

    const-string/jumbo v1, "orange"

    const-string/jumbo v2, "com.taobao.orange.accssupport.OrangeAccsService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->SERVICES:Ljava/util/Map;

    const-string/jumbo v1, "tsla"

    const-string/jumbo v2, "com.taobao.android.festival.accs.HomepageAccsMassService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->SERVICES:Ljava/util/Map;

    const-string/jumbo v1, "taobaoWaimaiAccsService"

    const-string/jumbo v2, "com.taobao.takeout.order.detail.service.TakeoutOrderDetailACCSService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->SERVICES:Ljava/util/Map;

    const-string/jumbo v1, "login"

    const-string/jumbo v2, "com.taobao.android.sso.v2.service.LoginAccsService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->SERVICES:Ljava/util/Map;

    const-string/jumbo v1, "ranger_abtest"

    const-string/jumbo v2, "com.taobao.ranger3.RangerACCSService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->SERVICES:Ljava/util/Map;

    const-string/jumbo v1, "accs_poplayer"

    const-string/jumbo v2, "com.taobao.tbpoplayer.AccsPopLayerService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/taobao/accs/init/Launcher_InitAccs;->SERVICES:Ljava/util/Map;

    const-string/jumbo v1, "dm_abtest"

    const-string/jumbo v2, "com.tmall.wireless.ant.accs.AntAccsService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;Ljava/util/HashMap;)V
    .locals 14
    .param p1, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 42
    const-string/jumbo v7, "Launcher_InitAccs"

    const-string/jumbo v10, "init"

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v7, v10, v11}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sput-object v7, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    const/4 v3, 0x0

    .line 46
    .local v3, "mode":I
    const/4 v4, 0x0

    .line 48
    .local v4, "process":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v7, "envIndex"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 49
    .local v2, "env":I
    const-string/jumbo v7, "onlineAppKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sput-object v7, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    .line 50
    if-ne v2, v8, :cond_4

    .line 51
    const-string/jumbo v7, "preAppKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sput-object v7, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    .line 52
    const/4 v3, 0x1

    .line 58
    :cond_0
    :goto_0
    const-string/jumbo v7, "process"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 59
    const-string/jumbo v7, "ttid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sput-object v7, Lcom/taobao/accs/init/Launcher_InitAccs;->mTtid:Ljava/lang/String;

    .line 60
    const-string/jumbo v7, "userId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sput-object v7, Lcom/taobao/accs/init/Launcher_InitAccs;->mUserId:Ljava/lang/String;

    .line 61
    const-string/jumbo v7, "sid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sput-object v7, Lcom/taobao/accs/init/Launcher_InitAccs;->mSid:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .end local v2    # "env":I
    :goto_1
    :try_start_2
    sget-object v7, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 67
    const-string/jumbo v7, "Launcher_InitAccs"

    const-string/jumbo v8, "init get appkey null\uff01\uff01"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    sget-object v7, Lcom/taobao/accs/init/Launcher_InitAccs;->defaultAppkey:Ljava/lang/String;

    sput-object v7, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    .line 71
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 72
    const-string/jumbo v7, "Launcher_InitAccs"

    const-string/jumbo v8, "init get process null\uff01\uff01"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    sget-object v7, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v7, v8}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getProcessName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 78
    :cond_2
    const-string/jumbo v7, "Launcher_InitAccs"

    const-string/jumbo v8, "init"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "appkey"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "mode"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "process"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    aput-object v4, v10, v11

    invoke-static {v7, v8, v10}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    sget-object v7, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    invoke-static {v7, v8, v3}, Lcom/taobao/accs/ACCSManager;->setAppkey(Landroid/content/Context;Ljava/lang/String;I)V

    .line 81
    sget-object v7, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    invoke-static {v7, v3}, Lcom/taobao/accs/ACCSManager;->setMode(Landroid/content/Context;I)V

    .line 82
    sget-object v7, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/taobao/accs/init/Launcher_InitAccs$AccsLoginInfo;

    invoke-direct {v8}, Lcom/taobao/accs/init/Launcher_InitAccs$AccsLoginInfo;-><init>()V

    invoke-static {v7, v8}, Lcom/taobao/accs/ACCSManager;->setLoginInfoImpl(Landroid/content/Context;Lcom/taobao/accs/ILoginInfo;)V

    .line 86
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 87
    sget-object v7, Lcom/taobao/accs/init/Launcher_InitAccs;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;

    sget-object v10, Lcom/taobao/accs/init/Launcher_InitAccs;->mTtid:Ljava/lang/String;

    sget-object v11, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppReceiver:Lcom/taobao/accs/IAppReceiver;

    invoke-static {v7, v8, v10, v11}, Lcom/taobao/accs/ACCSManager;->startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    .line 93
    :cond_3
    new-instance v7, Lcom/taobao/accs/init/Launcher_InitAccs$1;

    invoke-direct {v7, p0}, Lcom/taobao/accs/init/Launcher_InitAccs$1;-><init>(Lcom/taobao/accs/init/Launcher_InitAccs;)V

    const-wide/16 v10, 0xa

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v7, v10, v11, v8}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 104
    .end local v3    # "mode":I
    .end local v4    # "process":Ljava/lang/String;
    :goto_2
    return-void

    .line 53
    .restart local v2    # "env":I
    .restart local v3    # "mode":I
    .restart local v4    # "process":Ljava/lang/String;
    :cond_4
    if-ne v2, v12, :cond_5

    move v10, v8

    :goto_3
    if-ne v2, v13, :cond_6

    move v7, v8

    :goto_4
    or-int/2addr v7, v10

    if-eqz v7, :cond_0

    .line 54
    :try_start_3
    const-string/jumbo v7, "dailyAppkey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sput-object v7, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppkey:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 55
    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_5
    move v10, v9

    .line 53
    goto :goto_3

    :cond_6
    move v7, v9

    goto :goto_4

    .line 62
    .end local v2    # "env":I
    :catch_0
    move-exception v5

    .line 63
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v7, "Launcher_InitAccs"

    const-string/jumbo v8, "init get param error"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v5, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 101
    .end local v3    # "mode":I
    .end local v4    # "process":Ljava/lang/String;
    .end local v5    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    .line 102
    .local v6, "t1":Ljava/lang/Throwable;
    const-string/jumbo v7, "Launcher_InitAccs"

    const-string/jumbo v8, "init"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v6, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2
.end method
