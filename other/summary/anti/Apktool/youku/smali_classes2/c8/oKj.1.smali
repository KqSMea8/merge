.class public Lc8/oKj;
.super Ljava/lang/Object;
.source "ZpdPayManager.java"


# static fields
.field public static final ALIPAY_PAY_FAIL:I = 0x44d

.field public static final ALIPAY_PAY_QUERY_FAIL:I = 0x44e

.field public static final ALIPAY_PAY_SUCCESS:I = 0x44c

.field public static final TAG:Ljava/lang/String;

.field public static final WXAPP_PAY_SUCCESS:Ljava/lang/String; = "0"

.field private static mInstance:Lc8/oKj;

.field private static final mInstanceSync:Ljava/lang/Object;


# instance fields
.field private activity:Landroid/app/Activity;

.field private doPayRequest:Lc8/TIj;

.field private doTradeRequest:Lc8/TIj;

.field private handler:Landroid/os/Handler;

.field private isAliPaying:Z

.field private isGetingData:Z

.field private isGetingTradeData:Z

.field private isPayOk:Z

.field private mDoPayZpdData:Lc8/IKj;

.field private mHandler:Landroid/os/Handler;

.field private mIWXAPI:Lc8/Ojg;

.field private mResultChecker:Lc8/GKj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lc8/oKj;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/oKj;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/oKj;->mInstanceSync:Ljava/lang/Object;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lc8/oKj;->mInstance:Lc8/oKj;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v2, p0, Lc8/oKj;->isGetingData:Z

    .line 40
    iput-object v1, p0, Lc8/oKj;->doPayRequest:Lc8/TIj;

    .line 42
    iput-object v1, p0, Lc8/oKj;->mDoPayZpdData:Lc8/IKj;

    .line 44
    iput-object v1, p0, Lc8/oKj;->activity:Landroid/app/Activity;

    .line 45
    new-instance v0, Lc8/kKj;

    invoke-direct {v0, p0}, Lc8/kKj;-><init>(Lc8/oKj;)V

    iput-object v0, p0, Lc8/oKj;->mHandler:Landroid/os/Handler;

    .line 76
    iput-object v1, p0, Lc8/oKj;->handler:Landroid/os/Handler;

    .line 77
    iput-boolean v2, p0, Lc8/oKj;->isGetingTradeData:Z

    .line 78
    iput-object v1, p0, Lc8/oKj;->doTradeRequest:Lc8/TIj;

    .line 79
    iput-object v1, p0, Lc8/oKj;->mResultChecker:Lc8/GKj;

    .line 80
    iput-boolean v2, p0, Lc8/oKj;->isAliPaying:Z

    .line 81
    iput-object v1, p0, Lc8/oKj;->mIWXAPI:Lc8/Ojg;

    .line 83
    iput-boolean v2, p0, Lc8/oKj;->isPayOk:Z

    return-void
.end method

.method static synthetic access$000(Lc8/oKj;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lc8/oKj;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/oKj;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lc8/oKj;)V
    .locals 0
    .param p0, "x0"    # Lc8/oKj;

    .prologue
    .line 28
    invoke-direct {p0}, Lc8/oKj;->performPay()V

    return-void
.end method

.method static synthetic access$1000(Lc8/oKj;)Z
    .locals 1
    .param p0, "x0"    # Lc8/oKj;

    .prologue
    .line 28
    iget-boolean v0, p0, Lc8/oKj;->isPayOk:Z

    return v0
.end method

