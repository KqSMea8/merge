.class public Lc8/eK;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/bK;,
        Lc8/cK;,
        Lc8/dK;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"


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

.field public final rs:Lanet/channel/statist/RequestStatistic;

.field private sendUrl:Lc8/XL;

.field private seq:Ljava/lang/String;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private url:Ljava/net/URL;


# direct methods
.method private constructor <init>(Lc8/cK;)V
    .locals 3
    .param p1, "builder"    # Lc8/cK;

    .prologue
    const/16 v1, 0x2710

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lc8/eK;->method:Ljava/lang/String;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/eK;->isRedirectEnable:Z

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lc8/eK;->redirectTimes:I

    .line 65
    iput v1, p0, Lc8/eK;->connectTimeout:I

    .line 66
    iput v1, p0, Lc8/eK;->readTimeout:I

    .line 72
    invoke-static {p1}, Lc8/cK;->access$000(Lc8/cK;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/eK;->method:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lc8/cK;->access$100(Lc8/cK;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lc8/eK;->headers:Ljava/util/Map;

    .line 74
    invoke-static {p1}, Lc8/cK;->access$200(Lc8/cK;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lc8/eK;->params:Ljava/util/Map;

    .line 75
    invoke-static {p1}, Lc8/cK;->access$300(Lc8/cK;)Lanet/channel/request/BodyEntry;

    move-result-object v0

    iput-object v0, p0, Lc8/eK;->body:Lanet/channel/request/BodyEntry;

    .line 76
    invoke-static {p1}, Lc8/cK;->access$400(Lc8/cK;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/eK;->charset:Ljava/lang/String;

    .line 77
    invoke-static {p1}, Lc8/cK;->access$500(Lc8/cK;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/eK;->isRedirectEnable:Z

    .line 78
    invoke-static {p1}, Lc8/cK;->access$600(Lc8/cK;)I

    move-result v0

    iput v0, p0, Lc8/eK;->redirectTimes:I

    .line 79
    invoke-static {p1}, Lc8/cK;->access$700(Lc8/cK;)Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lc8/eK;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 80
    invoke-static {p1}, Lc8/cK;->access$800(Lc8/cK;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lc8/eK;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 81
    invoke-static {p1}, Lc8/cK;->access$900(Lc8/cK;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/eK;->bizId:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lc8/cK;->access$1000(Lc8/cK;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/eK;->seq:Ljava/lang/String;

    .line 83
    invoke-static {p1}, Lc8/cK;->access$1100(Lc8/cK;)I

    move-result v0

    iput v0, p0, Lc8/eK;->connectTimeout:I

    .line 84
    invoke-static {p1}, Lc8/cK;->access$1200(Lc8/cK;)I

    move-result v0

    iput v0, p0, Lc8/eK;->readTimeout:I

    .line 85
    invoke-static {p1}, Lc8/cK;->access$1300(Lc8/cK;)Lc8/XL;

    move-result-object v0

    iput-object v0, p0, Lc8/eK;->originUrl:Lc8/XL;

    .line 86
    invoke-static {p1}, Lc8/cK;->access$1400(Lc8/cK;)Lc8/XL;

    move-result-object v0

    iput-object v0, p0, Lc8/eK;->formattedUrl:Lc8/XL;

    .line 87
    iget-object v0, p0, Lc8/eK;->formattedUrl:Lc8/XL;

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0}, Lc8/eK;->formatUrl()V

    .line 90
    :cond_0
    invoke-static {p1}, Lc8/cK;->access$1500(Lc8/cK;)Lanet/channel/statist/RequestStatistic;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lc8/cK;->access$1500(Lc8/cK;)Lanet/channel/statist/RequestStatistic;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    .line 91
    return-void

    .line 90
    :cond_1
    new-instance v0, Lanet/channel/statist/RequestStatistic;

    invoke-virtual {p0}, Lc8/eK;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/eK;->bizId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lc8/cK;Lc8/bK;)V
    .locals 0
    .param p1, "x0"    # Lc8/cK;
    .param p2, "x1"    # Lc8/bK;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lc8/eK;-><init>(Lc8/cK;)V

    return-void
.end method

.method private formatUrl()V
    .locals 8

    .prologue
    const/16 v6, 0x26

    .line 227
    iget-object v4, p0, Lc8/eK;->params:Ljava/util/Map;

    invoke-virtual {p0}, Lc8/eK;->getContentEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/zL;->encodeQueryParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "paramString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 229
    iget-object v4, p0, Lc8/eK;->method:Ljava/lang/String;

    invoke-static {v4}, Lc8/dK;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/eK;->body:Lanet/channel/request/BodyEntry;

    if-eqz v4, :cond_5

    .line 230
    :cond_0
    iget-object v4, p0, Lc8/eK;->originUrl:Lc8/XL;

    invoke-virtual {v4}, Lc8/XL;->urlString()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "urlString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 233
    const/16 v4, 0x3f

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    :cond_1
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/XL;->parse(Ljava/lang/String;)Lc8/XL;

    move-result-object v2

    .line 239
    .local v2, "tmp":Lc8/XL;
    if-eqz v2, :cond_2

    .line 240
    iput-object v2, p0, Lc8/eK;->formattedUrl:Lc8/XL;

    .line 250
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "tmp":Lc8/XL;
    .end local v3    # "urlString":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v4, p0, Lc8/eK;->formattedUrl:Lc8/XL;

    if-nez v4, :cond_3

    .line 251
    iget-object v4, p0, Lc8/eK;->originUrl:Lc8/XL;

    iput-object v4, p0, Lc8/eK;->formattedUrl:Lc8/XL;

    .line 253
    :cond_3
    return-void

    .line 234
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "urlString":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_1

    .line 235
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 244
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "urlString":Ljava/lang/String;
    :cond_5
    :try_start_0
    new-instance v4, Lanet/channel/request/ByteArrayEntry;

    invoke-virtual {p0}, Lc8/eK;->getContentEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lanet/channel/request/ByteArrayEntry;-><init>([B)V

    iput-object v4, p0, Lc8/eK;->body:Lanet/channel/request/BodyEntry;

    .line 245
    iget-object v4, p0, Lc8/eK;->headers:Ljava/util/Map;

    const-string/jumbo v5, "Content-Type"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lc8/eK;->getContentEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public containsBody()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lc8/eK;->body:Lanet/channel/request/BodyEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBodyBytes()[B
    .locals 2

    .prologue
    .line 195
    iget-object v1, p0, Lc8/eK;->body:Lanet/channel/request/BodyEntry;

    if-eqz v1, :cond_0

    .line 196
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 198
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Lc8/eK;->postBody(Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 203
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lc8/eK;->connectTimeout:I

    return v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lc8/eK;->charset:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/eK;->charset:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "UTF-8"

    goto :goto_0
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
    .line 167
    iget-object v0, p0, Lc8/eK;->headers:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lc8/eK;->formattedUrl:Lc8/XL;

    invoke-virtual {v0}, Lc8/XL;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lc8/eK;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getHttpUrl()Lc8/XL;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lc8/eK;->formattedUrl:Lc8/XL;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lc8/eK;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lc8/eK;->readTimeout:I

    return v0
.end method

.method public getRedirectTimes()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lc8/eK;->redirectTimes:I

    return v0
.end method

.method public getSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lc8/eK;->seq:Ljava/lang/String;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lc8/eK;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lc8/eK;->url:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lc8/eK;->sendUrl:Lc8/XL;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/eK;->sendUrl:Lc8/XL;

    invoke-virtual {v0}, Lc8/XL;->toURL()Ljava/net/URL;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lc8/eK;->url:Ljava/net/URL;

    .line 126
    :cond_0
    iget-object v0, p0, Lc8/eK;->url:Ljava/net/URL;

    return-object v0

    .line 124
    :cond_1
    iget-object v0, p0, Lc8/eK;->formattedUrl:Lc8/XL;

    invoke-virtual {v0}, Lc8/XL;->toURL()Ljava/net/URL;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lc8/eK;->formattedUrl:Lc8/XL;

    invoke-virtual {v0}, Lc8/XL;->urlString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRedirectEnable()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lc8/eK;->isRedirectEnable:Z

    return v0
.end method

.method public newBuilder()Lc8/cK;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lc8/cK;

    invoke-direct {v0}, Lc8/cK;-><init>()V

    .line 95
    .local v0, "builder":Lc8/cK;
    iget-object v1, p0, Lc8/eK;->method:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/cK;->access$002(Lc8/cK;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lc8/eK;->headers:Ljava/util/Map;

    invoke-static {v0, v1}, Lc8/cK;->access$102(Lc8/cK;Ljava/util/Map;)Ljava/util/Map;

    .line 97
    iget-object v1, p0, Lc8/eK;->params:Ljava/util/Map;

    invoke-static {v0, v1}, Lc8/cK;->access$202(Lc8/cK;Ljava/util/Map;)Ljava/util/Map;

    .line 98
    iget-object v1, p0, Lc8/eK;->body:Lanet/channel/request/BodyEntry;

    invoke-static {v0, v1}, Lc8/cK;->access$302(Lc8/cK;Lanet/channel/request/BodyEntry;)Lanet/channel/request/BodyEntry;

    .line 99
    iget-object v1, p0, Lc8/eK;->charset:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/cK;->access$402(Lc8/cK;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    iget-boolean v1, p0, Lc8/eK;->isRedirectEnable:Z

    invoke-static {v0, v1}, Lc8/cK;->access$502(Lc8/cK;Z)Z

    .line 101
    iget v1, p0, Lc8/eK;->redirectTimes:I

    invoke-static {v0, v1}, Lc8/cK;->access$602(Lc8/cK;I)I

    .line 102
    iget-object v1, p0, Lc8/eK;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v1}, Lc8/cK;->access$702(Lc8/cK;Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/HostnameVerifier;

    .line 103
    iget-object v1, p0, Lc8/eK;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v1}, Lc8/cK;->access$802(Lc8/cK;Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/SSLSocketFactory;

    .line 104
    iget-object v1, p0, Lc8/eK;->originUrl:Lc8/XL;

    invoke-static {v0, v1}, Lc8/cK;->access$1302(Lc8/cK;Lc8/XL;)Lc8/XL;

    .line 105
    iget-object v1, p0, Lc8/eK;->formattedUrl:Lc8/XL;

    invoke-static {v0, v1}, Lc8/cK;->access$1402(Lc8/cK;Lc8/XL;)Lc8/XL;

    .line 106
    iget-object v1, p0, Lc8/eK;->bizId:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/cK;->access$902(Lc8/cK;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lc8/eK;->seq:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/cK;->access$1002(Lc8/cK;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    iget v1, p0, Lc8/eK;->connectTimeout:I

    invoke-static {v0, v1}, Lc8/cK;->access$1102(Lc8/cK;I)I

    .line 109
    iget v1, p0, Lc8/eK;->readTimeout:I

    invoke-static {v0, v1}, Lc8/cK;->access$1202(Lc8/cK;I)I

    .line 110
    iget-object v1, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {v0, v1}, Lc8/cK;->access$1502(Lc8/cK;Lanet/channel/statist/RequestStatistic;)Lanet/channel/statist/RequestStatistic;

    .line 111
    return-object v0
.end method

.method public postBody(Ljava/io/OutputStream;)I
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "cnt":I
    iget-object v1, p0, Lc8/eK;->body:Lanet/channel/request/BodyEntry;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lc8/eK;->body:Lanet/channel/request/BodyEntry;

    invoke-interface {v1, p1}, Lanet/channel/request/BodyEntry;->writeTo(Ljava/io/OutputStream;)I

    move-result v0

    .line 191
    :cond_0
    return v0
.end method

.method public setDnsOptimize(Ljava/lang/String;I)V
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 133
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 134
    iget-object v0, p0, Lc8/eK;->sendUrl:Lc8/XL;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lc8/XL;

    iget-object v1, p0, Lc8/eK;->formattedUrl:Lc8/XL;

    invoke-direct {v0, v1}, Lc8/XL;-><init>(Lc8/XL;)V

    iput-object v0, p0, Lc8/eK;->sendUrl:Lc8/XL;

    .line 137
    :cond_0
    iget-object v0, p0, Lc8/eK;->sendUrl:Lc8/XL;

    invoke-virtual {v0, p1, p2}, Lc8/XL;->replaceIpAndPort(Ljava/lang/String;I)V

    .line 138
    iget-object v0, p0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {v0, p1, p2}, Lanet/channel/statist/RequestStatistic;->setIPAndPort(Ljava/lang/String;I)V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/eK;->url:Ljava/net/URL;

    .line 141
    :cond_1
    return-void
.end method

.method public setUrlScheme(Z)V
    .locals 2
    .param p1, "isSsl"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lc8/eK;->sendUrl:Lc8/XL;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lc8/XL;

    iget-object v1, p0, Lc8/eK;->formattedUrl:Lc8/XL;

    invoke-direct {v0, v1}, Lc8/XL;-><init>(Lc8/XL;)V

    iput-object v0, p0, Lc8/eK;->sendUrl:Lc8/XL;

    .line 150
    :cond_0
    iget-object v1, p0, Lc8/eK;->sendUrl:Lc8/XL;

    if-eqz p1, :cond_1

    const-string/jumbo v0, "https"

    :goto_0
    invoke-virtual {v1, v0}, Lc8/XL;->setScheme(Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/eK;->url:Ljava/net/URL;

    .line 152
    return-void

    .line 150
    :cond_1
    const-string/jumbo v0, "http"

    goto :goto_0
.end method
