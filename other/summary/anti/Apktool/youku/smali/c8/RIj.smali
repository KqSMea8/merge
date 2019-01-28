.class public Lc8/RIj;
.super Ljava/lang/Object;
.source "HttpRequestManager.java"

# interfaces
.implements Lc8/TIj;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final ACTION_LOGOUT:Ljava/lang/String; = "yk_been_loginout_receiver"

.field public static final FAIL:I = 0x2

.field public static final LOGIN_TAG:Ljava/lang/String; = "YKLogin.HttpCommunication.HttpRequestManager"

.field public static final STATE_ERROR_TIMEOUT:Ljava/lang/String; = "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

.field public static final STATE_ERROR_WITHOUT_NETWORK:Ljava/lang/String; = "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5"

.field public static final SUCCESS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "HttpCommunication.HttpRequestManager"

.field public static final UNAUTHORIZED:I = 0x4


# instance fields
.field private IScancle:Z

.field private cacheData:Ljava/lang/String;

.field private connect_timeout_millis:I

.field private dataString:Ljava/lang/String;

.field private eTag:Ljava/lang/String;

.field private errorData:Ljava/lang/String;

.field private fail_reason:Ljava/lang/String;

.field private formatUri:Ljava/lang/String;

.field private isAdIntent:Z

.field private isCacheData:Z

.field private isGetCookie:Z

.field private isIgnoreEtag:Z

.field private isParseErrorCode:Z

.field private isSaveCookie:Z

.field private isSetCookie:Z

.field private method:Ljava/lang/String;

.field private read_timout_millis:I

.field private responseCode:I

.field private state:I

.field private task:Lc8/pJj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/pJj",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lc8/RIj;->state:I

    .line 94
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lc8/RIj;->method:Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/RIj;->IScancle:Z

    .line 165
    return-void
.end method

.method static synthetic access$000(Lc8/RIj;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/RIj;

    .prologue
    .line 59
    iget-object v0, p0, Lc8/RIj;->uri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lc8/RIj;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/RIj;

    .prologue
    .line 59
    iget-object v0, p0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lc8/RIj;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/RIj;

    .prologue
    .line 59
    iget-object v0, p0, Lc8/RIj;->dataString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lc8/RIj;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/RIj;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lc8/RIj;)Z
    .locals 1
    .param p0, "x0"    # Lc8/RIj;

    .prologue
    .line 59
    iget-boolean v0, p0, Lc8/RIj;->isIgnoreEtag:Z

    return v0
.end method

.method static synthetic access$1200(Lc8/RIj;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/RIj;

    .prologue
    .line 59
    iget-object v0, p0, Lc8/RIj;->cacheData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lc8/RIj;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/RIj;

    .prologue
    .line 59
    iget-object v0, p0, Lc8/RIj;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lc8/RIj;)Z
    .locals 1
    .param p0, "x0"    # Lc8/RIj;

    .prologue
    .line 59
    iget-boolean v0, p0, Lc8/RIj;->isSetCookie:Z

    return v0
.end method

.method static synthetic access$400(Lc8/RIj;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/RIj;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lc8/RIj;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lc8/RIj;)I
    .locals 1
    .param p0, "x0"    # Lc8/RIj;

    .prologue
    .line 59
    iget v0, p0, Lc8/RIj;->state:I

    return v0
.end method

.method static synthetic access$600(Lc8/RIj;)Z
    .locals 1
    .param p0, "x0"    # Lc8/RIj;

    .prologue
    .line 59
    iget-boolean v0, p0, Lc8/RIj;->isCacheData:Z

    return v0
.end method

.method static synthetic access$700(Lc8/RIj;)I
    .locals 1
    .param p0, "x0"    # Lc8/RIj;

    .prologue
    .line 59
    iget v0, p0, Lc8/RIj;->responseCode:I

    return v0
.end method

