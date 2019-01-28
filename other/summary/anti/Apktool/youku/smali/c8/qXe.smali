.class public final Lc8/qXe;
.super Ljava/lang/Object;
.source "TaobaoRegister.java"


# static fields
.field private static final EVENT_ID:I = 0x101d1

.field static final PREFERENCES:Ljava/lang/String; = "Agoo_AppStore"

.field static final PROPERTY_APP_NOTIFICATION_CUSTOM_SOUND:Ljava/lang/String; = "app_notification_custom_sound"

.field static final PROPERTY_APP_NOTIFICATION_ICON:Ljava/lang/String; = "app_notification_icon"

.field static final PROPERTY_APP_NOTIFICATION_SOUND:Ljava/lang/String; = "app_notification_sound"

.field static final PROPERTY_APP_NOTIFICATION_VIBRATE:Ljava/lang/String; = "app_notification_vibrate"

.field private static final SERVICEID:Ljava/lang/String; = "agooSend"

.field protected static final TAG:Ljava/lang/String; = "TaobaoRegister"

.field private static mRequestListener:Lc8/sXe;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method static synthetic access$000()Lc8/sXe;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lc8/qXe;->mRequestListener:Lc8/sXe;

    return-object v0
.end method

.method static synthetic access$002(Lc8/sXe;)Lc8/sXe;
    .locals 0
    .param p0, "x0"    # Lc8/sXe;

    .prologue
    .line 31
    sput-object p0, Lc8/qXe;->mRequestListener:Lc8/sXe;

    return-object p0
.end method

.method public static bindAgoo(Landroid/content/Context;Lc8/lXe;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callBack"    # Lc8/lXe;

    .prologue
    .line 349
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lc8/qXe;->sendSwitch(Landroid/content/Context;Lc8/lXe;Z)V

    .line 350
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    const-string/jumbo v2, "bindAgoo"

    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;)V

    .line 351
    return-void
.end method

.method public static bindAgoo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/AWp;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "ttId"    # Ljava/lang/String;
    .param p3, "callBack"    # Lc8/AWp;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc8/qXe;->bindAgoo(Landroid/content/Context;Lc8/lXe;)V

    .line 287
    return-void
.end method

