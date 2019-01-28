.class public Lc8/bJj;
.super Ljava/lang/Object;
.source "YKNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/cJj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private callType:Lcom/youku/network/config/YKNetworkConfig$CallType;

.field private ykRequest:Lc8/dJj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-static {}, Lc8/dJj;->newInstance()Lc8/dJj;

    move-result-object v0

    iput-object v0, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/bJj;->callType:Lcom/youku/network/config/YKNetworkConfig$CallType;

    return-void
.end method


# virtual methods
.method public apiName(Ljava/lang/String;)Lc8/bJj;
    .locals 1
    .param p1, "apiName"    # Ljava/lang/String;

    .prologue
    .line 255
    iget-object v0, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, p1}, Lc8/dJj;->setApiName(Ljava/lang/String;)V

    .line 256
    return-object p0
.end method

.method public autoRedirect(Z)Lc8/bJj;
    .locals 1
    .param p1, "autoRedirect"    # Z

    .prologue
    .line 195
    iget-object v0, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, p1}, Lc8/dJj;->setAutoRedirect(Z)V

    .line 196
    return-object p0
.end method

.method public build()Lc8/cJj;
    .locals 3

    .prologue
    .line 328
    new-instance v0, Lc8/cJj;

    invoke-direct {v0}, Lc8/cJj;-><init>()V

    .line 329
    .local v0, "ykNetwork":Lc8/cJj;
    iget-object v1, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, v1}, Lc8/cJj;->setYkRequest(Lc8/dJj;)V

    .line 331
    iget-object v1, p0, Lc8/bJj;->callType:Lcom/youku/network/config/YKNetworkConfig$CallType;

    if-nez v1, :cond_0

    .line 332
    iget-object v1, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v1}, Lc8/dJj;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/RJj;->getAccessableCallType(Ljava/lang/String;)Lcom/youku/network/config/YKNetworkConfig$CallType;

    move-result-object v1

    iput-object v1, p0, Lc8/bJj;->callType:Lcom/youku/network/config/YKNetworkConfig$CallType;

    .line 333
    iget-object v1, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v1}, Lc8/dJj;->getStrategyName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/bJj;->callType:Lcom/youku/network/config/YKNetworkConfig$CallType;

    invoke-static {v1, v2}, Lc8/bKj;->obtainCallType(Ljava/lang/String;Lcom/youku/network/config/YKNetworkConfig$CallType;)Lcom/youku/network/config/YKNetworkConfig$CallType;

    move-result-object v1

    iput-object v1, p0, Lc8/bJj;->callType:Lcom/youku/network/config/YKNetworkConfig$CallType;

    .line 336
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "callType---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/bJj;->callType:Lcom/youku/network/config/YKNetworkConfig$CallType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "--url--:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v2}, Lc8/dJj;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    sget-object v1, Lc8/aJj;->$SwitchMap$com$youku$network$config$YKNetworkConfig$CallType:[I

    iget-object v2, p0, Lc8/bJj;->callType:Lcom/youku/network/config/YKNetworkConfig$CallType;

    invoke-virtual {v2}, Lcom/youku/network/config/YKNetworkConfig$CallType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 348
    :goto_0
    invoke-static {v0}, Lc8/cJj;->access$100(Lc8/cJj;)V

    .line 350
    return-object v0

    .line 339
    :pswitch_0
    new-instance v1, Lc8/CJj;

    invoke-direct {v1}, Lc8/CJj;-><init>()V

    invoke-virtual {v0, v1}, Lc8/cJj;->setCallProxy(Lc8/rJj;)V

    goto :goto_0

    .line 342
    :pswitch_1
    new-instance v1, Lc8/MJj;

    invoke-direct {v1}, Lc8/MJj;-><init>()V

    invoke-virtual {v0, v1}, Lc8/cJj;->setCallProxy(Lc8/rJj;)V

    goto :goto_0

    .line 345
    :pswitch_2
    new-instance v1, Lc8/xJj;

    invoke-direct {v1}, Lc8/xJj;-><init>()V

    invoke-virtual {v0, v1}, Lc8/cJj;->setCallProxy(Lc8/rJj;)V

    goto :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public callType(Lcom/youku/network/config/YKNetworkConfig$CallType;)Lc8/bJj;
    .locals 0
    .param p1, "callType"    # Lcom/youku/network/config/YKNetworkConfig$CallType;

    .prologue
    .line 160
    iput-object p1, p0, Lc8/bJj;->callType:Lcom/youku/network/config/YKNetworkConfig$CallType;

    .line 161
    return-object p0
.end method

.method public connectTimeout(I)Lc8/bJj;
    .locals 1
    .param p1, "connectTimeout"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, p1}, Lc8/dJj;->setConnectTimeout(I)V

    .line 166
    return-object p0
