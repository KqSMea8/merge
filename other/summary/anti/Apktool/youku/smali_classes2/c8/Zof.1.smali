.class public Lc8/Zof;
.super Ljava/lang/Object;
.source "AlibcdDeviceInfoStorage.java"


# instance fields
.field private final DEVICE_INFO:Ljava/lang/String;

.field private final KEY:Ljava/lang/String;

.field private final SALT:Ljava/lang/String;

.field private final SIGN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string/jumbo v0, "DIS228724"

    iput-object v0, p0, Lc8/Zof;->KEY:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "di"

    iput-object v0, p0, Lc8/Zof;->DEVICE_INFO:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "group0"

    iput-object v0, p0, Lc8/Zof;->SIGN:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "0068ahbasdcasdf"

    iput-object v0, p0, Lc8/Zof;->SALT:Ljava/lang/String;

    return-void
.end method

.method private checkDataSign(Ljava/lang/String;)Z
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v4

    .line 126
    :cond_1
    invoke-static {p1}, Lc8/ipf;->createJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 128
    .local v3, "jsonObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 133
    const-string/jumbo v5, "group0"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "dataSign":Ljava/lang/String;
    const-string/jumbo v5, "DeviceProbe"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u526a\u5207\u7248\u4e2d\u6570\u636e\u7684sign = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v2, "ignoreList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v5, "group0"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    const-string/jumbo v5, "0068ahbasdcasdf"

    invoke-static {v3, v2, v5}, Lc8/epf;->getMd5Sign(Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "generateSign":Ljava/lang/String;
    const-string/jumbo v5, "DeviceProbe"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u751f\u6210\u6570\u636e\u7684sign = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    const-string/jumbo v4, "DeviceProbe"

    const-string/jumbo v5, "sign\u4e00\u81f4,\u6570\u636e\u6821\u9a8c\u6210\u529f"

    invoke-static {v4, v5}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private getData(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Uof;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v5, v6

    .line 216
    :cond_0
    :goto_0
    return-object v5

    .line 194
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 195
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/flowcustoms/probe/AlibcDeviceProbeData$AlibcDeviceInfo;>;"
    invoke-static {p1}, Lc8/ipf;->createJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 196
    .local v1, "DIS":Lorg/json/JSONObject;
    if-nez v1, :cond_2

    move-object v5, v6

    .line 197
    goto :goto_0

    .line 200
    :cond_2
    const-string/jumbo v7, "di"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 201
    .local v0, "DI":Lorg/json/JSONArray;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    move-object v5, v6

    .line 202
    goto :goto_0

    .line 205
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 207
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 208
    .local v3, "deviceInfoObject":Lorg/json/JSONObject;
    if-nez v3, :cond_6

    .line 205
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 211
    :cond_6
    invoke-static {v3}, Lc8/Uof;->createFromJson(Lorg/json/JSONObject;)Lc8/Uof;

    move-result-object v2

    .line 212
    .local v2, "deviceInfo":Lc8/Uof;
    if-eqz v2, :cond_5

    .line 213
    iget-object v6, v2, Lc8/Uof;->appkey:Ljava/lang/String;

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private getJsonStr(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Uof;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/flowcustoms/probe/AlibcDeviceProbeData$AlibcDeviceInfo;>;"
    if-nez p1, :cond_0

    .line 164
    const-string/jumbo v5, ""

    .line 180
    :goto_0
    return-object v5

    .line 167
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 168
    .local v2, "deviceInfoArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 169
    .local v4, "key":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Uof;

    .line 170
    .local v1, "deviceInfo":Lc8/Uof;
    invoke-virtual {v1}, Lc8/Uof;->checkData()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 171
    invoke-virtual {v1}, Lc8/Uof;->getStoreJsonObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 175
    .end local v1    # "deviceInfo":Lc8/Uof;
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 177
    .local v0, "DIS":Lorg/json/JSONObject;
    const-string/jumbo v5, "di"

    invoke-static {v0, v5, v2}, Lc8/ipf;->putJsonData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    const-string/jumbo v5, "group0"

    const/4 v6, 0x0

    const-string/jumbo v7, "0068ahbasdcasdf"

    invoke-static {v0, v6, v7}, Lc8/epf;->getMd5Sign(Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lc8/ipf;->putJsonData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public getData()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Uof;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-virtual {p0}, Lc8/Zof;->isDataExist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-object v2

    .line 85
    :cond_1
    sget-object v3, Lc8/unf;->instance:Lc8/unf;

    iget-object v3, v3, Lc8/unf;->application:Landroid/app/Application;

    invoke-static {v3}, Lc8/dpf;->getClipboardUtils(Landroid/app/Application;)Lc8/dpf;

    move-result-object v0

    .line 86
    .local v0, "alibcClipboardUtils":Lc8/dpf;
    const-string/jumbo v3, "DIS228724"

    invoke-virtual {v0, v3}, Lc8/dpf;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Lc8/epf;->getBase64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    invoke-direct {p0, v1}, Lc8/Zof;->getData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    goto :goto_0
.end method

.method public isDataExist()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 50
    sget-object v4, Lc8/unf;->instance:Lc8/unf;

    iget-object v4, v4, Lc8/unf;->application:Landroid/app/Application;

    invoke-static {v4}, Lc8/dpf;->getClipboardUtils(Landroid/app/Application;)Lc8/dpf;

    move-result-object v0

    .line 51
    .local v0, "alibcClipboardUtils":Lc8/dpf;
    const-string/jumbo v4, "DIS228724"

    invoke-virtual {v0, v4}, Lc8/dpf;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 52
    const-string/jumbo v4, "DeviceProbe"

    const-string/jumbo v5, "\u83b7\u53d6\u526a\u5207\u7248\u4e3a\u7a7a"

    invoke-static {v4, v5}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    :goto_0
    return v3

    .line 57
    :cond_1
    const-string/jumbo v4, "DIS228724"

    invoke-virtual {v0, v4}, Lc8/dpf;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "enCodeStr":Ljava/lang/String;
    const-string/jumbo v4, "DeviceProbe"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enCode\u540e\u7684\u526a\u5207\u7248\u6570\u636e\u4e3a="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {v2}, Lc8/epf;->getBase64Decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "decodeStr":Ljava/lang/String;
    const-string/jumbo v4, "DeviceProbe"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decode\u540e\u7684\u526a\u5207\u7248\u6570\u636e\u4e3a="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 69
    invoke-direct {p0, v1}, Lc8/Zof;->checkDataSign(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setData(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Uof;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "infoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/flowcustoms/probe/AlibcDeviceProbeData$AlibcDeviceInfo;>;"
    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-direct {p0, p1}, Lc8/Zof;->getJsonStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    sget-object v2, Lc8/unf;->instance:Lc8/unf;

    iget-object v2, v2, Lc8/unf;->application:Landroid/app/Application;

    invoke-static {v2}, Lc8/dpf;->getClipboardUtils(Landroid/app/Application;)Lc8/dpf;

    move-result-object v0

    .line 111
    .local v0, "alibcClipboardUtils":Lc8/dpf;
    const-string/jumbo v2, "DIS228724"

    invoke-static {v1}, Lc8/epf;->getBase64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lc8/dpf;->setData(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
