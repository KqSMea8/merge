.class public final Lc8/jKj;
.super Ljava/lang/Object;
.source "PayManager.java"


# static fields
.field public static final ALIPAY_PAY_FAIL:I = 0x44d

.field public static final ALIPAY_PAY_QUERY:I = 0x44f

.field public static final ALIPAY_PAY_QUERY_FAIL:I = 0x44e

.field public static final ALIPAY_PAY_SUCCESS:I = 0x44c

.field public static final CREATE_ORDER_FAIL:I = 0x450

.field public static final CREATE_ORDER_SUCCESS:I = 0x451

.field public static final PAYPRODUCT_SVOD:Ljava/lang/String; = "svod"

.field public static final PAYPRODUCT_TVOD:Ljava/lang/String; = "tvod"

.field public static final PAY_CHANNEL_ALIPAY_WEBVIEW:Ljava/lang/String; = "105"

.field public static final PAY_CHANNEL_WEIXIN_WEBVIEW:Ljava/lang/String; = "107"

.field public static PAY_PRICE:Ljava/lang/String; = null

.field public static PAY_PRODUCT_PERIODS:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "PayManager"

.field public static final WXAPP_PAY_SUCCESS:Ljava/lang/String; = "0"

.field private static mInstance:Lc8/jKj;

.field private static final mInstanceSync:Ljava/lang/Object;

.field public static payMethod:Ljava/lang/String;

.field public static payProduct:Ljava/lang/String;

.field public static vip:Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;

.field private appMonitorPayChanel:Ljava/lang/String;

.field public appid:Ljava/lang/String;

.field private doPayRequest:Lc8/TIj;

.field private doTradeRequest:Lc8/TIj;

.field public extra:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private isAliPaying:Z

.field private isGetingData:Z

.field private isGetingTradeData:Z

.field private isPayOk:Z

.field public isRecharge:Z

.field public isWXAppPayForGame:Z

.field private mDoPayData:Lc8/HKj;

.field private mHandler:Landroid/os/Handler;

.field private mIWXAPI:Lc8/Ojg;

.field private mResultChecker:Lc8/GKj;

.field private vip_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/jKj;->mInstanceSync:Ljava/lang/Object;

    .line 102
    const-string/jumbo v0, ""

    sput-object v0, Lc8/jKj;->payMethod:Ljava/lang/String;

    .line 103
    const-string/jumbo v0, ""

    sput-object v0, Lc8/jKj;->payProduct:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, ""

    sput-object v0, Lc8/jKj;->vip:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, ""

    sput-object v0, Lc8/jKj;->PAY_PRODUCT_PERIODS:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, ""

    sput-object v0, Lc8/jKj;->PAY_PRICE:Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lc8/jKj;->mInstance:Lc8/jKj;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/jKj;->vip_id:Ljava/lang/String;

    .line 114
    iput-boolean v2, p0, Lc8/jKj;->isGetingData:Z

    .line 116
    iput-object v1, p0, Lc8/jKj;->doPayRequest:Lc8/TIj;

    .line 118
    iput-object v1, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    .line 123
    iput-boolean v2, p0, Lc8/jKj;->isWXAppPayForGame:Z

    .line 124
    iput-boolean v2, p0, Lc8/jKj;->isRecharge:Z

    .line 125
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/jKj;->appid:Ljava/lang/String;

    .line 126
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/jKj;->extra:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Lc8/jKj;->activity:Landroid/app/Activity;

    .line 131
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/jKj;->appMonitorPayChanel:Ljava/lang/String;

    .line 132
    new-instance v0, Lc8/eKj;

    invoke-direct {v0, p0}, Lc8/eKj;-><init>(Lc8/jKj;)V

    iput-object v0, p0, Lc8/jKj;->mHandler:Landroid/os/Handler;

    .line 180
    iput-object v1, p0, Lc8/jKj;->handler:Landroid/os/Handler;

    .line 182
    iput-boolean v2, p0, Lc8/jKj;->isGetingTradeData:Z

    .line 184
    iput-object v1, p0, Lc8/jKj;->doTradeRequest:Lc8/TIj;

    .line 185
    iput-object v1, p0, Lc8/jKj;->mResultChecker:Lc8/GKj;

    .line 187
    iput-boolean v2, p0, Lc8/jKj;->isAliPaying:Z

    .line 188
    iput-object v1, p0, Lc8/jKj;->mIWXAPI:Lc8/Ojg;

    .line 189
    iput-boolean v2, p0, Lc8/jKj;->isPayOk:Z

    return-void
.end method

.method static synthetic access$000(Lc8/jKj;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lc8/jKj;

    .prologue
    .line 53
    iget-object v0, p0, Lc8/jKj;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lc8/jKj;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/jKj;

    .prologue
    .line 53
    iget-object v0, p0, Lc8/jKj;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lc8/jKj;)Z
    .locals 1
    .param p0, "x0"    # Lc8/jKj;

    .prologue
    .line 53
    iget-boolean v0, p0, Lc8/jKj;->isPayOk:Z

    return v0
.end method

.method static synthetic access$200(Lc8/jKj;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/jKj;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lc8/jKj;->handlePayResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lc8/jKj;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/jKj;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lc8/jKj;->handleWXAppPayResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lc8/jKj;)Z
    .locals 1
    .param p0, "x0"    # Lc8/jKj;

    .prologue
    .line 53
    iget-boolean v0, p0, Lc8/jKj;->isAliPaying:Z

    return v0
.end method