.method public static clickMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "extData"    # Ljava/lang/String;

    .prologue
    .line 371
    new-instance v4, Lc8/UWp;

    invoke-direct {v4}, Lc8/UWp;-><init>()V

    .line 372
    .local v4, "notifyManager":Lc8/UWp;
    const/4 v1, 0x0

    .line 375
    .local v1, "msg":Lc8/DWp;
    :try_start_0
    sget-object v7, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v7}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 376
    const-string/jumbo v7, "TaobaoRegister"

    const-string/jumbo v8, "clickMessage"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "msgid"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "extData"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object p2, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    :cond_0
    const-string/jumbo v5, "accs"

    .line 379
    .local v5, "source":Ljava/lang/String;
    const-string/jumbo v3, "8"

    .line 380
    .local v3, "msgStatus":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 381
    const-string/jumbo v7, "TaobaoRegister"

    const-string/jumbo v8, "messageId == null"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    if-eqz v1, :cond_1

    .line 399
    invoke-virtual {v4, v1}, Lc8/UWp;->reportNotifyMessage(Lc8/DWp;)V

    .line 402
    .end local v3    # "msgStatus":Ljava/lang/String;
    .end local v5    # "source":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 384
    .restart local v3    # "msgStatus":Ljava/lang/String;
    .restart local v5    # "source":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v4, p0}, Lc8/UWp;->init(Landroid/content/Context;)V

    .line 385
    new-instance v2, Lc8/DWp;

    invoke-direct {v2}, Lc8/DWp;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    .end local v1    # "msg":Lc8/DWp;
    .local v2, "msg":Lc8/DWp;
    :try_start_2
    iput-object p1, v2, Lc8/DWp;->msgIds:Ljava/lang/String;

    .line 387
    iput-object p2, v2, Lc8/DWp;->extData:Ljava/lang/String;

    .line 388
    iput-object v5, v2, Lc8/DWp;->messageSource:Ljava/lang/String;

    .line 389
    iput-object v3, v2, Lc8/DWp;->msgStatus:Ljava/lang/String;

    .line 390
    new-instance v0, Lc8/QWp;

    invoke-direct {v0}, Lc8/QWp;-><init>()V

    .line 391
    .local v0, "agooFactory":Lc8/QWp;
    const/4 v7, 0x0

    invoke-virtual {v0, p0, v4, v7}, Lc8/QWp;->init(Landroid/content/Context;Lc8/UWp;Lc8/dXp;)V

    .line 393
    const-string/jumbo v7, "8"

    invoke-virtual {v0, p1, v7}, Lc8/QWp;->updateMsgStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 398
    if-eqz v2, :cond_4

    .line 399
    invoke-virtual {v4, v2}, Lc8/UWp;->reportNotifyMessage(Lc8/DWp;)V

    move-object v1, v2

    .end local v2    # "msg":Lc8/DWp;
    .restart local v1    # "msg":Lc8/DWp;
    goto :goto_0

    .line 395
    .end local v0    # "agooFactory":Lc8/QWp;
    .end local v3    # "msgStatus":Ljava/lang/String;
    .end local v5    # "source":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 396
    .local v6, "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    const-string/jumbo v7, "TaobaoRegister"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "clickMessage,error="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 398
    if-eqz v1, :cond_1

    .line 399
    invoke-virtual {v4, v1}, Lc8/UWp;->reportNotifyMessage(Lc8/DWp;)V

    goto :goto_0

    .line 398
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v1, :cond_3

    .line 399
    invoke-virtual {v4, v1}, Lc8/UWp;->reportNotifyMessage(Lc8/DWp;)V

    :cond_3
    throw v7

    .line 398
    .end local v1    # "msg":Lc8/DWp;
    .restart local v2    # "msg":Lc8/DWp;
    .restart local v3    # "msgStatus":Ljava/lang/String;
    .restart local v5    # "source":Ljava/lang/String;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "msg":Lc8/DWp;
    .restart local v1    # "msg":Lc8/DWp;
    goto :goto_2

    .line 395
    .end local v1    # "msg":Lc8/DWp;
    .restart local v2    # "msg":Lc8/DWp;
    :catch_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "msg":Lc8/DWp;
    .restart local v1    # "msg":Lc8/DWp;
    goto :goto_1

    .end local v1    # "msg":Lc8/DWp;
    .restart local v0    # "agooFactory":Lc8/QWp;
    .restart local v2    # "msg":Lc8/DWp;
    :cond_4
    move-object v1, v2

    .end local v2    # "msg":Lc8/DWp;
    .restart local v1    # "msg":Lc8/DWp;
    goto :goto_0
.end method

