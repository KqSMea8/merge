.class public Lc8/yHb;
.super Lc8/AHb;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lc8/AHb;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "^\\d+$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lc8/yHb;->b:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lc8/bGb;->getInstance()Lc8/bGb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/bGb;->analyzeItemId(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/yHb;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public checkParams()Z
    .locals 1

    iget-object v0, p0, Lc8/yHb;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/yHb;->b:Ljava/lang/String;

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

    iget-object v0, p0, Lc8/yHb;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/yHb;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/yHb;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/vFb;->TB_ITEM_DETAIL_URL:Ljava/lang/String;

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

    const-string/jumbo v1, "?id=%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lc8/yHb;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "action_tae"

    const-string/jumbo v2, "cart"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "from_tae"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "sku"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/yHb;->a:Ljava/lang/String;

    iget-object v0, p0, Lc8/yHb;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public getApi()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc8/sHb;->E_ADDITEM2CART:Ljava/lang/String;

    return-object v0
.end method

.method public getPerformancePageType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "addCart"

    return-object v0
.end method

.method public getUsabilityPageType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Cart_Page"

    return-object v0
.end method

.method public needTaoke(Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requireOpenType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public taokeTraceAndGenUrl(Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Lcom/alibaba/baichuan/android/trade/b/a;Lc8/SGb;)V
    .locals 9

    iget-object v0, p0, Lc8/yHb;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/yHb;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "itemId"

    iget-object v2, p0, Lc8/yHb;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/alibaba/baichuan/android/trade/b/a;->e:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/UGb;->INSTANCE:Lc8/UGb;

    invoke-virtual {p0}, Lc8/yHb;->genOpenUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lc8/yHb;->getApi()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p2, Lcom/alibaba/baichuan/android/trade/b/a;->e:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Lc8/UGb;->genUrlAndTaokeTrace(Ljava/util/HashMap;Ljava/lang/String;ZLcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/b/a;Lc8/SGb;Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;)V

    goto :goto_0
.end method
