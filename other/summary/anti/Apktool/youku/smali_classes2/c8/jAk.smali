.class public Lc8/jAk;
.super Ljava/lang/Object;
.source "SubscribUtil.java"


# static fields
.field public static final IS_MEDIA:Ljava/lang/String; = "isMedia"

.field public static final MSG_ON_SUBSCRIBE:I = 0x232e

.field public static final MSG_SUBSCRIBE_DELETE:I = 0x232c

.field public static final MSG_SUBSCRIBE_DELETE_FAIL:I = 0x232d

.field public static final MSG_SUBSCRIBE_FAIL:I = 0x232b

.field public static final MSG_SUBSCRIBE_NOT_EXIST:I = 0x232f

.field public static final MSG_SUBSCRIBE_SUCCESS:I = 0x232a

.field public static final SID:Ljava/lang/String; = "sid"

.field public static final SUBSCRIB_SUCCESS:Ljava/lang/String; = "SubscribSuccess"

.field public static final SUSCARD_ERROR_CODE_ENOUGH:I = -0x12c

.field public static final SUSCARD_ERROR_CODE_NOT:I = -0x131

.field public static final SUSCARD_ERROR_CODE_WAIT:I = -0x132

.field public static final TAG:Ljava/lang/String; = "SubscribUtil"

.field public static final UID:Ljava/lang/String; = "uid"

.field public static isCreateOfflineSucess:Z

.field public static isDeleteOfflineSucess:Z