.method public static dismissMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "extData"    # Ljava/lang/String;

    .prologue
    .line 411
    new-instance v4, Lc8/UWp;

    invoke-direct {v4}, Lc8/UWp;-><init>()V

    .line 412
    .local v4, "notifyManager":Lc8/UWp;
    const/4 v1, 0x0

    .line 414
    .local v1, "msg":Lc8/DWp;
    :try_start_0
    sget-object v7, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v7}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 415
    const-string/jumbo v7, "TaobaoRegister"

    const-string/jumbo v8, "dismissMessage"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "msgid"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "extData"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object p2, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    :cond_0
    const-string/jumbo v5, "accs"

    .line 418
    .local v5, "source":Ljava/lang/String;
    const-string/jumbo v3, "9"

    .line 419
    .local v3, "msgStatus":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 420
    const-string/jumbo v7, "TaobaoRegister"

    const-string/jumbo v8, "messageId == null"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    if-eqz v1, :cond_1

    .line 437
    invoke-virtual {v4, v1}, Lc8/UWp;->reportNotifyMessage(Lc8/DWp;)V

    .line 440
    .end local v3    # "msgStatus":Ljava/lang/String;
    .end local v5    # "source":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 423
    .restart local v3    # "msgStatus":Ljava/lang/String;
    .restart local v5    # "source":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v4, p0}, Lc8/UWp;->init(Landroid/content/Context;)V

    .line 424
    new-instance v2, Lc8/DWp;

    invoke-direct {v2}, Lc8/DWp;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    .end local v1    # "msg":Lc8/DWp;
    .local v2, "msg":Lc8/DWp;
    :try_start_2
    iput-object p1, v2, Lc8/DWp;->msgIds:Ljava/lang/String;

    .line 426
    iput-object p2, v2, Lc8/DWp;->extData:Ljava/lang/String;

    .line 427
    iput-object v5, v2, Lc8/DWp;->messageSource:Ljava/lang/String;

    .line 428
    iput-object v3, v2, Lc8/DWp;->msgStatus:Ljava/lang/String;

    .line 429
    new-instance v0, Lc8/QWp;

    invoke-direct {v0}, Lc8/QWp;-><init>()V

    .line 430
    .local v0, "agooFactory":Lc8/QWp;
    const/4 v7, 0x0

    invoke-virtual {v0, p0, v4, v7}, Lc8/QWp;->init(Landroid/content/Context;Lc8/UWp;Lc8/dXp;)V

    .line 432
    const-string/jumbo v7, "9"

    invoke-virtual {v0, p1, v7}, Lc8/QWp;->updateMsgStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 436
    if-eqz v2, :cond_4

    .line 437
    invoke-virtual {v4, v2}, Lc8/UWp;->reportNotifyMessage(Lc8/DWp;)V

    move-object v1, v2

    .end local v2    # "msg":Lc8/DWp;
    .restart local v1    # "msg":Lc8/DWp;
    goto :goto_0

    .line 433
    .end local v0    # "agooFactory":Lc8/QWp;
    .end local v3    # "msgStatus":Ljava/lang/String;
    .end local v5    # "source":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 434
    .local v6, "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    const-string/jumbo v7, "TaobaoRegister"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "clickMessage,error="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 436
    if-eqz v1, :cond_1

    .line 437
    invoke-virtual {v4, v1}, Lc8/UWp;->reportNotifyMessage(Lc8/DWp;)V

    goto :goto_0

    .line 436
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v1, :cond_3

    .line 437
    invoke-virtual {v4, v1}, Lc8/UWp;->reportNotifyMessage(Lc8/DWp;)V

    :cond_3
    throw v7

    .line 436
    .end local v1    # "msg":Lc8/DWp;
    .restart local v2    # "msg":Lc8/DWp;
    .restart local v3    # "msgStatus":Ljava/lang/String;
    .restart local v5    # "source":Ljava/lang/String;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "msg":Lc8/DWp;
    .restart local v1    # "msg":Lc8/DWp;
    goto :goto_2

    .line 433
    .end local v1    # "msg":Lc8/DWp;
    .restart local v2    # "msg":Lc8/DWp;
    :catch_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "msg":Lc8/DWp;
    .restart local v1    # "msg":Lc8/DWp;
    goto :goto_1

    .end local v1    # "msg":Lc8/DWp;
    .restart local v0    # "agooFactory":Lc8/QWp;
    .restart local v2    # "msg":Lc8/DWp;
    :cond_4
    move-object v1, v2

    .end local v2    # "msg":Lc8/DWp;
    .restart local v1    # "msg":Lc8/DWp;
    goto :goto_0
.end method

