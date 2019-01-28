.class public Lc8/Uhq;
.super Ljava/lang/Object;
.source "OkClient.java"

# interfaces
.implements Lc8/Phq;


# instance fields
.field private final client:Lc8/QSe;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lc8/Uhq;->generateDefaultOkHttp()Lc8/QSe;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Uhq;-><init>(Lc8/QSe;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lc8/QSe;)V
    .locals 2
    .param p1, "client"    # Lc8/QSe;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "client == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lc8/Uhq;->client:Lc8/QSe;

    .line 50
    return-void
.end method

.method private static createHeaders(Lc8/GSe;)Ljava/util/List;
    .locals 6
    .param p0, "headers"    # Lc8/GSe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/GSe;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/Rhq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lc8/GSe;->size()I

    move-result v2

    .line 119
    .local v2, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .local v0, "headerList":Ljava/util/List;, "Ljava/util/List<Lretrofit/client/Header;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 121
    new-instance v3, Lc8/Rhq;

    invoke-virtual {p0, v1}, Lc8/GSe;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1}, Lc8/GSe;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lc8/Rhq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-object v0
.end method

.method static createRequest(Lc8/Vhq;)Lc8/VSe;
    .locals 9
    .param p0, "request"    # Lc8/Vhq;

    .prologue
    .line 57
    new-instance v6, Lc8/USe;

    invoke-direct {v6}, Lc8/USe;-><init>()V

    .line 58
    invoke-virtual {p0}, Lc8/Vhq;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/USe;->url(Ljava/lang/String;)Lc8/USe;

    move-result-object v6

    .line 59
    invoke-virtual {p0}, Lc8/Vhq;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lc8/Vhq;->getBody()Lc8/Hiq;

    move-result-object v8

    invoke-static {v8}, Lc8/Uhq;->createRequestBody(Lc8/Hiq;)Lc8/ZSe;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lc8/USe;->method(Ljava/lang/String;Lc8/ZSe;)Lc8/USe;

    move-result-object v0

    .line 61
    .local v0, "builder":Lc8/USe;
    invoke-virtual {p0}, Lc8/Vhq;->getHeaders()Ljava/util/List;

    move-result-object v2

    .line 62
    .local v2, "headers":Ljava/util/List;, "Ljava/util/List<Lretrofit/client/Header;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 63
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Rhq;

    .line 64
    .local v1, "header":Lc8/Rhq;
    invoke-virtual {v1}, Lc8/Rhq;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "value":Ljava/lang/String;
    if-nez v5, :cond_0

    const-string/jumbo v5, ""

    .line 66
    :cond_0
    invoke-virtual {v1}, Lc8/Rhq;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lc8/USe;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;

    .line 62
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "header":Lc8/Rhq;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lc8/USe;->build()Lc8/VSe;

    move-result-object v6

    return-object v6
.end method

.method private static createRequestBody(Lc8/Hiq;)Lc8/ZSe;
    .locals 2
    .param p0, "body"    # Lc8/Hiq;

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 79
    const/4 v1, 0x0

    .line 82
    :goto_0
    return-object v1

    .line 81
    :cond_0
    invoke-interface {p0}, Lc8/Hiq;->mimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/MSe;->parse(Ljava/lang/String;)Lc8/MSe;

    move-result-object v0

    .line 82
    .local v0, "mediaType":Lc8/MSe;
    new-instance v1, Lc8/Shq;

    invoke-direct {v1, v0, p0}, Lc8/Shq;-><init>(Lc8/MSe;Lc8/Hiq;)V

    goto :goto_0
.end method

.method private static createResponseBody(Lc8/dTe;)Lc8/Giq;
    .locals 4
    .param p0, "body"    # Lc8/dTe;

    .prologue
    .line 98
    invoke-virtual {p0}, Lc8/dTe;->contentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/Thq;

    invoke-direct {v0, p0}, Lc8/Thq;-><init>(Lc8/dTe;)V

    goto :goto_0
.end method

.method private static generateDefaultOkHttp()Lc8/QSe;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lc8/QSe;

    invoke-direct {v0}, Lc8/QSe;-><init>()V

    .line 36
    .local v0, "client":Lc8/QSe;
    const-wide/16 v2, 0x3a98

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lc8/QSe;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 37
    const-wide/16 v2, 0x4e20

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lc8/QSe;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 38
    return-object v0
.end method

.method static parseResponse(Lc8/cTe;)Lc8/Whq;
    .locals 6
    .param p0, "response"    # Lc8/cTe;

    .prologue
    .line 73
    new-instance v0, Lc8/Whq;

    invoke-virtual {p0}, Lc8/cTe;->request()Lc8/VSe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/VSe;->urlString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lc8/cTe;->code()I

    move-result v2

    invoke-virtual {p0}, Lc8/cTe;->message()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {p0}, Lc8/cTe;->headers()Lc8/GSe;

    move-result-object v4

    invoke-static {v4}, Lc8/Uhq;->createHeaders(Lc8/GSe;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lc8/cTe;->body()Lc8/dTe;

    move-result-object v5

    invoke-static {v5}, Lc8/Uhq;->createResponseBody(Lc8/dTe;)Lc8/Giq;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lc8/Whq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lc8/Giq;)V

    return-object v0
.end method


# virtual methods
.method public execute(Lc8/Vhq;)Lc8/Whq;
    .locals 2
    .param p1, "request"    # Lc8/Vhq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lc8/Uhq;->client:Lc8/QSe;

    invoke-static {p1}, Lc8/Uhq;->createRequest(Lc8/Vhq;)Lc8/VSe;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/QSe;->newCall(Lc8/VSe;)Lc8/mSe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/mSe;->execute()Lc8/cTe;

    move-result-object v0

    invoke-static {v0}, Lc8/Uhq;->parseResponse(Lc8/cTe;)Lc8/Whq;

    move-result-object v0

    return-object v0
.end method
