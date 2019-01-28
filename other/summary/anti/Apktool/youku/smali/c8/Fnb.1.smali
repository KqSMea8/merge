.class public Lc8/Fnb;
.super Ljava/lang/Object;
.source "ALPConfigInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public appScheme:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Enb;",
            ">;"
        }
    .end annotation
.end field

.field public canDeepLink:I

.field public degradeType:I

.field public downloadUrl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public dynamicParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public exp:I

.field public h5Scheme:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Fnb;->appScheme:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Fnb;->h5Scheme:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Fnb;->dynamicParam:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Fnb;->downloadUrl:Ljava/util/Map;

    .line 43
    return-void
.end method

.method public static formatFromJsonString(Ljava/lang/String;)Lc8/Fnb;
    .locals 9
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 47
    new-instance v0, Lc8/Fnb;

    invoke-direct {v0}, Lc8/Fnb;-><init>()V

    .line 49
    .local v0, "configInfo":Lc8/Fnb;
    if-nez p0, :cond_0

    .line 73
    .end local v0    # "configInfo":Lc8/Fnb;
    :goto_0
    return-object v0

    .line 54
    .restart local v0    # "configInfo":Lc8/Fnb;
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, "configJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "androidAppLinkConfig"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 56
    .local v3, "linkPartnerConfig":Lorg/json/JSONObject;
    const-string/jumbo v5, "exp"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v0, Lc8/Fnb;->exp:I

    .line 57
    const-string/jumbo v5, "canDeeplink"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v0, Lc8/Fnb;->canDeepLink:I

    .line 58
    const-string/jumbo v5, "degradeType"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v0, Lc8/Fnb;->degradeType:I

    .line 59
    const-string/jumbo v5, "appScheme"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lc8/Fnb;->getAppSchemeInfo(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v0, Lc8/Fnb;->appScheme:Ljava/util/Map;

    .line 60
    const-string/jumbo v5, "downloadUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lc8/Fnb;->jsonObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v0, Lc8/Fnb;->downloadUrl:Ljava/util/Map;

    .line 61
    const-string/jumbo v5, "dynamicParam"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lc8/Fnb;->jsonObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v0, Lc8/Fnb;->dynamicParam:Ljava/util/Map;

    .line 62
    const-string/jumbo v5, "h5Scheme"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lc8/Fnb;->jsonObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v0, Lc8/Fnb;->h5Scheme:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    .end local v1    # "configJsonObject":Lorg/json/JSONObject;
    .end local v3    # "linkPartnerConfig":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lc8/Onb;

    invoke-direct {v4, v6, v6, v6, v6}, Lc8/Onb;-><init>(ZZZI)V

    .line 67
    .local v4, "point":Lc8/Onb;
    invoke-static {v4}, Lc8/Lnb;->sendUserTracePoint(Lc8/Mnb;)V

    .line 69
    const-string/jumbo v5, "ALPConfigInfo"

    const-string/jumbo v6, "formatFromJsonString"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "json\u89e3\u6790\u9519\u8bef e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static getAppSchemeInfo(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Enb;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/alibclinkpartner/manager/config/info/ALPAppSchemeInfo;>;"
    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 84
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 89
    .local v0, "jsonSchemeInfo":Lorg/json/JSONObject;
    new-instance v4, Lc8/Enb;

    invoke-direct {v4}, Lc8/Enb;-><init>()V

    .line 90
    .local v4, "schemeInfo":Lc8/Enb;
    const-string/jumbo v5, "uri"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lc8/Enb;->uri:Ljava/lang/String;

    .line 91
    const-string/jumbo v5, "packageName"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lc8/Enb;->packageName:Ljava/lang/String;

    .line 92
    iget-object v5, v4, Lc8/Enb;->action:Ljava/util/List;

    const-string/jumbo v6, "action"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lc8/Fnb;->jsonArray2List(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    iget-object v5, v4, Lc8/Enb;->category:Ljava/util/List;

    const-string/jumbo v6, "category"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6}, Lc8/Fnb;->jsonArray2List(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 100
    .end local v0    # "jsonSchemeInfo":Lorg/json/JSONObject;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "schemeInfo":Lc8/Enb;
    :cond_0
    return-object v3
.end method

.method private static jsonArray2List(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 108
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method private static jsonObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 9
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 140
    :cond_0
    return-object v3

    .line 123
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 124
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 127
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 130
    .local v4, "val":Ljava/lang/String;
    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 131
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "ALPConfigInfo"

    const-string/jumbo v6, "jsonObjectToMap"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "jsonObjectToMap error e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Fnb;

    .line 148
    .local v0, "configInfo":Lc8/Fnb;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lc8/Fnb;->appScheme:Ljava/util/Map;

    .line 149
    iget-object v1, v0, Lc8/Fnb;->appScheme:Ljava/util/Map;

    iget-object v2, p0, Lc8/Fnb;->appScheme:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 151
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lc8/Fnb;->downloadUrl:Ljava/util/Map;

    .line 152
    iget-object v1, v0, Lc8/Fnb;->downloadUrl:Ljava/util/Map;

    iget-object v2, p0, Lc8/Fnb;->downloadUrl:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 154
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lc8/Fnb;->dynamicParam:Ljava/util/Map;

    .line 155
    iget-object v1, v0, Lc8/Fnb;->dynamicParam:Ljava/util/Map;

    iget-object v2, p0, Lc8/Fnb;->dynamicParam:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 157
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lc8/Fnb;->h5Scheme:Ljava/util/Map;

    .line 158
    iget-object v1, v0, Lc8/Fnb;->h5Scheme:Ljava/util/Map;

    iget-object v2, p0, Lc8/Fnb;->h5Scheme:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 160
    return-object v0
.end method

.method public getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "linkKey"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v1, p0, Lc8/Fnb;->appScheme:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Enb;

    .line 165
    .local v0, "info":Lc8/Enb;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lc8/Enb;->packageName:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSchemeInfo(Ljava/lang/String;)Lc8/Enb;
    .locals 2
    .param p1, "linkKey"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v1, p0, Lc8/Fnb;->appScheme:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Enb;

    .line 171
    .local v0, "result":Lc8/Enb;
    if-eqz v0, :cond_0

    .end local v0    # "result":Lc8/Enb;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lc8/Enb;
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lc8/Enb;->newDefaultSchemeInfo(Ljava/lang/String;)Lc8/Enb;

    move-result-object v0

    goto :goto_0
.end method