.method static synthetic access$402(Lc8/jKj;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/jKj;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lc8/jKj;->isAliPaying:Z

    return p1
.end method

.method static synthetic access$500(Lc8/jKj;)Lc8/HKj;
    .locals 1
    .param p0, "x0"    # Lc8/jKj;

    .prologue
    .line 53
    iget-object v0, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    return-object v0
.end method

.method static synthetic access$502(Lc8/jKj;Lc8/HKj;)Lc8/HKj;
    .locals 0
    .param p0, "x0"    # Lc8/jKj;
    .param p1, "x1"    # Lc8/HKj;

    .prologue
    .line 53
    iput-object p1, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    return-object p1
.end method

.method static synthetic access$600(Lc8/jKj;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/jKj;

    .prologue
    .line 53
    iget-object v0, p0, Lc8/jKj;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lc8/jKj;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/jKj;

    .prologue
    .line 53
    iget-object v0, p0, Lc8/jKj;->appMonitorPayChanel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lc8/jKj;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/jKj;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lc8/jKj;->isGetingData:Z

    return p1
.end method

.method static synthetic access$902(Lc8/jKj;Lc8/TIj;)Lc8/TIj;
    .locals 0
    .param p0, "x0"    # Lc8/jKj;
    .param p1, "x1"    # Lc8/TIj;

    .prologue
    .line 53
    iput-object p1, p0, Lc8/jKj;->doPayRequest:Lc8/TIj;

    return-object p1
.end method

.method private cancelDoPayRequest()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 545
    iget-object v0, p0, Lc8/jKj;->doPayRequest:Lc8/TIj;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lc8/jKj;->doPayRequest:Lc8/TIj;

    invoke-interface {v0}, Lc8/TIj;->cancel()V

    .line 547
    iput-object v2, p0, Lc8/jKj;->doPayRequest:Lc8/TIj;

    .line 549
    :cond_0
    iput-object v2, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    .line 550
    iput-boolean v1, p0, Lc8/jKj;->isGetingData:Z

    .line 551
    iput-boolean v1, p0, Lc8/jKj;->isAliPaying:Z

    .line 552
    iget-object v0, p0, Lc8/jKj;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 553
    iget-object v0, p0, Lc8/jKj;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 554
    iget-object v0, p0, Lc8/jKj;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 555
    iget-object v0, p0, Lc8/jKj;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 556
    return-void
.end method

.method private cancelTradeRequest()V
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lc8/jKj;->doTradeRequest:Lc8/TIj;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lc8/jKj;->doTradeRequest:Lc8/TIj;

    invoke-interface {v0}, Lc8/TIj;->cancel()V

    .line 855
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/jKj;->doTradeRequest:Lc8/TIj;

    .line 857
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/jKj;->isGetingTradeData:Z

    .line 858
    return-void
.end method

.method private checkOrderStateByMtop(Ljava/lang/String;)V
    .locals 9
    .param p1, "trade_id"    # Ljava/lang/String;

    .prologue
    .line 789
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkOrderStateByMtop:trade_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-direct {p0}, Lc8/jKj;->cancelTradeRequest()V

    .line 791
    iget-object v0, p0, Lc8/jKj;->appMonitorPayChanel:Ljava/lang/String;

    const-string/jumbo v1, "init"

    const-string/jumbo v2, "payResult"

    const-string/jumbo v3, ""

    const-string/jumbo v5, ""

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-string/jumbo v0, "PayManager"

    const-string/jumbo v1, "checkOrderStateByMtop MtopAlidmeXtopTradeOrderDetailRequest"

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    new-instance v6, Lcom/youku/paysdk/trade/order/detail/MtopAlidmeXtopTradeOrderDetailRequest;

    invoke-direct {v6}, Lcom/youku/paysdk/trade/order/detail/MtopAlidmeXtopTradeOrderDetailRequest;-><init>()V

    .line 795
    .local v6, "model":Lcom/youku/paysdk/trade/order/detail/MtopAlidmeXtopTradeOrderDetailRequest;
    new-instance v8, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailRequestReq;

    invoke-direct {v8}, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailRequestReq;-><init>()V

    .line 796
    .local v8, "tradeOrderDetailRequestReq":Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailRequestReq;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 797
    .local v7, "orderIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    invoke-virtual {v8, v7}, Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailRequestReq;->setOrderIds(Ljava/util/List;)V

    .line 799
    invoke-virtual {v6, v8}, Lcom/youku/paysdk/trade/order/detail/MtopAlidmeXtopTradeOrderDetailRequest;->setReq(Lcom/youku/paysdk/trade/order/detail/TradeOrderDetailRequestReq;)V

    .line 800
    invoke-static {}, Lc8/AGo;->getInstance()Lc8/AGo;

    move-result-object v0

    const-class v1, Lcom/youku/paysdk/trade/order/detail/TradeOrderResponse;

    new-instance v2, Lc8/iKj;

    invoke-direct {v2, p0, p1}, Lc8/iKj;-><init>(Lc8/jKj;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v1, v2}, Lc8/AGo;->request(Lcom/youku/vip/lib/http/model/VipInternalBaseRequestModel;Ljava/lang/Class;Lc8/mGo;)Lc8/BGo;

    .line 847
    return-void
.end method

.method private creatOrderByMtop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;)V
    .locals 7
    .param p1, "order_type"    # Ljava/lang/String;
    .param p2, "app_productid"    # Ljava/lang/String;
    .param p3, "pay_channel"    # Ljava/lang/String;
    .param p4, "spm_id"    # Ljava/lang/String;
    .param p5, "url_spm_id"    # Ljava/lang/String;
    .param p6, "pre_r_object_id"    # Ljava/lang/String;
    .param p7, "orderCreateRequest"    # Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;

    .prologue
    .line 481
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "creatOrderByMtop pay_channel ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | order_type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | app_productid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | orderCreateRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p7}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Lc8/jKj;->appMonitorPayChanel:Ljava/lang/String;

    const-string/jumbo v1, "success"

    const-string/jumbo v2, "slectPay"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "vip"

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lc8/jKj;->appMonitorPayChanel:Ljava/lang/String;

    const-string/jumbo v1, "init"

    const-string/jumbo v2, "creatOrder"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "vip"

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-direct {p0}, Lc8/jKj;->cancelDoPayRequest()V

    .line 485
    iget-object v0, p0, Lc8/jKj;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lc8/Iin;->isActivityContextValid(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lc8/jKj;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lc8/Jbp;->show(Landroid/content/Context;)V

    .line 490
    :cond_0
    const-string/jumbo v0, "PayManager"

    const-string/jumbo v1, "creatOrderByMtop MtopAlidmeXtopTradeOrderCreateRequest"

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v6, Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;

    invoke-direct {v6}, Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;-><init>()V

    .line 492
    .local v6, "model":Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;
    invoke-virtual {v6, p7}, Lcom/youku/paysdk/trade/order/create/MtopAlidmeXtopTradeOrderCreateRequest;->setReq(Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;)V

    .line 493
    invoke-static {}, Lc8/AGo;->getInstance()Lc8/AGo;

    move-result-object v0

    const-class v1, Lcom/youku/paysdk/trade/order/create/OrderCreateResponse;

    new-instance v2, Lc8/hKj;

    invoke-direct {v2, p0, p7, p1}, Lc8/hKj;-><init>(Lc8/jKj;Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v1, v2}, Lc8/AGo;->request(Lcom/youku/vip/lib/http/model/VipInternalBaseRequestModel;Ljava/lang/Class;Lc8/mGo;)Lc8/BGo;

    .line 539
    return-void
.end method

.method private createIWXAPI()V
    .locals 2

    .prologue
    .line 861
    iget-object v0, p0, Lc8/jKj;->mIWXAPI:Lc8/Ojg;

    if-nez v0, :cond_0

    .line 862
    iget-object v0, p0, Lc8/jKj;->activity:Landroid/app/Activity;

    const-string/jumbo v1, "wxa77232e51741dee3"

    invoke-static {v0, v1}, Lc8/Sjg;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lc8/Ojg;

    move-result-object v0

    iput-object v0, p0, Lc8/jKj;->mIWXAPI:Lc8/Ojg;

    .line 863
    iget-object v0, p0, Lc8/jKj;->mIWXAPI:Lc8/Ojg;

    const-string/jumbo v1, "wxa77232e51741dee3"

    invoke-interface {v0, v1}, Lc8/Ojg;->registerApp(Ljava/lang/String;)Z

    .line 865
    :cond_0
    return-void
.end method

.method private doPay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pay_channel"    # Ljava/lang/String;

    .prologue
    .line 740
    invoke-static {}, Lc8/QKj;->checkCallEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc8/jKj;->isGetingData:Z

    if-nez v0, :cond_0

    .line 741
    iput-object p2, p0, Lc8/jKj;->appMonitorPayChanel:Ljava/lang/String;

    .line 742
    invoke-static {}, Lc8/Iin;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 743
    sget v0, Lcom/youku/phone/R$string;->tips_no_network:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    iget-object v0, p0, Lc8/jKj;->appMonitorPayChanel:Ljava/lang/String;

    const-string/jumbo v1, "init"

    const-string/jumbo v2, "slectPay"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "dianbo"

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string/jumbo v0, "103"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 748
    invoke-direct {p0}, Lc8/jKj;->createIWXAPI()V

    .line 749
    iget-object v0, p0, Lc8/jKj;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lc8/jKj;->mIWXAPI:Lc8/Ojg;

    invoke-static {v0, v1}, Lc8/QKj;->checkWXAppPayValid(Landroid/app/Activity;Lc8/Ojg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    const-string/jumbo v0, "wx"

    sput-object v0, Lc8/jKj;->payMethod:Ljava/lang/String;

    .line 751
    const-class v0, Lc8/vdn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vdn;

    invoke-interface {v0}, Lc8/vdn;->isVIP()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "y"

    :goto_1
    sput-object v0, Lc8/jKj;->vip:Ljava/lang/String;

    .line 752
    invoke-direct {p0, p1, p2}, Lc8/jKj;->requestDoPayUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 751
    :cond_2
    const-string/jumbo v0, "n"

    goto :goto_1

    .line 755
    :cond_3
    const-string/jumbo v0, "alipaynew"

    sput-object v0, Lc8/jKj;->payMethod:Ljava/lang/String;

    .line 756
    const-class v0, Lc8/vdn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vdn;

    invoke-interface {v0}, Lc8/vdn;->isVIP()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "y"

    :goto_2
    sput-object v0, Lc8/jKj;->vip:Ljava/lang/String;

    .line 757
    invoke-direct {p0, p1, p2}, Lc8/jKj;->requestDoPayUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 756
    :cond_4
    const-string/jumbo v0, "n"

    goto :goto_2
.end method

.method private doPayByMtop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;)V
    .locals 6
    .param p1, "order_type"    # Ljava/lang/String;
    .param p2, "app_productid"    # Ljava/lang/String;
    .param p3, "pay_channel"    # Ljava/lang/String;
    .param p4, "spm_id"    # Ljava/lang/String;
    .param p5, "url_spm_id"    # Ljava/lang/String;
    .param p6, "pre_r_object_id"    # Ljava/lang/String;
    .param p7, "orderCreateRequest"    # Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;

    .prologue
    const/4 v3, 0x0

    .line 690
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doPayByMtop order_type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | app_productid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | pay_channel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | spm_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | url_spm_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | pre_r_object_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | orderCreateRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 691
    invoke-static {p7}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 690
    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-static {}, Lc8/QKj;->checkCallEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lc8/jKj;->isGetingData:Z

    if-nez v0, :cond_2

    .line 693
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    .line 694
    if-eqz p7, :cond_2

    invoke-virtual {p7}, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->getProducts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p7}, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->getProducts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 695
    invoke-virtual {p7}, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->getProducts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/paysdk/trade/order/create/Product;

    invoke-virtual {v0}, Lcom/youku/paysdk/trade/order/create/Product;->getCycleBuyType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v1, "1"

    invoke-virtual {p7}, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->getProducts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/paysdk/trade/order/create/Product;

    invoke-virtual {v0}, Lcom/youku/paysdk/trade/order/create/Product;->getCycleBuyType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 697
    const-string/jumbo v0, "100"

    invoke-virtual {p7}, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->getPayChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "106"

    invoke-virtual {p7}, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->getPayChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 698
    :cond_0
    const-string/jumbo v0, "105"

    iput-object v0, p0, Lc8/jKj;->appMonitorPayChanel:Ljava/lang/String;

    .line 708
    :cond_1
    :goto_0
    invoke-static {}, Lc8/Iin;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_5

    .line 709
    sget v0, Lcom/youku/phone/R$string;->tips_no_network:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    .line 710
    iget-object v0, p0, Lc8/jKj;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 731
    :cond_2
    :goto_1
    return-void

    .line 699
    :cond_3
    const-string/jumbo v0, "103"

    invoke-virtual {p7}, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->getPayChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    const-string/jumbo v0, "107"

    iput-object v0, p0, Lc8/jKj;->appMonitorPayChanel:Ljava/lang/String;

    goto :goto_0

    .line 703
    :cond_4
    invoke-virtual {p7}, Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;->getPayChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/jKj;->appMonitorPayChanel:Ljava/lang/String;

    goto :goto_0

    .line 714
    :cond_5
    iget-object v0, p0, Lc8/jKj;->appMonitorPayChanel:Ljava/lang/String;

    const-string/jumbo v1, "init"

    const-string/jumbo v2, "slectPay"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string/jumbo v0, "103"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 716
    invoke-direct {p0}, Lc8/jKj;->createIWXAPI()V

    .line 717
    iget-object v0, p0, Lc8/jKj;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lc8/jKj;->mIWXAPI:Lc8/Ojg;

    invoke-static {v0, v1}, Lc8/QKj;->checkWXAppPayValid(Landroid/app/Activity;Lc8/Ojg;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 718
    const-string/jumbo v0, "wx"

    sput-object v0, Lc8/jKj;->payMethod:Ljava/lang/String;

    .line 719
    const-class v0, Lc8/vdn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vdn;

    invoke-interface {v0}, Lc8/vdn;->isVIP()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "y"

    :goto_2
    sput-object v0, Lc8/jKj;->vip:Ljava/lang/String;

    .line 720
    invoke-direct/range {p0 .. p7}, Lc8/jKj;->creatOrderByMtop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;)V

    goto :goto_1

    .line 719
    :cond_6
    const-string/jumbo v0, "n"

    goto :goto_2

    .line 722
    :cond_7
    const-string/jumbo v0, "PayManager"

    const-string/jumbo v1, "AlipayUtils.checkWXAppPayValid(activity, mIWXAPI) == false"

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v0, p0, Lc8/jKj;->appMonitorPayChanel:Ljava/lang/String;

    const-string/jumbo v1, "failed"

    const-string/jumbo v2, "slectPay"

    const-string/jumbo v3, "104"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "vip"

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 726
    :cond_8
    const-string/jumbo v0, "alipaynew"

    sput-object v0, Lc8/jKj;->payMethod:Ljava/lang/String;

    .line 727
    const-class v0, Lc8/vdn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vdn;

    invoke-interface {v0}, Lc8/vdn;->isVIP()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "y"

    :goto_3
    sput-object v0, Lc8/jKj;->vip:Ljava/lang/String;

    .line 728
    invoke-direct/range {p0 .. p7}, Lc8/jKj;->creatOrderByMtop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;)V

    goto/16 :goto_1

    .line 727
    :cond_9
    const-string/jumbo v0, "n"

    goto :goto_3
