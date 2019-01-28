.class public Lc8/bok;
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

    .line 54
    sput-boolean v0, Lc8/bok;->isDeleteOfflineSucess:Z

    .line 55
    sput-boolean v0, Lc8/bok;->isCreateOfflineSucess:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lc8/bok;->context:Landroid/content/Context;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lc8/bok;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/bok;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lc8/bok;->sendSuccessBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lc8/bok;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V
    .locals 0
    .param p0, "x0"    # Lc8/bok;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Landroid/os/Handler;
    .param p5, "x5"    # Lc8/vin;

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lc8/bok;->sendSubscribeSuccess(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V

    return-void
.end method

.method static synthetic access$200(Lc8/bok;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/bok;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lc8/bok;->writeLatestSubscribeType(Z)V

    return-void
.end method

.method static synthetic access$300(Lc8/bok;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V
    .locals 0
    .param p0, "x0"    # Lc8/bok;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Landroid/os/Handler;
    .param p5, "x5"    # Lc8/vin;

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lc8/bok;->sendSubscribeFailed(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V

    return-void
.end method

.method static synthetic access$400(Lc8/bok;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V
    .locals 0
    .param p0, "x0"    # Lc8/bok;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Landroid/os/Handler;
    .param p5, "x5"    # Lc8/vin;

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lc8/bok;->sendUnsubscribeSuccess(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V

    return-void
.end method

.method static synthetic access$500(Lc8/bok;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V
    .locals 0
    .param p0, "x0"    # Lc8/bok;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Landroid/os/Handler;
    .param p5, "x5"    # Lc8/vin;

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lc8/bok;->sendUnsubscribeFailed(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V

    return-void
.end method

.method static synthetic access$600(Lc8/bok;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/bok;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lc8/bok;->sendSubscribeNotExist(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private sendSubscribeExecute(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 428
    if-eqz p4, :cond_0

    .line 429
    const/16 v1, 0x232e

    :try_start_0
    invoke-virtual {p4, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 431
    :cond_0
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.SUBSCRIBE_EXECUTE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 432
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isMedia"

    .line 433
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 431
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SubscribUtil"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendSubscribeFailed(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "callback"    # Lc8/vin;

    .prologue
    .line 459
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lc8/bok;->setData(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 461
    if-eqz p5, :cond_0

    .line 462
    :try_start_0
    invoke-interface {p5}, Lc8/vin;->onFailed()V

    .line 464
    :cond_0
    if-eqz p4, :cond_1

    .line 465
    const/16 v1, 0x232b

    invoke-virtual {p4, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 467
    :cond_1
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.SUBSCRIBE_FAILED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 468
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isMedia"

    .line 469
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 467
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_0
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 471
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
    .line 527
    :try_start_0
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.SUBSCRIBE_NOT_EXIST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 528
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isMedia"

    .line 529
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 527
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_0
    return-void

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SubscribUtil"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendSubscribeSuccess(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "callback"    # Lc8/vin;

    .prologue
    .line 441
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lc8/bok;->setData(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 443
    if-eqz p5, :cond_0

    .line 444
    :try_start_0
    invoke-interface {p5}, Lc8/vin;->onSuccess()V

    .line 446
    :cond_0
    if-eqz p4, :cond_1

    .line 447
    const/16 v1, 0x232a

    invoke-virtual {p4, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 449
    :cond_1
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.SUBSCRIBE_SUCCESS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 450
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isMedia"

    .line 451
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 449
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_0
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SubscribUtil"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendSuccessBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Send a Broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "SubscribSuccess"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "SubscribSuccess"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 424
    return-void
.end method

.method private sendUnsubscribeExecute(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 477
    if-eqz p4, :cond_0

    .line 478
    const/16 v1, 0x232e

    :try_start_0
    invoke-virtual {p4, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 480
    :cond_0
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.UNSUBSCRIBE_EXECUTE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 481
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isMedia"

    .line 482
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 480
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    return-void

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SubscribUtil"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendUnsubscribeFailed(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "callback"    # Lc8/vin;

    .prologue
    .line 509
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lc8/bok;->setData(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 511
    if-eqz p5, :cond_0

    .line 512
    :try_start_0
    invoke-interface {p5}, Lc8/vin;->onFailed()V

    .line 514
    :cond_0
    if-eqz p4, :cond_1

    .line 515
    const/16 v1, 0x232d

    invoke-virtual {p4, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 517
    :cond_1
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.UNSUBSCRIBE_FAILED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 518
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isMedia"

    .line 519
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 517
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SubscribUtil"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendUnsubscribeSuccess(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "callback"    # Lc8/vin;

    .prologue
    .line 490
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lc8/bok;->setData(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 492
    if-eqz p5, :cond_0

    .line 493
    :try_start_0
    invoke-interface {p5}, Lc8/vin;->onSuccess()V

    .line 495
    :cond_0
    if-eqz p4, :cond_1

    .line 496
    const/16 v1, 0x232c

    invoke-virtual {p4, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 498
    :cond_1
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.UNSUBSCRIBE_SUCCESS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uid"

    .line 499
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isMedia"

    .line 500
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 498
    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_0
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SubscribUtil"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setData(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "state"    # Z

    .prologue
    .line 557
    if-eqz p3, :cond_1

    .line 558
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    .line 559
    invoke-virtual {v0}, Lcom/youku/phone/detail/data/DetailVideoInfo;->getShowid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    sget-object v0, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    iput-boolean p4, v0, Lcom/youku/phone/detail/data/DetailVideoInfo;->alreadyTRack:Z

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lc8/ukk;->subscribeInfo:Lc8/Qkk;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ukk;->subscribeInfo:Lc8/Qkk;

    iget-object v0, v0, Lc8/Qkk;->uid:Ljava/lang/String;

    .line 564
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    sget-object v0, Lc8/ukk;->subscribeInfo:Lc8/Qkk;

    iput-boolean p4, v0, Lc8/Qkk;->isfriend:Z

    .line 566
    sput-boolean p4, Lc8/ukk;->isSubscribed:Z

    goto :goto_0
.end method

.method private writeLatestSubscribeType(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 547
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput v0, Lc8/Dfh;->latestSubscribeType:I

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Subscribe util write = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lc8/Dfh;->latestSubscribeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    return-void

    .line 547
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public varargs requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;ZLandroid/os/Handler;[Ljava/lang/String;)V
    .locals 23
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/vin;
    .param p6, "isShowTips"    # Z
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "iconUrl"    # [Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {}, Lc8/Iin;->hasInternet()Z

    move-result v5

    if-nez v5, :cond_1

    .line 88
    sget v5, Lcom/youku/phone/R$string;->tips_no_network:I

    invoke-static {v5}, Lc8/Iin;->showTips(I)V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p3, :cond_0

    .line 94
    :cond_2
    const/16 v22, 0x0

    .line 95
    .local v22, "userUrl":Ljava/lang/String;
    if-eqz p8, :cond_3

    move-object/from16 v0, p8

    array-length v5, v0

    if-lez v5, :cond_3

    const/4 v5, 0x0

    aget-object v5, p8, v5

    if-eqz v5, :cond_3

    .line 96
    const/4 v5, 0x0

    aget-object v22, p8, v5

    .line 98
    :cond_3
    move-object/from16 v9, v22

    .line 99
    .local v9, "finalUserUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p3

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lc8/bok;->sendSubscribeExecute(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;)V

    .line 100
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 101
    invoke-static/range {p1 .. p4}, Lc8/lSh;->getCreateRelationUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 102
    .local v21, "url":Ljava/lang/String;
    new-instance v14, Lc8/RIj;

    invoke-direct {v14}, Lc8/RIj;-><init>()V

    new-instance v15, Lcom/youku/network/HttpIntent;

    const-string/jumbo v5, "POST"

    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v6

    move-object/from16 v0, v21

    invoke-direct {v15, v0, v5, v6}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v5, Lc8/Xnk;

    move-object/from16 v6, p0

    move/from16 v7, p3

    move/from16 v8, p6

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    move-object/from16 v12, p7

    move-object/from16 v13, p5

    invoke-direct/range {v5 .. v13}, Lc8/Xnk;-><init>(Lc8/bok;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lc8/vin;)V

    invoke-virtual {v14, v15, v5}, Lc8/RIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    goto :goto_0

    .line 170
    .end local v21    # "url":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lc8/kzk;->getInstance()Lc8/kzk;

    move-result-object v20

    .line 171
    .local v20, "mOfflineSubscribeManage":Lc8/kzk;
    invoke-static {}, Lc8/jzk;->getInstance()Lc8/jzk;

    move-result-object v12

    .line 172
    .local v12, "mOfflineSubscribe":Lc8/jzk;
    invoke-virtual/range {v20 .. v20}, Lc8/kzk;->isOverMaxNumber()Z

    move-result v5

    if-nez v5, :cond_5

    .line 173
    new-instance v10, Lc8/Ynk;

    move-object/from16 v11, p0

    move/from16 v13, p3

    move/from16 v14, p6

    move-object v15, v9

    move-object/from16 v16, p1

    move-object/from16 v17, p4

    move-object/from16 v18, p7

    move-object/from16 v19, p5

    invoke-direct/range {v10 .. v19}, Lc8/Ynk;-><init>(Lc8/bok;Lc8/jzk;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lc8/vin;)V

    move-object v13, v10

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v16, p3

    move-object/from16 v17, p4

    invoke-virtual/range {v12 .. v17}, Lc8/jzk;->createOfflineSubscribe(Lc8/hzk;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 244
    :goto_1
    const-string/jumbo v5, "login_youku"

    sput-object v5, Lc8/tin;->WIRELESS_LOGIN_FROM_VALUE:Ljava/lang/String;

    .line 245
    const-string/jumbo v5, "scribe"

    sput-object v5, Lc8/tin;->WIRELESS_USER_OPERATE_VALUE:Ljava/lang/String;

    goto/16 :goto_0

    .line 236
    :cond_5
    if-eqz p3, :cond_6

    .line 237
    const-string/jumbo v5, "\u8ffd\u5267\u8bf7\u5148\u767b\u5f55"

    invoke-static {v5}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    .line 241
    :goto_2
    const-class v5, Lc8/fhn;

    invoke-static {v5}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/fhn;

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/bok;->context:Landroid/content/Context;

    invoke-interface {v5, v6}, Lc8/fhn;->goLogin(Landroid/content/Context;)V

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p4

    move/from16 v16, p3

    move-object/from16 v17, p7

    move-object/from16 v18, p5

    .line 242
    invoke-direct/range {v13 .. v18}, Lc8/bok;->sendSubscribeFailed(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V

    goto :goto_1

    .line 239
    :cond_6
    sget v5, Lcom/youku/phone/R$string;->user_login_tip_subscribe:I

    invoke-static {v5}, Lc8/Iin;->showTips(I)V

    goto :goto_2
.end method

.method public varargs requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;Z[Ljava/lang/String;)V
    .locals 9
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/vin;
    .param p6, "isShowTips"    # Z
    .param p7, "iconUrl"    # [Ljava/lang/String;

    .prologue
    .line 278
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lc8/bok;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;ZLandroid/os/Handler;[Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public varargs requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;[Ljava/lang/String;)V
    .locals 8
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/vin;
    .param p6, "iconUrl"    # [Ljava/lang/String;

    .prologue
    .line 262
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lc8/bok;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;Z[Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/vin;)V
    .locals 8
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userType"    # I
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/vin;

    .prologue
    .line 292
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lc8/bok;->requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/vin;ZLandroid/os/Handler;)V

    .line 293
    return-void
.end method

.method public requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/vin;ZLandroid/os/Handler;)V
    .locals 14
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userType"    # I
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/vin;
    .param p6, "isShowTips"    # Z
    .param p7, "handler"    # Landroid/os/Handler;

    .prologue
    .line 307
    invoke-static {}, Lc8/Iin;->hasInternet()Z

    move-result v3

    if-nez v3, :cond_1

    .line 308
    sget v3, Lcom/youku/phone/R$string;->tips_no_network:I

    invoke-static {v3}, Lc8/Iin;->showTips(I)V

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p3, :cond_0

    .line 314
    :cond_2
    move-object/from16 v0, p4

    move/from16 v1, p3

    move-object/from16 v2, p7

    invoke-direct {p0, p1, v0, v1, v2}, Lc8/bok;->sendUnsubscribeExecute(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;)V

    .line 315
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 316
    invoke-static/range {p1 .. p4}, Lc8/lSh;->getDeleteRelationUrl(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 317
    .local v12, "url":Ljava/lang/String;
    new-instance v11, Lc8/RIj;

    invoke-direct {v11}, Lc8/RIj;-><init>()V

    new-instance v13, Lcom/youku/network/HttpIntent;

    const-string/jumbo v3, "POST"

    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v4

    invoke-direct {v13, v12, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lc8/Znk;

    move-object v4, p0

    move/from16 v5, p3

    move/from16 v6, p6

    move-object v7, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p7

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Lc8/Znk;-><init>(Lc8/bok;ZZLjava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lc8/vin;)V

    invoke-virtual {v11, v13, v3}, Lc8/RIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    goto :goto_0

    .line 349
    .end local v12    # "url":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lc8/jzk;->getInstance()Lc8/jzk;

    move-result-object v5

    .line 350
    .local v5, "mOfflineSubscribe":Lc8/jzk;
    new-instance v3, Lc8/aok;

    move-object v4, p0

    move/from16 v6, p3

    move/from16 v7, p6

    move-object v8, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p7

    move-object/from16 v11, p5

    invoke-direct/range {v3 .. v11}, Lc8/aok;-><init>(Lc8/bok;Lc8/jzk;ZZLjava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lc8/vin;)V

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v5, v3, p1, v0, v1}, Lc8/jzk;->deleteOfflineSubscribe(Lc8/hzk;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method