.method static synthetic access$1102(Lc8/oKj;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/oKj;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lc8/oKj;->isGetingTradeData:Z

    return p1
.end method

.method static synthetic access$1202(Lc8/oKj;Lc8/TIj;)Lc8/TIj;
    .locals 0
    .param p0, "x0"    # Lc8/oKj;
    .param p1, "x1"    # Lc8/TIj;

    .prologue
    .line 28
    iput-object p1, p0, Lc8/oKj;->doTradeRequest:Lc8/TIj;

    return-object p1
.end method

.method static synthetic access$200(Lc8/oKj;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/oKj;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lc8/oKj;->handlePayResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lc8/oKj;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/oKj;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lc8/oKj;->handleWXAppPayResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lc8/oKj;)Z
    .locals 1
    .param p0, "x0"    # Lc8/oKj;

    .prologue
    .line 28
    iget-boolean v0, p0, Lc8/oKj;->isAliPaying:Z

    return v0
.end method

.method static synthetic access$402(Lc8/oKj;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/oKj;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lc8/oKj;->isAliPaying:Z

    return p1
.end method

.method static synthetic access$500(Lc8/oKj;)Lc8/IKj;
    .locals 1
    .param p0, "x0"    # Lc8/oKj;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/oKj;->mDoPayZpdData:Lc8/IKj;

    return-object v0
.end method

.method static synthetic access$502(Lc8/oKj;Lc8/IKj;)Lc8/IKj;
    .locals 0
    .param p0, "x0"    # Lc8/oKj;
    .param p1, "x1"    # Lc8/IKj;

    .prologue
    .line 28
    iput-object p1, p0, Lc8/oKj;->mDoPayZpdData:Lc8/IKj;

    return-object p1
.end method

.method static synthetic access$600(Lc8/oKj;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/oKj;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/oKj;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lc8/oKj;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/oKj;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lc8/oKj;->isGetingData:Z

    return p1
.end method

.method static synthetic access$802(Lc8/oKj;Lc8/TIj;)Lc8/TIj;
    .locals 0
    .param p0, "x0"    # Lc8/oKj;
    .param p1, "x1"    # Lc8/TIj;

    .prologue
    .line 28
    iput-object p1, p0, Lc8/oKj;->doPayRequest:Lc8/TIj;

    return-object p1
.end method

.method static synthetic access$900(Lc8/oKj;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/oKj;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/oKj;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelDoPayRequest()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 289
    iget-object v0, p0, Lc8/oKj;->doPayRequest:Lc8/TIj;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lc8/oKj;->doPayRequest:Lc8/TIj;

    invoke-interface {v0}, Lc8/TIj;->cancel()V

    .line 291
    iput-object v2, p0, Lc8/oKj;->doPayRequest:Lc8/TIj;

    .line 293
    :cond_0
    iput-object v2, p0, Lc8/oKj;->mDoPayZpdData:Lc8/IKj;

    .line 294
    iput-boolean v1, p0, Lc8/oKj;->isGetingData:Z

    .line 295
    iput-boolean v1, p0, Lc8/oKj;->isAliPaying:Z

    .line 296
    iget-object v0, p0, Lc8/oKj;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 297
    iget-object v0, p0, Lc8/oKj;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    iget-object v0, p0, Lc8/oKj;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 299
    iget-object v0, p0, Lc8/oKj;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 300
    return-void
.end method

.method private cancelTradeRequest()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lc8/oKj;->doTradeRequest:Lc8/TIj;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lc8/oKj;->doTradeRequest:Lc8/TIj;

    invoke-interface {v0}, Lc8/TIj;->cancel()V

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/oKj;->doTradeRequest:Lc8/TIj;

    .line 441
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/oKj;->isGetingTradeData:Z

    .line 442
    return-void
.end method

.method private createIWXAPI()V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lc8/oKj;->mIWXAPI:Lc8/Ojg;

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lc8/oKj;->activity:Landroid/app/Activity;

    const-string/jumbo v1, "wxa77232e51741dee3"

    invoke-static {v0, v1}, Lc8/Sjg;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lc8/Ojg;

    move-result-object v0

    iput-object v0, p0, Lc8/oKj;->mIWXAPI:Lc8/Ojg;

    .line 447
    iget-object v0, p0, Lc8/oKj;->mIWXAPI:Lc8/Ojg;

    const-string/jumbo v1, "wxa77232e51741dee3"

    invoke-interface {v0, v1}, Lc8/Ojg;->registerApp(Ljava/lang/String;)Z

    .line 449
    :cond_0
    return-void
.end method

.method private doPay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pay_channel"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-static {}, Lc8/QKj;->checkCallEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc8/oKj;->isGetingData:Z

    if-nez v0, :cond_0

    .line 324
    const-string/jumbo v0, "103"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    invoke-static {}, Lc8/Iin;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    sget v0, Lcom/youku/phone/R$string;->tips_no_network:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-direct {p0}, Lc8/oKj;->createIWXAPI()V

    .line 330
    iget-object v0, p0, Lc8/oKj;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lc8/oKj;->mIWXAPI:Lc8/Ojg;

    invoke-static {v0, v1}, Lc8/QKj;->checkWXAppPayValid(Landroid/app/Activity;Lc8/Ojg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0, p1, p2}, Lc8/oKj;->requestDoPayUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_2
    invoke-static {}, Lc8/Iin;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 336
    sget v0, Lcom/youku/phone/R$string;->tips_no_network:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    goto :goto_0

    .line 339
    :cond_3
    invoke-direct {p0, p1, p2}, Lc8/oKj;->requestDoPayUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lc8/oKj;
    .locals 2

    .prologue
    .line 86
    sget-object v1, Lc8/oKj;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    sget-object v0, Lc8/oKj;->mInstance:Lc8/oKj;

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lc8/oKj;->mInstance:Lc8/oKj;

    monitor-exit v1

    .line 92
    :goto_0
    return-object v0

    .line 90
    :cond_0
    new-instance v0, Lc8/oKj;

    invoke-direct {v0}, Lc8/oKj;-><init>()V

    sput-object v0, Lc8/oKj;->mInstance:Lc8/oKj;

    .line 91
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    sget-object v0, Lc8/oKj;->mInstance:Lc8/oKj;

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handlePayResult(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x44d

    .line 184
    sget-object v4, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handlePayResult...result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 186
    iget-object v4, p0, Lc8/oKj;->handler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 187
    iget-object v4, p0, Lc8/oKj;->mDoPayZpdData:Lc8/IKj;

    if-nez v4, :cond_1

    const-string/jumbo v2, ""

    .line 188
    .local v2, "order_id":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lc8/oKj;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 189
    sget-object v4, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handlePayResult...sendMessage:ALIPAY_PAY_FAIL,order_id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v2    # "order_id":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 187
    :cond_1
    iget-object v4, p0, Lc8/oKj;->mDoPayZpdData:Lc8/IKj;

    iget-object v2, v4, Lc8/IKj;->order_id:Ljava/lang/String;

    goto :goto_0

    .line 192
    :cond_2
    new-instance v4, Lc8/GKj;

    invoke-direct {v4, p1}, Lc8/GKj;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lc8/oKj;->mResultChecker:Lc8/GKj;

    .line 193
    iget-object v4, p0, Lc8/oKj;->mResultChecker:Lc8/GKj;

    invoke-virtual {v4}, Lc8/GKj;->isPayOk()Z

    move-result v4

    iput-boolean v4, p0, Lc8/oKj;->isPayOk:Z

    .line 194
    iget-boolean v4, p0, Lc8/oKj;->isPayOk:Z

    if-eqz v4, :cond_4

    .line 195
    iget-object v4, p0, Lc8/oKj;->mDoPayZpdData:Lc8/IKj;

    if-nez v4, :cond_3

    const-string/jumbo v2, ""

    .line 196
    .restart local v2    # "order_id":Ljava/lang/String;
    :goto_2
    sget-object v4, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handlePayResult.SUCCESS.order_id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0, v2}, Lc8/oKj;->requestTradeUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 195
    .end local v2    # "order_id":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lc8/oKj;->mDoPayZpdData:Lc8/IKj;

    iget-object v2, v4, Lc8/IKj;->order_id:Ljava/lang/String;

    goto :goto_2

    .line 199
    :cond_4
    iget-object v4, p0, Lc8/oKj;->mResultChecker:Lc8/GKj;

    invoke-virtual {v4}, Lc8/GKj;->getResultStatus()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "resultStatus":Ljava/lang/String;
    sget-object v4, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handlePayResult...resultStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v4, p0, Lc8/oKj;->mResultChecker:Lc8/GKj;

    invoke-virtual {v4}, Lc8/GKj;->getMemo()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "memo":Ljava/lang/String;
    sget-object v4, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handlePayResult...memo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v4, p0, Lc8/oKj;->activity:Landroid/app/Activity;

    invoke-static {v4, v3, v1}, Lc8/QKj;->getAliPayErrorMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 205
    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    .line 207
    :cond_5
    iget-object v4, p0, Lc8/oKj;->handler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 208
    iget-object v4, p0, Lc8/oKj;->mDoPayZpdData:Lc8/IKj;

    if-nez v4, :cond_6

    const-string/jumbo v2, ""

    .line 209
    .restart local v2    # "order_id":Ljava/lang/String;
    :goto_3
    iget-object v4, p0, Lc8/oKj;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 210
    sget-object v4, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handlePayResult...sendMessage:ALIPAY_PAY_FAIL,order_id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 208
    .end local v2    # "order_id":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lc8/oKj;->mDoPayZpdData:Lc8/IKj;

    iget-object v2, v4, Lc8/IKj;->order_id:Ljava/lang/String;

    goto :goto_3
.end method

.method private handleWXAppPayResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "errCode"    # Ljava/lang/String;

    .prologue
    .line 217
    sget-object v1, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleWXAppPayResult...errCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string/jumbo v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/oKj;->isPayOk:Z

    .line 220
    iget-object v1, p0, Lc8/oKj;->mDoPayZpdData:Lc8/IKj;

    if-nez v1, :cond_1

    const-string/jumbo v0, ""

    .line 221
    .local v0, "order_id":Ljava/lang/String;
    :goto_0
    sget-object v1, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleWXAppPayResult.SUCCESS.order_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-direct {p0, v0}, Lc8/oKj;->requestTradeUrl(Ljava/lang/String;)V

    .line 231
    .end local v0    # "order_id":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 220
    :cond_1
    iget-object v1, p0, Lc8/oKj;->mDoPayZpdData:Lc8/IKj;

    iget-object v0, v1, Lc8/IKj;->order_id:Ljava/lang/String;

    goto :goto_0

    .line 224
    :cond_2
    const-string/jumbo v1, "\u5fae\u4fe1\u652f\u4ed8\u9519\u8bef\uff0c\u8bf7\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f\u3002"

    invoke-static {v1}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lc8/oKj;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lc8/oKj;->mDoPayZpdData:Lc8/IKj;

    if-nez v1, :cond_3

    const-string/jumbo v0, ""

    .line 227
    .restart local v0    # "order_id":Ljava/lang/String;
    :goto_2
    iget-object v1, p0, Lc8/oKj;->handler:Landroid/os/Handler;

    const/16 v2, 0x44d

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 228
    sget-object v1, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleWXAppPayResult...sendMessage:ALIPAY_PAY_FAIL,order_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 226
    .end local v0    # "order_id":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lc8/oKj;->mDoPayZpdData:Lc8/IKj;

    iget-object v0, v1, Lc8/IKj;->order_id:Ljava/lang/String;

    goto :goto_2
.end method

.method private performAlipay()V
    .locals 3

    .prologue
    .line 150
    sget-object v0, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performAlipay().isAliPaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lc8/oKj;->isAliPaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-boolean v0, p0, Lc8/oKj;->isAliPaying:Z

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/oKj;->isAliPaying:Z

    .line 153
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc8/lKj;

    invoke-direct {v1, p0}, Lc8/lKj;-><init>(Lc8/oKj;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 178
    :cond_0
    return-void
.end method

.method private performPay()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lc8/oKj;->mDoPayZpdData:Lc8/IKj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/oKj;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 100
    const-string/jumbo v0, "103"

    iget-object v1, p0, Lc8/oKj;->mDoPayZpdData:Lc8/IKj;

    iget-object v1, v1, Lc8/IKj;->pay_channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-direct {p0}, Lc8/oKj;->performWXApp()V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-direct {p0}, Lc8/oKj;->performAlipay()V

    goto :goto_0
.end method

.method private performWXApp()V
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lc8/oKj;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "performWXApp()"

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lc8/oKj;->mDoPayZpdData:Lc8/IKj;

    iget-object v0, v0, Lc8/IKj;->channel_response:Ljava/lang/String;

    invoke-direct {p0, v0}, Lc8/oKj;->performWXApp(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private performWXApp(Ljava/lang/String;)V
    .locals 11
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 116
    sget-object v8, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performWXApp().params:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 118
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v2, "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "&"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "tempParams":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v8, v6

    if-ge v0, v8, :cond_1

    .line 121
    aget-object v5, v6, v0

    .line 122
    .local v5, "tempKeyValue":Ljava/lang/String;
    const-string/jumbo v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 123
    .local v1, "keyIndex":I
    if-lez v1, :cond_0

    .line 124
    const/4 v8, 0x0

    invoke-virtual {v5, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "tempKey":Ljava/lang/String;
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 126
    .local v7, "tempValue":Ljava/lang/String;
    invoke-virtual {v2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .end local v4    # "tempKey":Ljava/lang/String;
    .end local v7    # "tempValue":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "keyIndex":I
    .end local v5    # "tempKeyValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_2

    iget-object v8, p0, Lc8/oKj;->mIWXAPI:Lc8/Ojg;

    if-eqz v8, :cond_2

    .line 130
    new-instance v3, Lc8/Mjg;

    invoke-direct {v3}, Lc8/Mjg;-><init>()V

    .line 131
    .local v3, "req":Lc8/Mjg;
    const-string/jumbo v8, "wxa77232e51741dee3"

    iput-object v8, v3, Lc8/Mjg;->appId:Ljava/lang/String;

    .line 132
    const-string/jumbo v8, "partnerid"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v3, Lc8/Mjg;->partnerId:Ljava/lang/String;

    .line 133
    const-string/jumbo v8, "prepayid"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v3, Lc8/Mjg;->prepayId:Ljava/lang/String;

    .line 134
    const-string/jumbo v8, "noncestr"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v3, Lc8/Mjg;->nonceStr:Ljava/lang/String;

    .line 135
    const-string/jumbo v8, "timestamp"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v3, Lc8/Mjg;->timeStamp:Ljava/lang/String;

    .line 136
    const-string/jumbo v8, "package"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v3, Lc8/Mjg;->packageValue:Ljava/lang/String;

    .line 137
    const-string/jumbo v8, "sign"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v3, Lc8/Mjg;->sign:Ljava/lang/String;

    .line 138
    iget-object v8, p0, Lc8/oKj;->mIWXAPI:Lc8/Ojg;

    invoke-interface {v8, v3}, Lc8/Ojg;->sendReq(Lc8/Cig;)Z

    .line 139
    sget-object v8, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performWXApp().paramsMap:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v0    # "i":I
    .end local v2    # "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "req":Lc8/Mjg;
    .end local v6    # "tempParams":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private removeIWXAPI()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lc8/oKj;->mIWXAPI:Lc8/Ojg;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lc8/oKj;->mIWXAPI:Lc8/Ojg;

    invoke-interface {v0}, Lc8/Ojg;->detach()V

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/oKj;->mIWXAPI:Lc8/Ojg;

    .line 456
    :cond_0
    return-void
.end method

.method private requestDoPayUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pay_channel"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 237
    sget-object v1, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestDoPayUrl().pay_channel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0}, Lc8/oKj;->cancelDoPayRequest()V

    .line 239
    iget-object v1, p0, Lc8/oKj;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lc8/Jbp;->show(Landroid/content/Context;)V

    .line 240
    iput-boolean v4, p0, Lc8/oKj;->isGetingData:Z

    .line 241
    const-class v1, Lc8/TIj;

    invoke-static {v1, v4}, Lc8/ddn;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/TIj;

    iput-object v1, p0, Lc8/oKj;->doPayRequest:Lc8/TIj;

    .line 242
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, p1, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 243
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/network/HttpIntent;->setCache(Z)Lcom/youku/network/HttpIntent;

    .line 244
    iget-object v1, p0, Lc8/oKj;->doPayRequest:Lc8/TIj;

    new-instance v2, Lc8/mKj;

    invoke-direct {v2, p0, p2}, Lc8/mKj;-><init>(Lc8/oKj;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lc8/TIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 283
    return-void
.end method

.method private requestTradeUrl(Ljava/lang/String;)V
    .locals 6
    .param p1, "order_id"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 370
    invoke-direct {p0}, Lc8/oKj;->cancelTradeRequest()V

    .line 371
    iget-object v2, p0, Lc8/oKj;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lc8/Jbp;->show(Landroid/content/Context;)V

    .line 372
    iput-boolean v5, p0, Lc8/oKj;->isGetingTradeData:Z

    .line 373
    const-class v2, Lc8/TIj;

    invoke-static {v2, v5}, Lc8/ddn;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/TIj;

    iput-object v2, p0, Lc8/oKj;->doTradeRequest:Lc8/TIj;

    .line 374
    invoke-static {p1}, Lc8/LKj;->getTradeZpdUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "url":Ljava/lang/String;
    sget-object v2, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestTradeUrl().url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, v1, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 377
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/youku/network/HttpIntent;->setCache(Z)Lcom/youku/network/HttpIntent;

    .line 378
    iget-object v2, p0, Lc8/oKj;->doTradeRequest:Lc8/TIj;

    new-instance v3, Lc8/nKj;

    invoke-direct {v3, p0}, Lc8/nKj;-><init>(Lc8/oKj;)V

    invoke-interface {v2, v0, v3}, Lc8/TIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 431
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 459
    sget-object v0, Lc8/oKj;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "clear()"

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    sput v3, Lcom/youku/phone/wxapi/WXPayEntryActivity;->MANAGER_TYPE:I

    .line 461
    invoke-static {}, Lc8/Jbp;->dismiss()V

    .line 462
    invoke-direct {p0}, Lc8/oKj;->cancelTradeRequest()V

    .line 463
    invoke-direct {p0}, Lc8/oKj;->cancelDoPayRequest()V

    .line 464
    iput-boolean v3, p0, Lc8/oKj;->isAliPaying:Z

    .line 465
    iput-object v2, p0, Lc8/oKj;->mResultChecker:Lc8/GKj;

    .line 466
    iput-boolean v3, p0, Lc8/oKj;->isPayOk:Z

    .line 467
    invoke-direct {p0}, Lc8/oKj;->removeIWXAPI()V

    .line 468
    iput-object v2, p0, Lc8/oKj;->activity:Landroid/app/Activity;

    .line 469
    iget-object v0, p0, Lc8/oKj;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lc8/oKj;->handler:Landroid/os/Handler;

    const/16 v1, 0x44c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 471
    iget-object v0, p0, Lc8/oKj;->handler:Landroid/os/Handler;

    const/16 v1, 0x44d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 472
    iget-object v0, p0, Lc8/oKj;->handler:Landroid/os/Handler;

    const/16 v1, 0x44e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 473
    iput-object v2, p0, Lc8/oKj;->handler:Landroid/os/Handler;

    .line 475
    :cond_0
    sput-object v2, Lc8/oKj;->mInstance:Lc8/oKj;

    .line 476
    return-void
.end method

.method public doPay(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "payUrl"    # Ljava/lang/String;
    .param p4, "pay_channel"    # Ljava/lang/String;

    .prologue
    .line 311
    const/4 v0, 0x1

    sput v0, Lcom/youku/phone/wxapi/WXPayEntryActivity;->MANAGER_TYPE:I

    .line 312
    sget-object v0, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doPay:payUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",pay_channel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iput-object p1, p0, Lc8/oKj;->activity:Landroid/app/Activity;

    .line 314
    iput-object p2, p0, Lc8/oKj;->handler:Landroid/os/Handler;

    .line 315
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lc8/oKj;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-static {p3, p4}, Lc8/LKj;->getDoPayZpdUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lc8/oKj;->doPay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public performWXAppPayErrCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "errCode"    # Ljava/lang/String;

    .prologue
    .line 109
    sget-object v0, Lc8/oKj;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performWXAppPayErrCode().errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/oKj;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lc8/oKj;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lc8/oKj;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    :cond_0
    return-void
.end method
