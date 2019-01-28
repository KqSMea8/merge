.class public final Lc8/YUe;
.super Ljava/lang/Object;
.source "RouteSelector.java"


# instance fields
.field private final address:Lc8/XRe;

.field private inetSocketAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private lastInetSocketAddress:Ljava/net/InetSocketAddress;

.field private lastProxy:Ljava/net/Proxy;

.field private nextInetSocketAddressIndex:I

.field private nextProxyIndex:I

.field private final postponedRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/eTe;",
            ">;"
        }
    .end annotation
.end field

.field private proxies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private final routeDatabase:Lc8/yTe;


# direct methods
.method public constructor <init>(Lc8/XRe;Lc8/yTe;)V
    .locals 2
    .param p1, "address"    # Lc8/XRe;
    .param p2, "routeDatabase"    # Lc8/yTe;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/YUe;->proxies:Ljava/util/List;

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/YUe;->inetSocketAddresses:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/YUe;->postponedRoutes:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lc8/YUe;->address:Lc8/XRe;

    .line 59
    iput-object p2, p0, Lc8/YUe;->routeDatabase:Lc8/yTe;

    .line 61
    invoke-virtual {p1}, Lc8/XRe;->url()Lc8/JSe;

    move-result-object v0

    invoke-virtual {p1}, Lc8/XRe;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lc8/YUe;->resetNextProxy(Lc8/JSe;Ljava/net/Proxy;)V

    .line 62
    return-void
.end method

.method static getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 2
    .param p0, "socketAddress"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 191
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 192
    .local v0, "address":Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 200
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private hasNextInetSocketAddress()Z
    .locals 2

    .prologue
    .line 205
    iget v0, p0, Lc8/YUe;->nextInetSocketAddressIndex:I

    iget-object v1, p0, Lc8/YUe;->inetSocketAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNextPostponed()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lc8/YUe;->postponedRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNextProxy()Z
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lc8/YUe;->nextProxyIndex:I

    iget-object v1, p0, Lc8/YUe;->proxies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextInetSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-direct {p0}, Lc8/YUe;->hasNextInetSocketAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/net/SocketException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No route to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/YUe;->address:Lc8/XRe;

    invoke-virtual {v2}, Lc8/XRe;->getUriHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; exhausted inet socket addresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/YUe;->inetSocketAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iget-object v0, p0, Lc8/YUe;->inetSocketAddresses:Ljava/util/List;

    iget v1, p0, Lc8/YUe;->nextInetSocketAddressIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc8/YUe;->nextInetSocketAddressIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method private nextPostponed()Lc8/eTe;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lc8/YUe;->postponedRoutes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/eTe;

    return-object v0
.end method

.method private nextProxy()Ljava/net/Proxy;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Lc8/YUe;->hasNextProxy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No route to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/YUe;->address:Lc8/XRe;

    invoke-virtual {v3}, Lc8/XRe;->getUriHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; exhausted proxy configurations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/YUe;->proxies:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_0
    iget-object v1, p0, Lc8/YUe;->proxies:Ljava/util/List;

    iget v2, p0, Lc8/YUe;->nextProxyIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc8/YUe;->nextProxyIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 141
    .local v0, "result":Ljava/net/Proxy;
    invoke-direct {p0, v0}, Lc8/YUe;->resetNextInetSocketAddress(Ljava/net/Proxy;)V

    .line 142
    return-object v0
.end method

