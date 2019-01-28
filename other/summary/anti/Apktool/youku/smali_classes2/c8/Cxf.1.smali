.class public Lc8/Cxf;
.super Ljava/lang/Object;
.source "DefaultHttpLoader.java"

# interfaces
.implements Lc8/Exf;


# instance fields
.field private mConnectTimeout:I

.field private mReadTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x3a98

    iput v0, p0, Lc8/Cxf;->mConnectTimeout:I

    .line 15
    const/16 v0, 0x2710

    iput v0, p0, Lc8/Cxf;->mReadTimeout:I

    return-void
.end method


# virtual methods
.method public connectTimeout(I)V
    .locals 0
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 19
    iput p1, p0, Lc8/Cxf;->mConnectTimeout:I

    .line 20
    return-void
.end method

.method public load(Ljava/lang/String;Ljava/util/Map;Lc8/Dxf;)Ljava/util/concurrent/Future;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p3, "finishCallback"    # Lc8/Dxf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/Dxf;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "//"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "http:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 33
    :cond_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 34
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 35
    .local v1, "httpConn":Ljava/net/HttpURLConnection;
    iget v4, p0, Lc8/Cxf;->mConnectTimeout:I

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 36
    iget v4, p0, Lc8/Cxf;->mReadTimeout:I

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 37
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 38
    .local v2, "responseCode":I
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_1

    .line 39
    new-instance v4, Lc8/exf;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lc8/exf;-><init>(Ljava/io/InputStream;I)V

    invoke-interface {p3, v4}, Lc8/Dxf;->onFinished(Lc8/exf;)V

    .line 46
    .end local v1    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v2    # "responseCode":I
    .end local v3    # "url":Ljava/net/URL;
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 41
    .restart local v1    # "httpConn":Ljava/net/HttpURLConnection;
    .restart local v2    # "responseCode":I
    .restart local v3    # "url":Ljava/net/URL;
    :cond_1
    new-instance v4, Lcom/taobao/phenix/loader/network/HttpCodeResponseException;

    invoke-direct {v4, v2}, Lcom/taobao/phenix/loader/network/HttpCodeResponseException;-><init>(I)V

    invoke-interface {p3, v4}, Lc8/Dxf;->onError(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    .end local v1    # "httpConn":Ljava/net/HttpURLConnection;
    .end local v2    # "responseCode":I
    .end local v3    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "ex":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Lc8/Dxf;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public readTimeout(I)V
    .locals 0
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 24
    iput p1, p0, Lc8/Cxf;->mReadTimeout:I

    .line 25
    return-void
.end method