# instance fields
.field public context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-boolean v0, Lc8/jAk;->isDeleteOfflineSucess:Z

    .line 56
    sput-boolean v0, Lc8/jAk;->isCreateOfflineSucess:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lc8/jAk;->context:Landroid/content/Context;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lc8/jAk;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/jAk;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lc8/jAk;->sendSuccessBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lc8/jAk;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V
    .locals 0
    .param p0, "x0"    # Lc8/jAk;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Landroid/os/Handler;
    .param p5, "x5"    # Lc8/Tzk;

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lc8/jAk;->sendSubscribeSuccess(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V

    return-void
.end method

.method static synthetic access$200(Lc8/jAk;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/jAk;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lc8/jAk;->writeLatestSubscribeType(Z)V

    return-void
.end method

.method static synthetic access$300(Lc8/jAk;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V
    .locals 0
    .param p0, "x0"    # Lc8/jAk;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Landroid/os/Handler;
    .param p5, "x5"    # Lc8/Tzk;

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lc8/jAk;->sendSubscribeFailed(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V

    return-void
.end method

.method static synthetic access$400(Lc8/jAk;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V
    .locals 0
    .param p0, "x0"    # Lc8/jAk;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Landroid/os/Handler;
    .param p5, "x5"    # Lc8/Tzk;

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lc8/jAk;->sendUnsubscribeSuccess(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V

    return-void
.end method

.method static synthetic access$500(Lc8/jAk;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V
    .locals 0
    .param p0, "x0"    # Lc8/jAk;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Landroid/os/Handler;
    .param p5, "x5"    # Lc8/Tzk;

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lc8/jAk;->sendUnsubscribeFailed(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V

    return-void
.end method

.method static synthetic access$600(Lc8/jAk;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/jAk;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lc8/jAk;->sendSubscribeNotExist(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static registerSubscribeReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p0, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v0, "i":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.youku.action.SUBSCRIBE_EXECUTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v1, "com.youku.action.SUBSCRIBE_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v1, "com.youku.action.SUBSCRIBE_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v1, "com.youku.action.UNSUBSCRIBE_EXECUTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v1, "com.youku.action.UNSUBSCRIBE_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string/jumbo v1, "com.youku.action.UNSUBSCRIBE_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 75
    return-void
.end method

.method private sendSubscribeExecute(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 429
    if-eqz p4, :cond_0

    .line 430
    const/16 v1, 0x232e

    :try_start_0
    invoke-virtual {p4, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 432
    :cond_0
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.SUBSCRIBE_EXECUTE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 433
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isMedia"

    .line 434
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 432
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SubscribUtil"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendSubscribeFailed(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "callback"    # Lc8/Tzk;

    .prologue
    .line 460
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lc8/jAk;->setData(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 462
    if-eqz p5, :cond_0

    .line 463
    :try_start_0
    invoke-interface {p5}, Lc8/Tzk;->onFailed()V

    .line 465
    :cond_0
    if-eqz p4, :cond_1

    .line 466
    const/16 v1, 0x232b

    invoke-virtual {p4, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 468
    :cond_1
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.SUBSCRIBE_FAILED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 469
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isMedia"

    .line 470
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 468
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SubscribUtil"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendSubscribeHasExist(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z

    .prologue
    .line 538
    :try_start_0
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.SUBSCRIBE_HAS_EXIST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 539
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isMedia"

    .line 540
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 538
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :goto_0
    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SubscribUtil"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendSubscribeNotExist(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z

    .prologue
    .line 528
    :try_start_0
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.SUBSCRIBE_NOT_EXIST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 529
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isMedia"

    .line 530
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 528
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_0
    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SubscribUtil"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendSubscribeSuccess(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "callback"    # Lc8/Tzk;

    .prologue
    .line 442
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lc8/jAk;->setData(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 444
    if-eqz p5, :cond_0

    .line 445
    :try_start_0
    invoke-interface {p5}, Lc8/Tzk;->onSuccess()V

    .line 447
    :cond_0
    if-eqz p4, :cond_1

    .line 448
    const/16 v1, 0x232a

    invoke-virtual {p4, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 450
    :cond_1
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.SUBSCRIBE_SUCCESS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 451
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isMedia"

    .line 452
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 450
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_0
    return-void

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SubscribUtil"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendSuccessBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Send a Broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "SubscribSuccess"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "SubscribSuccess"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 425
    return-void
.end method

.method private sendUnsubscribeExecute(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 478
    if-eqz p4, :cond_0

    .line 479
    const/16 v1, 0x232e

    :try_start_0
    invoke-virtual {p4, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 481
    :cond_0
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.UNSUBSCRIBE_EXECUTE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 482
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isMedia"

    .line 483
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 481
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_0
    return-void

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SubscribUtil"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendUnsubscribeFailed(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "callback"    # Lc8/Tzk;

    .prologue
    .line 510
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lc8/jAk;->setData(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 512
    if-eqz p5, :cond_0

    .line 513
    :try_start_0
    invoke-interface {p5}, Lc8/Tzk;->onFailed()V

    .line 515
    :cond_0
    if-eqz p4, :cond_1

    .line 516
    const/16 v1, 0x232d

    invoke-virtual {p4, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 518
    :cond_1
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.UNSUBSCRIBE_FAILED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 519
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isMedia"

    .line 520
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 518
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SubscribUtil"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendUnsubscribeSuccess(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "callback"    # Lc8/Tzk;

    .prologue
    .line 491
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lc8/jAk;->setData(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 493
    if-eqz p5, :cond_0

    .line 494
    :try_start_0
    invoke-interface {p5}, Lc8/Tzk;->onSuccess()V

    .line 496
    :cond_0
    if-eqz p4, :cond_1

    .line 497
    const/16 v1, 0x232c

    invoke-virtual {p4, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 499
    :cond_1
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.UNSUBSCRIBE_SUCCESS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 500
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isMedia"

    .line 501
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 499
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :goto_0
    return-void

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SubscribUtil"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setData(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "state"    # Z

    .prologue
    .line 570
    return-void
.end method

.method public static unregisterSubscribeReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p0, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 81
    if-eqz p0, :cond_0

    .line 82
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    :cond_0
    return-void
.end method

.method private writeLatestSubscribeType(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 548
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput v0, Lc8/Dfh;->latestSubscribeType:I

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Subscribe util write = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lc8/Dfh;->latestSubscribeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    return-void

    .line 548
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public varargs requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;[Ljava/lang/String;)V
    .locals 23
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/Tzk;
    .param p6, "isShowTips"    # Z
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "iconUrl"    # [Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {}, Lc8/Iin;->hasInternet()Z

    move-result v5

    if-nez v5, :cond_1

    .line 89
    sget v5, Lcom/youku/phone/R$string;->tips_no_network:I

    invoke-static {v5}, Lc8/Iin;->showTips(I)V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p3, :cond_0

    .line 95
    :cond_2
    const/16 v22, 0x0

    .line 96
    .local v22, "userUrl":Ljava/lang/String;
    if-eqz p8, :cond_3

    move-object/from16 v0, p8

    array-length v5, v0

    if-lez v5, :cond_3

    const/4 v5, 0x0

    aget-object v5, p8, v5

    if-eqz v5, :cond_3

    .line 97
    const/4 v5, 0x0

    aget-object v22, p8, v5

    .line 99
    :cond_3
    move-object/from16 v9, v22

    .line 100
    .local v9, "finalUserUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p3

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lc8/jAk;->sendSubscribeExecute(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;)V

    .line 101
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 102
    invoke-static/range {p1 .. p4}, Lc8/eAk;->getCreateRelationUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 103
    .local v21, "url":Ljava/lang/String;
    new-instance v14, Lc8/RIj;

    invoke-direct {v14}, Lc8/RIj;-><init>()V

    new-instance v15, Lcom/youku/network/HttpIntent;

    const-string/jumbo v5, "POST"

    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v6

    move-object/from16 v0, v21

    invoke-direct {v15, v0, v5, v6}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v5, Lc8/fAk;

    move-object/from16 v6, p0

    move/from16 v7, p3

    move/from16 v8, p6

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    move-object/from16 v12, p7

    move-object/from16 v13, p5

    invoke-direct/range {v5 .. v13}, Lc8/fAk;-><init>(Lc8/jAk;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lc8/Tzk;)V

    invoke-virtual {v14, v15, v5}, Lc8/RIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    goto :goto_0

    .line 171
    .end local v21    # "url":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lc8/kzk;->getInstance()Lc8/kzk;

    move-result-object v20

    .line 172
    .local v20, "mOfflineSubscribeManage":Lc8/kzk;
    invoke-static {}, Lc8/jzk;->getInstance()Lc8/jzk;

    move-result-object v12

    .line 173
    .local v12, "mOfflineSubscribe":Lc8/jzk;
    invoke-virtual/range {v20 .. v20}, Lc8/kzk;->isOverMaxNumber()Z

    move-result v5

    if-nez v5, :cond_5

    .line 174
    new-instance v10, Lc8/gAk;

    move-object/from16 v11, p0

    move/from16 v13, p3

    move/from16 v14, p6

    move-object v15, v9

    move-object/from16 v16, p1

    move-object/from16 v17, p4

    move-object/from16 v18, p7

    move-object/from16 v19, p5

    invoke-direct/range {v10 .. v19}, Lc8/gAk;-><init>(Lc8/jAk;Lc8/jzk;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lc8/Tzk;)V

    move-object v13, v10

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v16, p3

    move-object/from16 v17, p4

    invoke-virtual/range {v12 .. v17}, Lc8/jzk;->createOfflineSubscribe(Lc8/hzk;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 245
    :goto_1
    const-string/jumbo v5, "login_youku"

    sput-object v5, Lc8/tin;->WIRELESS_LOGIN_FROM_VALUE:Ljava/lang/String;

    .line 246
    const-string/jumbo v5, "scribe"

    sput-object v5, Lc8/tin;->WIRELESS_USER_OPERATE_VALUE:Ljava/lang/String;

    goto/16 :goto_0

    .line 237
    :cond_5
    if-eqz p3, :cond_6

    .line 238
    const-string/jumbo v5, "\u8ffd\u5267\u8bf7\u5148\u767b\u5f55"

    invoke-static {v5}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    .line 242
    :goto_2
    const-class v5, Lc8/fhn;

    invoke-static {v5}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/fhn;

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/jAk;->context:Landroid/content/Context;

    invoke-interface {v5, v6}, Lc8/fhn;->goLogin(Landroid/content/Context;)V

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p4

    move/from16 v16, p3

    move-object/from16 v17, p7

    move-object/from16 v18, p5

    .line 243
    invoke-direct/range {v13 .. v18}, Lc8/jAk;->sendSubscribeFailed(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V

    goto :goto_1

    .line 240
    :cond_6
    sget v5, Lcom/youku/phone/R$string;->user_login_tip_subscribe:I

    invoke-static {v5}, Lc8/Iin;->showTips(I)V

    goto :goto_2
.end method

.method public varargs requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;Z[Ljava/lang/String;)V
    .locals 9
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/Tzk;
    .param p6, "isShowTips"    # Z
    .param p7, "iconUrl"    # [Ljava/lang/String;

    .prologue
    .line 279
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lc8/jAk;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;[Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public varargs requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;[Ljava/lang/String;)V
    .locals 8
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/Tzk;
    .param p6, "iconUrl"    # [Ljava/lang/String;

    .prologue
    .line 263
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lc8/jAk;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;Z[Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/Tzk;)V
    .locals 8
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userType"    # I
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/Tzk;

    .prologue
    .line 293
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lc8/jAk;->requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;)V

    .line 294
    return-void
.end method

.method public requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/Tzk;Z)V
    .locals 8
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userType"    # I
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/Tzk;
    .param p6, "isShowTips"    # Z

    .prologue
    .line 417
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lc8/jAk;->requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;)V

    .line 418
    return-void
.end method

.method public requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;)V
    .locals 14
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userType"    # I
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/Tzk;
    .param p6, "isShowTips"    # Z
    .param p7, "handler"    # Landroid/os/Handler;

    .prologue
    .line 308
    invoke-static {}, Lc8/Iin;->hasInternet()Z

    move-result v3

    if-nez v3, :cond_1

    .line 309
    sget v3, Lcom/youku/phone/R$string;->tips_no_network:I

    invoke-static {v3}, Lc8/Iin;->showTips(I)V

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p3, :cond_0

    .line 315
    :cond_2
    move-object/from16 v0, p4

    move/from16 v1, p3

    move-object/from16 v2, p7

    invoke-direct {p0, p1, v0, v1, v2}, Lc8/jAk;->sendUnsubscribeExecute(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;)V

    .line 316
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 317
    invoke-static/range {p1 .. p4}, Lc8/eAk;->getDeleteRelationUrl(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 318
    .local v12, "url":Ljava/lang/String;
    new-instance v11, Lc8/RIj;

    invoke-direct {v11}, Lc8/RIj;-><init>()V

    new-instance v13, Lcom/youku/network/HttpIntent;

    const-string/jumbo v3, "POST"

    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v4

    invoke-direct {v13, v12, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lc8/hAk;

    move-object v4, p0

    move/from16 v5, p3

    move/from16 v6, p6

    move-object v7, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p7

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Lc8/hAk;-><init>(Lc8/jAk;ZZLjava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lc8/Tzk;)V

    invoke-virtual {v11, v13, v3}, Lc8/RIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    goto :goto_0

    .line 350
    .end local v12    # "url":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lc8/jzk;->getInstance()Lc8/jzk;

    move-result-object v5

    .line 351
    .local v5, "mOfflineSubscribe":Lc8/jzk;
    new-instance v3, Lc8/iAk;

    move-object v4, p0

    move/from16 v6, p3

    move/from16 v7, p6

    move-object v8, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p7

    move-object/from16 v11, p5

    invoke-direct/range {v3 .. v11}, Lc8/iAk;-><init>(Lc8/jAk;Lc8/jzk;ZZLjava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lc8/Tzk;)V

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v5, v3, p1, v0, v1}, Lc8/jzk;->deleteOfflineSubscribe(Lc8/hzk;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method