.method private resetNextInetSocketAddress(Ljava/net/Proxy;)V
    .locals 11
    .param p1, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lc8/YUe;->inetSocketAddresses:Ljava/util/List;

    .line 152
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v9, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v8, v9, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v9, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v8, v9, :cond_2

    .line 153
    :cond_0
    iget-object v8, p0, Lc8/YUe;->address:Lc8/XRe;

    invoke-virtual {v8}, Lc8/XRe;->getUriHost()Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "socketHost":Ljava/lang/String;
    iget-object v8, p0, Lc8/YUe;->address:Lc8/XRe;

    invoke-virtual {v8}, Lc8/XRe;->getUriPort()I

    move-result v7

    .line 166
    .local v7, "socketPort":I
    :goto_0
    if-lez v7, :cond_1

    const v8, 0xffff

    if-le v7, v8, :cond_4

    .line 167
    :cond_1
    new-instance v8, Ljava/net/SocketException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No route to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "; port is out of range"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 156
    .end local v6    # "socketHost":Ljava/lang/String;
    .end local v7    # "socketPort":I
    :cond_2
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v3

    .line 157
    .local v3, "proxyAddress":Ljava/net/SocketAddress;
    instance-of v8, v3, Ljava/net/InetSocketAddress;

    if-nez v8, :cond_3

    .line 158
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 159
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    move-object v4, v3

    .line 161
    check-cast v4, Ljava/net/InetSocketAddress;

    .line 162
    .local v4, "proxySocketAddress":Ljava/net/InetSocketAddress;
    invoke-static {v4}, Lc8/YUe;->getHostString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v6

    .line 163
    .restart local v6    # "socketHost":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    .restart local v7    # "socketPort":I
    goto :goto_0

    .line 171
    .end local v3    # "proxyAddress":Ljava/net/SocketAddress;
    .end local v4    # "proxySocketAddress":Ljava/net/InetSocketAddress;
    :cond_4
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v8

    sget-object v9, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v8, v9, :cond_6

    .line 172
    iget-object v8, p0, Lc8/YUe;->inetSocketAddresses:Ljava/util/List;

    invoke-static {v6, v7}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_5
    const/4 v8, 0x0

    iput v8, p0, Lc8/YUe;->nextInetSocketAddressIndex:I

    .line 183
    return-void

    .line 175
    :cond_6
    iget-object v8, p0, Lc8/YUe;->address:Lc8/XRe;

    invoke-virtual {v8}, Lc8/XRe;->getDns()Lc8/BSe;

    move-result-object v8

    invoke-interface {v8, v6}, Lc8/BSe;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 176
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_1
    if-ge v1, v5, :cond_5

    .line 177
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 178
    .local v2, "inetAddress":Ljava/net/InetAddress;
    iget-object v8, p0, Lc8/YUe;->inetSocketAddresses:Ljava/util/List;

    new-instance v9, Ljava/net/InetSocketAddress;

    invoke-direct {v9, v2, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private resetNextProxy(Lc8/JSe;Ljava/net/Proxy;)V
    .locals 3
    .param p1, "url"    # Lc8/JSe;
    .param p2, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 113
    if-eqz p2, :cond_0

    .line 115
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc8/YUe;->proxies:Ljava/util/List;

    .line 126
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lc8/YUe;->nextProxyIndex:I

    .line 127
    return-void

    .line 119
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc8/YUe;->proxies:Ljava/util/List;

    .line 120
    iget-object v1, p0, Lc8/YUe;->address:Lc8/XRe;

    invoke-virtual {v1}, Lc8/XRe;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v1

    invoke-virtual {p1}, Lc8/JSe;->uri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, "selectedProxies":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    if-eqz v0, :cond_1

    iget-object v1, p0, Lc8/YUe;->proxies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    :cond_1
    iget-object v1, p0, Lc8/YUe;->proxies:Ljava/util/List;

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 124
    iget-object v1, p0, Lc8/YUe;->proxies:Ljava/util/List;

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public connectFailed(Lc8/eTe;Ljava/io/IOException;)V
    .locals 3
    .param p1, "failedRoute"    # Lc8/eTe;
    .param p2, "failure"    # Ljava/io/IOException;

    .prologue
    .line 102
    invoke-virtual {p1}, Lc8/eTe;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lc8/YUe;->address:Lc8/XRe;

    invoke-virtual {v0}, Lc8/XRe;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lc8/YUe;->address:Lc8/XRe;

    invoke-virtual {v0}, Lc8/XRe;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    iget-object v1, p0, Lc8/YUe;->address:Lc8/XRe;

    .line 105
    invoke-virtual {v1}, Lc8/XRe;->url()Lc8/JSe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/JSe;->uri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Lc8/eTe;->getProxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 104
    invoke-virtual {v0, v1, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lc8/YUe;->routeDatabase:Lc8/yTe;

    invoke-virtual {v0, p1}, Lc8/yTe;->failed(Lc8/eTe;)V

    .line 109
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lc8/YUe;->hasNextInetSocketAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0}, Lc8/YUe;->hasNextProxy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lc8/YUe;->hasNextPostponed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lc8/eTe;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lc8/YUe;->hasNextInetSocketAddress()Z

    move-result v1

    if-nez v1, :cond_3

    .line 77
    invoke-direct {p0}, Lc8/YUe;->hasNextProxy()Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    invoke-direct {p0}, Lc8/YUe;->hasNextPostponed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 81
    :cond_0
    invoke-direct {p0}, Lc8/YUe;->nextPostponed()Lc8/eTe;

    move-result-object v0

    .line 94
    :cond_1
    :goto_0
    return-object v0

    .line 83
    :cond_2
    invoke-direct {p0}, Lc8/YUe;->nextProxy()Ljava/net/Proxy;

    move-result-object v1

    iput-object v1, p0, Lc8/YUe;->lastProxy:Ljava/net/Proxy;

    .line 85
    :cond_3
    invoke-direct {p0}, Lc8/YUe;->nextInetSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    iput-object v1, p0, Lc8/YUe;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    .line 87
    new-instance v0, Lc8/eTe;

    iget-object v1, p0, Lc8/YUe;->address:Lc8/XRe;

    iget-object v2, p0, Lc8/YUe;->lastProxy:Ljava/net/Proxy;

    iget-object v3, p0, Lc8/YUe;->lastInetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2, v3}, Lc8/eTe;-><init>(Lc8/XRe;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 88
    .local v0, "route":Lc8/eTe;
    iget-object v1, p0, Lc8/YUe;->routeDatabase:Lc8/yTe;

    invoke-virtual {v1, v0}, Lc8/yTe;->shouldPostpone(Lc8/eTe;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lc8/YUe;->postponedRoutes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {p0}, Lc8/YUe;->next()Lc8/eTe;

    move-result-object v0

    goto :goto_0
.end method
