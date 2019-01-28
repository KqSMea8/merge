.class public Lc8/cK;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/eK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bizId:Ljava/lang/String;

.field private body:Lanet/channel/request/BodyEntry;

.field private charset:Ljava/lang/String;

.field private connectTimeout:I

.field private formattedUrl:Lc8/XL;

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

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private isRedirectEnable:Z

.field private method:Ljava/lang/String;

.field private originUrl:Lc8/XL;

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

.field private readTimeout:I

.field private redirectTimes:I

.field private rs:Lanet/channel/statist/RequestStatistic;

.field private seq:Ljava/lang/String;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lc8/cK;->method:Ljava/lang/String;

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/cK;->headers:Ljava/util/Map;

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/cK;->isRedirectEnable:Z

    .line 264
    iput v1, p0, Lc8/cK;->redirectTimes:I

    .line 269
    iput v1, p0, Lc8/cK;->connectTimeout:I

    .line 270
    iput v1, p0, Lc8/cK;->readTimeout:I

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/cK;->rs:Lanet/channel/statist/RequestStatistic;

    .line 274
    return-void
.end method

.method static synthetic access$000(Lc8/cK;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/cK;

    .prologue
    .line 255
    iget-object v0, p0, Lc8/cK;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lc8/cK;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/cK;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lc8/cK;->method:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lc8/cK;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/cK;

    .prologue
    .line 255
    iget-object v0, p0, Lc8/cK;->headers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lc8/cK;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/cK;

    .prologue
    .line 255
    iget-object v0, p0, Lc8/cK;->seq:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lc8/cK;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/cK;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lc8/cK;->seq:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lc8/cK;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lc8/cK;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 255
    iput-object p1, p0, Lc8/cK;->headers:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$1100(Lc8/cK;)I
    .locals 1
    .param p0, "x0"    # Lc8/cK;

    .prologue
    .line 255
    iget v0, p0, Lc8/cK;->connectTimeout:I

    return v0
.end method

.method static synthetic access$1102(Lc8/cK;I)I
    .locals 0
    .param p0, "x0"    # Lc8/cK;
    .param p1, "x1"    # I

    .prologue
    .line 255
    iput p1, p0, Lc8/cK;->connectTimeout:I

    return p1
.end method

.method static synthetic access$1200(Lc8/cK;)I
    .locals 1
    .param p0, "x0"    # Lc8/cK;

    .prologue
    .line 255
    iget v0, p0, Lc8/cK;->readTimeout:I

    return v0
.end method

.method static synthetic access$1202(Lc8/cK;I)I
    .locals 0
    .param p0, "x0"    # Lc8/cK;
    .param p1, "x1"    # I

    .prologue
    .line 255
    iput p1, p0, Lc8/cK;->readTimeout:I

    return p1
.end method

.method static synthetic access$1300(Lc8/cK;)Lc8/XL;
    .locals 1
    .param p0, "x0"    # Lc8/cK;

    .prologue
    .line 255
    iget-object v0, p0, Lc8/cK;->originUrl:Lc8/XL;

    return-object v0
.end method

.method static synthetic access$1302(Lc8/cK;Lc8/XL;)Lc8/XL;
    .locals 0
    .param p0, "x0"    # Lc8/cK;
    .param p1, "x1"    # Lc8/XL;

    .prologue
    .line 255
    iput-object p1, p0, Lc8/cK;->originUrl:Lc8/XL;

    return-object p1
.end method

.method static synthetic access$1400(Lc8/cK;)Lc8/XL;
    .locals 1
    .param p0, "x0"    # Lc8/cK;

    .prologue
    .line 255
    iget-object v0, p0, Lc8/cK;->formattedUrl:Lc8/XL;

    return-object v0
.end method

.method static synthetic access$1402(Lc8/cK;Lc8/XL;)Lc8/XL;
    .locals 0
    .param p0, "x0"    # Lc8/cK;
    .param p1, "x1"    # Lc8/XL;

    .prologue
    .line 255
    iput-object p1, p0, Lc8/cK;->formattedUrl:Lc8/XL;

    return-object p1
.end method

.method static synthetic access$1500(Lc8/cK;)Lanet/channel/statist/RequestStatistic;
    .locals 1
    .param p0, "x0"    # Lc8/cK;

    .prologue
    .line 255
    iget-object v0, p0, Lc8/cK;->rs:Lanet/channel/statist/RequestStatistic;

    return-object v0
.end method

.method static synthetic access$1502(Lc8/cK;Lanet/channel/statist/RequestStatistic;)Lanet/channel/statist/RequestStatistic;
    .locals 0
    .param p0, "x0"    # Lc8/cK;
    .param p1, "x1"    # Lanet/channel/statist/RequestStatistic;

    .prologue
    .line 255
    iput-object p1, p0, Lc8/cK;->rs:Lanet/channel/statist/RequestStatistic;

    return-object p1
.end method

.method static synthetic access$200(Lc8/cK;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/cK;

    .prologue
    .line 255
    iget-object v0, p0, Lc8/cK;->params:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$202(Lc8/cK;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lc8/cK;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 255
    iput-object p1, p0, Lc8/cK;->params:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$300(Lc8/cK;)Lanet/channel/request/BodyEntry;
    .locals 1
    .param p0, "x0"    # Lc8/cK;

    .prologue
    .line 255
    iget-object v0, p0, Lc8/cK;->body:Lanet/channel/request/BodyEntry;

    return-object v0
.end method

.method static synthetic access$302(Lc8/cK;Lanet/channel/request/BodyEntry;)Lanet/channel/request/BodyEntry;
    .locals 0
    .param p0, "x0"    # Lc8/cK;
    .param p1, "x1"    # Lanet/channel/request/BodyEntry;

    .prologue
    .line 255
    iput-object p1, p0, Lc8/cK;->body:Lanet/channel/request/BodyEntry;

    return-object p1
.end method

.method static synthetic access$400(Lc8/cK;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/cK;

    .prologue
    .line 255
    iget-object v0, p0, Lc8/cK;->charset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lc8/cK;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/cK;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lc8/cK;->charset:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lc8/cK;)Z
    .locals 1
    .param p0, "x0"    # Lc8/cK;

    .prologue
    .line 255
    iget-boolean v0, p0, Lc8/cK;->isRedirectEnable:Z

    return v0
.end method

.method static synthetic access$502(Lc8/cK;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/cK;
    .param p1, "x1"    # Z

    .prologue
    .line 255
    iput-boolean p1, p0, Lc8/cK;->isRedirectEnable:Z

    return p1
.end method

.method static synthetic access$600(Lc8/cK;)I
    .locals 1
    .param p0, "x0"    # Lc8/cK;

    .prologue
    .line 255
    iget v0, p0, Lc8/cK;->redirectTimes:I

    return v0
.end method

.method static synthetic access$602(Lc8/cK;I)I
    .locals 0
    .param p0, "x0"    # Lc8/cK;
    .param p1, "x1"    # I

    .prologue
    .line 255
    iput p1, p0, Lc8/cK;->redirectTimes:I

    return p1
.end method

.method static synthetic access$700(Lc8/cK;)Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .param p0, "x0"    # Lc8/cK;

    .prologue
    .line 255
    iget-object v0, p0, Lc8/cK;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method static synthetic access$702(Lc8/cK;Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/HostnameVerifier;
    .locals 0
    .param p0, "x0"    # Lc8/cK;
    .param p1, "x1"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 255
    iput-object p1, p0, Lc8/cK;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p1
.end method

.method static synthetic access$800(Lc8/cK;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .param p0, "x0"    # Lc8/cK;

    .prologue
    .line 255
    iget-object v0, p0, Lc8/cK;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method static synthetic access$802(Lc8/cK;Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0
    .param p0, "x0"    # Lc8/cK;
    .param p1, "x1"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 255
    iput-object p1, p0, Lc8/cK;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p1
.end method

.method static synthetic access$900(Lc8/cK;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/cK;

    .prologue
    .line 255
    iget-object v0, p0, Lc8/cK;->bizId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lc8/cK;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/cK;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lc8/cK;->bizId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lc8/cK;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 324
    iget-object v0, p0, Lc8/cK;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    return-object p0
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lc8/cK;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v0, p0, Lc8/cK;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/cK;->params:Ljava/util/Map;

    .line 338
    :cond_0
    iget-object v0, p0, Lc8/cK;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/cK;->formattedUrl:Lc8/XL;

    .line 340
    return-object p0
.end method

.method public build()Lc8/eK;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 401
    iget-object v0, p0, Lc8/cK;->body:Lanet/channel/request/BodyEntry;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/cK;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/cK;->method:Ljava/lang/String;

    invoke-static {v0}, Lc8/dK;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const-string/jumbo v0, "awcn.Request"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/cK;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must have a request body"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    :cond_0
    iget-object v0, p0, Lc8/cK;->body:Lanet/channel/request/BodyEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/cK;->method:Ljava/lang/String;

    invoke-static {v0}, Lc8/dK;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    const-string/jumbo v0, "awcn.Request"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/cK;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " should not have a request body"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    iput-object v3, p0, Lc8/cK;->body:Lanet/channel/request/BodyEntry;

    .line 411
    :cond_1
    iget-object v0, p0, Lc8/cK;->body:Lanet/channel/request/BodyEntry;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/cK;->body:Lanet/channel/request/BodyEntry;

    invoke-interface {v0}, Lanet/channel/request/BodyEntry;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 412
    const-string/jumbo v0, "Content-Type"

    iget-object v1, p0, Lc8/cK;->body:Lanet/channel/request/BodyEntry;

    invoke-interface {v1}, Lanet/channel/request/BodyEntry;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/cK;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lc8/cK;

    .line 415
    :cond_2
    new-instance v0, Lc8/eK;

    invoke-direct {v0, p0, v3}, Lc8/eK;-><init>(Lc8/cK;Lc8/bK;)V

    return-object v0
.end method

.method public setBizId(Ljava/lang/String;)Lc8/cK;
    .locals 0
    .param p1, "bizId"    # Ljava/lang/String;

    .prologue
    .line 375
    iput-object p1, p0, Lc8/cK;->bizId:Ljava/lang/String;

    .line 376
    return-object p0
.end method

.method public setBody(Lanet/channel/request/BodyEntry;)Lc8/cK;
    .locals 0
    .param p1, "body"    # Lanet/channel/request/BodyEntry;

    .prologue
    .line 350
    iput-object p1, p0, Lc8/cK;->body:Lanet/channel/request/BodyEntry;

    .line 351
    return-object p0
.end method

.method public setCharset(Ljava/lang/String;)Lc8/cK;
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 344
    iput-object p1, p0, Lc8/cK;->charset:Ljava/lang/String;

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/cK;->formattedUrl:Lc8/XL;

    .line 346
    return-object p0
.end method

.method public setConnectTimeout(I)Lc8/cK;
    .locals 0
    .param p1, "connectTimeout"    # I

    .prologue
    .line 390
    iput p1, p0, Lc8/cK;->connectTimeout:I

    .line 391
    return-object p0
.end method

.method public setHeaders(Ljava/util/Map;)Lc8/cK;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/cK;"
        }
    .end annotation

    .prologue
    .line 316
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lc8/cK;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 317
    if-eqz p1, :cond_0

    .line 318
    iget-object v0, p0, Lc8/cK;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 320
    :cond_0
    return-object p0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lc8/cK;
    .locals 0
    .param p1, "verifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 365
    iput-object p1, p0, Lc8/cK;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 366
    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lc8/cK;
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "method is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    const-string/jumbo v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lc8/cK;->method:Ljava/lang/String;

    .line 312
    :goto_0
    return-object p0

    .line 298
    :cond_1
    const-string/jumbo v0, "POST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    const-string/jumbo v0, "POST"

    iput-object v0, p0, Lc8/cK;->method:Ljava/lang/String;

    goto :goto_0

    .line 300
    :cond_2
    const-string/jumbo v0, "OPTIONS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    const-string/jumbo v0, "OPTIONS"

    iput-object v0, p0, Lc8/cK;->method:Ljava/lang/String;

    goto :goto_0

    .line 302
    :cond_3
    const-string/jumbo v0, "HEAD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 303
    const-string/jumbo v0, "HEAD"

    iput-object v0, p0, Lc8/cK;->method:Ljava/lang/String;

    goto :goto_0

    .line 304
    :cond_4
    const-string/jumbo v0, "PUT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 305
    const-string/jumbo v0, "PUT"

    iput-object v0, p0, Lc8/cK;->method:Ljava/lang/String;

    goto :goto_0

    .line 306
    :cond_5
    const-string/jumbo v0, "DELETE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 307
    const-string/jumbo v0, "DELETE"

    iput-object v0, p0, Lc8/cK;->method:Ljava/lang/String;

    goto :goto_0

    .line 309
    :cond_6
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lc8/cK;->method:Ljava/lang/String;

    goto :goto_0
.end method

.method public setReadTimeout(I)Lc8/cK;
    .locals 0
    .param p1, "readTimeout"    # I

    .prologue
    .line 385
    iput p1, p0, Lc8/cK;->readTimeout:I

    .line 386
    return-object p0
.end method

.method public setRedirectEnable(Z)Lc8/cK;
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 355
    iput-boolean p1, p0, Lc8/cK;->isRedirectEnable:Z

    .line 356
    return-object p0
.end method

.method public setRedirectTimes(I)Lc8/cK;
    .locals 0
    .param p1, "redirectTimes"    # I

    .prologue
    .line 360
    iput p1, p0, Lc8/cK;->redirectTimes:I

    .line 361
    return-object p0
.end method

.method public setRequestStatistic(Lanet/channel/statist/RequestStatistic;)Lc8/cK;
    .locals 0
    .param p1, "rs"    # Lanet/channel/statist/RequestStatistic;

    .prologue
    .line 395
    iput-object p1, p0, Lc8/cK;->rs:Lanet/channel/statist/RequestStatistic;

    .line 396
    return-object p0
.end method

.method public setSeq(Ljava/lang/String;)Lc8/cK;
    .locals 0
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 380
    iput-object p1, p0, Lc8/cK;->seq:Ljava/lang/String;

    .line 381
    return-object p0
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lc8/cK;
    .locals 0
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 370
    iput-object p1, p0, Lc8/cK;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 371
    return-object p0
.end method

.method public setUrl(Lc8/XL;)Lc8/cK;
    .locals 1
    .param p1, "httpUrl"    # Lc8/XL;

    .prologue
    .line 277
    iput-object p1, p0, Lc8/cK;->originUrl:Lc8/XL;

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/cK;->formattedUrl:Lc8/XL;

    .line 279
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lc8/cK;
    .locals 3
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static {p1}, Lc8/XL;->parse(Ljava/lang/String;)Lc8/XL;

    move-result-object v0

    iput-object v0, p0, Lc8/cK;->originUrl:Lc8/XL;

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/cK;->formattedUrl:Lc8/XL;

    .line 285
    iget-object v0, p0, Lc8/cK;->originUrl:Lc8/XL;

    if-nez v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toURL is invalid! toURL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    return-object p0
.end method
