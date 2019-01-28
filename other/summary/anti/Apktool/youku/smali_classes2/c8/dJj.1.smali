.class public Lc8/dJj;
.super Ljava/lang/Object;
.source "YKRequest.java"


# static fields
.field public static final DEFAULT_AUTOREDIRECT:Z = true

.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final DEFAULT_CONNECT_TIMEOUT:I = 0x2710

.field public static final DEFAULT_METHOD:Ljava/lang/String; = "GET"

.field public static final DEFAULT_READ_TIMEOUT:I = 0x2710

.field public static final DEFAULT_RETRY_TIMES:I = 0x2


# instance fields
.field private accessToken:Ljava/lang/String;

.field private apiName:Ljava/lang/String;

.field private autoRedirect:Z

.field private cacheControlNoCache:Z

.field private charset:Ljava/lang/String;

.field private connectTimeout:I

.field private customDomain:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private dataParams:Ljava/util/Map;
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

.field private headers:Ljava/util/Map;
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

.field private host:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private jsonBody:Ljava/lang/String;

.field private mTopParams:Ljava/util/Map;
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

.field private mTopRetryTimes:I

.field private method:Ljava/lang/String;

.field private mteeUa:Ljava/lang/String;

.field private mtop:Lc8/AOp;

.field private mtopConnectTimeout:I

.field private mtopHeaders:Ljava/util/Map;
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

.field private mtopMethod:Lmtopsdk/mtop/domain/MethodEnum;

.field private mtopReadTimeout:I

.field private needEcode:Z

.field private needSession:Z

.field private openAppKey:Ljava/lang/String;

.field private params:Ljava/util/Map;
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

.field private protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

.field private readTimeout:I

.field private retryTimes:I

.field private strategyName:Ljava/lang/String;

.field private ttid:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private useCache:Z

.field private useWua:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/16 v1, 0x2710

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v1, p0, Lc8/dJj;->connectTimeout:I

    .line 43
    iput v1, p0, Lc8/dJj;->readTimeout:I

    .line 45
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lc8/dJj;->method:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "UTF-8"

    iput-object v0, p0, Lc8/dJj;->charset:Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/dJj;->autoRedirect:Z

    .line 51
    iput v2, p0, Lc8/dJj;->retryTimes:I

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/dJj;->headers:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/dJj;->params:Ljava/util/Map;

    .line 64
    const-string/jumbo v0, "{}"

    iput-object v0, p0, Lc8/dJj;->data:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/dJj;->mtopHeaders:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/dJj;->mTopParams:Ljava/util/Map;

    .line 73
    iput v2, p0, Lc8/dJj;->mTopRetryTimes:I

    .line 75
    iput v1, p0, Lc8/dJj;->mtopConnectTimeout:I

    .line 77
    iput v1, p0, Lc8/dJj;->mtopReadTimeout:I

    .line 79
    sget-object v0, Lmtopsdk/mtop/domain/MethodEnum;->GET:Lmtopsdk/mtop/domain/MethodEnum;

    iput-object v0, p0, Lc8/dJj;->mtopMethod:Lmtopsdk/mtop/domain/MethodEnum;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lc8/dJj;->useWua:I

    return-void
.end method

.method public static newInstance()Lc8/dJj;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lc8/dJj;

    invoke-direct {v0}, Lc8/dJj;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lc8/dJj;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method

.method public addMTopHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 350
    iget-object v0, p0, Lc8/dJj;->mtopHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lc8/dJj;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lc8/dJj;->apiName:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lc8/dJj;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lc8/dJj;->connectTimeout:I

    return v0
.end method

.method public getCustomDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lc8/dJj;->customDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lc8/dJj;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDataParams()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 250
    iget-object v0, p0, Lc8/dJj;->dataParams:Ljava/util/Map;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 170
    iget-object v0, p0, Lc8/dJj;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lc8/dJj;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lc8/dJj;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lc8/dJj;->jsonBody:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lc8/dJj;->apiName:Ljava/lang/String;

    invoke-static {v0}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/dJj;->version:Ljava/lang/String;

    invoke-static {v0}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    :cond_0
    const/4 v0, 0x0

    .line 342
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lc8/dJj;->apiName:Ljava/lang/String;

    iget-object v1, p0, Lc8/dJj;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/yMp;->concatStr2LowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lc8/dJj;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getMteeUa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lc8/dJj;->mteeUa:Ljava/lang/String;

    return-object v0
.end method

.method public getMtop()Lc8/AOp;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lc8/dJj;->mtop:Lc8/AOp;

    return-object v0
