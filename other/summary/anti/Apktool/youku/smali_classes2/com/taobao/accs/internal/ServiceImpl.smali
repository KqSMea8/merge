.class public Lcom/taobao/accs/internal/ServiceImpl;
.super Lcom/taobao/accs/internal/ElectionServiceImpl;
.source "ServiceImpl.java"


# static fields
.field private static final ALIPAY_PACKAGE:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field private static final IPP_ACTION:Ljava/lang/String; = "org.rome.android.IPP_CALL"

.field private static final PING_ALIPAY_CLASS:Ljava/lang/String; = "org.rome.android.ipp.binder.IppService"

.field private static final STATISTICS_TIME_INTERVAL:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "ServiceImpl"

.field private static eudemonManager:Lcom/taobao/accs/eudemon/EudemonManager;


# instance fields
.field private lastStatisticsTime:J

.field private mBaseService:Landroid/app/Service;

.field private mContext:Landroid/content/Context;

.field private mLastNetWorkType:Ljava/lang/String;

.field private mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final messageServiceBinder:Lc8/iXp;

.field private startTime:J


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 1
    .param p1, "service"    # Landroid/app/Service;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/taobao/accs/internal/ElectionServiceImpl;-><init>(Landroid/app/Service;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mBaseService:Landroid/app/Service;

    .line 70
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mLastNetWorkType:Ljava/lang/String;

    .line 427
    new-instance v0, Lcom/taobao/accs/internal/ServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/taobao/accs/internal/ServiceImpl$2;-><init>(Lcom/taobao/accs/internal/ServiceImpl;)V

    iput-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->messageServiceBinder:Lc8/iXp;

    .line 78
    iput-object p1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mBaseService:Landroid/app/Service;

    .line 79
    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/accs/internal/ServiceImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/internal/ServiceImpl;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/taobao/accs/internal/ServiceImpl;->initUt()V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/accs/internal/ServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/internal/ServiceImpl;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/accs/internal/ServiceImpl;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/internal/ServiceImpl;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/taobao/accs/internal/ServiceImpl;->onPingIpp(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/taobao/accs/internal/ServiceImpl;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/internal/ServiceImpl;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method private getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "pack"    # Ljava/lang/String;

    .prologue
    .line 642
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 643
    const-string/jumbo v2, "null"

    .line 654
    :cond_0
    :goto_0
    return-object v2

    .line 645
    :cond_1
    iget-object v3, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 646
    .local v1, "manager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 647
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 648
    .local v2, "version":Ljava/lang/String;
    sget-object v3, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v3}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 649
    const-string/jumbo v3, "ServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getVersion###\u7248\u672c\u53f7\u4e3a : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 654
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "manager":Landroid/content/pm/PackageManager;
    .end local v2    # "version":Ljava/lang/String;
    :catch_0
    move-exception v3

    const-string/jumbo v2, "null"

    goto :goto_0
.end method