.end method

.method public static getInstance()Lc8/jKj;
    .locals 2

    .prologue
    .line 192
    sget-object v1, Lc8/jKj;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    sget-object v0, Lc8/jKj;->mInstance:Lc8/jKj;

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Lc8/jKj;->mInstance:Lc8/jKj;

    monitor-exit v1

    .line 198
    :goto_0
    return-object v0

    .line 196
    :cond_0
    new-instance v0, Lc8/jKj;

    invoke-direct {v0}, Lc8/jKj;-><init>()V

    sput-object v0, Lc8/jKj;->mInstance:Lc8/jKj;

    .line 197
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    sget-object v0, Lc8/jKj;->mInstance:Lc8/jKj;

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handlePayResult(Ljava/lang/String;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x44d

    .line 347
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handlePayResult...result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lc8/jKj;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    if-nez v0, :cond_1

    const-string/jumbo v4, ""

    .line 351
    .local v4, "trade_id":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lc8/jKj;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v8, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 352
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handlePayResult...sendMessage:ALIPAY_PAY_FAIL,trade_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lc8/jKj;->appMonitorPayChanel:Ljava/lang/String;

    const-string/jumbo v1, "failed"

    const-string/jumbo v2, "sdkPay"

    const-string/jumbo v3, "6012"

    const-string/jumbo v5, ""

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .end local v4    # "trade_id":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    invoke-virtual {v0}, Lc8/HKj;->getTrade_id()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 356
    :cond_2
    new-instance v0, Lc8/GKj;

    invoke-direct {v0, p1}, Lc8/GKj;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/jKj;->mResultChecker:Lc8/GKj;

    .line 357
    iget-object v0, p0, Lc8/jKj;->mResultChecker:Lc8/GKj;

    invoke-virtual {v0}, Lc8/GKj;->isPayOk()Z

    move-result v0

    iput-boolean v0, p0, Lc8/jKj;->isPayOk:Z

    .line 358
    iget-boolean v0, p0, Lc8/jKj;->isPayOk:Z

    if-eqz v0, :cond_4

    .line 359
    iget-object v0, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    if-nez v0, :cond_3

    const-string/jumbo v4, ""

    .line 360
    .restart local v4    # "trade_id":Ljava/lang/String;
    :goto_2
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handlePayResult.SUCCESS.payProduct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/jKj;->payProduct:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",trade_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lc8/jKj;->appMonitorPayChanel:Ljava/lang/String;

    const-string/jumbo v1, "success"

    const-string/jumbo v2, "sdkPay"

    const-string/jumbo v3, ""

    const-string/jumbo v5, ""

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-direct {p0, v4}, Lc8/jKj;->checkOrderStateByMtop(Ljava/lang/String;)V

    goto :goto_1

    .line 359
    .end local v4    # "trade_id":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    invoke-virtual {v0}, Lc8/HKj;->getTrade_id()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 364
    :cond_4
    iget-object v0, p0, Lc8/jKj;->mResultChecker:Lc8/GKj;

    invoke-virtual {v0}, Lc8/GKj;->getResultStatus()Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, "resultStatus":Ljava/lang/String;
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handlePayResult...resultStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    if-nez v0, :cond_6

    const-string/jumbo v4, ""

    .line 367
    .restart local v4    # "trade_id":Ljava/lang/String;
    :goto_3
    iget-object v0, p0, Lc8/jKj;->appMonitorPayChanel:Ljava/lang/String;

    const-string/jumbo v1, "failed"

    const-string/jumbo v2, "sdkPay"

    const-string/jumbo v5, ""

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lc8/jKj;->appMonitorPayChanel:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v4}, Lc8/jKj;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lc8/jKj;->mResultChecker:Lc8/GKj;

    invoke-virtual {v0}, Lc8/GKj;->getMemo()Ljava/lang/String;

    move-result-object v7

    .line 370
    .local v7, "memo":Ljava/lang/String;
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handlePayResult...memo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lc8/jKj;->activity:Landroid/app/Activity;

    invoke-static {v0, v3, v7}, Lc8/QKj;->getAliPayErrorMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 372
    .local v6, "errorMsg":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 373
    invoke-static {v6}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    .line 375
    :cond_5
    iget-object v0, p0, Lc8/jKj;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lc8/jKj;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v8, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 377
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handlePayResult...sendMessage:ALIPAY_PAY_FAIL,trade_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 366
    .end local v4    # "trade_id":Ljava/lang/String;
    .end local v6    # "errorMsg":Ljava/lang/String;
    .end local v7    # "memo":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    invoke-virtual {v0}, Lc8/HKj;->getTrade_id()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method private handleWXAppPayResult(Ljava/lang/String;)V
    .locals 6
    .param p1, "errCode"    # Ljava/lang/String;

    .prologue
    .line 389
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleWXAppPayResult...errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string/jumbo v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/jKj;->isPayOk:Z

    .line 392
    iget-object v0, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    if-nez v0, :cond_1

    const-string/jumbo v4, ""

    .line 393
    .local v4, "trade_id":Ljava/lang/String;
    :goto_0
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleWXAppPayResult.SUCCESS.payProduct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/jKj;->payProduct:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",trade_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lc8/jKj;->appMonitorPayChanel:Ljava/lang/String;

    const-string/jumbo v1, "success"

    const-string/jumbo v2, "sdkPay"

    const-string/jumbo v5, ""

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-direct {p0, v4}, Lc8/jKj;->checkOrderStateByMtop(Ljava/lang/String;)V

    .line 406
    :cond_0
    :goto_1
    return-void

    .line 392
    .end local v4    # "trade_id":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    invoke-virtual {v0}, Lc8/HKj;->getTrade_id()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 397
    :cond_2
    const-string/jumbo v0, "\u5fae\u4fe1\u652f\u4ed8\u9519\u8bef\uff0c\u8bf7\u4f7f\u7528\u5176\u4ed6\u652f\u4ed8\u65b9\u5f0f\u3002"

    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    if-nez v0, :cond_3

    const-string/jumbo v4, ""

    .line 399
    .restart local v4    # "trade_id":Ljava/lang/String;
    :goto_2
    iget-object v0, p0, Lc8/jKj;->appMonitorPayChanel:Ljava/lang/String;

    const-string/jumbo v1, "failed"

    const-string/jumbo v2, "sdkPay"

    const-string/jumbo v5, ""

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lc8/jKj;->appMonitorPayChanel:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v4}, Lc8/jKj;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lc8/jKj;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lc8/jKj;->handler:Landroid/os/Handler;

    const/16 v1, 0x44d

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 403
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleWXAppPayResult...sendMessage:ALIPAY_PAY_FAIL,trade_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 398
    .end local v4    # "trade_id":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    invoke-virtual {v0}, Lc8/HKj;->getTrade_id()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method private performAlipay()V
    .locals 3

    .prologue
    .line 313
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performAlipay().isAliPaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lc8/jKj;->isAliPaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-boolean v0, p0, Lc8/jKj;->isAliPaying:Z

    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/jKj;->isAliPaying:Z

    .line 316
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc8/fKj;

    invoke-direct {v1, p0}, Lc8/fKj;-><init>(Lc8/jKj;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 339
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 341
    :cond_0
    return-void
.end method

.method private performOrderTypeSeries(Ljava/lang/String;)V
    .locals 8
    .param p1, "payChannel"    # Ljava/lang/String;

    .prologue
    .line 225
    const-string/jumbo v5, "PayManager"

    const-string/jumbo v6, "performOrderTypeSeries()"

    invoke-static {v5, v6}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v5, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    if-nez v5, :cond_2

    const-string/jumbo v3, ""

    .line 227
    .local v3, "trade_id":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lc8/jKj;->handler:Landroid/os/Handler;

    const/16 v6, 0x44f

    invoke-virtual {v5, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 228
    if-eqz p1, :cond_4

    const-string/jumbo v5, "100"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "106"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 229
    :cond_0
    iget-object v5, p0, Lc8/jKj;->activity:Landroid/app/Activity;

    invoke-static {v5}, Lc8/QKj;->isAliPayInstalled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    invoke-virtual {v5}, Lc8/HKj;->getPayUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 231
    :try_start_0
    iget-object v5, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    invoke-virtual {v5}, Lc8/HKj;->getPayUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 232
    .local v4, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 233
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lc8/jKj;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_1
    return-void

    .line 226
    .end local v3    # "trade_id":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    invoke-virtual {v5}, Lc8/HKj;->getTrade_id()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 234
    .restart local v3    # "trade_id":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "PayManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "error e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 238
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    const-class v5, Lc8/Xgn;

    invoke-static {v5}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/Xgn;

    iget-object v6, p0, Lc8/jKj;->activity:Landroid/app/Activity;

    iget-object v7, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    invoke-virtual {v7}, Lc8/HKj;->getChannel_params()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lc8/Xgn;->goWebView(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 240
    :cond_4
    if-eqz p1, :cond_1

    const-string/jumbo v5, "103"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 241
    new-instance v2, Lc8/cjg;

    invoke-direct {v2}, Lc8/cjg;-><init>()V

    .line 242
    .local v2, "req":Lc8/cjg;
    iget-object v5, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    invoke-virtual {v5}, Lc8/HKj;->getChannel_params()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lc8/cjg;->url:Ljava/lang/String;

    .line 243
    iget-object v5, p0, Lc8/jKj;->mIWXAPI:Lc8/Ojg;

    invoke-interface {v5, v2}, Lc8/Ojg;->sendReq(Lc8/Cig;)Z

    goto :goto_1
.end method

.method private performWXApp(Ljava/lang/String;)V
    .locals 11
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 281
    const-string/jumbo v8, "PayManager"

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

    .line 282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 283
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 284
    .local v2, "paramsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "&"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 285
    .local v6, "tempParams":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v8, v6

    if-ge v0, v8, :cond_1

    .line 286
    aget-object v5, v6, v0

    .line 287
    .local v5, "tempKeyValue":Ljava/lang/String;
    const-string/jumbo v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 288
    .local v1, "keyIndex":I
    if-lez v1, :cond_0

    .line 289
    const/4 v8, 0x0

    invoke-virtual {v5, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "tempKey":Ljava/lang/String;
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 291
    .local v7, "tempValue":Ljava/lang/String;
    invoke-virtual {v2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .end local v4    # "tempKey":Ljava/lang/String;
    .end local v7    # "tempValue":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    .end local v1    # "keyIndex":I
    .end local v5    # "tempKeyValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_2

    iget-object v8, p0, Lc8/jKj;->mIWXAPI:Lc8/Ojg;

    if-eqz v8, :cond_2

    .line 295
    new-instance v3, Lc8/Mjg;

    invoke-direct {v3}, Lc8/Mjg;-><init>()V

    .line 296
    .local v3, "req":Lc8/Mjg;
    const-string/jumbo v8, "wxa77232e51741dee3"

    iput-object v8, v3, Lc8/Mjg;->appId:Ljava/lang/String;

    .line 297
    const-string/jumbo v8, "partnerid"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v3, Lc8/Mjg;->partnerId:Ljava/lang/String;

    .line 298
    const-string/jumbo v8, "prepayid"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v3, Lc8/Mjg;->prepayId:Ljava/lang/String;

    .line 299
    const-string/jumbo v8, "noncestr"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v3, Lc8/Mjg;->nonceStr:Ljava/lang/String;

    .line 300
    const-string/jumbo v8, "timestamp"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v3, Lc8/Mjg;->timeStamp:Ljava/lang/String;

    .line 301
    const-string/jumbo v8, "package"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v3, Lc8/Mjg;->packageValue:Ljava/lang/String;

    .line 302
    const-string/jumbo v8, "sign"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v3, Lc8/Mjg;->sign:Ljava/lang/String;

    .line 303
    iget-object v8, p0, Lc8/jKj;->mIWXAPI:Lc8/Ojg;

    invoke-interface {v8, v3}, Lc8/Ojg;->sendReq(Lc8/Cig;)Z

    .line 304
    const-string/jumbo v8, "PayManager"

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

    .line 307
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
    .line 868
    iget-object v0, p0, Lc8/jKj;->mIWXAPI:Lc8/Ojg;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lc8/jKj;->mIWXAPI:Lc8/Ojg;

    invoke-interface {v0}, Lc8/Ojg;->detach()V

    .line 870
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/jKj;->mIWXAPI:Lc8/Ojg;

    .line 872
    :cond_0
    return-void
.end method

.method private requestDoPayUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pay_channel"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 413
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestDoPayUrl().pay_channel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lc8/jKj;->appMonitorPayChanel:Ljava/lang/String;

    const-string/jumbo v1, "success"

    const-string/jumbo v2, "slectPay"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "dianbo"

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lc8/jKj;->appMonitorPayChanel:Ljava/lang/String;

    const-string/jumbo v1, "init"

    const-string/jumbo v2, "creatOrder"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "dianbo"

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-direct {p0}, Lc8/jKj;->cancelDoPayRequest()V

    .line 417
    iget-object v0, p0, Lc8/jKj;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lc8/Iin;->isActivityContextValid(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lc8/jKj;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lc8/Jbp;->show(Landroid/content/Context;)V

    .line 420
    :cond_0
    iput-boolean v7, p0, Lc8/jKj;->isGetingData:Z

    .line 421
    const-class v0, Lc8/TIj;

    invoke-static {v0, v7}, Lc8/ddn;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/TIj;

    iput-object v0, p0, Lc8/jKj;->doPayRequest:Lc8/TIj;

    .line 422
    new-instance v6, Lcom/youku/network/HttpIntent;

    invoke-direct {v6, p1, v7}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 423
    .local v6, "httpIntent":Lcom/youku/network/HttpIntent;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/youku/network/HttpIntent;->setCache(Z)Lcom/youku/network/HttpIntent;

    .line 424
    iget-object v0, p0, Lc8/jKj;->doPayRequest:Lc8/TIj;

    new-instance v1, Lc8/gKj;

    invoke-direct {v1, p0, p2}, Lc8/gKj;-><init>(Lc8/jKj;Ljava/lang/String;)V

    invoke-interface {v0, v6, v1}, Lc8/TIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 468
    return-void
.end method

.method private send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "payChannel"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "orderId"    # Ljava/lang/String;

    .prologue
    .line 905
    const-string/jumbo v4, "1"

    .line 906
    .local v4, "dataId":Ljava/lang/String;
    const-string/jumbo v9, "VIPDynamicPushService"

    .line 908
    .local v9, "serviceId":Ljava/lang/String;
    new-instance v12, Lcom/youku/paysdk/entity/VipAccsDataEntity;

    invoke-direct {v12}, Lcom/youku/paysdk/entity/VipAccsDataEntity;-><init>()V

    .line 909
    .local v12, "vipAccsDataEntity":Lcom/youku/paysdk/entity/VipAccsDataEntity;
    const-string/jumbo v13, "pay"

    invoke-virtual {v12, v13}, Lcom/youku/paysdk/entity/VipAccsDataEntity;->setBizType(Ljava/lang/String;)V

    .line 910
    const-string/jumbo v13, "sdkPayError"

    invoke-virtual {v12, v13}, Lcom/youku/paysdk/entity/VipAccsDataEntity;->setDataType(Ljava/lang/String;)V

    .line 911
    new-instance v6, Lcom/youku/paysdk/entity/PaySDKErrorToAccsEntity;

    invoke-direct {v6}, Lcom/youku/paysdk/entity/PaySDKErrorToAccsEntity;-><init>()V

    .line 912
    .local v6, "errordata":Lcom/youku/paysdk/entity/PaySDKErrorToAccsEntity;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/youku/paysdk/entity/PaySDKErrorToAccsEntity;->setPayChannel(Ljava/lang/String;)V

    .line 913
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/youku/paysdk/entity/PaySDKErrorToAccsEntity;->setErrorCode(Ljava/lang/String;)V

    .line 914
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/youku/paysdk/entity/PaySDKErrorToAccsEntity;->setOrderId(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v12, v6}, Lcom/youku/paysdk/entity/VipAccsDataEntity;->setData(Lcom/youku/paysdk/entity/PaySDKErrorToAccsEntity;)V

    .line 917
    invoke-static {v12}, Lcom/alibaba/fastjson/JSONObject;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 918
    .local v2, "content":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 919
    .local v3, "data":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 920
    .local v10, "start":J
    const-string/jumbo v13, "PayManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sendData "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :try_start_0
    new-instance v7, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v13, 0x0

    invoke-direct {v7, v13, v9, v3, v4}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 923
    .local v7, "req":Lcom/taobao/accs/ACCSManager$AccsRequest;
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Lcom/taobao/accs/ACCSManager$AccsRequest;->setIsUnitBusiness(Z)V

    .line 924
    const-string/jumbo v13, "youku"

    invoke-static {v13}, Lcom/taobao/accs/ACCSClient;->getAccsClient(Ljava/lang/String;)Lcom/taobao/accs/ACCSClient;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/taobao/accs/ACCSClient;->sendData(Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v8

    .line 925
    .local v8, "respo":Ljava/lang/String;
    const-string/jumbo v13, "PayManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sendData respo = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/taobao/accs/AccsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    .end local v7    # "req":Lcom/taobao/accs/ACCSManager$AccsRequest;
    .end local v8    # "respo":Ljava/lang/String;
    :goto_0
    const-string/jumbo v13, "PayManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sendData time"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v10

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    return-void

    .line 926
    :catch_0
    move-exception v5

    .line 927
    .local v5, "e":Lcom/taobao/accs/AccsException;
    invoke-virtual {v5}, Lcom/taobao/accs/AccsException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 875
    const-string/jumbo v0, "PayManager"

    const-string/jumbo v1, "clear()"

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    sput v2, Lcom/youku/phone/wxapi/WXPayEntryActivity;->MANAGER_TYPE:I

    .line 877
    invoke-static {}, Lc8/Jbp;->dismiss()V

    .line 878
    const-string/jumbo v0, ""

    sput-object v0, Lc8/jKj;->payMethod:Ljava/lang/String;

    .line 879
    const-string/jumbo v0, ""

    sput-object v0, Lc8/jKj;->payProduct:Ljava/lang/String;

    .line 880
    const-string/jumbo v0, ""

    sput-object v0, Lc8/jKj;->PAY_PRODUCT_PERIODS:Ljava/lang/String;

    .line 881
    const-string/jumbo v0, ""

    sput-object v0, Lc8/jKj;->PAY_PRICE:Ljava/lang/String;

    .line 882
    const-string/jumbo v0, ""

    sput-object v0, Lc8/jKj;->vip:Ljava/lang/String;

    .line 883
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/jKj;->vip_id:Ljava/lang/String;

    .line 884
    iput-boolean v2, p0, Lc8/jKj;->isWXAppPayForGame:Z

    .line 885
    iput-boolean v2, p0, Lc8/jKj;->isRecharge:Z

    .line 886
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/jKj;->appid:Ljava/lang/String;

    .line 887
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/jKj;->extra:Ljava/lang/String;

    .line 888
    invoke-direct {p0}, Lc8/jKj;->cancelTradeRequest()V

    .line 889
    invoke-direct {p0}, Lc8/jKj;->cancelDoPayRequest()V

    .line 890
    iput-boolean v2, p0, Lc8/jKj;->isAliPaying:Z

    .line 891
    iput-object v3, p0, Lc8/jKj;->mResultChecker:Lc8/GKj;

    .line 892
    iput-boolean v2, p0, Lc8/jKj;->isPayOk:Z

    .line 893
    invoke-direct {p0}, Lc8/jKj;->removeIWXAPI()V

    .line 894
    iput-object v3, p0, Lc8/jKj;->activity:Landroid/app/Activity;

    .line 895
    iget-object v0, p0, Lc8/jKj;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lc8/jKj;->handler:Landroid/os/Handler;

    const/16 v1, 0x44c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 897
    iget-object v0, p0, Lc8/jKj;->handler:Landroid/os/Handler;

    const/16 v1, 0x44d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 898
    iget-object v0, p0, Lc8/jKj;->handler:Landroid/os/Handler;

    const/16 v1, 0x44e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 899
    iput-object v3, p0, Lc8/jKj;->handler:Landroid/os/Handler;

    .line 901
    :cond_0
    sput-object v3, Lc8/jKj;->mInstance:Lc8/jKj;

    .line 902
    return-void
.end method

.method public doPay(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "vip_id"    # Ljava/lang/String;
    .param p4, "periods"    # I
    .param p5, "salePrice"    # Ljava/lang/String;
    .param p6, "pay_channel"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 624
    sput v1, Lcom/youku/phone/wxapi/WXPayEntryActivity;->MANAGER_TYPE:I

    .line 625
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/jKj;->PAY_PRODUCT_PERIODS:Ljava/lang/String;

    .line 626
    invoke-static {p5}, Lc8/QKj;->getPriceNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/jKj;->PAY_PRICE:Ljava/lang/String;

    .line 627
    iput-boolean v1, p0, Lc8/jKj;->isWXAppPayForGame:Z

    .line 628
    const-string/jumbo v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lc8/jKj;->doPay(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 629
    return-void
.end method

.method public doPay(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "showid"    # Ljava/lang/String;
    .param p4, "pay_channel"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 580
    const-string/jumbo v0, "YouKuPaySDK"

    const-string/jumbo v1, "KuaijieGoPay"

    invoke-static {v0, v1}, Lc8/LRo;->appMonitorCounterCommit(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    sput v3, Lcom/youku/phone/wxapi/WXPayEntryActivity;->MANAGER_TYPE:I

    .line 582
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doPay:showid="

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

    .line 583
    iput-object p1, p0, Lc8/jKj;->activity:Landroid/app/Activity;

    .line 584
    iput-object p2, p0, Lc8/jKj;->handler:Landroid/os/Handler;

    .line 585
    iput-boolean v3, p0, Lc8/jKj;->isWXAppPayForGame:Z

    .line 586
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lc8/jKj;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 592
    :goto_0
    return-void

    .line 589
    :cond_0
    const-string/jumbo v0, "tvod"

    sput-object v0, Lc8/jKj;->payProduct:Ljava/lang/String;

    .line 590
    invoke-static {p3, p4}, Lc8/LKj;->getDoPayUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lc8/jKj;->doPay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doPay(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "order_type"    # Ljava/lang/String;
    .param p4, "vip_id"    # Ljava/lang/String;
    .param p5, "periods"    # I
    .param p6, "pay_channel"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 640
    sput v3, Lcom/youku/phone/wxapi/WXPayEntryActivity;->MANAGER_TYPE:I

    .line 641
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doPay:order_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",vip_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",periods:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",pay_channel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iput-object p1, p0, Lc8/jKj;->activity:Landroid/app/Activity;

    .line 644
    iput-object p2, p0, Lc8/jKj;->handler:Landroid/os/Handler;

    .line 645
    iput-boolean v3, p0, Lc8/jKj;->isWXAppPayForGame:Z

    .line 646
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-gtz p5, :cond_1

    .line 647
    :cond_0
    iget-object v0, p0, Lc8/jKj;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 653
    :goto_0
    return-void

    .line 649
    :cond_1
    const-string/jumbo v0, "svod"

    sput-object v0, Lc8/jKj;->payProduct:Ljava/lang/String;

    .line 650
    iput-object p4, p0, Lc8/jKj;->vip_id:Ljava/lang/String;

    .line 651
    invoke-static {p3, p4, p5, p6}, Lc8/LKj;->getVipDoPayUrl(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p6}, Lc8/jKj;->doPay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doPay(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "order_type"    # Ljava/lang/String;
    .param p4, "vip_id"    # Ljava/lang/String;
    .param p5, "periods"    # I
    .param p6, "salePrice"    # Ljava/lang/String;
    .param p7, "pay_channel"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 606
    sput v1, Lcom/youku/phone/wxapi/WXPayEntryActivity;->MANAGER_TYPE:I

    .line 607
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/jKj;->PAY_PRODUCT_PERIODS:Ljava/lang/String;

    .line 608
    invoke-static {p6}, Lc8/QKj;->getPriceNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/jKj;->PAY_PRICE:Ljava/lang/String;

    .line 609
    iput-boolean v1, p0, Lc8/jKj;->isWXAppPayForGame:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p7

    .line 610
    invoke-virtual/range {v0 .. v6}, Lc8/jKj;->doPay(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 611
    return-void
.end method

.method public doPayMtop(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "order_type"    # Ljava/lang/String;
    .param p4, "app_productid"    # Ljava/lang/String;
    .param p5, "pay_channel"    # Ljava/lang/String;
    .param p6, "spm_id"    # Ljava/lang/String;
    .param p7, "url_spm_id"    # Ljava/lang/String;
    .param p8, "pre_r_object_id"    # Ljava/lang/String;
    .param p9, "orderCreateRequest"    # Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;

    .prologue
    .line 664
    const/4 v1, 0x0

    sput v1, Lcom/youku/phone/wxapi/WXPayEntryActivity;->MANAGER_TYPE:I

    .line 665
    const-string/jumbo v1, "PayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doPayMtop:order_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",app_productid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",pay_channel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",spm_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",url_spm_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",pre_r_object_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",orderCreateRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 666
    invoke-static/range {p9 .. p9}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 665
    invoke-static {v1, v2}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iput-object p1, p0, Lc8/jKj;->activity:Landroid/app/Activity;

    .line 668
    iput-object p2, p0, Lc8/jKj;->handler:Landroid/os/Handler;

    .line 669
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/jKj;->isWXAppPayForGame:Z

    .line 670
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    iget-object v1, p0, Lc8/jKj;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 677
    :goto_0
    return-void

    .line 673
    :cond_0
    const-string/jumbo v1, "svod"

    sput-object v1, Lc8/jKj;->payProduct:Ljava/lang/String;

    .line 674
    const-string/jumbo v1, "PayManager"

    const-string/jumbo v2, "doPayMtop"

    invoke-static {v1, v2}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 675
    invoke-direct/range {v1 .. v8}, Lc8/jKj;->doPayByMtop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/paysdk/trade/order/create/OrderCreateRequest;)V

    goto :goto_0
.end method

.method public doRequestTradeMtop(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "trade_id"    # Ljava/lang/String;

    .prologue
    .line 770
    const-string/jumbo v0, "PayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doRequestTrade:trade_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iput-object p1, p0, Lc8/jKj;->activity:Landroid/app/Activity;

    .line 772
    iput-object p2, p0, Lc8/jKj;->handler:Landroid/os/Handler;

    .line 773
    invoke-static {}, Lc8/Iin;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 774
    sget v0, Lcom/youku/phone/R$string;->tips_no_network:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    invoke-static {}, Lc8/QKj;->checkCallEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc8/jKj;->isGetingTradeData:Z

    if-nez v0, :cond_0

    .line 778
    invoke-direct {p0, p3}, Lc8/jKj;->checkOrderStateByMtop(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public performPay()V
    .locals 6

    .prologue
    .line 205
    const-string/jumbo v0, "PayManager"

    const-string/jumbo v1, "performPay()"

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/jKj;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lc8/jKj;->appMonitorPayChanel:Ljava/lang/String;

    const-string/jumbo v1, "init"

    const-string/jumbo v2, "sdkPay"

    const-string/jumbo v3, ""

    iget-object v4, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    if-nez v4, :cond_1

    const-string/jumbo v4, ""

    :goto_0
    const-string/jumbo v5, ""

    invoke-static/range {v0 .. v5}, Lc8/LRo;->appMonitorStatCommit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    invoke-virtual {v0}, Lc8/HKj;->getChannel_params()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/QKj;->isUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    invoke-virtual {v0}, Lc8/HKj;->getPay_channel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/jKj;->performOrderTypeSeries(Ljava/lang/String;)V

    .line 218
    :cond_0
    :goto_1
    return-void

    .line 207
    :cond_1
    iget-object v4, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    invoke-virtual {v4}, Lc8/HKj;->getTrade_id()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 211
    :cond_2
    const-string/jumbo v0, "103"

    iget-object v1, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    invoke-virtual {v1}, Lc8/HKj;->getPay_channel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lc8/jKj;->mDoPayData:Lc8/HKj;

    invoke-virtual {v0}, Lc8/HKj;->getChannel_params()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/jKj;->performWXApp(Ljava/lang/String;)V

    goto :goto_1

    .line 214
    :cond_3
    invoke-direct {p0}, Lc8/jKj;->performAlipay()V

    goto :goto_1
.end method

.method public performWXAppPayErrCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "errCode"    # Ljava/lang/String;

    .prologue
    .line 270
    const-string/jumbo v0, "PayManager"

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

    iget-object v2, p0, Lc8/jKj;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lc8/jKj;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lc8/jKj;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 274
    :cond_0
    return-void
.end method
