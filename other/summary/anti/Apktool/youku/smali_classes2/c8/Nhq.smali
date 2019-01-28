.class public Lc8/Nhq;
.super Ljava/lang/Object;
.source "ApacheClient.java"

# interfaces
.implements Lc8/Phq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Mhq;,
        Lc8/Khq;,
        Lc8/Lhq;
    }
.end annotation


# instance fields
.field private final client:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lc8/Nhq;->createDefaultClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Nhq;-><init>(Lorg/apache/http/client/HttpClient;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lc8/Nhq;->client:Lorg/apache/http/client/HttpClient;

    .line 61
    return-void
.end method

.method private static createDefaultClient()Lorg/apache/http/client/HttpClient;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 47
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    const/16 v1, 0x3a98

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 48
    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 49
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method static createRequest(Lc8/Vhq;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1
    .param p0, "request"    # Lc8/Vhq;

    .prologue
    .line 75
    invoke-virtual {p0}, Lc8/Vhq;->getBody()Lc8/Hiq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lc8/Khq;

    invoke-direct {v0, p0}, Lc8/Khq;-><init>(Lc8/Vhq;)V

    .line 78
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/Lhq;

    invoke-direct {v0, p0}, Lc8/Lhq;-><init>(Lc8/Vhq;)V

    goto :goto_0
.end method

.method static parseResponse(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Lc8/Whq;
    .locals 15
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    .line 83
    .local v11, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 84
    .local v2, "status":I
    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "reason":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v4, "headers":Ljava/util/List;, "Ljava/util/List<Lretrofit/client/Header;>;"
    const-string/jumbo v7, "application/octet-stream"

    .line 88
    .local v7, "contentType":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    array-length v13, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v13, :cond_1

    aget-object v9, v1, v0

    .line 89
    .local v9, "header":Lorg/apache/http/Header;
    invoke-interface {v9}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v10

    .line 90
    .local v10, "name":Ljava/lang/String;
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 91
    .local v12, "value":Ljava/lang/String;
    const-string/jumbo v14, "Content-Type"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 92
    move-object v7, v12

    .line 94
    :cond_0
    new-instance v14, Lc8/Rhq;

    invoke-direct {v14, v10, v12}, Lc8/Rhq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v9    # "header":Lorg/apache/http/Header;
    .end local v10    # "name":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    .line 98
    .local v5, "body":Lc8/Eiq;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 99
    .local v8, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v8, :cond_2

    .line 100
    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v6

    .line 101
    .local v6, "bytes":[B
    new-instance v5, Lc8/Eiq;

    .end local v5    # "body":Lc8/Eiq;
    invoke-direct {v5, v7, v6}, Lc8/Eiq;-><init>(Ljava/lang/String;[B)V

    .line 104
    .end local v6    # "bytes":[B
    .restart local v5    # "body":Lc8/Eiq;
    :cond_2
    new-instance v0, Lc8/Whq;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lc8/Whq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lc8/Giq;)V

    return-object v0
.end method


# virtual methods
.method public execute(Lc8/Vhq;)Lc8/Whq;
    .locals 3
    .param p1, "request"    # Lc8/Vhq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p1}, Lc8/Nhq;->createRequest(Lc8/Vhq;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 65
    .local v0, "apacheRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    iget-object v2, p0, Lc8/Nhq;->client:Lorg/apache/http/client/HttpClient;

    invoke-virtual {p0, v2, v0}, Lc8/Nhq;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 66
    .local v1, "apacheResponse":Lorg/apache/http/HttpResponse;
    invoke-virtual {p1}, Lc8/Vhq;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lc8/Nhq;->parseResponse(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Lc8/Whq;

    move-result-object v2

    return-object v2
.end method

.method protected execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method