.end method

.method public data(Ljava/lang/String;)Lc8/bJj;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v0, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, p1}, Lc8/dJj;->setData(Ljava/lang/String;)V

    .line 266
    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lc8/bJj;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v0, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, p1, p2}, Lc8/dJj;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-object p0
.end method

.method public host(Ljava/lang/String;)Lc8/bJj;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, p1}, Lc8/dJj;->setHost(Ljava/lang/String;)V

    .line 155
    return-object p0
.end method

.method public ip(Ljava/lang/String;)Lc8/bJj;
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, p1}, Lc8/dJj;->setIp(Ljava/lang/String;)V

    .line 150
    return-object p0
.end method

.method public mTopConnectTimeout(I)Lc8/bJj;
    .locals 1
    .param p1, "connectTimeout"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, p1}, Lc8/dJj;->setMtopConnectTimeout(I)V

    .line 176
    return-object p0
.end method

.method public method(Ljava/lang/String;)Lc8/bJj;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, p1}, Lc8/dJj;->setMethod(Ljava/lang/String;)V

    .line 186
    return-object p0
.end method

.method public method(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/bJj;
    .locals 1
    .param p1, "method"    # Lmtopsdk/mtop/domain/MethodEnum;

    .prologue
    .line 190
    iget-object v0, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, p1}, Lc8/dJj;->setMtopMethod(Lmtopsdk/mtop/domain/MethodEnum;)V

    .line 191
    return-object p0
.end method

.method public mtopHeader(Ljava/lang/String;Ljava/lang/String;)Lc8/bJj;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, p1, p2}, Lc8/dJj;->addMTopHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-object p0
.end method

.method public mtopReadTimeout(I)Lc8/bJj;
    .locals 1
    .param p1, "readTimeout"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, p1}, Lc8/dJj;->setMtopReadTimeout(I)V

    .line 181
    return-object p0
.end method

.method public needEcode(Z)Lc8/bJj;
    .locals 1
    .param p1, "needEcode"    # Z

    .prologue
    .line 270
    iget-object v0, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, p1}, Lc8/dJj;->setNeedEcode(Z)V

    .line 271
    return-object p0
.end method

.method public params(Ljava/util/Map;)Lc8/bJj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/bJj;"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, p1}, Lc8/dJj;->setParams(Ljava/util/Map;)V

    .line 231
    return-object p0
.end method

.method public readTimeout(I)Lc8/bJj;
    .locals 1
    .param p1, "readTimeout"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, p1}, Lc8/dJj;->setReadTimeout(I)V

    .line 171
    return-object p0
.end method

.method public retryTimes(I)Lc8/bJj;
    .locals 1
    .param p1, "retryTimes"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, p1}, Lc8/dJj;->setRetryTimes(I)V

    .line 201
    return-object p0
.end method

.method public setCharset(Ljava/lang/String;)Lc8/bJj;
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v0, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, p1}, Lc8/dJj;->setCharset(Ljava/lang/String;)V

    .line 246
    return-object p0
.end method

.method public setJsonBody(Ljava/lang/String;)Lc8/bJj;
    .locals 1
    .param p1, "jsonBody"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, p1}, Lc8/dJj;->setJsonBody(Ljava/lang/String;)V

    .line 241
    return-object p0
.end method

.method public strategyName(Ljava/lang/String;)Lc8/bJj;
    .locals 1
    .param p1, "strategyName"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, p1}, Lc8/dJj;->setStrategyName(Ljava/lang/String;)V

    .line 140
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lc8/bJj;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, p1}, Lc8/dJj;->setUrl(Ljava/lang/String;)V

    .line 145
    return-object p0
.end method

.method public version(Ljava/lang/String;)Lc8/bJj;
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 260
    iget-object v0, p0, Lc8/bJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, p1}, Lc8/dJj;->setVersion(Ljava/lang/String;)V

    .line 261
    return-object p0
.end method
