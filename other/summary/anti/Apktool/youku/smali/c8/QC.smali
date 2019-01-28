.class public Lc8/QC;
.super Ljava/lang/Object;
.source "MtopApiAdapter.java"

# interfaces
.implements Lc8/hC;


# instance fields
.field private request:Lc8/fC;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkParams()V
    .locals 12

    .prologue
    .line 55
    iget-object v5, p0, Lc8/QC;->request:Lc8/fC;

    const-string/jumbo v8, "ttid"

    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v9

    invoke-virtual {v9}, Lc8/xB;->getTtid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lc8/fC;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v5

    invoke-virtual {v5}, Lc8/xB;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "imei":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 58
    const-string/jumbo v0, "111111111111111"

    .line 60
    :cond_0
    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v5

    invoke-virtual {v5}, Lc8/xB;->getImsi()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "imsi":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    const-string/jumbo v1, "111111111111111"

    .line 64
    :cond_1
    iget-object v5, p0, Lc8/QC;->request:Lc8/fC;

    const-string/jumbo v8, "imei"

    invoke-virtual {v5, v8, v0}, Lc8/fC;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v5, p0, Lc8/QC;->request:Lc8/fC;

    const-string/jumbo v8, "imsi"

    invoke-virtual {v5, v8, v1}, Lc8/fC;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v5

    invoke-virtual {v5}, Lc8/xB;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 67
    iget-object v5, p0, Lc8/QC;->request:Lc8/fC;

    const-string/jumbo v8, "deviceId"

    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v9

    invoke-virtual {v9}, Lc8/xB;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lc8/fC;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_2
    iget-object v5, p0, Lc8/QC;->request:Lc8/fC;

    invoke-virtual {v5}, Lc8/fC;->getDataParams()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 70
    new-instance v2, Lorg/json/JSONObject;

    iget-object v5, p0, Lc8/QC;->request:Lc8/fC;

    invoke-virtual {v5}, Lc8/fC;->getDataParams()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 71
    .local v2, "jso":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "jsoStr":Ljava/lang/String;
    iget-object v5, p0, Lc8/QC;->request:Lc8/fC;

    const-string/jumbo v8, "data"

    invoke-virtual {v5, v8, v3}, Lc8/fC;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .end local v2    # "jso":Lorg/json/JSONObject;
    .end local v3    # "jsoStr":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lc8/QC;->request:Lc8/fC;

    invoke-virtual {v5}, Lc8/fC;->getParams()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v8, "t"

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 76
    sget-object v5, Lc8/oB;->wvAdapter:Lc8/mC;

    if-eqz v5, :cond_4

    sget-object v5, Lc8/oB;->wvAdapter:Lc8/mC;

    invoke-interface {v5}, Lc8/mC;->getTimestamp()J

    move-result-wide v6

    .local v6, "timestamp":J
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    .line 77
    .end local v6    # "timestamp":J
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 79
    .restart local v6    # "timestamp":J
    :cond_5
    iget-object v5, p0, Lc8/QC;->request:Lc8/fC;

    const-string/jumbo v8, "t"

    const-wide/16 v10, 0x3e8

    div-long v10, v6, v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lc8/fC;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .end local v6    # "timestamp":J
    :cond_6
    iget-object v5, p0, Lc8/QC;->request:Lc8/fC;

    const-string/jumbo v8, "appKey"

    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v9

    invoke-virtual {v9}, Lc8/xB;->getAppKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lc8/fC;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v5, p0, Lc8/QC;->request:Lc8/fC;

    invoke-virtual {v5}, Lc8/fC;->isSec()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 83
    iget-object v5, p0, Lc8/QC;->request:Lc8/fC;

    const-string/jumbo v8, "wua"

    sget-object v9, Lc8/xB;->context:Landroid/app/Application;

    invoke-direct {p0, v9}, Lc8/QC;->getSecBodyData(Landroid/content/ContextWrapper;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lc8/fC;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_7
    iget-object v5, p0, Lc8/QC;->request:Lc8/fC;

    const-string/jumbo v8, "appSecret"

    invoke-static {}, Lc8/xB;->getInstance()Lc8/xB;

    move-result-object v9

    invoke-virtual {v9}, Lc8/xB;->getAppSecret()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lc8/fC;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lc8/QC;->getSign()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "sign":Ljava/lang/String;
    iget-object v5, p0, Lc8/QC;->request:Lc8/fC;

    const-string/jumbo v8, "sign"

    invoke-virtual {v5, v8, v4}, Lc8/fC;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v5, p0, Lc8/QC;->request:Lc8/fC;

    invoke-virtual {v5}, Lc8/fC;->getParams()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v8, "v"

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 91
    iget-object v5, p0, Lc8/QC;->request:Lc8/fC;

    const-string/jumbo v8, "v"

    const-string/jumbo v9, "*"

    invoke-virtual {v5, v8, v9}, Lc8/fC;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_8
    iget-object v5, p0, Lc8/QC;->request:Lc8/fC;

    invoke-virtual {v5}, Lc8/fC;->getParams()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v8, "appSecret"

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 94
    iget-object v5, p0, Lc8/QC;->request:Lc8/fC;

    const-string/jumbo v8, "appSecret"

    invoke-virtual {v5, v8}, Lc8/fC;->removeParam(Ljava/lang/String;)V

    .line 96
    :cond_9
    iget-object v5, p0, Lc8/QC;->request:Lc8/fC;

    invoke-virtual {v5}, Lc8/fC;->getParams()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v8, "ecode"

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 97
    iget-object v5, p0, Lc8/QC;->request:Lc8/fC;

    const-string/jumbo v8, "ecode"

    invoke-virtual {v5, v8}, Lc8/fC;->removeParam(Ljava/lang/String;)V

    .line 99
    :cond_a
    return-void
.end method

.method private getSecBodyData(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/ContextWrapper;

    .prologue
    .line 146
    invoke-static {}, Lc8/RC;->getInstance()Lc8/RC;

    move-result-object v0

    iget-object v1, p0, Lc8/QC;->request:Lc8/fC;

    const-string/jumbo v2, "t"

    invoke-virtual {v1, v2}, Lc8/fC;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/QC;->request:Lc8/fC;

    const-string/jumbo v3, "appKey"

    invoke-virtual {v2, v3}, Lc8/fC;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lc8/RC;->getSecBody(Landroid/content/ContextWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSign()Ljava/lang/String;
    .locals 6

    .prologue
    .line 133
    invoke-static {}, Lc8/RC;->getInstance()Lc8/RC;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lc8/QC;->request:Lc8/fC;

    invoke-virtual {v3}, Lc8/fC;->getParams()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lc8/QC;->request:Lc8/fC;

    const-string/jumbo v5, "appKey"

    invoke-virtual {v4, v5}, Lc8/fC;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lc8/RC;->getSign(ILjava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "sign":Ljava/lang/String;
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string/jumbo v1, "MtopApiAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "appkey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/QC;->request:Lc8/fC;

    const-string/jumbo v4, "appKey"

    invoke-virtual {v3, v4}, Lc8/fC;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/QC;->request:Lc8/fC;

    invoke-virtual {v3}, Lc8/fC;->getParams()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    if-nez v0, :cond_1

    .line 139
    const-string/jumbo v1, "MtopApiAdapter"

    const-string/jumbo v2, "SecurityManager.getSign failed, execute TaoApiSign.getSign"

    invoke-static {v1, v2}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lc8/QC;->request:Lc8/fC;

    invoke-virtual {v1}, Lc8/fC;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lc8/SC;->getSign(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_1
    return-object v0
.end method

.method private wrapBody()Ljava/lang/String;
    .locals 7

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lc8/QC;->request:Lc8/fC;

    invoke-virtual {v5}, Lc8/fC;->getParams()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 120
    .local v4, "urlParams":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 121
    .local v3, "needAndSymbol":Z
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 122
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 123
    const-string/jumbo v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 125
    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    .line 129
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private wrapUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 102
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    .line 103
    :cond_0
    const-string/jumbo v6, ""

    .line 114
    :goto_0
    return-object v6

    .line 104
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 105
    .local v0, "base":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 106
    .local v4, "urlBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 108
    :cond_2
    const-string/jumbo v6, ""

    invoke-virtual {v4, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 110
    :cond_3
    iget-object v6, p0, Lc8/QC;->request:Lc8/fC;

    invoke-virtual {v6}, Lc8/fC;->getParams()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 111
    .local v5, "urlParams":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 112
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    goto :goto_1

    .line 114
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method public formatBody(Lc8/fC;)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Lc8/fC;

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    const-string/jumbo v0, ""

    .line 51
    :goto_0
    return-object v0

    .line 49
    :cond_0
    iput-object p1, p0, Lc8/QC;->request:Lc8/fC;

    .line 50
    invoke-direct {p0}, Lc8/QC;->checkParams()V

    .line 51
    invoke-direct {p0}, Lc8/QC;->wrapBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public formatUrl(Lc8/fC;)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Lc8/fC;

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    const-string/jumbo v0, ""

    .line 42
    :goto_0
    return-object v0

    .line 40
    :cond_0
    iput-object p1, p0, Lc8/QC;->request:Lc8/fC;

    .line 41
    invoke-direct {p0}, Lc8/QC;->checkParams()V

    .line 42
    invoke-static {}, Lc8/xB;->getMtopUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/QC;->wrapUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
