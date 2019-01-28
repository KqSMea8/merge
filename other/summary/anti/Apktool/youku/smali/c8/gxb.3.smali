.class public Lc8/gxb;
.super Ljava/lang/Object;
.source "MtopTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtopTracker"

.field private static enabled:Z


# instance fields
.field private mEventReporter:Lc8/Uwb;

.field private mNetworkInspector:Lc8/Ywb;

.field private final mRequestId:I

.field private mRequestIdString:Ljava/lang/String;
    .annotation build Lc8/jFp;
    .end annotation
.end field

.field private requestBodyUtil:Lc8/xxb;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lc8/gxb;->enabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lc8/Vwb;->nextRequestId()I

    move-result v0

    iput v0, p0, Lc8/gxb;->mRequestId:I

    .line 45
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lc8/Uwb;->getInstance()Lc8/Uwb;

    move-result-object v0

    iput-object v0, p0, Lc8/gxb;->mEventReporter:Lc8/Uwb;

    .line 47
    invoke-static {}, Lc8/Zwb;->createDefault()Lc8/Zwb;

    move-result-object v0

    iput-object v0, p0, Lc8/gxb;->mNetworkInspector:Lc8/Ywb;

    .line 48
    const-string/jumbo v0, "MtopTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Create new instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lc8/gxb;)Lc8/xxb;
    .locals 1
    .param p0, "x0"    # Lc8/gxb;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/gxb;->requestBodyUtil:Lc8/xxb;

    return-object v0
.end method

.method static synthetic access$002(Lc8/gxb;Lc8/xxb;)Lc8/xxb;
    .locals 0
    .param p0, "x0"    # Lc8/gxb;
    .param p1, "x1"    # Lc8/xxb;

    .prologue
    .line 31
    iput-object p1, p0, Lc8/gxb;->requestBodyUtil:Lc8/xxb;

    return-object p1
.end method

.method static synthetic access$100(Lc8/gxb;)Lc8/Uwb;
    .locals 1
    .param p0, "x0"    # Lc8/gxb;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/gxb;->mEventReporter:Lc8/Uwb;

    return-object v0
.end method