.end method

.method public getMtopConnectTimeout()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lc8/dJj;->mtopConnectTimeout:I

    return v0
.end method

.method public getMtopHeaders()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 346
    iget-object v0, p0, Lc8/dJj;->mtopHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getMtopMethod()Lmtopsdk/mtop/domain/MethodEnum;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lc8/dJj;->mtopMethod:Lmtopsdk/mtop/domain/MethodEnum;

    return-object v0
.end method

.method public getMtopReadTimeout()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lc8/dJj;->mtopReadTimeout:I

    return v0
.end method

.method public getOpenAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lc8/dJj;->openAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 190
    iget-object v0, p0, Lc8/dJj;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getProtocol()Lmtopsdk/mtop/domain/ProtocolEnum;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lc8/dJj;->protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lc8/dJj;->readTimeout:I

    return v0
.end method

.method public getRetryTimes()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lc8/dJj;->retryTimes:I

    return v0
.end method

.method public getStrategyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lc8/dJj;->strategyName:Ljava/lang/String;

    return-object v0
.end method

.method public getTtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lc8/dJj;->ttid:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lc8/dJj;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUseWua()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lc8/dJj;->useWua:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lc8/dJj;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getmTopParams()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 358
    iget-object v0, p0, Lc8/dJj;->mTopParams:Ljava/util/Map;

    return-object v0
.end method

.method public getmTopRetryTimes()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lc8/dJj;->mTopRetryTimes:I

    return v0
.end method

.method public isAutoRedirect()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lc8/dJj;->autoRedirect:Z

    return v0
.end method

.method public isCacheControlNoCache()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lc8/dJj;->cacheControlNoCache:Z

    return v0
.end method

.method public isNeedEcode()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lc8/dJj;->needEcode:Z

    return v0
.end method

.method public isNeedSession()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lc8/dJj;->needSession:Z

    return v0
.end method

.method public isUseCache()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lc8/dJj;->useCache:Z

    return v0
.end method

.method public setApiName(Ljava/lang/String;)V
    .locals 0
    .param p1, "apiName"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lc8/dJj;->apiName:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setAutoRedirect(Z)V
    .locals 0
    .param p1, "autoRedirect"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lc8/dJj;->autoRedirect:Z

    .line 159
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lc8/dJj;->charset:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0
    .param p1, "connectTimeout"    # I

    .prologue
    .line 134
    iput p1, p0, Lc8/dJj;->connectTimeout:I

    .line 135
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lc8/dJj;->data:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lc8/dJj;->host:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lc8/dJj;->ip:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setJsonBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonBody"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lc8/dJj;->jsonBody:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lc8/dJj;->method:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setMtopConnectTimeout(I)V
    .locals 0
    .param p1, "mtopConnectTimeout"    # I

    .prologue
    .line 378
    iput p1, p0, Lc8/dJj;->mtopConnectTimeout:I

    .line 379
    return-void
.end method

.method public setMtopMethod(Lmtopsdk/mtop/domain/MethodEnum;)V
    .locals 0
    .param p1, "mtopMethod"    # Lmtopsdk/mtop/domain/MethodEnum;

    .prologue
    .line 394
    iput-object p1, p0, Lc8/dJj;->mtopMethod:Lmtopsdk/mtop/domain/MethodEnum;

    .line 395
    return-void
.end method

.method public setMtopReadTimeout(I)V
    .locals 0
    .param p1, "mtopReadTimeout"    # I

    .prologue
    .line 386
    iput p1, p0, Lc8/dJj;->mtopReadTimeout:I

    .line 387
    return-void
.end method

.method public setNeedEcode(Z)V
    .locals 0
    .param p1, "needEcode"    # Z

    .prologue
    .line 238
    iput-boolean p1, p0, Lc8/dJj;->needEcode:Z

    .line 239
    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lc8/dJj;->params:Ljava/util/Map;

    .line 187
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0
    .param p1, "readTimeout"    # I

    .prologue
    .line 142
    iput p1, p0, Lc8/dJj;->readTimeout:I

    .line 143
    return-void
.end method

.method public setRetryTimes(I)V
    .locals 0
    .param p1, "retryTimes"    # I

    .prologue
    .line 166
    iput p1, p0, Lc8/dJj;->retryTimes:I

    .line 167
    return-void
.end method

.method public setStrategyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "strategyName"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lc8/dJj;->strategyName:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lc8/dJj;->url:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lc8/dJj;->version:Ljava/lang/String;

    .line 223
    return-void
.end method
