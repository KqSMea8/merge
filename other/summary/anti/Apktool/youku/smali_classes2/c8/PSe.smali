.class public final Lc8/PSe;
.super Lc8/pTe;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/QSe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lc8/pTe;-><init>()V

    return-void
.end method


# virtual methods
.method public addLenient(Lc8/FSe;Ljava/lang/String;)V
    .locals 0
    .param p1, "builder"    # Lc8/FSe;
    .param p2, "line"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-virtual {p1, p2}, Lc8/FSe;->addLenient(Ljava/lang/String;)Lc8/FSe;

    .line 64
    return-void
.end method

.method public apply(Lc8/xSe;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0
    .param p1, "tlsConfiguration"    # Lc8/xSe;
    .param p2, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p3, "isFallback"    # Z

    .prologue
    .line 107
    invoke-virtual {p1, p2, p3}, Lc8/xSe;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    .line 108
    return-void
.end method

.method public connectionBecameIdle(Lc8/uSe;Lc8/gVe;)Z
    .locals 1
    .param p1, "pool"    # Lc8/uSe;
    .param p2, "connection"    # Lc8/gVe;

    .prologue
    .line 80
    invoke-virtual {p1, p2}, Lc8/uSe;->connectionBecameIdle(Lc8/gVe;)Z

    move-result v0

    return v0
.end method

.method public get(Lc8/uSe;Lc8/XRe;Lc8/aVe;)Lc8/gVe;
    .locals 1
    .param p1, "pool"    # Lc8/uSe;
    .param p2, "address"    # Lc8/XRe;
    .param p3, "streamAllocation"    # Lc8/aVe;

    .prologue
    .line 85
    invoke-virtual {p1, p2, p3}, Lc8/uSe;->get(Lc8/XRe;Lc8/aVe;)Lc8/gVe;

    move-result-object v0

    return-object v0
.end method

.method public getHttpUrlChecked(Ljava/lang/String;)Lc8/JSe;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p1}, Lc8/JSe;->getChecked(Ljava/lang/String;)Lc8/JSe;

    move-result-object v0

    return-object v0
.end method

.method public internalCache(Lc8/QSe;)Lc8/qTe;
    .locals 1
    .param p1, "client"    # Lc8/QSe;

    .prologue
    .line 75
    invoke-virtual {p1}, Lc8/QSe;->internalCache()Lc8/qTe;

    move-result-object v0

    return-object v0
.end method

.method public put(Lc8/uSe;Lc8/gVe;)V
    .locals 0
    .param p1, "pool"    # Lc8/uSe;
    .param p2, "connection"    # Lc8/gVe;

    .prologue
    .line 89
    invoke-virtual {p1, p2}, Lc8/uSe;->put(Lc8/gVe;)V

    .line 90
    return-void
.end method

.method public routeDatabase(Lc8/uSe;)Lc8/yTe;
    .locals 1
    .param p1, "connectionPool"    # Lc8/uSe;

    .prologue
    .line 93
    iget-object v0, p1, Lc8/uSe;->routeDatabase:Lc8/yTe;

    return-object v0
.end method