.method static synthetic access$200(Lc8/gxb;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/gxb;

    .prologue
    .line 31
    invoke-direct {p0}, Lc8/gxb;->getRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lc8/gxb;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/gxb;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/gxb;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lc8/gxb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/gxb;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lc8/gxb;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lc8/gxb;Lmtopsdk/mtop/domain/MtopResponse;Lc8/Twb;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 1
    .param p0, "x0"    # Lc8/gxb;
    .param p1, "x1"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p2, "x2"    # Lc8/Twb;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lc8/gxb;->interceptResponse(Lmtopsdk/mtop/domain/MtopResponse;Lc8/Twb;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lc8/gxb;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/gxb;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lc8/gxb;->interceptResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private canReport()Z
    .locals 1

    .prologue
    .line 311
    sget-boolean v0, Lc8/gxb;->enabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/gxb;->mEventReporter:Lc8/Uwb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/gxb;->mEventReporter:Lc8/Uwb;

    invoke-virtual {v0}, Lc8/Uwb;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lc8/gxb;->mRequestIdString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 316
    iget v0, p0, Lc8/gxb;->mRequestId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/gxb;->mRequestIdString:Ljava/lang/String;

    .line 318
    :cond_0
    iget-object v0, p0, Lc8/gxb;->mRequestIdString:Ljava/lang/String;

    return-object v0
.end method

.method private interceptResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-direct {p0}, Lc8/gxb;->canReport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 287
    .local v4, "inputStream":Ljava/io/InputStream;
    iget-object v0, p0, Lc8/gxb;->mEventReporter:Lc8/Uwb;

    invoke-direct {p0}, Lc8/gxb;->getRequestId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "application/json"

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lc8/Uwb;->interpretResponseStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    .line 292
    iget-object v0, p0, Lc8/gxb;->mEventReporter:Lc8/Uwb;

    invoke-direct {p0}, Lc8/gxb;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Uwb;->responseReadFinished(Ljava/lang/String;)V

    .line 294
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :cond_0
    return-object p1
.end method

.method private interceptResponse(Lmtopsdk/mtop/domain/MtopResponse;Lc8/Twb;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 6
    .param p1, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p2, "descriptor"    # Lc8/Twb;

    .prologue
    .line 298
    invoke-direct {p0}, Lc8/gxb;->canReport()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 300
    .local v4, "inputStream":Ljava/io/InputStream;
    iget-object v0, p0, Lc8/gxb;->mEventReporter:Lc8/Uwb;

    invoke-direct {p0}, Lc8/gxb;->getRequestId()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {p2}, Lc8/Twb;->contentType()Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-virtual {p2}, Lc8/Twb;->contentEncoding()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 300
    invoke-virtual/range {v0 .. v5}, Lc8/Uwb;->interpretResponseStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    .line 305
    iget-object v0, p0, Lc8/gxb;->mEventReporter:Lc8/Uwb;

    invoke-direct {p0}, Lc8/gxb;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Uwb;->responseReadFinished(Ljava/lang/String;)V

    .line 307
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :cond_0
    return-object p1
.end method

.method public static newInstance()Lc8/gxb;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lc8/gxb;

    invoke-direct {v0}, Lc8/gxb;-><init>()V

    return-object v0
.end method

.method public static setEnabled(Z)V
    .locals 0
    .param p0, "isEnabled"    # Z

    .prologue
    .line 57
    sput-boolean p0, Lc8/gxb;->enabled:Z

    .line 58
    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-direct {p0}, Lc8/gxb;->canReport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lc8/gxb;->mEventReporter:Lc8/Uwb;

    new-instance v2, Lc8/cxb;

    invoke-direct {v2, p0, p2}, Lc8/cxb;-><init>(Lc8/gxb;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc8/Uwb;->execAsync(Ljava/lang/Runnable;)V

    .line 186
    :cond_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/gxb;->mNetworkInspector:Lc8/Ywb;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/gxb;->mNetworkInspector:Lc8/Ywb;

    invoke-interface {v1}, Lc8/Ywb;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    :try_start_0
    iget-object v1, p0, Lc8/gxb;->mNetworkInspector:Lc8/Ywb;

    new-instance v2, Lc8/Xwb;

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-direct {v2, p1, p2, v3, v4}, Lc8/Xwb;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {v1, v2}, Lc8/Ywb;->onResponse(Lc8/Xwb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_1
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MtopTracker"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 7
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-direct {p0}, Lc8/gxb;->canReport()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 248
    iget-object v4, p0, Lc8/gxb;->mEventReporter:Lc8/Uwb;

    new-instance v5, Lc8/fxb;

    invoke-direct {v5, p0, p1}, Lc8/fxb;-><init>(Lc8/gxb;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lc8/Uwb;->execAsync(Ljava/lang/Runnable;)V

    .line 272
    :cond_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lc8/gxb;->mNetworkInspector:Lc8/Ywb;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lc8/gxb;->mNetworkInspector:Lc8/Ywb;

    invoke-interface {v4}, Lc8/Ywb;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 274
    :try_start_0
    invoke-static {p1}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 275
    .local v3, "respObj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "api"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "api":Ljava/lang/String;
    const-string/jumbo v4, "code"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 277
    .local v1, "code":I
    iget-object v4, p0, Lc8/gxb;->mNetworkInspector:Lc8/Ywb;

    new-instance v5, Lc8/Xwb;

    const/4 v6, 0x0

    invoke-direct {v5, v0, p1, v1, v6}, Lc8/Xwb;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    invoke-interface {v4, v5}, Lc8/Ywb;->onResponse(Lc8/Xwb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v0    # "api":Ljava/lang/String;
    .end local v1    # "code":I
    .end local v3    # "respObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v2

    .line 279
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "MtopTracker"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResponse(Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 7
    .param p1, "response"    # Lmtopsdk/mtop/domain/MtopResponse;

    .prologue
    .line 125
    invoke-direct {p0}, Lc8/gxb;->canReport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lc8/gxb;->mEventReporter:Lc8/Uwb;

    new-instance v2, Lc8/bxb;

    invoke-direct {v2, p0, p1}, Lc8/bxb;-><init>(Lc8/gxb;Lmtopsdk/mtop/domain/MtopResponse;)V

    invoke-virtual {v1, v2}, Lc8/Uwb;->execAsync(Ljava/lang/Runnable;)V

    .line 165
    :cond_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/gxb;->mNetworkInspector:Lc8/Ywb;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/gxb;->mNetworkInspector:Lc8/Ywb;

    invoke-interface {v1}, Lc8/Ywb;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    :try_start_0
    iget-object v1, p0, Lc8/gxb;->mNetworkInspector:Lc8/Ywb;

    new-instance v2, Lc8/Xwb;

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 168
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v5

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lc8/Xwb;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 167
    invoke-interface {v1, v2}, Lc8/Ywb;->onResponse(Lc8/Xwb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MtopTracker"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public preRequest(Lc8/HMf;)V
    .locals 6
    .param p1, "business"    # Lc8/HMf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-direct {p0}, Lc8/gxb;->canReport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lc8/gxb;->mEventReporter:Lc8/Uwb;

    new-instance v2, Lc8/axb;

    invoke-direct {v2, p0, p1}, Lc8/axb;-><init>(Lc8/gxb;Lc8/HMf;)V

    invoke-virtual {v1, v2}, Lc8/Uwb;->execAsync(Ljava/lang/Runnable;)V

    .line 114
    :cond_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/gxb;->mNetworkInspector:Lc8/Ywb;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/gxb;->mNetworkInspector:Lc8/Ywb;

    invoke-interface {v1}, Lc8/Ywb;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    :try_start_0
    iget-object v1, p0, Lc8/gxb;->mNetworkInspector:Lc8/Ywb;

    new-instance v2, Lc8/Wwb;

    iget-object v3, p1, Lc8/HMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lc8/HMf;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v4}, Lmtopsdk/mtop/common/MtopNetworkProp;->getMethod()Lmtopsdk/mtop/domain/MethodEnum;

    move-result-object v4

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MethodEnum;->getMethod()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lc8/HMf;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 117
    invoke-virtual {v5}, Lmtopsdk/mtop/common/MtopNetworkProp;->getRequestHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lc8/Wwb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 116
    invoke-interface {v1, v2}, Lc8/Ywb;->onRequest(Lc8/Wwb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MtopTracker"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public preRequest(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 7
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 196
    invoke-direct {p0}, Lc8/gxb;->canReport()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    iget-object v4, p0, Lc8/gxb;->mEventReporter:Lc8/Uwb;

    new-instance v5, Lc8/exb;

    invoke-direct {v5, p0, p1}, Lc8/exb;-><init>(Lc8/gxb;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v4, v5}, Lc8/Uwb;->execAsync(Ljava/lang/Runnable;)V

    .line 234
    :cond_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lc8/gxb;->mNetworkInspector:Lc8/Ywb;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lc8/gxb;->mNetworkInspector:Lc8/Ywb;

    invoke-interface {v4}, Lc8/Ywb;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 236
    :try_start_0
    const-string/jumbo v4, "type"

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v3, "GET"

    .line 237
    .local v3, "method":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "data"

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 238
    .local v1, "data":Ljava/util/Map;
    const-string/jumbo v4, "api"

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "api":Ljava/lang/String;
    iget-object v4, p0, Lc8/gxb;->mNetworkInspector:Lc8/Ywb;

    new-instance v5, Lc8/Wwb;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .end local v1    # "data":Ljava/util/Map;
    :goto_1
    invoke-direct {v5, v0, v3, v1}, Lc8/Wwb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v4, v5}, Lc8/Ywb;->onRequest(Lc8/Wwb;)V

    .line 244
    .end local v0    # "api":Ljava/lang/String;
    .end local v3    # "method":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 236
    :cond_2
    const-string/jumbo v4, "type"

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 239
    .restart local v0    # "api":Ljava/lang/String;
    .restart local v1    # "data":Ljava/util/Map;
    .restart local v3    # "method":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 240
    .end local v0    # "api":Ljava/lang/String;
    .end local v1    # "data":Ljava/util/Map;
    .end local v3    # "method":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 241
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "MtopTracker"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
