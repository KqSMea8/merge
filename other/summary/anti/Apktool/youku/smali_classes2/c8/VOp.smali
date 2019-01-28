.class public abstract Lc8/VOp;
.super Ljava/lang/Object;
.source "AbstractNetworkConverter.java"

# interfaces
.implements Lc8/TOp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/UOp;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.AbstractNetworkConverter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method


# virtual methods
.method protected addMtopSdkProperty(Lc8/AOp;Ljava/util/Map;)V
    .locals 8
    .param p1, "mtopInstance"    # Lc8/AOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/AOp;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p2, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lc8/oOp;->getInstance()Lc8/oOp;

    move-result-object v5

    invoke-virtual {v5}, Lc8/oOp;->isMtopsdkPropertySwitchOpen()Z

    move-result v5

    if-nez v5, :cond_1

    .line 280
    :cond_0
    return-void

    .line 268
    :cond_1
    invoke-virtual {p1}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v5

    invoke-virtual {v5}, Lc8/kOp;->getMtopProperties()Ljava/util/Map;

    move-result-object v3

    .line 269
    .local v3, "mtopProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 271
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 272
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "mtopsdk."

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 273
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 274
    .local v4, "property":Ljava/lang/String;
    const-string/jumbo v5, "mtopsdk."

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "property":Ljava/lang/String;
    :catch_0
    move-exception v5

    const-string/jumbo v6, "mtopsdk.AbstractNetworkConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[addMtopSdkProperty]get mtopsdk properties error,key="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ",value="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected buildBaseUrl(Lc8/IMp;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "mtopContext"    # Lc8/IMp;
    .param p2, "apiName"    # Ljava/lang/String;
    .param p3, "apiVersion"    # Ljava/lang/String;

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 232
    .local v0, "baseUrl":Ljava/lang/StringBuilder;
    :try_start_0
    iget-object v5, p1, Lc8/IMp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v5}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v3

    .line 233
    .local v3, "sdkConfig":Lc8/kOp;
    iget-object v2, p1, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 234
    .local v2, "property":Lmtopsdk/mtop/common/MtopNetworkProp;
    iget-object v5, v3, Lc8/kOp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    iput-object v5, v2, Lmtopsdk/mtop/common/MtopNetworkProp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 235
    iget-object v5, v2, Lmtopsdk/mtop/common/MtopNetworkProp;->protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/ProtocolEnum;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p0, p1, p2, p3}, Lc8/VOp;->getUnitPrefix(Lc8/IMp;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "unitPrefix":Ljava/lang/String;
    invoke-static {v4}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 239
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_0
    iget-object v5, v2, Lmtopsdk/mtop/common/MtopNetworkProp;->customDomain:Ljava/lang/String;

    invoke-static {v5}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 242
    iget-object v5, v2, Lmtopsdk/mtop/common/MtopNetworkProp;->customDomain:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :goto_0
    const-string/jumbo v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lc8/kOp;->entrance:Lmtopsdk/mtop/domain/EntranceEnum;

    invoke-virtual {v6}, Lmtopsdk/mtop/domain/EntranceEnum;->getEntrance()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string/jumbo v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string/jumbo v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v2    # "property":Lmtopsdk/mtop/common/MtopNetworkProp;
    .end local v3    # "sdkConfig":Lc8/kOp;
    .end local v4    # "unitPrefix":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 244
    .restart local v2    # "property":Lmtopsdk/mtop/common/MtopNetworkProp;
    .restart local v3    # "sdkConfig":Lc8/kOp;
    .restart local v4    # "unitPrefix":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v5, v3, Lc8/kOp;->mtopDomain:Lc8/jOp;

    iget-object v6, p1, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v6, v6, Lmtopsdk/mtop/common/MtopNetworkProp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v5, v6}, Lc8/jOp;->getDomain(Lmtopsdk/mtop/domain/EnvModeEnum;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 250
    .end local v2    # "property":Lmtopsdk/mtop/common/MtopNetworkProp;
    .end local v3    # "sdkConfig":Lc8/kOp;
    .end local v4    # "unitPrefix":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "mtopsdk.AbstractNetworkConverter"

    iget-object v6, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    const-string/jumbo v7, "[buildBaseUrl] build full baseUrl error."

    invoke-static {v5, v6, v7, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected buildRequestHeaders(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 186
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 188
    .restart local p2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Lc8/VOp;->getHeaderConversionMap()Ljava/util/Map;

    move-result-object v1

    .line 189
    .local v1, "headerConversionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_2

    .line 190
    const-string/jumbo v8, "mtopsdk.AbstractNetworkConverter"

    const-string/jumbo v9, "[buildRequestHeaders]headerConversionMap is null,buildRequestHeaders error."

    invoke-static {v8, v9}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_1
    :goto_0
    return-object p2

    .line 194
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 195
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 196
    .local v2, "headerKey":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 197
    .local v3, "headerValue":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 199
    :try_start_0
    const-string/jumbo v8, "utf-8"

    invoke-static {v3, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 201
    :catch_0
    move-exception v8

    const-string/jumbo v8, "mtopsdk.AbstractNetworkConverter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[buildRequestHeaders]urlencode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 205
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "headerKey":Ljava/lang/String;
    .end local v3    # "headerValue":Ljava/lang/String;
    :cond_4
    const-string/jumbo v8, "lng"

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 206
    .local v6, "lngReader":Ljava/lang/String;
    const-string/jumbo v8, "lat"

    invoke-interface {p1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 207
    .local v5, "latReader":Ljava/lang/String;
    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    .line 208
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v7, "location":Ljava/lang/StringBuilder;
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :try_start_1
    const-string/jumbo v8, "x-location"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "utf-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 215
    :catch_1
    move-exception v8

    const-string/jumbo v8, "mtopsdk.AbstractNetworkConverter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[buildRequestHeaders]urlencode x-location="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public convert(Lc8/IMp;)Lc8/FPp;
    .locals 29
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 43
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    move-object/from16 v20, v0

    .line 44
    .local v20, "property":Lmtopsdk/mtop/common/MtopNetworkProp;
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->mtopInstance:Lc8/AOp;

    move-object/from16 v17, v0

    .line 45
    .local v17, "mtopInstance":Lc8/AOp;
    invoke-virtual/range {v17 .. v17}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v16

    .line 46
    .local v16, "mtopConfig":Lc8/kOp;
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->seqNo:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 48
    .local v25, "seqNo":Ljava/lang/String;
    const/16 v23, 0x0

    .line 49
    .local v23, "request":Lc8/FPp;
    new-instance v6, Lc8/CPp;

    invoke-direct {v6}, Lc8/CPp;-><init>()V

    .line 50
    .local v6, "builder":Lc8/CPp;
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lc8/CPp;->seqNo(Ljava/lang/String;)Lc8/CPp;

    .line 51
    move-object/from16 v0, v20

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqContext:Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lc8/CPp;->reqContext(Ljava/lang/Object;)Lc8/CPp;

    .line 52
    move-object/from16 v0, v20

    iget v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->bizId:I

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Lc8/CPp;->bizId(I)Lc8/CPp;

    .line 53
    move-object/from16 v0, v20

    iget v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->connTimeout:I

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Lc8/CPp;->connectTimeout(I)Lc8/CPp;

    .line 54
    move-object/from16 v0, v20

    iget v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->socketTimeout:I

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Lc8/CPp;->readTimeout(I)Lc8/CPp;

    .line 55
    move-object/from16 v0, v20

    iget v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->retryTimes:I

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Lc8/CPp;->retryTimes(I)Lc8/CPp;

    .line 56
    move-object/from16 v0, v20

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqAppKey:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lc8/CPp;->appKey(Ljava/lang/String;)Lc8/CPp;

    .line 57
    move-object/from16 v0, v20

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->authCode:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lc8/CPp;->authCode(Ljava/lang/String;)Lc8/CPp;

    .line 60
    move-object/from16 v0, v16

    iget-object v9, v0, Lc8/kOp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 61
    .local v9, "envMode":Lmtopsdk/mtop/domain/EnvModeEnum;
    if-eqz v9, :cond_0

    .line 62
    sget-object v27, Lc8/UOp;->$SwitchMap$mtopsdk$mtop$domain$EnvModeEnum:[I

    invoke-virtual {v9}, Lmtopsdk/mtop/domain/EnvModeEnum;->ordinal()I

    move-result v28

    aget v27, v27, v28

    packed-switch v27, :pswitch_data_0

    .line 78
    :cond_0
    :goto_0
    move-object/from16 v0, v20

    iget-object v15, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->method:Lmtopsdk/mtop/domain/MethodEnum;

    .line 80
    .local v15, "method":Lmtopsdk/mtop/domain/MethodEnum;
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->protocolParams:Ljava/util/Map;

    move-object/from16 v21, v0

    .line 82
    .local v21, "protocolParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v16

    iget-object v10, v0, Lc8/kOp;->mtopGlobalHeaders:Ljava/util/Map;

    .line 84
    .local v10, "globalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_3

    .line 85
    move-object/from16 v0, v20

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    move-object/from16 v27, v0

    if-nez v27, :cond_1

    .line 86
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    iput-object v0, v1, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    .line 88
    :cond_1
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 89
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 90
    .local v12, "headerKey":Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_2

    .line 91
    move-object/from16 v0, v20

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    move-object/from16 v27, v0

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 64
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "globalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "headerKey":Ljava/lang/String;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "method":Lmtopsdk/mtop/domain/MethodEnum;
    .end local v21    # "protocolParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_0
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Lc8/CPp;->env(I)Lc8/CPp;

    goto :goto_0

    .line 67
    :pswitch_1
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Lc8/CPp;->env(I)Lc8/CPp;

    goto :goto_0

    .line 71
    :pswitch_2
    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Lc8/CPp;->env(I)Lc8/CPp;

    goto :goto_0

    .line 97
    .restart local v10    # "globalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "method":Lmtopsdk/mtop/domain/MethodEnum;
    .restart local v21    # "protocolParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, v20

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lc8/VOp;->buildRequestHeaders(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    .line 101
    .local v13, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v27, "api"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 102
    .local v3, "apiName":Ljava/lang/String;
    const-string/jumbo v27, "v"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 105
    .local v4, "apiVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lc8/VOp;->buildBaseUrl(Lc8/IMp;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "baseUrl":Ljava/lang/String;
    move-object/from16 v0, p1

    iput-object v5, v0, Lc8/IMp;->baseUrl:Ljava/lang/String;

    .line 109
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->mtopInstance:Lc8/AOp;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lc8/VOp;->addMtopSdkProperty(Lc8/AOp;Ljava/util/Map;)V

    .line 112
    move-object/from16 v0, v20

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    move-object/from16 v0, v20

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_4

    .line 113
    move-object/from16 v0, v20

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 114
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 163
    .end local v3    # "apiName":Ljava/lang/String;
    .end local v4    # "apiVersion":Ljava/lang/String;
    .end local v5    # "baseUrl":Ljava/lang/String;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    .line 164
    .local v7, "e":Ljava/lang/Throwable;
    const-string/jumbo v27, "mtopsdk.AbstractNetworkConverter"

    const-string/jumbo v28, "[convert]convert Request failed!"

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2, v7}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    .end local v7    # "e":Ljava/lang/Throwable;
    :goto_3
    return-object v23

    .line 119
    .restart local v3    # "apiName":Ljava/lang/String;
    .restart local v4    # "apiVersion":Ljava/lang/String;
    .restart local v5    # "baseUrl":Ljava/lang/String;
    :cond_4
    :try_start_1
    move-object/from16 v0, v16

    iget-object v11, v0, Lc8/kOp;->mtopGlobalQuerys:Ljava/util/Map;

    .line 120
    .local v11, "globalQuerys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_6

    .line 121
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 122
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 123
    .local v18, "paramKey":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_5

    .line 124
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 132
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v18    # "paramKey":Ljava/lang/String;
    :cond_6
    sget-object v27, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual/range {v27 .. v27}, Lmtopsdk/mtop/domain/MethodEnum;->getMethod()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v15}, Lmtopsdk/mtop/domain/MethodEnum;->getMethod()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 134
    const/16 v19, 0x0

    .line 135
    .local v19, "postData":[B
    const-string/jumbo v27, "utf-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lc8/ZOp;->createParamQueryStr(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v22

    .line 136
    .local v22, "queryStr":Ljava/lang/String;
    if-eqz v22, :cond_7

    .line 138
    :try_start_2
    const-string/jumbo v27, "utf-8"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v19

    .line 143
    :cond_7
    :goto_5
    :try_start_3
    new-instance v24, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;

    const-string/jumbo v27, "application/x-www-form-urlencoded;charset=UTF-8"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;-><init>(Ljava/lang/String;[B)V

    .line 145
    .local v24, "requestBody":Lc8/HPp;
    invoke-virtual {v15}, Lmtopsdk/mtop/domain/MethodEnum;->getMethod()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lc8/CPp;->method(Ljava/lang/String;Lc8/HPp;)Lc8/CPp;

    .line 146
    const/16 v27, 0x0

    move-object/from16 v0, v27

    invoke-static {v5, v0}, Lc8/ZOp;->initUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v26

    .line 156
    .end local v19    # "postData":[B
    .end local v22    # "queryStr":Ljava/lang/String;
    .end local v24    # "requestBody":Lc8/HPp;
    .local v26, "url":Ljava/net/URL;
    :goto_6
    if-eqz v26, :cond_8

    .line 157
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->stats:Lc8/pPp;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lc8/pPp;->domain:Ljava/lang/String;

    .line 158
    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lc8/CPp;->url(Ljava/lang/String;)Lc8/CPp;

    .line 160
    :cond_8
    invoke-virtual {v6, v13}, Lc8/CPp;->headers(Ljava/util/Map;)Lc8/CPp;

    .line 161
    invoke-virtual {v6}, Lc8/CPp;->build()Lc8/FPp;

    move-result-object v23

    goto/16 :goto_3

    .line 140
    .end local v26    # "url":Ljava/net/URL;
    .restart local v19    # "postData":[B
    .restart local v22    # "queryStr":Ljava/lang/String;
    :catch_1
    move-exception v27

    const-string/jumbo v27, "mtopsdk.AbstractNetworkConverter"

    const-string/jumbo v28, "[createParamPostData]getPostData error"

    invoke-static/range {v27 .. v28}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 150
    .end local v19    # "postData":[B
    .end local v22    # "queryStr":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->mtopListener:Lc8/QNp;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    instance-of v0, v0, Lc8/INp;

    move/from16 v27, v0

    if-nez v27, :cond_a

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->useCache:Z

    move/from16 v27, v0

    if-nez v27, :cond_a

    .line 151
    const-string/jumbo v27, "cache-control"

    const-string/jumbo v28, "no-cache"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_a
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lc8/IMp;->queryParams:Ljava/util/Map;

    .line 154
    move-object/from16 v0, v21

    invoke-static {v5, v0}, Lc8/ZOp;->initUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v26

    .restart local v26    # "url":Ljava/net/URL;
    goto :goto_6

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract getHeaderConversionMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected getUnitPrefix(Lc8/IMp;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "mtopContext"    # Lc8/IMp;
    .param p2, "apiName"    # Ljava/lang/String;
    .param p3, "apiVesion"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 292
    invoke-static {}, Lc8/oOp;->getInstance()Lc8/oOp;

    move-result-object v5

    invoke-virtual {v5}, Lc8/oOp;->isGlobalUnitSwitchOpen()Z

    move-result v5

    if-nez v5, :cond_1

    .line 293
    const-string/jumbo v5, "mtopsdk.AbstractNetworkConverter"

    iget-object v6, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lc8/IMp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v8}, Lc8/AOp;->getInstanceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " [getUnitPrefix] unitSwitchOpen is false."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_0
    :goto_0
    return-object v4

    .line 297
    :cond_1
    invoke-static {p2}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p3}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 301
    iget-object v5, p1, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v3, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->userUnit:Lmtopsdk/mtop/unit/UserUnit;

    .line 304
    .local v3, "userUnit":Lmtopsdk/mtop/unit/UserUnit;
    if-eqz v3, :cond_0

    :try_start_0
    sget-object v5, Lmtopsdk/mtop/unit/UserUnit$UnitType;->UNIT:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    invoke-virtual {v5}, Lmtopsdk/mtop/unit/UserUnit$UnitType;->getUnitType()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lmtopsdk/mtop/unit/UserUnit;->unitType:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    invoke-virtual {v6}, Lmtopsdk/mtop/unit/UserUnit$UnitType;->getUnitType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Lmtopsdk/mtop/unit/UserUnit;->unitPrefix:Ljava/lang/String;

    invoke-static {v5}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 307
    iget-object v5, p1, Lc8/IMp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v5}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v5

    iget-object v2, v5, Lc8/kOp;->unitService:Lc8/cPp;

    .line 308
    .local v2, "unitService":Lc8/cPp;
    const/4 v0, 0x0

    .line 309
    .local v0, "apiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    if-eqz v2, :cond_2

    .line 310
    invoke-interface {v2}, Lc8/cPp;->getApiUnit()Lmtopsdk/mtop/unit/ApiUnit;

    move-result-object v0

    .line 313
    :cond_2
    if-eqz v0, :cond_0

    iget-object v5, v0, Lmtopsdk/mtop/unit/ApiUnit;->apilist:Ljava/util/HashSet;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lmtopsdk/mtop/unit/ApiUnit;->apilist:Ljava/util/HashSet;

    new-instance v6, Lmtopsdk/mtop/unit/ApiInfo;

    invoke-direct {v6, p2, p3}, Lmtopsdk/mtop/unit/ApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 316
    iget-object v4, v3, Lmtopsdk/mtop/unit/UserUnit;->unitPrefix:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    .end local v0    # "apiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    .end local v2    # "unitService":Lc8/cPp;
    :catch_0
    move-exception v1

    .line 320
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "mtopsdk.AbstractNetworkConverter"

    iget-object v6, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lc8/IMp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v8}, Lc8/AOp;->getInstanceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " [getUnitPrefix] getUnitPrefix error."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