.method private handleCommand(Landroid/content/Intent;)V
    .locals 33
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 251
    const-string/jumbo v1, "command"

    const/4 v7, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 252
    .local v27, "command":I
    const-string/jumbo v1, "ServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "command:"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v1, v7, v12}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    const-string/jumbo v1, "packageName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 255
    .local v5, "packageName":Ljava/lang/String;
    const-string/jumbo v1, "serviceId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 257
    .local v15, "serviceId":Ljava/lang/String;
    const-string/jumbo v1, "userInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 259
    .local v9, "userId":Ljava/lang/String;
    const-string/jumbo v1, "appKey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "appkey":Ljava/lang/String;
    const-string/jumbo v1, "configTag"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "configTag":Ljava/lang/String;
    const-string/jumbo v1, "ttid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 263
    .local v6, "ttid":Ljava/lang/String;
    const-string/jumbo v1, "sid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 264
    .local v8, "sid":Ljava/lang/String;
    const-string/jumbo v1, "anti_brush_cookie"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 265
    .local v10, "cookie":Ljava/lang/String;
    const/16 v1, 0xc9

    move/from16 v0, v27

    if-ne v0, v1, :cond_0

    .line 266
    const/4 v1, 0x1

    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/taobao/accs/data/Message;->BuildPing(ZI)Lcom/taobao/accs/data/Message;

    move-result-object v1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v7}, Lcom/taobao/accs/internal/ServiceImpl;->sendOnAllConnections(Lcom/taobao/accs/data/Message;Z)V

    .line 267
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/internal/ServiceImpl;->updateMonitorInfoOnAllConns()V

    .line 269
    :cond_0
    if-lez v27, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    move/from16 v0, v27

    invoke-static {v1, v2, v7, v0}, Lcom/taobao/accs/internal/ServiceImpl;->getConnection(Landroid/content/Context;Ljava/lang/String;ZI)Lcom/taobao/accs/net/BaseConnection;

    move-result-object v11

    .line 272
    .local v11, "connection":Lcom/taobao/accs/net/BaseConnection;
    if-eqz v11, :cond_2

    .line 273
    invoke-virtual {v11}, Lcom/taobao/accs/net/BaseConnection;->start()V

    .line 279
    const/16 v28, 0x0

    .line 280
    .local v28, "message":Lcom/taobao/accs/data/Message;
    const/4 v1, 0x1

    move/from16 v0, v27

    if-ne v0, v1, :cond_4

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 283
    const-string/jumbo v1, "ServiceImpl"

    const-string/jumbo v7, "handleCommand bindapp pkg error"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v1, v7, v12}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    .end local v11    # "connection":Lcom/taobao/accs/net/BaseConnection;
    .end local v15    # "serviceId":Ljava/lang/String;
    .end local v28    # "message":Lcom/taobao/accs/data/Message;
    :cond_1
    :goto_0
    return-void

    .line 275
    .restart local v11    # "connection":Lcom/taobao/accs/net/BaseConnection;
    .restart local v15    # "serviceId":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "ServiceImpl"

    const-string/jumbo v7, "no connection"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v21, "configTag"

    aput-object v21, v12, v14

    const/4 v14, 0x1

    aput-object v2, v12, v14

    const/4 v14, 0x2

    const-string/jumbo v21, "command"

    aput-object v21, v12, v14

    const/4 v14, 0x3

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v12, v14

    invoke-static {v1, v7, v12}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 287
    .restart local v28    # "message":Lcom/taobao/accs/data/Message;
    :cond_3
    const-string/jumbo v1, "app_sercet"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, "appSecret":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "appVersion"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v10}, Lcom/taobao/accs/data/Message;->buildBindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v28

    .line 301
    iput-object v6, v11, Lcom/taobao/accs/net/BaseConnection;->mTtid:Ljava/lang/String;

    .line 302
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v4}, Lcom/taobao/accs/utl/UtilityImpl;->saveAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v11}, Lcom/taobao/accs/net/BaseConnection;->getClientManager()Lcom/taobao/accs/client/ClientManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/taobao/accs/client/ClientManager;->isAppBinded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "fouce_bind"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6

    .line 309
    const-string/jumbo v1, "ServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, " isAppBinded"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v1, v7, v12}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    const/16 v1, 0xc8

    move-object/from16 v0, v28

    invoke-virtual {v11, v0, v1}, Lcom/taobao/accs/net/BaseConnection;->onResult(Lcom/taobao/accs/data/Message;I)V

    goto/16 :goto_0

    .line 315
    .end local v4    # "appSecret":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x2

    move/from16 v0, v27

    if-ne v0, v1, :cond_5

    .line 316
    const-string/jumbo v1, "ServiceImpl"

    const-string/jumbo v7, "onHostStartCommand COMMAND_UNBIND_APP"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v1, v7, v12}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    invoke-virtual {v11}, Lcom/taobao/accs/net/BaseConnection;->getClientManager()Lcom/taobao/accs/client/ClientManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/taobao/accs/client/ClientManager;->isAppUnbinded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 318
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    move-object v13, v5

    move-object v14, v8

    move-object v15, v9

    move-object/from16 v16, v10

    invoke-static/range {v11 .. v16}, Lcom/taobao/accs/data/Message;->buildUnbindApp(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    .end local v15    # "serviceId":Ljava/lang/String;
    move-result-object v28

    .line 319
    const-string/jumbo v1, "ServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, " isAppUnbinded"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v1, v7, v12}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    const/16 v1, 0xc8

    move-object/from16 v0, v28

    invoke-virtual {v11, v0, v1}, Lcom/taobao/accs/net/BaseConnection;->onResult(Lcom/taobao/accs/data/Message;I)V

    goto/16 :goto_0

    .line 324
    .restart local v15    # "serviceId":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x5

    move/from16 v0, v27

    if-ne v0, v1, :cond_8

    .line 325
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    move-object v13, v5

    move-object v14, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-static/range {v12 .. v18}, Lcom/taobao/accs/data/Message;->buildBindService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v28

    .line 389
    :cond_6
    :goto_1
    if-eqz v28, :cond_f

    .line 390
    const-string/jumbo v1, "ServiceImpl"

    const-string/jumbo v7, "try send message"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v1, v7, v12}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    invoke-virtual/range {v28 .. v28}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 392
    invoke-virtual/range {v28 .. v28}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSend()V

    .line 394
    :cond_7
    const/4 v1, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v11, v0, v1}, Lcom/taobao/accs/net/BaseConnection;->send(Lcom/taobao/accs/data/Message;Z)V

    goto/16 :goto_0

    .line 327
    :cond_8
    const/4 v1, 0x6

    move/from16 v0, v27

    if-ne v0, v1, :cond_9

    .line 328
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    move-object v13, v5

    move-object v14, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-static/range {v12 .. v18}, Lcom/taobao/accs/data/Message;->buildUnbindService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v28

    goto :goto_1

    .line 330
    :cond_9
    const/4 v1, 0x3

    move/from16 v0, v27

    if-ne v0, v1, :cond_a

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    move-object/from16 v18, v3

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    invoke-static/range {v16 .. v21}, Lcom/taobao/accs/data/Message;->buildBindUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v28

    .line 333
    invoke-virtual {v11}, Lcom/taobao/accs/net/BaseConnection;->getClientManager()Lcom/taobao/accs/client/ClientManager;

    move-result-object v1

    invoke-virtual {v1, v5, v9}, Lcom/taobao/accs/client/ClientManager;->isUserBinded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "fouce_bind"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6

    .line 339
    const-string/jumbo v1, "ServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, "/"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, " isUserBinded"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v1, v7, v12}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    if-eqz v28, :cond_1

    .line 342
    const/16 v1, 0xc8

    move-object/from16 v0, v28

    invoke-virtual {v11, v0, v1}, Lcom/taobao/accs/net/BaseConnection;->onResult(Lcom/taobao/accs/data/Message;I)V

    goto/16 :goto_0

    .line 347
    :cond_a
    const/4 v1, 0x4

    move/from16 v0, v27

    if-ne v0, v1, :cond_b

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    move-object/from16 v18, v3

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    invoke-static/range {v16 .. v21}, Lcom/taobao/accs/data/Message;->buildUnbindUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v28

    goto/16 :goto_1

    .line 350
    :cond_b
    const/16 v1, 0x64

    move/from16 v0, v27

    if-ne v0, v1, :cond_d

    .line 351
    const-string/jumbo v1, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v16

    .line 353
    .local v16, "data":[B
    const-string/jumbo v1, "dataId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 355
    .local v17, "dataid":Ljava/lang/String;
    const-string/jumbo v1, "target"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 357
    .local v18, "target":Ljava/lang/String;
    const-string/jumbo v1, "businessId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 358
    .local v20, "businessId":Ljava/lang/String;
    const-string/jumbo v1, "extTag"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 359
    .local v30, "tag":Ljava/lang/String;
    const/16 v31, 0x0

    .line 361
    .local v31, "type":Lcom/taobao/accs/data/Message$ReqType;
    :try_start_0
    const-string/jumbo v1, "send_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/taobao/accs/data/Message$ReqType;

    move-object/from16 v31, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 365
    :goto_2
    if-eqz v16, :cond_6

    .line 366
    const/16 v19, 0x0

    .line 368
    .local v19, "url":Ljava/net/URL;
    :try_start_1
    new-instance v32, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "https://"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v11

    check-cast v0, Lcom/taobao/accs/net/SpdyConnection;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/taobao/accs/net/SpdyConnection;->getChannelHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v32

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v19    # "url":Ljava/net/URL;
    .local v32, "url":Ljava/net/URL;
    move-object/from16 v19, v32

    .line 372
    .end local v32    # "url":Ljava/net/URL;
    .restart local v19    # "url":Ljava/net/URL;
    :goto_3
    new-instance v13, Lcom/taobao/accs/ACCSManager$AccsRequest;

    move-object v14, v9

    invoke-direct/range {v13 .. v20}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 373
    .local v13, "dataInfo":Lcom/taobao/accs/ACCSManager$AccsRequest;
    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Lcom/taobao/accs/ACCSManager$AccsRequest;->setTag(Ljava/lang/String;)V

    .line 374
    if-nez v31, :cond_c

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v26, 0x0

    move-object/from16 v21, v11

    move-object/from16 v23, v5

    move-object/from16 v24, v3

    move-object/from16 v25, v13

    invoke-static/range {v21 .. v26}, Lcom/taobao/accs/data/Message;->buildSendData(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object v28

    goto/16 :goto_1

    .line 376
    :cond_c
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    move-object/from16 v0, v31

    if-ne v0, v1, :cond_6

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v26, 0x0

    move-object/from16 v21, v11

    move-object/from16 v23, v5

    move-object/from16 v24, v3

    move-object/from16 v25, v13

    invoke-static/range {v21 .. v26}, Lcom/taobao/accs/data/Message;->buildRequest(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object v28

    goto/16 :goto_1

    .line 380
    .end local v13    # "dataInfo":Lcom/taobao/accs/ACCSManager$AccsRequest;
    .end local v16    # "data":[B
    .end local v17    # "dataid":Ljava/lang/String;
    .end local v18    # "target":Ljava/lang/String;
    .end local v19    # "url":Ljava/net/URL;
    .end local v20    # "businessId":Ljava/lang/String;
    .end local v30    # "tag":Ljava/lang/String;
    .end local v31    # "type":Lcom/taobao/accs/data/Message$ReqType;
    :cond_d
    const/16 v1, 0x69

    move/from16 v0, v27

    if-ne v0, v1, :cond_e

    .line 381
    const-string/jumbo v1, "packs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v29

    check-cast v29, Ljava/util/Map;

    .line 382
    .local v29, "packs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, v29

    invoke-static {v5, v0}, Lcom/taobao/accs/data/Message;->buildElection(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;

    move-result-object v28

    .line 383
    goto/16 :goto_1

    .end local v29    # "packs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_e
    const/16 v1, 0x6a

    move/from16 v0, v27

    if-ne v0, v1, :cond_6

    .line 384
    const-string/jumbo v1, "com.taobao.accs.intent.action.RECEIVE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string/jumbo v1, "command"

    const/4 v7, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/taobao/accs/data/MsgDistribute;->distribMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 396
    :cond_f
    const-string/jumbo v1, "ServiceImpl"

    const-string/jumbo v7, "message is null"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v1, v7, v12}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    move/from16 v0, v27

    invoke-static {v5, v0}, Lcom/taobao/accs/data/Message;->buildParameterError(Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v28

    .line 399
    const/4 v1, -0x2

    move-object/from16 v0, v28

    invoke-virtual {v11, v0, v1}, Lcom/taobao/accs/net/BaseConnection;->onResult(Lcom/taobao/accs/data/Message;I)V

    goto/16 :goto_0

    .restart local v16    # "data":[B
    .restart local v17    # "dataid":Ljava/lang/String;
    .restart local v18    # "target":Ljava/lang/String;
    .restart local v19    # "url":Ljava/net/URL;
    .restart local v20    # "businessId":Ljava/lang/String;
    .restart local v30    # "tag":Ljava/lang/String;
    .restart local v31    # "type":Lcom/taobao/accs/data/Message$ReqType;
    :catch_0
    move-exception v1

    goto/16 :goto_3

    .end local v19    # "url":Ljava/net/URL;
    :catch_1
    move-exception v1

    goto/16 :goto_2
.end method

.method private initUt()V
    .locals 0

    .prologue
    .line 489
    return-void
.end method

.method public static isAppBinded(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 675
    sget-object v1, Lcom/taobao/accs/internal/ServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/net/BaseConnection;

    .line 676
    .local v0, "connection":Lcom/taobao/accs/net/BaseConnection;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/taobao/accs/net/BaseConnection;->getClientManager()Lcom/taobao/accs/client/ClientManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/accs/client/ClientManager;->isAppBinded(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private notifyNetChangeOnAllConns(Ljava/lang/String;)V
    .locals 4
    .param p1, "netInfo"    # Ljava/lang/String;

    .prologue
    .line 600
    sget-object v3, Lcom/taobao/accs/internal/ServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/taobao/accs/internal/ServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 608
    :cond_0
    return-void

    .line 604
    :cond_1
    sget-object v3, Lcom/taobao/accs/internal/ServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 605
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/accs/net/BaseConnection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/net/BaseConnection;

    .line 606
    .local v0, "connection":Lcom/taobao/accs/net/BaseConnection;
    invoke-virtual {v0, p1}, Lcom/taobao/accs/net/BaseConnection;->notifyNetWorkChange(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final onPingIpp(Landroid/content/Context;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 499
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/utl/OrangeAdapter;->getPullupInfo()Ljava/lang/String;

    move-result-object v14

    .line 500
    .local v14, "pullup":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 501
    const-string/jumbo v17, "ServiceImpl"

    const-string/jumbo v18, "start pull up"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, v14}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 509
    .local v9, "jsonArray":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_2

    .line 511
    :try_start_1
    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 512
    .local v10, "jsonObject":Lorg/json/JSONObject;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "app"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 513
    .local v5, "app":Lorg/json/JSONObject;
    const-string/jumbo v17, "action"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 514
    .local v4, "action":Ljava/lang/String;
    const-string/jumbo v17, "pack"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 515
    .local v12, "pack":Ljava/lang/String;
    const-string/jumbo v17, "service"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 516
    .local v15, "service":Ljava/lang/String;
    const-string/jumbo v17, "enabled"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 517
    .local v6, "enabled":Z
    const-string/jumbo v17, "probability"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 519
    .local v13, "probability":I
    if-eqz v6, :cond_1

    int-to-double v0, v13

    move-wide/from16 v18, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v20

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    mul-double v20, v20, v22

    cmpl-double v17, v18, v20

    if-ltz v17, :cond_1

    const/4 v11, 0x1

    .line 520
    .local v11, "need":Z
    :goto_1
    const-string/jumbo v17, "ServiceImpl"

    const-string/jumbo v18, "pull up"

    const/16 v19, 0x8

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "action"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v4, v19, v20

    const/16 v20, 0x2

    const-string/jumbo v21, "pack"

    aput-object v21, v19, v20

    const/16 v20, 0x3

    aput-object v12, v19, v20

    const/16 v20, 0x4

    const-string/jumbo v21, "service"

    aput-object v21, v19, v20

    const/16 v20, 0x5

    aput-object v15, v19, v20

    const/16 v20, 0x6

    const-string/jumbo v21, "need pull"

    aput-object v21, v19, v20

    const/16 v20, 0x7

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    if-eqz v11, :cond_0

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/taobao/accs/utl/UtilityImpl;->packageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 522
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 523
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v8, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    invoke-virtual {v8, v12, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-string/jumbo v17, "packageName"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    invoke-virtual {v8, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 529
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v17

    const v18, 0x101d1

    const-string/jumbo v19, "pingApp"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v12}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 509
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "app":Lorg/json/JSONObject;
    .end local v6    # "enabled":Z
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    .end local v11    # "need":Z
    .end local v12    # "pack":Ljava/lang/String;
    .end local v13    # "probability":I
    .end local v15    # "service":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 519
    .restart local v4    # "action":Ljava/lang/String;
    .restart local v5    # "app":Lorg/json/JSONObject;
    .restart local v6    # "enabled":Z
    .restart local v10    # "jsonObject":Lorg/json/JSONObject;
    .restart local v12    # "pack":Ljava/lang/String;
    .restart local v13    # "probability":I
    .restart local v15    # "service":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 531
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "app":Lorg/json/JSONObject;
    .end local v6    # "enabled":Z
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "pack":Ljava/lang/String;
    .end local v13    # "probability":I
    .end local v15    # "service":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 532
    .local v16, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v17, "ServiceImpl"

    const-string/jumbo v18, "onPingIpp parse"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 537
    .end local v7    # "i":I
    .end local v9    # "jsonArray":Lorg/json/JSONArray;
    .end local v14    # "pullup":Ljava/lang/String;
    .end local v16    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v16

    .line 538
    .restart local v16    # "t":Ljava/lang/Throwable;
    const-string/jumbo v17, "ServiceImpl"

    const-string/jumbo v18, "onPingIpp"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 540
    .end local v16    # "t":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method private pingOnAllConns(ZZ)V
    .locals 8
    .param p1, "force"    # Z
    .param p2, "delay"    # Z

    .prologue
    .line 588
    sget-object v3, Lcom/taobao/accs/internal/ServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/taobao/accs/internal/ServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 597
    :cond_0
    return-void

    .line 592
    :cond_1
    sget-object v3, Lcom/taobao/accs/internal/ServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 593
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/accs/net/BaseConnection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/net/BaseConnection;

    .line 594
    .local v0, "connection":Lcom/taobao/accs/net/BaseConnection;
    invoke-virtual {v0, p1, p2}, Lcom/taobao/accs/net/BaseConnection;->ping(ZZ)V

    .line 595
    const-string/jumbo v3, "ServiceImpl"

    const-string/jumbo v4, "ping connection"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "appkey"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/taobao/accs/net/BaseConnection;->getAppkey()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private sendOnAllConnections(Lcom/taobao/accs/data/Message;Z)V
    .locals 4
    .param p1, "message"    # Lcom/taobao/accs/data/Message;
    .param p2, "connectIfNeeded"    # Z

    .prologue
    .line 577
    sget-object v3, Lcom/taobao/accs/internal/ServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/taobao/accs/internal/ServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 585
    :cond_0
    return-void

    .line 581
    :cond_1
    sget-object v3, Lcom/taobao/accs/internal/ServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 582
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/accs/net/BaseConnection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/net/BaseConnection;

    .line 583
    .local v0, "connection":Lcom/taobao/accs/net/BaseConnection;
    invoke-virtual {v0, p1, p2}, Lcom/taobao/accs/net/BaseConnection;->send(Lcom/taobao/accs/data/Message;Z)V

    goto :goto_0
.end method

.method private shouldStopSelf(Z)V
    .locals 3
    .param p1, "kill"    # Z

    .prologue
    .line 544
    const-string/jumbo v0, "ServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldStopSelf, kill:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mBaseService:Landroid/app/Service;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mBaseService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 548
    :cond_0
    if-eqz p1, :cond_1

    .line 549
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 551
    :cond_1
    return-void
.end method

.method private shutdownAllConns()V
    .locals 4

    .prologue
    .line 627
    sget-object v3, Lcom/taobao/accs/internal/ServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/taobao/accs/internal/ServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 635
    :cond_0
    return-void

    .line 631
    :cond_1
    sget-object v3, Lcom/taobao/accs/internal/ServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 632
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/accs/net/BaseConnection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/net/BaseConnection;

    .line 633
    .local v0, "connection":Lcom/taobao/accs/net/BaseConnection;
    invoke-virtual {v0}, Lcom/taobao/accs/net/BaseConnection;->shutdown()V

    goto :goto_0
.end method

.method private declared-synchronized tryConnect()V
    .locals 8

    .prologue
    .line 555
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/taobao/accs/internal/ServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/taobao/accs/internal/ServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 556
    :cond_0
    const-string/jumbo v3, "ServiceImpl"

    const-string/jumbo v4, "tryConnect no connections"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 560
    :cond_2
    :try_start_1
    sget-object v3, Lcom/taobao/accs/internal/ServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 561
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/accs/net/BaseConnection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/net/BaseConnection;

    .line 562
    .local v0, "connection":Lcom/taobao/accs/net/BaseConnection;
    if-nez v0, :cond_3

    .line 563
    const-string/jumbo v3, "ServiceImpl"

    const-string/jumbo v4, "tryConnect connection null"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "appkey"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/taobao/accs/net/BaseConnection;->getAppkey()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 555
    .end local v0    # "connection":Lcom/taobao/accs/net/BaseConnection;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/accs/net/BaseConnection;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 567
    .restart local v0    # "connection":Lcom/taobao/accs/net/BaseConnection;
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/accs/net/BaseConnection;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/taobao/accs/net/BaseConnection;->isSecurityOff()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/taobao/accs/net/BaseConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 568
    const-string/jumbo v3, "ServiceImpl"

    const-string/jumbo v4, "tryConnect secret is null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    :goto_2
    const-string/jumbo v3, "ServiceImpl"

    const-string/jumbo v4, "tryConnect"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "appkey"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/taobao/accs/net/BaseConnection;->getAppkey()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "configTag"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 570
    :cond_4
    invoke-virtual {v0}, Lcom/taobao/accs/net/BaseConnection;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private updateMonitorInfoOnAllConns()V
    .locals 6

    .prologue
    .line 611
    sget-object v4, Lcom/taobao/accs/internal/ServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/taobao/accs/internal/ServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 624
    :cond_0
    return-void

    .line 615
    :cond_1
    sget-object v4, Lcom/taobao/accs/internal/ServiceImpl;->mConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 616
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/accs/net/BaseConnection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/net/BaseConnection;

    .line 617
    .local v0, "connection":Lcom/taobao/accs/net/BaseConnection;
    invoke-virtual {v0}, Lcom/taobao/accs/net/BaseConnection;->updateMonitorInfo()Lcom/taobao/accs/ut/statistics/MonitorStatistic;

    move-result-object v3

    .line 619
    .local v3, "monitorInfo":Lcom/taobao/accs/ut/statistics/MonitorStatistic;
    if-eqz v3, :cond_2

    .line 620
    iget-wide v4, p0, Lcom/taobao/accs/internal/ServiceImpl;->startTime:J

    iput-wide v4, v3, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->startServiceTime:J

    .line 621
    invoke-virtual {v3}, Lcom/taobao/accs/ut/statistics/MonitorStatistic;->commitUT()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 411
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "ServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "accs probeTaoBao begin......action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "org.agoo.android.intent.action.PING_V4"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    const-string/jumbo v2, "source"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "source":Ljava/lang/String;
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v2

    const v3, 0x101d1

    const-string/jumbo v4, "probeChannelService"

    iget-object v5, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    iget-object v2, p0, Lcom/taobao/accs/internal/ServiceImpl;->messageServiceBinder:Lc8/iXp;

    .line 421
    .end local v1    # "source":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 84
    invoke-super {p0}, Lcom/taobao/accs/internal/ElectionServiceImpl;->onCreate()V

    .line 85
    iget-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    .line 86
    sget-object v1, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/taobao/accs/internal/ServiceImpl;->startTime:J

    .line 88
    iget-wide v2, p0, Lcom/taobao/accs/internal/ServiceImpl;->startTime:J

    iput-wide v2, p0, Lcom/taobao/accs/internal/ServiceImpl;->lastStatisticsTime:J

    .line 89
    iget-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/UtilityImpl;->getNetworkTypeExt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mLastNetWorkType:Ljava/lang/String;

    .line 91
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v1, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 93
    iget-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lc8/BWp;->isEnableDaemonServer(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/eudemon/EudemonManager;->checkAndRenewPidFile(Landroid/content/Context;)V

    .line 96
    iget-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    const/16 v2, 0x258

    invoke-static {v1, v2, v5}, Lcom/taobao/accs/eudemon/EudemonManager;->getInstance(Landroid/content/Context;IZ)Lcom/taobao/accs/eudemon/EudemonManager;

    move-result-object v1

    .line 97
    sput-object v1, Lcom/taobao/accs/internal/ServiceImpl;->eudemonManager:Lcom/taobao/accs/eudemon/EudemonManager;

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/taobao/accs/internal/ServiceImpl;->eudemonManager:Lcom/taobao/accs/eudemon/EudemonManager;

    invoke-virtual {v1}, Lcom/taobao/accs/eudemon/EudemonManager;->start()V

    .line 104
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/taobao/accs/internal/ServiceImpl;->mThreadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/taobao/accs/internal/ServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/taobao/accs/internal/ServiceImpl$1;-><init>(Lcom/taobao/accs/internal/ServiceImpl;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    const-string/jumbo v1, "ServiceImpl"

    const-string/jumbo v2, "ServiceImpl onCreate"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "ClassLoader"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-class v5, Lcom/taobao/accs/internal/ServiceImpl;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string/jumbo v4, "sdkv"

    aput-object v4, v3, v6

    const/4 v4, 0x3

    const/16 v5, 0xdd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "procStart"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :cond_1
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "ServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "serviceImpl init task fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 473
    invoke-super {p0}, Lcom/taobao/accs/internal/ElectionServiceImpl;->onDestroy()V

    .line 474
    const-string/jumbo v0, "ServiceImpl"

    const-string/jumbo v1, "Service onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    iget-object v0, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "service_end"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/accs/utl/UtilityImpl;->setServiceTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 476
    iput-object v4, p0, Lcom/taobao/accs/internal/ServiceImpl;->mBaseService:Landroid/app/Service;

    .line 477
    iput-object v4, p0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    .line 478
    invoke-direct {p0}, Lcom/taobao/accs/internal/ServiceImpl;->shutdownAllConns()V

    .line 479
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 480
    return-void
.end method

.method public onHostStartCommand(Landroid/content/Intent;II)I
    .locals 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->getServiceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    const-string/jumbo v2, "ServiceImpl"

    const-string/jumbo v3, "service disabled!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/taobao/accs/internal/ServiceImpl;->shouldStopSelf(Z)V

    .line 143
    const/4 v13, 0x2

    .line 245
    :goto_0
    return v13

    .line 145
    :cond_0
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    const-string/jumbo v2, "ServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onHostStartCommand:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    :cond_1
    const/4 v13, 0x1

    .line 150
    .local v13, "result":I
    :try_start_0
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    if-eqz p1, :cond_2

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 153
    .local v9, "bundle":Landroid/os/Bundle;
    if-eqz v9, :cond_2

    .line 154
    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 155
    .local v15, "str":Ljava/lang/String;
    const-string/jumbo v2, "ServiceImpl"

    const-string/jumbo v3, "key"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v15, v4, v6

    const/4 v6, 0x1

    const-string/jumbo v7, " value"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    invoke-virtual {v9, v15}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 239
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v15    # "str":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 240
    .local v16, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v2, "ServiceImpl"

    const-string/jumbo v3, "onHostStartCommand"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 241
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    sget-object v2, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/16 :goto_0

    .line 160
    .end local v16    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/taobao/accs/utl/LoadSoFailUtil;->getSoFailTimes()I

    move-result v17

    .line 161
    .local v17, "times":I
    const/4 v2, 0x3

    move/from16 v0, v17

    if-le v0, v2, :cond_3

    .line 162
    const/4 v13, 0x2

    .line 163
    const-string/jumbo v2, "ServiceImpl"

    const-string/jumbo v3, "load SO fail 4 times, don\'t auto restart"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "sofail"

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/UtilityImpl;->int2String(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v4, v6, v7}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 167
    :cond_3
    if-nez p1, :cond_5

    const/4 v8, 0x0

    .line 170
    .local v8, "action":Ljava/lang/String;
    :goto_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "org.agoo.android.intent.action.PING_V4"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 171
    const-string/jumbo v2, "source"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 172
    .local v14, "source":Ljava/lang/String;
    const-string/jumbo v2, "ServiceImpl"

    const-string/jumbo v3, "org.agoo.android.intent.action.PING_V4,start channel by brothers"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "serviceStart"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "source"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "startChannel"

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v14, v6, v7}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 174
    invoke-static {}, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->isFirstStartProc()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 175
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "createChannel"

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v14, v6, v7}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 180
    .end local v14    # "source":Ljava/lang/String;
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/internal/ServiceImpl;->tryConnect()V

    .line 182
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/taobao/accs/internal/ServiceImpl;->pingOnAllConns(ZZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    sget-object v2, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/16 :goto_0

    .line 167
    .end local v8    # "action":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 191
    .restart local v8    # "action":Ljava/lang/String;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/internal/ServiceImpl;->tryConnect()V

    .line 193
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {v8, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 202
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v8, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->getNetworkTypeExt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, "networkType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/taobao/accs/internal/ServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v12

    .line 208
    .local v12, "isConnected":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "network change:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/taobao/accs/internal/ServiceImpl;->mLastNetWorkType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 210
    .local v10, "changeInfo":Ljava/lang/String;
    const-string/jumbo v2, "ServiceImpl"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v10, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    if-eqz v12, :cond_7

    .line 212
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/taobao/accs/internal/ServiceImpl;->mLastNetWorkType:Ljava/lang/String;

    .line 213
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/taobao/accs/internal/ServiceImpl;->notifyNetChangeOnAllConns(Ljava/lang/String;)V

    .line 214
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/taobao/accs/internal/ServiceImpl;->pingOnAllConns(ZZ)V

    .line 215
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v2

    const v3, 0x101d1

    const-string/jumbo v4, "CONNECTIVITY_CHANGE"

    invoke-static {}, Lcom/taobao/accs/utl/UtilityImpl;->getProxy()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "0"

    invoke-virtual/range {v2 .. v7}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    :cond_7
    const-string/jumbo v2, "unknown"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 221
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/taobao/accs/internal/ServiceImpl;->notifyNetChangeOnAllConns(Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/taobao/accs/internal/ServiceImpl;->mLastNetWorkType:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    .end local v5    # "networkType":Ljava/lang/String;
    .end local v10    # "changeInfo":Ljava/lang/String;
    .end local v12    # "isConnected":Z
    :cond_8
    :goto_3
    sget-object v2, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/16 :goto_0

    .line 225
    :cond_9
    :try_start_4
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v8, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 227
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/taobao/accs/internal/ServiceImpl;->pingOnAllConns(ZZ)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 243
    .end local v8    # "action":Ljava/lang/String;
    .end local v17    # "times":I
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    throw v2

    .line 228
    .restart local v8    # "action":Ljava/lang/String;
    .restart local v17    # "times":I
    :cond_a
    :try_start_5
    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    invoke-static {v8, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 230
    const-string/jumbo v2, "ServiceImpl"

    const-string/jumbo v3, "action android.intent.action.USER_PRESENT"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/taobao/accs/internal/ServiceImpl;->pingOnAllConns(ZZ)V

    goto :goto_3

    .line 232
    :cond_b
    const-string/jumbo v2, "com.taobao.accs.intent.action.COMMAND"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 233
    invoke-direct/range {p0 .. p1}, Lcom/taobao/accs/internal/ServiceImpl;->handleCommand(Landroid/content/Intent;)V

    goto :goto_3

    .line 234
    :cond_c
    const-string/jumbo v2, "com.taobao.accs.intent.action.START_FROM_AGOO"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 235
    const-string/jumbo v2, "ServiceImpl"

    const-string/jumbo v3, "ACTION_START_FROM_AGOO"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 468
    const/4 v0, 0x0

    return v0
.end method

.method public onVotedHost()V
    .locals 0

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/taobao/accs/internal/ServiceImpl;->startConnect()V

    .line 672
    return-void
.end method

.method public startConnect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 659
    const-string/jumbo v1, "ServiceImpl"

    const-string/jumbo v2, "startConnect"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 661
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/accs/internal/ServiceImpl;->tryConnect()V

    .line 662
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/taobao/accs/internal/ServiceImpl;->pingOnAllConns(ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "ServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryConnect is error,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