.method static synthetic access$800(Lc8/RIj;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/RIj;

    .prologue
    .line 59
    iget-object v0, p0, Lc8/RIj;->formatUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lc8/RIj;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/RIj;

    .prologue
    .line 59
    iget-object v0, p0, Lc8/RIj;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method private compatibleWithCommentError()V
    .locals 5

    .prologue
    .line 488
    iget-object v2, p0, Lc8/RIj;->errorData:Ljava/lang/String;

    iput-object v2, p0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    .line 489
    iget-object v2, p0, Lc8/RIj;->errorData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lc8/RIj;->errorData:Ljava/lang/String;

    const-string/jumbo v3, "<html>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 491
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lc8/RIj;->errorData:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 492
    .local v1, "j":Lorg/json/JSONObject;
    const-string/jumbo v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    .line 493
    const-string/jumbo v2, "HttpCommunication.HttpRequestManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "compatibleWithCommentError().fail_reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .end local v1    # "j":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "HttpCommunication.HttpRequestManager"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 496
    const-string/jumbo v2, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    iput-object v2, p0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    goto :goto_0
.end method

.method private downloadAdUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 26
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 538
    const-string/jumbo v20, "HttpCommunication.HttpRequestManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "#downloadAdUrl():"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    new-instance v16, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 540
    .local v16, "p":Lorg/apache/http/params/HttpParams;
    move-object/from16 v0, p0

    iget v0, v0, Lc8/RIj;->connect_timeout_millis:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 541
    move-object/from16 v0, p0

    iget v0, v0, Lc8/RIj;->read_timout_millis:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 542
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 543
    .local v10, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    const/4 v13, 0x0

    .line 544
    .local v13, "is":Ljava/io/InputStream;
    const/16 v17, 0x0

    .line 546
    .local v17, "path":Ljava/lang/String;
    :try_start_0
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 547
    .local v11, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    const-string/jumbo v20, "User-Agent"

    sget-object v21, Lc8/oSh;->User_Agent:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/RIj;->isCacheData:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    invoke-direct/range {p0 .. p0}, Lc8/RIj;->isLocalDataAvailable()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 549
    const-string/jumbo v20, "if-None-Match"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->eTag:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_0
    const-string/jumbo v20, "ad_cookie"

    invoke-static/range {v20 .. v20}, Lc8/tSh;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 551
    .local v14, "localAdCookie":Ljava/lang/String;
    sget-boolean v20, Lc8/oSh;->isLogined:Z

    if-eqz v20, :cond_7

    .line 552
    invoke-static {}, Lc8/oSh;->getPassportCookie()Ljava/lang/String;

    move-result-object v18

    .line 553
    .local v18, "pspCookie":Ljava/lang/String;
    const-string/jumbo v20, "Cookie"

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .end local v18    # "pspCookie":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_2
    :goto_0
    invoke-virtual {v10, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 559
    .local v12, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/RIj;->responseCode:I

    .line 561
    new-instance v19, Ljava/net/URL;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 562
    .local v19, "url":Ljava/net/URL;
    const-string/jumbo v20, "HttpCommunication.HttpRequestManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "#downloadAdUrl():"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "   isCacheData:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/RIj;->isCacheData:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "   isLogined:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-boolean v22, Lc8/oSh;->isLogined:Z

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "   isSetCookie:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/RIj;->isSetCookie:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "   response:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lc8/RIj;->responseCode:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v9

    .line 565
    .local v9, "headers":[Lorg/apache/http/Header;
    array-length v0, v9

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    aget-object v8, v9, v20

    .line 566
    .local v8, "header":Lorg/apache/http/Header;
    const-string/jumbo v22, "Etag"

    invoke-interface {v8}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 567
    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/RIj;->eTag:Ljava/lang/String;

    .line 571
    .end local v8    # "header":Lorg/apache/http/Header;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lc8/RIj;->responseCode:I

    move/from16 v20, v0

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 572
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    .line 573
    invoke-static {v13}, Lc8/tSh;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/RIj;->dataString:Ljava/lang/String;

    .line 574
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/RIj;->state:I

    .line 575
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lc8/RIj;->saveAd_cookie(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    :try_start_1
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->dataString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    .local v15, "obj":Lorg/json/JSONObject;
    :goto_2
    :try_start_2
    const-string/jumbo v20, "code"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 583
    .local v4, "code":Ljava/lang/String;
    const-string/jumbo v20, "-309"

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 584
    invoke-static {}, Lc8/Gko;->refreshSToken()V

    .line 585
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "code >>> "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 630
    .end local v4    # "code":Ljava/lang/String;
    .end local v15    # "obj":Lorg/json/JSONObject;
    :cond_4
    :goto_3
    if-eqz v13, :cond_5

    .line 632
    :try_start_3
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 638
    :cond_5
    :goto_4
    if-eqz v10, :cond_6

    .line 639
    :try_start_4
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v20

    const-wide/16 v22, 0x0

    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 645
    .end local v9    # "headers":[Lorg/apache/http/Header;
    .end local v11    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v12    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v14    # "localAdCookie":Ljava/lang/String;
    .end local v19    # "url":Ljava/net/URL;
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->dataString:Ljava/lang/String;

    move-object/from16 v20, v0

    return-object v20

    .line 554
    .restart local v11    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v14    # "localAdCookie":Ljava/lang/String;
    :cond_7
    :try_start_5
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 555
    const-string/jumbo v20, "Cookie"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v14}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 625
    .end local v11    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v14    # "localAdCookie":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 626
    .local v5, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v20, "HttpCommunication.HttpRequestManager"

    const-string/jumbo v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 627
    const-string/jumbo v20, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/RIj;->fail_reason:Ljava/lang/String;

    .line 628
    const-string/jumbo v20, "HttpCommunication.HttpRequestManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "#downloadAdUrl():"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "   fail_reason:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 630
    if-eqz v13, :cond_8

    .line 632
    :try_start_7
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 638
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_6
    if-eqz v10, :cond_6

    .line 639
    :try_start_8
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v20

    const-wide/16 v22, 0x0

    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-object/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_5

    .line 641
    :catch_1
    move-exception v5

    .line 642
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 565
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v8    # "header":Lorg/apache/http/Header;
    .restart local v9    # "headers":[Lorg/apache/http/Header;
    .restart local v11    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v12    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v14    # "localAdCookie":Ljava/lang/String;
    .restart local v19    # "url":Ljava/net/URL;
    :cond_9
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 580
    .end local v8    # "header":Lorg/apache/http/Header;
    :catch_2
    move-exception v20

    :try_start_9
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .restart local v15    # "obj":Lorg/json/JSONObject;
    goto/16 :goto_2

    .line 590
    .end local v15    # "obj":Lorg/json/JSONObject;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lc8/RIj;->responseCode:I

    move/from16 v20, v0

    const/16 v21, 0x190

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 591
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    .line 592
    invoke-static {v13}, Lc8/tSh;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/RIj;->fail_reason:Ljava/lang/String;

    .line 593
    const-string/jumbo v20, "HttpCommunication.HttpRequestManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "#downloadAdUrl():"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "   fail_reason:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    .line 630
    .end local v9    # "headers":[Lorg/apache/http/Header;
    .end local v11    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v12    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v14    # "localAdCookie":Ljava/lang/String;
    .end local v19    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v20

    if-eqz v13, :cond_b

    .line 632
    :try_start_a
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 638
    :cond_b
    :goto_7
    if-eqz v10, :cond_c

    .line 639
    :try_start_b
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v21

    const-wide/16 v22, 0x0

    sget-object v24, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v21 .. v24}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 643
    :cond_c
    :goto_8
    throw v20

    .line 594
    .restart local v9    # "headers":[Lorg/apache/http/Header;
    .restart local v11    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v12    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v14    # "localAdCookie":Ljava/lang/String;
    .restart local v19    # "url":Ljava/net/URL;
    :cond_d
    :try_start_c
    move-object/from16 v0, p0

    iget v0, v0, Lc8/RIj;->responseCode:I

    move/from16 v20, v0

    const/16 v21, 0x130

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 595
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lc8/RIj;->saveAd_cookie(Lorg/apache/http/HttpResponse;)V

    .line 596
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/RIj;->state:I

    goto/16 :goto_3

    .line 597
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lc8/RIj;->responseCode:I

    move/from16 v20, v0

    const/16 v21, 0x19a

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 598
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    .line 599
    invoke-static {v13}, Lc8/tSh;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 600
    .local v6, "d":D
    double-to-long v0, v6

    move-wide/from16 v20, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    sub-long v20, v20, v22

    sput-wide v20, Lc8/tSh;->TIMESTAMP:J

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->uri:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->method:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lc8/tSh;->updateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/RIj;->uri:Ljava/lang/String;

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->uri:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lc8/RIj;->downloadAdUrl(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_3

    .line 603
    .end local v6    # "d":D
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lc8/RIj;->responseCode:I

    move/from16 v20, v0

    const/16 v21, 0x191

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 604
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    .line 605
    invoke-static {v13}, Lc8/tSh;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/RIj;->errorData:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 608
    :try_start_d
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->errorData:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 612
    .restart local v15    # "obj":Lorg/json/JSONObject;
    :goto_9
    :try_start_e
    const-string/jumbo v20, "desc"

    const-string/jumbo v21, "\u6b64\u64cd\u4f5c\u9700\u8981\u767b\u5f55"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/RIj;->fail_reason:Ljava/lang/String;

    .line 613
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/RIj;->state:I

    .line 614
    const-string/jumbo v20, "code"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 615
    .restart local v4    # "code":Ljava/lang/String;
    const-string/jumbo v20, "-301"

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_10

    const-string/jumbo v20, "-310"

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 616
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lc8/RIj;->state:I

    move/from16 v20, v0

    or-int/lit8 v20, v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lc8/RIj;->state:I

    .line 617
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "code >>> "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    const-string/jumbo v20, "YKLogin.HttpCommunication.HttpRequestManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "HttpCommunication.HttpReqeustManager Logout >>> url: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", statusCode: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lc8/RIj;->responseCode:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", code: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lc8/wHf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_11
    const-string/jumbo v20, "HttpCommunication.HttpRequestManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "#downloadAdUri():"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "   code:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "   isParseErrorCode:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/RIj;->isParseErrorCode:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "   fail_reason:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 610
    .end local v4    # "code":Ljava/lang/String;
    .end local v15    # "obj":Lorg/json/JSONObject;
    :catch_3
    move-exception v20

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .restart local v15    # "obj":Lorg/json/JSONObject;
    goto/16 :goto_9

    .line 622
    .end local v15    # "obj":Lorg/json/JSONObject;
    :cond_12
    const-string/jumbo v20, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/RIj;->fail_reason:Ljava/lang/String;

    .line 623
    const-string/jumbo v20, "HttpCommunication.HttpRequestManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "#downloadAdUrl():"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "   fail_reason:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_3

    .line 633
    :catch_4
    move-exception v5

    .line 634
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v20, "HttpCommunication.HttpRequestManager"

    const-string/jumbo v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 641
    .end local v5    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 642
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 633
    .end local v9    # "headers":[Lorg/apache/http/Header;
    .end local v11    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v12    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v14    # "localAdCookie":Ljava/lang/String;
    .end local v19    # "url":Ljava/net/URL;
    :catch_6
    move-exception v5

    .line 634
    .local v5, "e":Ljava/io/IOException;
    const-string/jumbo v20, "HttpCommunication.HttpRequestManager"

    const-string/jumbo v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 633
    .end local v5    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v5

    .line 634
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v21, "HttpCommunication.HttpRequestManager"

    const-string/jumbo v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 641
    .end local v5    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v5

    .line 642
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8
.end method

.method private downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 20
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "isSetCookie"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 216
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lc8/RIj;->isCacheData:Z

    if-eqz v13, :cond_1

    .line 218
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1}, Lc8/tSh;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/RIj;->formatUri:Ljava/lang/String;

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/RIj;->formatUri:Ljava/lang/String;

    invoke-static {v13}, Lc8/tSh;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/RIj;->eTag:Ljava/lang/String;

    .line 220
    const-string/jumbo v13, "HttpCommunication.HttpRequestManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "#formatUri():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/RIj;->formatUri:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "----#eTag():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/RIj;->eTag:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/RIj;->eTag:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lc8/RIj;->isIgnoreEtag:Z

    if-eqz v13, :cond_1

    .line 223
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/RIj;->formatUri:Ljava/lang/String;

    invoke-static {v13}, Lc8/tSh;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/RIj;->cacheData:Ljava/lang/String;

    .line 224
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/RIj;->cacheData:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/RIj;->dataString:Ljava/lang/String;

    .line 225
    const-string/jumbo v13, "HttpCommunication.HttpRequestManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "#dataString:isEmpty?--"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/RIj;->dataString:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "--isIgnoreEtag:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/RIj;->isIgnoreEtag:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lc8/RIj;->isIgnoreEtag:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/RIj;->task:Lc8/pJj;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/RIj;->task:Lc8/pJj;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v13, v14}, Lc8/pJj;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_1
    :goto_0
    invoke-static {}, Lc8/tSh;->hasInternet()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 234
    const-string/jumbo v13, "/adv/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lc8/RIj;->isAdIntent:Z

    .line 235
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lc8/RIj;->isAdIntent:Z

    if-nez v13, :cond_12

    .line 236
    invoke-static {}, Lc8/tSh;->disableConnectionReuseIfNecessary()V

    .line 238
    const/4 v11, 0x0

    .line 240
    .local v11, "path":Ljava/lang/String;
    :try_start_1
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 241
    .local v12, "url":Ljava/net/URL;
    const-string/jumbo v13, "HttpCommunication.HttpRequestManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "#downloadUri():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lc8/tSh;->canUseNetworkSDK(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 243
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v12}, Lc8/RIj;->downloadUriByNetWorkSDK(Ljava/lang/String;Ljava/lang/String;ZLjava/net/URL;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v13

    .line 349
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "url":Ljava/net/URL;
    :cond_2
    :goto_1
    return-object v13

    .line 227
    :catch_0
    move-exception v8

    .line 228
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "HttpCommunication.HttpRequestManager"

    const-string/jumbo v14, ""

    invoke-static {v13, v14, v8}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 245
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v11    # "path":Ljava/lang/String;
    .restart local v12    # "url":Ljava/net/URL;
    :cond_3
    :try_start_2
    invoke-virtual {v12}, Ljava/net/URL;->getPath()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v11

    .line 252
    const/4 v9, 0x0

    .line 254
    .local v9, "is":Ljava/io/InputStream;
    :try_start_3
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 255
    .local v5, "conn":Ljava/net/HttpURLConnection;
    move-object/from16 v0, p0

    iget v13, v0, Lc8/RIj;->read_timout_millis:I

    invoke-virtual {v5, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 256
    move-object/from16 v0, p0

    iget v13, v0, Lc8/RIj;->connect_timeout_millis:I

    invoke-virtual {v5, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 257
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 258
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 259
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lc8/RIj;->isCacheData:Z

    if-eqz v13, :cond_4

    invoke-direct/range {p0 .. p0}, Lc8/RIj;->isLocalDataAvailable()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 260
    const-string/jumbo v13, "if-None-Match"

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/RIj;->eTag:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_4
    if-eqz p3, :cond_5

    .line 262
    const-string/jumbo v13, "Cookie"

    invoke-static {}, Lc8/oSh;->getPassportCookie()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_5
    const-string/jumbo v13, "User-Agent"

    sget-object v14, Lc8/oSh;->User_Agent:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 265
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lc8/RIj;->responseCode:I

    .line 266
    const-string/jumbo v13, "Etag"

    invoke-virtual {v5, v13}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/RIj;->eTag:Ljava/lang/String;

    .line 267
    const-string/jumbo v13, "HttpCommunication.HttpRequestManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "#downloadUri():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "   isCacheData:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/RIj;->isCacheData:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "   isLogined:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v15, Lc8/oSh;->isLogined:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "   isSetCookie:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "  eTag: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/RIj;->eTag:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "   response:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lc8/RIj;->responseCode:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    move-object/from16 v0, p0

    iget v13, v0, Lc8/RIj;->responseCode:I

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_7

    .line 269
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 270
    invoke-static {v9}, Lc8/tSh;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/RIj;->dataString:Ljava/lang/String;

    .line 271
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lc8/RIj;->state:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 274
    :try_start_4
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/RIj;->dataString:Ljava/lang/String;

    invoke-direct {v10, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 278
    .local v10, "obj":Lorg/json/JSONObject;
    :goto_2
    :try_start_5
    const-string/jumbo v13, "code"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "code":Ljava/lang/String;
    const-string/jumbo v13, "-309"

    invoke-static {v13, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 280
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "code >>> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    invoke-static {}, Lc8/Gko;->refreshSToken()V

    .line 322
    .end local v4    # "code":Ljava/lang/String;
    .end local v10    # "obj":Lorg/json/JSONObject;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/RIj;->dataString:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 334
    if-eqz v9, :cond_2

    .line 336
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 337
    :catch_1
    move-exception v8

    .line 338
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v14, "HttpCommunication.HttpRequestManager"

    const-string/jumbo v15, ""

    invoke-static {v14, v15, v8}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 246
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v12    # "url":Ljava/net/URL;
    :catch_2
    move-exception v8

    .line 247
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "HttpCommunication.HttpRequestManager"

    const-string/jumbo v14, ""

    invoke-static {v13, v14, v8}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    const-string/jumbo v13, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    .line 249
    const-string/jumbo v13, "HttpCommunication.HttpRequestManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "#downloadUri():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "   Exception:fail_reason:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/RIj;->dataString:Ljava/lang/String;

    goto/16 :goto_1

    .line 276
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v12    # "url":Ljava/net/URL;
    :catch_3
    move-exception v13

    :try_start_7
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .restart local v10    # "obj":Lorg/json/JSONObject;
    goto/16 :goto_2

    .line 286
    .end local v10    # "obj":Lorg/json/JSONObject;
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lc8/RIj;->responseCode:I

    const/16 v14, 0xcc

    if-eq v13, v14, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lc8/RIj;->responseCode:I

    const/16 v14, 0x130

    if-ne v13, v14, :cond_9

    .line 287
    :cond_8
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lc8/RIj;->state:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 323
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    :catch_4
    move-exception v8

    .line 324
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_8
    const-string/jumbo v13, "HttpCommunication.HttpRequestManager"

    const-string/jumbo v14, ""

    invoke-static {v13, v14, v8}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    const-string/jumbo v13, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    .line 326
    const-string/jumbo v13, "HttpCommunication.HttpRequestManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "#downloadUri():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "   Exception:fail_reason:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/RIj;->dataString:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 334
    if-eqz v9, :cond_2

    .line 336
    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_1

    .line 337
    :catch_5
    move-exception v8

    .line 338
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v14, "HttpCommunication.HttpRequestManager"

    const-string/jumbo v15, ""

    invoke-static {v14, v15, v8}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 288
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    :cond_9
    :try_start_a
    move-object/from16 v0, p0

    iget v13, v0, Lc8/RIj;->responseCode:I

    const/16 v14, 0x19a

    if-ne v13, v14, :cond_a

    .line 289
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    .line 290
    invoke-static {v9}, Lc8/tSh;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 291
    .local v6, "d":D
    double-to-long v14, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    sub-long v14, v14, v16

    sput-wide v14, Lc8/tSh;->TIMESTAMP:J

    .line 292
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/RIj;->uri:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lc8/tSh;->updateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/RIj;->uri:Ljava/lang/String;

    .line 293
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/RIj;->uri:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v13, v1, v2}, Lc8/RIj;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 328
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "d":D
    :catch_6
    move-exception v8

    .line 329
    .local v8, "e":Ljava/lang/Error;
    :try_start_b
    const-string/jumbo v13, "HttpCommunication.HttpRequestManager"

    const-string/jumbo v14, ""

    invoke-static {v13, v14, v8}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    const-string/jumbo v13, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    .line 331
    const-string/jumbo v13, "HttpCommunication.HttpRequestManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "#downloadUri():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "   Error:fail_reason:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/RIj;->dataString:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 334
    if-eqz v9, :cond_2

    .line 336
    :try_start_c
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_1

    .line 337
    :catch_7
    move-exception v8

    .line 338
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v14, "HttpCommunication.HttpRequestManager"

    const-string/jumbo v15, ""

    invoke-static {v14, v15, v8}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 294
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    :cond_a
    :try_start_d
    move-object/from16 v0, p0

    iget v13, v0, Lc8/RIj;->responseCode:I

    const/16 v14, 0x191

    if-ne v13, v14, :cond_e

    .line 295
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    .line 296
    invoke-static {v9}, Lc8/tSh;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/RIj;->errorData:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 299
    :try_start_e
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/RIj;->errorData:Ljava/lang/String;

    invoke-direct {v10, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 303
    .restart local v10    # "obj":Lorg/json/JSONObject;
    :goto_4
    :try_start_f
    const-string/jumbo v13, "desc"

    const-string/jumbo v14, "\u6b64\u64cd\u4f5c\u9700\u8981\u767b\u5f55"

    invoke-virtual {v10, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    .line 304
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lc8/RIj;->state:I

    .line 305
    const-string/jumbo v13, "code"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 306
    .restart local v4    # "code":Ljava/lang/String;
    const-string/jumbo v13, "-301"

    invoke-static {v13, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string/jumbo v13, "-310"

    invoke-static {v13, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 307
    :cond_b
    move-object/from16 v0, p0

    iget v13, v0, Lc8/RIj;->state:I

    or-int/lit8 v13, v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lc8/RIj;->state:I

    .line 308
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "code >>> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    const-string/jumbo v13, "YKLogin.HttpCommunication.HttpRequestManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "HttpCommunication.HttpReqeustManager Logout >>> url: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", statusCode: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lc8/RIj;->responseCode:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", code: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lc8/wHf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_c
    const-string/jumbo v13, "HttpCommunication.HttpRequestManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "#downloadUri():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "   code:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "   isParseErrorCode:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/RIj;->isParseErrorCode:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "   fail_reason:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_3

    .line 334
    .end local v4    # "code":Ljava/lang/String;
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v10    # "obj":Lorg/json/JSONObject;
    :catchall_0
    move-exception v13

    if-eqz v9, :cond_d

    .line 336
    :try_start_10
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 339
    :cond_d
    :goto_5
    throw v13

    .line 301
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    :catch_8
    move-exception v13

    :try_start_11
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .restart local v10    # "obj":Lorg/json/JSONObject;
    goto/16 :goto_4

    .line 313
    .end local v10    # "obj":Lorg/json/JSONObject;
    :cond_e
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    .line 314
    if-nez v9, :cond_10

    const-string/jumbo v13, ""

    :goto_6
    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/RIj;->errorData:Ljava/lang/String;

    .line 315
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lc8/RIj;->isCommentUrl(Ljava/net/URL;)Z

    move-result v13

    if-nez v13, :cond_f

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lc8/RIj;->isParseErrorCode:Z

    if-eqz v13, :cond_11

    .line 316
    :cond_f
    invoke-direct/range {p0 .. p0}, Lc8/RIj;->compatibleWithCommentError()V

    .line 320
    :goto_7
    const-string/jumbo v13, "HttpCommunication.HttpRequestManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "#downloadUri():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "   isParseErrorCode:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/RIj;->isParseErrorCode:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "   fail_reason:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 314
    :cond_10
    invoke-static {v9}, Lc8/tSh;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    .line 318
    :cond_11
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "\u9519\u8bef"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lc8/RIj;->responseCode:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/RIj;->fail_reason:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/Error; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_7

    .line 337
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    :catch_9
    move-exception v8

    .line 338
    .restart local v8    # "e":Ljava/io/IOException;
    const-string/jumbo v14, "HttpCommunication.HttpRequestManager"

    const-string/jumbo v15, ""

    invoke-static {v14, v15, v8}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 344
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "url":Ljava/net/URL;
    :cond_12
    invoke-direct/range {p0 .. p1}, Lc8/RIj;->downloadAdUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 347
    :cond_13
    const-string/jumbo v13, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5"

    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    .line 348
    const-string/jumbo v13, "HttpCommunication.HttpRequestManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "#downloadUri().else.fail_reason:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/RIj;->dataString:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private downloadUriByNetWorkSDK(Ljava/lang/String;Ljava/lang/String;ZLjava/net/URL;)Ljava/lang/String;
    .locals 28
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "isSetCookie"    # Z
    .param p4, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 360
    const-string/jumbo v22, "HttpCommunication.HttpRequestManager"

    const-string/jumbo v23, "#downloadUriByNetWorkSDK()"

    invoke-static/range {v22 .. v23}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/4 v14, 0x0

    .line 364
    .local v14, "path":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v14

    .line 366
    new-instance v22, Lc8/bJj;

    invoke-direct/range {v22 .. v22}, Lc8/bJj;-><init>()V

    .line 367
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lc8/bJj;->url(Ljava/lang/String;)Lc8/bJj;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lc8/RIj;->read_timout_millis:I

    move/from16 v23, v0

    .line 368
    invoke-virtual/range {v22 .. v23}, Lc8/bJj;->readTimeout(I)Lc8/bJj;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lc8/RIj;->connect_timeout_millis:I

    move/from16 v23, v0

    .line 369
    invoke-virtual/range {v22 .. v23}, Lc8/bJj;->connectTimeout(I)Lc8/bJj;

    move-result-object v22

    .line 370
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lc8/bJj;->method(Ljava/lang/String;)Lc8/bJj;

    move-result-object v22

    const/16 v23, 0x2

    .line 371
    invoke-virtual/range {v22 .. v23}, Lc8/bJj;->retryTimes(I)Lc8/bJj;

    move-result-object v22

    const-string/jumbo v23, "UTF-8"

    .line 372
    invoke-virtual/range {v22 .. v23}, Lc8/bJj;->setCharset(Ljava/lang/String;)Lc8/bJj;

    move-result-object v4

    .line 374
    .local v4, "builder":Lc8/bJj;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/RIj;->isCacheData:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    invoke-direct/range {p0 .. p0}, Lc8/RIj;->isLocalDataAvailable()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 375
    const-string/jumbo v22, "if-None-Match"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->eTag:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Lc8/bJj;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/bJj;

    .line 376
    :cond_0
    if-eqz p3, :cond_1

    .line 377
    const-string/jumbo v22, "Cookie"

    invoke-static {}, Lc8/oSh;->getPassportCookie()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Lc8/bJj;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/bJj;

    .line 378
    :cond_1
    const-string/jumbo v22, "User-Agent"

    sget-object v23, Lc8/oSh;->User_Agent:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Lc8/bJj;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/bJj;

    .line 380
    invoke-virtual {v4}, Lc8/bJj;->build()Lc8/cJj;

    move-result-object v21

    .line 381
    .local v21, "ykNetwork":Lc8/cJj;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 382
    .local v18, "ts":J
    invoke-virtual/range {v21 .. v21}, Lc8/cJj;->syncCall()Lc8/eJj;

    move-result-object v15

    .line 383
    .local v15, "response":Lc8/eJj;
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v15}, Lc8/cKj;->printResponse(Ljava/lang/String;JLc8/eJj;)V

    .line 384
    invoke-virtual {v15}, Lc8/eJj;->isCallSuccess()Z

    move-result v11

    .line 385
    .local v11, "isCallSuccess":Z
    invoke-virtual {v15}, Lc8/eJj;->getResponseCode()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/RIj;->responseCode:I

    .line 386
    invoke-virtual {v15}, Lc8/eJj;->getYkErrorCode()I

    move-result v20

    .line 388
    .local v20, "ykErrorCode":I
    if-eqz v11, :cond_d

    .line 389
    invoke-virtual {v15}, Lc8/eJj;->getConnHeadFields()Ljava/util/Map;

    move-result-object v10

    .line 390
    .local v10, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v22, "Etag"

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 391
    const-string/jumbo v22, "Etag"

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 392
    .local v12, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_2

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/RIj;->eTag:Ljava/lang/String;

    .line 394
    .end local v12    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v22, "HttpCommunication.HttpRequestManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "#downloadUriByNetWorkSDK():"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p4 .. p4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "   isCacheData:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/RIj;->isCacheData:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "   isLogined:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget-boolean v24, Lc8/oSh;->isLogined:Z

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "   isSetCookie:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "  eTag: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->eTag:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "   response:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lc8/RIj;->responseCode:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    move-object/from16 v0, p0

    iget v0, v0, Lc8/RIj;->responseCode:I

    move/from16 v22, v0

    const/16 v23, 0xc8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 396
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lc8/RIj;->getString(Lc8/eJj;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/RIj;->dataString:Ljava/lang/String;

    .line 397
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/RIj;->state:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 400
    :try_start_1
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->dataString:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    .line 404
    .local v13, "obj":Lorg/json/JSONObject;
    :goto_0
    :try_start_2
    const-string/jumbo v22, "code"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, "code":Ljava/lang/String;
    const-string/jumbo v22, "-309"

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 406
    invoke-static {}, Lc8/Gko;->refreshSToken()V

    .line 407
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "code >>> "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .end local v5    # "code":Ljava/lang/String;
    .end local v13    # "obj":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->dataString:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 465
    .end local v4    # "builder":Lc8/bJj;
    .end local v10    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v11    # "isCallSuccess":Z
    .end local v15    # "response":Lc8/eJj;
    .end local v18    # "ts":J
    .end local v20    # "ykErrorCode":I
    .end local v21    # "ykNetwork":Lc8/cJj;
    :goto_2
    return-object v22

    .line 402
    .restart local v4    # "builder":Lc8/bJj;
    .restart local v10    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v11    # "isCallSuccess":Z
    .restart local v15    # "response":Lc8/eJj;
    .restart local v18    # "ts":J
    .restart local v20    # "ykErrorCode":I
    .restart local v21    # "ykNetwork":Lc8/cJj;
    :catch_0
    move-exception v22

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .restart local v13    # "obj":Lorg/json/JSONObject;
    goto :goto_0

    .line 409
    .end local v13    # "obj":Lorg/json/JSONObject;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lc8/RIj;->responseCode:I

    move/from16 v22, v0

    const/16 v23, 0xcc

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lc8/RIj;->responseCode:I

    move/from16 v22, v0

    const/16 v23, 0x130

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 410
    :cond_5
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/RIj;->state:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 456
    .end local v4    # "builder":Lc8/bJj;
    .end local v10    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v11    # "isCallSuccess":Z
    .end local v15    # "response":Lc8/eJj;
    .end local v18    # "ts":J
    .end local v20    # "ykErrorCode":I
    .end local v21    # "ykNetwork":Lc8/cJj;
    :catch_1
    move-exception v8

    .line 457
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v22, "HttpCommunication.HttpRequestManager"

    const-string/jumbo v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 458
    const-string/jumbo v22, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/RIj;->fail_reason:Ljava/lang/String;

    .line 459
    const-string/jumbo v22, "HttpCommunication.HttpRequestManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "#downloadUriByNetWorkSDK():"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "   Exception:fail_reason:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->dataString:Ljava/lang/String;

    move-object/from16 v22, v0

    goto :goto_2

    .line 411
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "builder":Lc8/bJj;
    .restart local v10    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v11    # "isCallSuccess":Z
    .restart local v15    # "response":Lc8/eJj;
    .restart local v18    # "ts":J
    .restart local v20    # "ykErrorCode":I
    .restart local v21    # "ykNetwork":Lc8/cJj;
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lc8/RIj;->responseCode:I

    move/from16 v22, v0

    const/16 v23, 0x19a

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 412
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lc8/RIj;->getString(Lc8/eJj;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 413
    .local v6, "d":D
    double-to-long v0, v6

    move-wide/from16 v22, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    sub-long v22, v22, v24

    sput-wide v22, Lc8/tSh;->TIMESTAMP:J

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->uri:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lc8/tSh;->updateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/RIj;->uri:Ljava/lang/String;

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->uri:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lc8/RIj;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 461
    .end local v4    # "builder":Lc8/bJj;
    .end local v6    # "d":D
    .end local v10    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v11    # "isCallSuccess":Z
    .end local v15    # "response":Lc8/eJj;
    .end local v18    # "ts":J
    .end local v20    # "ykErrorCode":I
    .end local v21    # "ykNetwork":Lc8/cJj;
    :catch_2
    move-exception v8

    .line 462
    .local v8, "e":Ljava/lang/Error;
    const-string/jumbo v22, "HttpCommunication.HttpRequestManager"

    const-string/jumbo v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 463
    const-string/jumbo v22, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/RIj;->fail_reason:Ljava/lang/String;

    .line 464
    const-string/jumbo v22, "HttpCommunication.HttpRequestManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "#downloadUriByNetWorkSDK():"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "   Error:fail_reason:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->dataString:Ljava/lang/String;

    move-object/from16 v22, v0

    goto/16 :goto_2

    .line 416
    .end local v8    # "e":Ljava/lang/Error;
    .restart local v4    # "builder":Lc8/bJj;
    .restart local v10    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v11    # "isCallSuccess":Z
    .restart local v15    # "response":Lc8/eJj;
    .restart local v18    # "ts":J
    .restart local v20    # "ykErrorCode":I
    .restart local v21    # "ykNetwork":Lc8/cJj;
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget v0, v0, Lc8/RIj;->responseCode:I

    move/from16 v22, v0

    const/16 v23, 0x191

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 417
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lc8/RIj;->getString(Lc8/eJj;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/RIj;->errorData:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_2

    .line 420
    :try_start_5
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->errorData:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_2

    .line 424
    .restart local v13    # "obj":Lorg/json/JSONObject;
    :goto_3
    :try_start_6
    const-string/jumbo v22, "desc"

    const-string/jumbo v23, "\u6b64\u64cd\u4f5c\u9700\u8981\u767b\u5f55"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/RIj;->fail_reason:Ljava/lang/String;

    .line 425
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/RIj;->state:I

    .line 426
    const-string/jumbo v22, "code"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 427
    .restart local v5    # "code":Ljava/lang/String;
    const-string/jumbo v22, "-301"

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_8

    const-string/jumbo v22, "-310"

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 428
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lc8/RIj;->state:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lc8/RIj;->state:I

    .line 429
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "code >>> "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    const-string/jumbo v22, "YKLogin.HttpCommunication.HttpRequestManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "HttpCommunication.HttpReqeustManager Logout >>> url: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", statusCode: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lc8/RIj;->responseCode:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", code: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lc8/wHf;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_9
    const-string/jumbo v22, "HttpCommunication.HttpRequestManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "#downloadUriByNetWorkSDK():"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "   code:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "   isParseErrorCode:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/RIj;->isParseErrorCode:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "   fail_reason:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 422
    .end local v5    # "code":Ljava/lang/String;
    .end local v13    # "obj":Lorg/json/JSONObject;
    :catch_3
    move-exception v22

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .restart local v13    # "obj":Lorg/json/JSONObject;
    goto/16 :goto_3

    .line 434
    .end local v13    # "obj":Lorg/json/JSONObject;
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lc8/RIj;->getString(Lc8/eJj;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/RIj;->errorData:Ljava/lang/String;

    .line 435
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lc8/RIj;->isCommentUrl(Ljava/net/URL;)Z

    move-result v22

    if-nez v22, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/RIj;->isParseErrorCode:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 437
    :cond_b
    invoke-direct/range {p0 .. p0}, Lc8/RIj;->compatibleWithCommentError()V

    .line 442
    :goto_4
    const-string/jumbo v22, "HttpCommunication.HttpRequestManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "#downloadUriByNetWorkSDK():"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "   isParseErrorCode:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/RIj;->isParseErrorCode:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "   fail_reason:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 439
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lc8/RIj;->getString(Lc8/eJj;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/RIj;->errorData:Ljava/lang/String;

    .line 440
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "\u9519\u8bef"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lc8/RIj;->responseCode:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/RIj;->fail_reason:Ljava/lang/String;

    goto :goto_4

    .line 446
    .end local v10    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_d
    invoke-virtual {v15}, Lc8/eJj;->getError()Ljava/lang/Throwable;

    move-result-object v9

    .line 447
    .local v9, "error":Ljava/lang/Throwable;
    if-eqz v9, :cond_e

    .line 448
    new-instance v22, Ljava/lang/Exception;

    move-object/from16 v0, v22

    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v22

    .line 450
    :cond_e
    invoke-virtual {v15}, Lc8/eJj;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object v16

    .line 451
    .local v16, "statisticData":Lanetwork/channel/statist/StatisticData;
    if-eqz v16, :cond_f

    invoke-virtual/range {v16 .. v16}, Lanetwork/channel/statist/StatisticData;->toString()Ljava/lang/String;

    move-result-object v17

    .line 452
    .local v17, "statisticDataStr":Ljava/lang/String;
    :goto_5
    new-instance v22, Ljava/lang/Exception;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "YKErrorCode = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", msg : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v15}, Lc8/eJj;->getYkErrorMsg()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", StatisticData = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v22

    .line 451
    .end local v17    # "statisticDataStr":Ljava/lang/String;
    :cond_f
    const-string/jumbo v17, "null"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5
.end method

.method private getString(Lc8/eJj;)Ljava/lang/String;
    .locals 3
    .param p1, "response"    # Lc8/eJj;

    .prologue
    const/4 v1, 0x0

    .line 470
    if-nez p1, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-object v1

    .line 474
    :cond_1
    invoke-virtual {p1}, Lc8/eJj;->getBytedata()[B

    move-result-object v0

    .line 475
    .local v0, "bytedata":[B
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 479
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private isCommentUrl(Ljava/net/URL;)Z
    .locals 2
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 506
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/comment/add"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isLocalDataAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v2, p0, Lc8/RIj;->dataString:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 201
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lc8/RIj;->dataString:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 202
    iget-boolean v2, p0, Lc8/RIj;->isAdIntent:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lc8/RIj;->dataString:Ljava/lang/String;

    const-string/jumbo v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/RIj;->dataString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 207
    :cond_1
    :goto_0
    return v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "HttpCommunication.HttpRequestManager"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private saveAd_cookie(Lorg/apache/http/HttpResponse;)V
    .locals 7
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 518
    const-string/jumbo v4, "Set-Cookie"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 519
    .local v2, "headers":[Lorg/apache/http/Header;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 520
    .local v3, "s":Ljava/lang/StringBuffer;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 521
    .local v1, "header":Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    const-string/jumbo v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 524
    .end local v1    # "header":Lorg/apache/http/Header;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "ad_cookie":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 526
    const-string/jumbo v4, "ad_cookie"

    invoke-static {v4, v0}, Lc8/tSh;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 736
    iput-boolean v1, p0, Lc8/RIj;->IScancle:Z

    .line 737
    iget-object v0, p0, Lc8/RIj;->task:Lc8/pJj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/RIj;->task:Lc8/pJj;

    invoke-virtual {v0}, Lc8/pJj;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    iget-object v0, p0, Lc8/RIj;->task:Lc8/pJj;

    invoke-virtual {v0, v1}, Lc8/pJj;->cancel(Z)Z

    .line 740
    :cond_0
    return-void
.end method

.method public getDataString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lc8/RIj;->dataString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/RIj;->dataString:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getErrorData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lc8/RIj;->errorData:Ljava/lang/String;

    return-object v0
.end method

.method public getFailReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lc8/RIj;->fail_reason:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 759
    iget v0, p0, Lc8/RIj;->responseCode:I

    return v0
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 764
    iget-boolean v0, p0, Lc8/RIj;->IScancle:Z

    return v0
.end method

.method public parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 655
    .local p1, "dataObject":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/RIj;->dataString:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 656
    return-object p1
.end method

.method public request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V
    .locals 3
    .param p1, "i"    # Lcom/youku/network/HttpIntent;
    .param p2, "callBack"    # Lc8/SIj;

    .prologue
    const/4 v2, 0x0

    .line 661
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Lcom/youku/network/HttpIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/RIj;->uri:Ljava/lang/String;

    .line 662
    const-string/jumbo v0, "method"

    invoke-virtual {p1, v0}, Lcom/youku/network/HttpIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/RIj;->method:Ljava/lang/String;

    .line 663
    const-string/jumbo v0, "is_set_cookie"

    invoke-virtual {p1, v0, v2}, Lcom/youku/network/HttpIntent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lc8/RIj;->isSetCookie:Z

    .line 664
    const-string/jumbo v0, "is_cache_data"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/youku/network/HttpIntent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lc8/RIj;->isCacheData:Z

    .line 665
    const-string/jumbo v0, "is_ignore_etag"

    invoke-virtual {p1, v0, v2}, Lcom/youku/network/HttpIntent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lc8/RIj;->isIgnoreEtag:Z

    .line 666
    const-string/jumbo v0, "connect_timeout"

    invoke-virtual {p1, v0, v2}, Lcom/youku/network/HttpIntent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lc8/RIj;->connect_timeout_millis:I

    .line 667
    const-string/jumbo v0, "read_timeout"

    invoke-virtual {p1, v0, v2}, Lcom/youku/network/HttpIntent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lc8/RIj;->read_timout_millis:I

    .line 668
    new-instance v0, Lc8/QIj;

    invoke-direct {v0, p0, p2}, Lc8/QIj;-><init>(Lc8/RIj;Lc8/SIj;)V

    iput-object v0, p0, Lc8/RIj;->task:Lc8/pJj;

    .line 726
    iget-object v0, p0, Lc8/RIj;->task:Lc8/pJj;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc8/pJj;->execute([Ljava/lang/Object;)Lc8/pJj;

    .line 727
    return-void
.end method

.method public request(Lcom/youku/network/HttpIntent;Lc8/SIj;Ljava/lang/String;)V
    .locals 0
    .param p1, "httpIntent"    # Lcom/youku/network/HttpIntent;
    .param p2, "callBack"    # Lc8/SIj;
    .param p3, "json"    # Ljava/lang/String;

    .prologue
    .line 732
    return-void
.end method

.method public setGetCookie(Z)V
    .locals 0
    .param p1, "isGetCookie"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lc8/RIj;->isGetCookie:Z

    .line 179
    return-void
.end method

.method public setParseErrorCode(Z)V
    .locals 0
    .param p1, "isParseErrorCode"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lc8/RIj;->isParseErrorCode:Z

    .line 186
    return-void
.end method

.method public setSaveCookie(Z)V
    .locals 0
    .param p1, "isSaveCookie"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lc8/RIj;->isSaveCookie:Z

    .line 172
    return-void
.end method
