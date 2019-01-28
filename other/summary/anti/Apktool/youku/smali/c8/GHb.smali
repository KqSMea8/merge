.class public Lc8/GHb;
.super Lc8/AHb;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lc8/AHb;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lc8/GHb;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public checkParams()Z
    .locals 1

    iget-object v0, p0, Lc8/GHb;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/GHb;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public genOpenUrl()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lc8/GHb;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/GHb;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/GHb;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/vFb;->TB_SHOP_URL:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?shop_id=%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lc8/GHb;->b:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/GHb;->c:Ljava/lang/String;

    iget-object v0, p0, Lc8/GHb;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public getApi()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc8/sHb;->E_SHOWSHOP:Ljava/lang/String;

    return-object v0
.end method

.method public getPerformancePageType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "shop"

    return-object v0
.end method

.method public getUsabilityPageType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Shop_Page"

    return-object v0
.end method

.method public needTaoke(Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public taokeTraceAndGenUrl(Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Lcom/alibaba/baichuan/android/trade/b/a;Lc8/SGb;)V
    .locals 9

    iget-object v0, p0, Lc8/GHb;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/GHb;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "shopId"

    iget-object v2, p0, Lc8/GHb;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/alibaba/baichuan/android/trade/b/a;->e:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/UGb;->INSTANCE:Lc8/UGb;

    invoke-virtual {p0}, Lc8/GHb;->genOpenUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0}, Lc8/GHb;->getApi()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p2, Lcom/alibaba/baichuan/android/trade/b/a;->e:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Lc8/UGb;->genUrlAndTaokeTrace(Ljava/util/HashMap;Ljava/lang/String;ZLcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/b/a;Lc8/SGb;Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;)V

    goto :goto_0
.end method

.method public tryNativeJump(Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Lc8/vHb;Ljava/util/Map;Landroid/app/Activity;)Z
    .locals 8

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object v5, p1, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;->pid:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lc8/vHb;->getBackUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lc8/vHb;->getBackUrl()Ljava/lang/String;

    move-result-object v6

    :goto_1
    const-string/jumbo v0, ""

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lc8/vHb;->getClientType()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v1, "appType"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;->SHOWSHOP:Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

    iget-object v3, p0, Lc8/GHb;->b:Ljava/lang/String;

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cHb;->getIsvCode()Ljava/lang/String;

    move-result-object v4

    move-object v0, p4

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lc8/XGb;->a(Landroid/content/Context;Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0

    :cond_1
    const-string/jumbo v6, "alisdk://"

    goto :goto_1

    :cond_2
    move-object v5, v2

    goto :goto_0
.end method
