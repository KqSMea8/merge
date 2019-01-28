.class public Lc8/FHb;
.super Lc8/AHb;


# instance fields
.field public additionalHttpHeaders:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lc8/AHb;-><init>()V

    iput-object p1, p0, Lc8/FHb;->a:Ljava/lang/String;

    return-void
.end method

.method private a()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lc8/FHb;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v2, Lc8/vFb;->detailPatterns:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v5, p0, Lc8/FHb;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkParams()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lc8/FHb;

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lc8/FHb;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public genOpenUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc8/FHb;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/FHb;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdditionalHttpHeaders()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lc8/FHb;->additionalHttpHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getApi()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc8/sHb;->E_SHOWPAGE:Ljava/lang/String;

    return-object v0
.end method

.method public needTaoke(Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;)Z
    .locals 1

    invoke-direct {p0}, Lc8/FHb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public taokeTraceAndGenUrl(Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Lcom/alibaba/baichuan/android/trade/b/a;Lc8/SGb;)V
    .locals 10

    const/4 v3, 0x1

    iget-object v0, p0, Lc8/FHb;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, -0x1

    iget-object v0, p0, Lc8/FHb;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v2, Lc8/vFb;->detailPatterns:[Ljava/lang/String;

    array-length v4, v2

    const/4 v0, 0x0

    move v9, v0

    move v0, v1

    move v1, v9

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v2, v1

    iget-object v6, p0, Lc8/FHb;->a:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, v0, :cond_3

    const-string/jumbo v0, "(\\?|&)id=([^&?]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lc8/FHb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "itemId"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/alibaba/baichuan/android/trade/b/a;->e:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    if-eqz v0, :cond_3

    sget-object v0, Lc8/UGb;->INSTANCE:Lc8/UGb;

    invoke-virtual {p0}, Lc8/FHb;->genOpenUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lc8/FHb;->getApi()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p2, Lcom/alibaba/baichuan/android/trade/b/a;->e:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Lc8/UGb;->genUrlAndTaokeTrace(Ljava/util/HashMap;Ljava/lang/String;ZLcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/b/a;Lc8/SGb;Lcom/alibaba/baichuan/android/trade/callback/AlibcFailureCallback;)V

    :cond_3
    return-void
.end method

.method public tryNativeJump(Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Lc8/vHb;Ljava/util/Map;Landroid/app/Activity;)Z
    .locals 8

    const/4 v2, 0x0

    invoke-direct {p0}, Lc8/FHb;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "(\\?|&)id=([^&?]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lc8/FHb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz p1, :cond_4

    iget-object v5, p1, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;->pid:Ljava/lang/String;

    :goto_1
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lc8/vHb;->getBackUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lc8/vHb;->getBackUrl()Ljava/lang/String;

    move-result-object v6

    :goto_2
    const-string/jumbo v0, ""

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lc8/vHb;->getClientType()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v1, "appType"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;->SHOWITEM:Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cHb;->getIsvCode()Ljava/lang/String;

    move-result-object v4

    move-object v0, p4

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lc8/XGb;->a(Landroid/content/Context;Lcom/alibaba/baichuan/android/trade/model/ApplinkOpenType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    :goto_3
    return v0

    :cond_1
    const-string/jumbo v6, "alisdk://"

    goto :goto_2

    :cond_2
    const-string/jumbo v0, ""

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lc8/vHb;->getClientType()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string/jumbo v1, "appType"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2, p3, p4}, Lc8/AHb;->tryNativeJump(Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;Lc8/vHb;Ljava/util/Map;Landroid/app/Activity;)Z

    move-result v0

    goto :goto_3

    :cond_4
    move-object v5, v2

    goto :goto_1

    :cond_5
    move-object v3, v2

    goto :goto_0
.end method