.method public static isEnableDaemonServer(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 449
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    const-string/jumbo v0, "TaobaoRegister"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEnableDaemonServer begin,enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    :cond_0
    invoke-static {p0, p1}, Lc8/BWp;->setDaemonServerFlag(Landroid/content/Context;Z)V

    .line 453
    return-void
.end method

.method public static pingApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pack"    # Ljava/lang/String;
    .param p3, "service"    # Ljava/lang/String;
    .param p4, "percent"    # I

    .prologue
    .line 443
    new-instance v0, Lc8/UWp;

    invoke-direct {v0}, Lc8/UWp;-><init>()V

    .line 444
    .local v0, "notifyManager":Lc8/UWp;
    invoke-virtual {v0, p0}, Lc8/UWp;->init(Landroid/content/Context;)V

    .line 445
    invoke-virtual {v0, p1, p2, p3, p4}, Lc8/UWp;->pingApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 446
    return-void
.end method

.method public static declared-synchronized register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/mXe;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "appSecret"    # Ljava/lang/String;
    .param p3, "ttid"    # Ljava/lang/String;
    .param p4, "callback"    # Lc8/mXe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/accs/AccsException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 59
    const-class v6, Lc8/qXe;

    monitor-enter v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_0
    invoke-static/range {v0 .. v5}, Lc8/qXe;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/mXe;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit v6

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/mXe;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accsConfigTag"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "appSecret"    # Ljava/lang/String;
    .param p4, "ttid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/mXe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/accs/AccsException;
        }
    .end annotation

    .prologue
    .line 72
    const-class v11, Lc8/qXe;

    monitor-enter v11

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    const-string/jumbo v0, "TaobaoRegister"

    const-string/jumbo v4, "register params null"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "appkey"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "configTag"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p1, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "context"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    aput-object p0, v5, v6

    invoke-static {v0, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :goto_0
    monitor-exit v11

    return-void

    .line 76
    :cond_1
    :try_start_1
    const-string/jumbo v0, "TaobaoRegister"

    const-string/jumbo v4, "register"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "appKey"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "configTag"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p1, v5, v6

    invoke-static {v0, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 78
    .local v1, "appContext":Landroid/content/Context;
    sput-object p1, Lc8/BWp;->mAccsConfigTag:Ljava/lang/String;

    .line 79
    invoke-static {p0, p2}, Lc8/BWp;->setAgooAppKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    sput-object p3, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mAgooAppSecret:Ljava/lang/String;

    .line 81
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    const/4 v0, 0x2

    sput v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mSecurityType:I

    .line 85
    :cond_2
    invoke-static {p1}, Lcom/taobao/accs/AccsClientConfig;->getConfigByTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;

    move-result-object v10

    .line 86
    .local v10, "config":Lcom/taobao/accs/AccsClientConfig;
    if-nez v10, :cond_3

    .line 87
    new-instance v0, Lcom/taobao/accs/AccsClientConfig$Builder;

    invoke-direct {v0}, Lcom/taobao/accs/AccsClientConfig$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppKey(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppSecret(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/accs/AccsClientConfig$Builder;->setTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig$Builder;->build()Lcom/taobao/accs/AccsClientConfig;

    .line 96
    :goto_1
    invoke-static {p0, p2, p1}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v2

    .line 97
    .local v2, "accsmanager":Lcom/taobao/accs/IACCSManager;
    move-object/from16 v3, p5

    .line 98
    .local v3, "agooCallback":Lc8/mXe;
    new-instance v0, Lc8/pXe;

    move-object v4, p2

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/pXe;-><init>(Landroid/content/Context;Lcom/taobao/accs/IACCSManager;Lc8/mXe;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    move-object v5, v1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object v9, v0

    invoke-interface/range {v4 .. v9}, Lcom/taobao/accs/IACCSManager;->bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    .end local v1    # "appContext":Landroid/content/Context;
    .end local v2    # "accsmanager":Lcom/taobao/accs/IACCSManager;
    .end local v3    # "agooCallback":Lc8/mXe;
    .end local v10    # "config":Lcom/taobao/accs/AccsClientConfig;
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    .line 91
    .restart local v1    # "appContext":Landroid/content/Context;
    .restart local v10    # "config":Lcom/taobao/accs/AccsClientConfig;
    :cond_3
    :try_start_2
    const-string/jumbo v0, "TaobaoRegister"

    const-string/jumbo v4, "config exist"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "config"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v10}, Lcom/taobao/accs/AccsClientConfig;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized removeAlias(Landroid/content/Context;Lc8/lXe;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bindAlias"    # Lc8/lXe;

    .prologue
    .line 232
    const-class v9, Lc8/qXe;

    monitor-enter v9

    :try_start_0
    const-string/jumbo v8, "TaobaoRegister"

    const-string/jumbo v10, "removeAlias"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :try_start_1
    invoke-static {p0}, Lc8/BWp;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, "deviceId":Ljava/lang/String;
    invoke-static {p0}, Lc8/BWp;->getPushAliasToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, "pushAliasToken":Ljava/lang/String;
    invoke-static {p0}, Lc8/BWp;->getAgooAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "appkey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz p0, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 241
    :cond_0
    if-eqz p1, :cond_1

    .line 242
    const-string/jumbo v8, "504.1"

    const-string/jumbo v10, "input params null!!"

    invoke-virtual {p1, v8, v10}, Lc8/lXe;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_1
    const-string/jumbo v8, "TaobaoRegister"

    const-string/jumbo v10, "setAlias param null"

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "appkey"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v1, v11, v12

    const/4 v12, 0x2

    const-string/jumbo v13, "deviceId"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    aput-object v4, v11, v12

    const/4 v12, 0x4

    const-string/jumbo v13, "pushAliasToken"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    aput-object v5, v11, v12

    const/4 v12, 0x6

    const-string/jumbo v13, "context"

    aput-object v13, v11, v12

    const/4 v12, 0x7

    aput-object p0, v11, v12

    invoke-static {v8, v10, v11}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    .end local v1    # "appkey":Ljava/lang/String;
    .end local v4    # "deviceId":Ljava/lang/String;
    .end local v5    # "pushAliasToken":Ljava/lang/String;
    :cond_2
    :goto_0
    monitor-exit v9

    return-void

    .line 249
    .restart local v1    # "appkey":Ljava/lang/String;
    .restart local v4    # "deviceId":Ljava/lang/String;
    .restart local v5    # "pushAliasToken":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-static {p0}, Lc8/BWp;->getAccsConfigTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v1, v8}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    .line 250
    .local v0, "accsManager":Lcom/taobao/accs/IACCSManager;
    sget-object v8, Lc8/qXe;->mRequestListener:Lc8/sXe;

    if-nez v8, :cond_4

    .line 251
    new-instance v8, Lc8/sXe;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Lc8/sXe;-><init>(Landroid/content/Context;)V

    sput-object v8, Lc8/qXe;->mRequestListener:Lc8/sXe;

    .line 253
    :cond_4
    const-string/jumbo v8, "AgooDeviceCmd"

    sget-object v10, Lc8/qXe;->mRequestListener:Lc8/sXe;

    invoke-interface {v0, p0, v8, v10}, Lcom/taobao/accs/IACCSManager;->registerDataListener(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V

    .line 255
    invoke-static {v1, v4, v5}, Lc8/tXe;->buildremoveAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 256
    .local v2, "data":[B
    new-instance v6, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v8, 0x0

    const-string/jumbo v10, "AgooDeviceCmd"

    const/4 v11, 0x0

    invoke-direct {v6, v8, v10, v2, v11}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 257
    .local v6, "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    invoke-interface {v0, p0, v6}, Lcom/taobao/accs/IACCSManager;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "dataId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 259
    if-eqz p1, :cond_2

    .line 260
    const-string/jumbo v8, "504.1"

    const-string/jumbo v10, "accs channel disabled!"

    invoke-virtual {p1, v8, v10}, Lc8/lXe;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 270
    .end local v0    # "accsManager":Lcom/taobao/accs/IACCSManager;
    .end local v1    # "appkey":Ljava/lang/String;
    .end local v2    # "data":[B
    .end local v3    # "dataId":Ljava/lang/String;
    .end local v4    # "deviceId":Ljava/lang/String;
    .end local v5    # "pushAliasToken":Ljava/lang/String;
    .end local v6    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    :catch_0
    move-exception v7

    .line 271
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v8, "TaobaoRegister"

    const-string/jumbo v10, "removeAlias"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v10, v7, v11}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 232
    .end local v7    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 264
    .restart local v0    # "accsManager":Lcom/taobao/accs/IACCSManager;
    .restart local v1    # "appkey":Ljava/lang/String;
    .restart local v2    # "data":[B
    .restart local v3    # "dataId":Ljava/lang/String;
    .restart local v4    # "deviceId":Ljava/lang/String;
    .restart local v5    # "pushAliasToken":Ljava/lang/String;
    .restart local v6    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    :cond_5
    if-eqz p1, :cond_2

    .line 265
    :try_start_4
    sget-object v8, Lc8/qXe;->mRequestListener:Lc8/sXe;

    iget-object v8, v8, Lc8/sXe;->mListeners:Ljava/util/Map;

    invoke-interface {v8, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private static declared-synchronized sendSwitch(Landroid/content/Context;Lc8/lXe;Z)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callBack"    # Lc8/lXe;
    .param p2, "enablePush"    # Z

    .prologue
    .line 304
    const-class v10, Lc8/qXe;

    monitor-enter v10

    :try_start_0
    invoke-static {p0}, Lc8/BWp;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 305
    .local v5, "deviceId":Ljava/lang/String;
    invoke-static {p0}, Lc8/BWp;->getAgooAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "appkey":Ljava/lang/String;
    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 308
    .local v8, "utdid":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz p0, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 311
    :cond_0
    if-eqz p1, :cond_1

    .line 312
    const-string/jumbo v9, "503.3"

    const-string/jumbo v11, "input params null!!"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v11}, Lc8/lXe;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_1
    const-string/jumbo v9, "TaobaoRegister"

    const-string/jumbo v11, "sendSwitch param null"

    const/16 v12, 0x8

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "appkey"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v2, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "deviceId"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    aput-object v5, v12, v13

    const/4 v13, 0x4

    const-string/jumbo v14, "context"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    aput-object p0, v12, v13

    const/4 v13, 0x6

    const-string/jumbo v14, "enablePush"

    aput-object v14, v12, v13

    const/4 v13, 0x7

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v9, v11, v12}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    .end local v2    # "appkey":Ljava/lang/String;
    .end local v5    # "deviceId":Ljava/lang/String;
    .end local v8    # "utdid":Ljava/lang/String;
    :cond_2
    :goto_0
    monitor-exit v10

    return-void

    .line 319
    .restart local v2    # "appkey":Ljava/lang/String;
    .restart local v5    # "deviceId":Ljava/lang/String;
    .restart local v8    # "utdid":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {p0}, Lc8/BWp;->getAccsConfigTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v2, v9}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v1

    .line 320
    .local v1, "accsManager":Lcom/taobao/accs/IACCSManager;
    sget-object v9, Lc8/qXe;->mRequestListener:Lc8/sXe;

    if-nez v9, :cond_4

    .line 321
    new-instance v9, Lc8/sXe;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v11}, Lc8/sXe;-><init>(Landroid/content/Context;)V

    sput-object v9, Lc8/qXe;->mRequestListener:Lc8/sXe;

    .line 323
    :cond_4
    const-string/jumbo v9, "AgooDeviceCmd"

    sget-object v11, Lc8/qXe;->mRequestListener:Lc8/sXe;

    invoke-interface {v1, p0, v9, v11}, Lcom/taobao/accs/IACCSManager;->registerDataListener(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V

    .line 325
    move/from16 v0, p2

    invoke-static {v2, v5, v8, v0}, Lc8/wXe;->buildSwitchDO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v3

    .line 326
    .local v3, "data":[B
    new-instance v6, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v9, 0x0

    const-string/jumbo v11, "AgooDeviceCmd"

    const/4 v12, 0x0

    invoke-direct {v6, v9, v11, v3, v12}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 327
    .local v6, "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    invoke-interface {v1, p0, v6}, Lcom/taobao/accs/IACCSManager;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, "dataId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 329
    if-eqz p1, :cond_2

    .line 330
    const-string/jumbo v9, "503.2"

    const-string/jumbo v11, "accs channel disabled!"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v11}, Lc8/lXe;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 338
    .end local v1    # "accsManager":Lcom/taobao/accs/IACCSManager;
    .end local v2    # "appkey":Ljava/lang/String;
    .end local v3    # "data":[B
    .end local v4    # "dataId":Ljava/lang/String;
    .end local v5    # "deviceId":Ljava/lang/String;
    .end local v6    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    .end local v8    # "utdid":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 339
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v9, "TaobaoRegister"

    const-string/jumbo v11, "sendSwitch"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v11, v7, v12}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 304
    .end local v7    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 334
    .restart local v1    # "accsManager":Lcom/taobao/accs/IACCSManager;
    .restart local v2    # "appkey":Ljava/lang/String;
    .restart local v3    # "data":[B
    .restart local v4    # "dataId":Ljava/lang/String;
    .restart local v5    # "deviceId":Ljava/lang/String;
    .restart local v6    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    .restart local v8    # "utdid":Ljava/lang/String;
    :cond_5
    if-eqz p1, :cond_2

    .line 335
    :try_start_3
    sget-object v9, Lc8/qXe;->mRequestListener:Lc8/sXe;

    iget-object v9, v9, Lc8/sXe;->mListeners:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v9, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static setAgooMsgReceiveService(Ljava/lang/String;)V
    .locals 0
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 460
    sput-object p0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mAgooCustomServiceName:Ljava/lang/String;

    .line 461
    return-void
.end method

.method public static declared-synchronized setAlias(Landroid/content/Context;Ljava/lang/String;Lc8/lXe;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "bindAlias"    # Lc8/lXe;

    .prologue
    .line 167
    const-class v8, Lc8/qXe;

    monitor-enter v8

    :try_start_0
    const-string/jumbo v7, "TaobaoRegister"

    const-string/jumbo v9, "setAlias"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "alias"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    invoke-static {v7, v9, v10}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-static {p0}, Lc8/BWp;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "deviceId":Ljava/lang/String;
    invoke-static {p0}, Lc8/BWp;->getAgooAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "appkey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 174
    :cond_0
    if-eqz p2, :cond_1

    .line 175
    const-string/jumbo v7, "504.1"

    const-string/jumbo v9, "input params null!!"

    invoke-virtual {p2, v7, v9}, Lc8/lXe;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_1
    const-string/jumbo v7, "TaobaoRegister"

    const-string/jumbo v9, "setAlias param null"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "appkey"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v1, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "deviceId"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object v4, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "alias"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    aput-object p1, v10, v11

    const/4 v11, 0x6

    const-string/jumbo v12, "context"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    aput-object p0, v10, v11

    invoke-static {v7, v9, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_2
    :goto_0
    monitor-exit v8

    return-void

    .line 185
    :cond_3
    :try_start_1
    sget-object v7, Lc8/qXe;->mRequestListener:Lc8/sXe;

    if-nez v7, :cond_4

    .line 186
    new-instance v7, Lc8/sXe;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Lc8/sXe;-><init>(Landroid/content/Context;)V

    sput-object v7, Lc8/qXe;->mRequestListener:Lc8/sXe;

    .line 188
    :cond_4
    sget-object v7, Lc8/sXe;->mAgooBindCache:Lc8/rXe;

    invoke-virtual {v7, p1}, Lc8/rXe;->isAgooAliasBinded(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 189
    const-string/jumbo v7, "TaobaoRegister"

    const-string/jumbo v9, "Alias already set"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "alias"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    invoke-static {v7, v9, v10}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    if-eqz p2, :cond_2

    .line 191
    invoke-virtual {p2}, Lc8/lXe;->onSuccess()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v6

    .line 220
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v7, "TaobaoRegister"

    const-string/jumbo v9, "setAlias"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v9, v6, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 167
    .end local v1    # "appkey":Ljava/lang/String;
    .end local v4    # "deviceId":Ljava/lang/String;
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 195
    .restart local v1    # "appkey":Ljava/lang/String;
    .restart local v4    # "deviceId":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-static {p0}, Lc8/BWp;->getAccsConfigTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v1, v7}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v0

    .line 196
    .local v0, "accsmanager":Lcom/taobao/accs/IACCSManager;
    sget-object v7, Lc8/sXe;->mAgooBindCache:Lc8/rXe;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lc8/rXe;->isAgooRegistered(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 197
    const-string/jumbo v7, "AgooDeviceCmd"

    sget-object v9, Lc8/qXe;->mRequestListener:Lc8/sXe;

    invoke-interface {v0, p0, v7, v9}, Lcom/taobao/accs/IACCSManager;->registerDataListener(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V

    .line 198
    invoke-static {v1, v4, p1}, Lc8/tXe;->buildsetAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 199
    .local v2, "data":[B
    new-instance v5, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v7, 0x0

    const-string/jumbo v9, "AgooDeviceCmd"

    const/4 v10, 0x0

    invoke-direct {v5, v7, v9, v2, v10}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 200
    .local v5, "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    invoke-interface {v0, p0, v5}, Lcom/taobao/accs/IACCSManager;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "dataId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 202
    if-eqz p2, :cond_2

    .line 203
    const-string/jumbo v7, "504.1"

    const-string/jumbo v9, "accs channel disabled!"

    invoke-virtual {p2, v7, v9}, Lc8/lXe;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 207
    :cond_6
    if-eqz p2, :cond_2

    .line 208
    iput-object p1, p2, Lc8/lXe;->extra:Ljava/lang/String;

    .line 209
    sget-object v7, Lc8/qXe;->mRequestListener:Lc8/sXe;

    iget-object v7, v7, Lc8/sXe;->mListeners:Ljava/util/Map;

    invoke-interface {v7, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 214
    .end local v2    # "data":[B
    .end local v3    # "dataId":Ljava/lang/String;
    .end local v5    # "request":Lcom/taobao/accs/ACCSManager$AccsRequest;
    :cond_7
    if-eqz p2, :cond_2

    .line 215
    const-string/jumbo v7, "504.1"

    const-string/jumbo v9, "bindApp first!!"

    invoke-virtual {p2, v7, v9}, Lc8/lXe;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public static setBuilderSound(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 521
    return-void
.end method

.method public static setEnv(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "env"    # I
        .annotation build Lcom/taobao/accs/AccsClientConfig$ENV;
        .end annotation
    .end param

    .prologue
    .line 498
    invoke-static {p0, p1}, Lcom/taobao/accs/ACCSClient;->setEnvironment(Landroid/content/Context;I)V

    .line 499
    return-void
.end method

.method public static setNotificationIcon(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 504
    return-void
.end method

.method public static setNotificationSound(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sound"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 510
    return-void
.end method

.method public static setNotificationVibrate(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vibrate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 526
    return-void
.end method

.method public static unBindAgoo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/AWp;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "ttId"    # Ljava/lang/String;
    .param p3, "callBack"    # Lc8/AWp;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc8/qXe;->unbindAgoo(Landroid/content/Context;Lc8/lXe;)V

    .line 300
    return-void
.end method

.method public static unbindAgoo(Landroid/content/Context;Lc8/lXe;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callBack"    # Lc8/lXe;

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc8/qXe;->sendSwitch(Landroid/content/Context;Lc8/lXe;Z)V

    .line 360
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    const-string/jumbo v2, "unregister"

    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;)V

    .line 361
    return-void
.end method

.method public static unregister(Landroid/content/Context;Lc8/AWp;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callBack"    # Lc8/AWp;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 530
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc8/qXe;->unbindAgoo(Landroid/content/Context;Lc8/lXe;)V

    .line 531
    return-void
.end method
