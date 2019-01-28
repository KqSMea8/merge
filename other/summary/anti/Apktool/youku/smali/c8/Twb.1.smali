.class public Lc8/Twb;
.super Lc8/Rwb;
.source "InspectResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 10
    invoke-direct {p0}, Lc8/Rwb;-><init>()V

    .line 11
    iget-object v0, p0, Lc8/Twb;->payload:Ljava/util/Map;

    const-string/jumbo v1, "headers"

    iget-object v2, p0, Lc8/Twb;->headers:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-void
.end method


# virtual methods
.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lc8/Twb;->payload:Ljava/util/Map;

    return-object v0
.end method

.method public setConnectionId(I)V
    .locals 3
    .param p1, "connectionId"    # I

    .prologue
    .line 19
    iget-object v0, p0, Lc8/Twb;->payload:Ljava/util/Map;

    const-string/jumbo v1, "connectionId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    return-void
.end method

.method public setConnectionReused(Z)V
    .locals 3
    .param p1, "reused"    # Z

    .prologue
    .line 23
    iget-object v0, p0, Lc8/Twb;->payload:Ljava/util/Map;

    const-string/jumbo v1, "connectionReused"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public setFromDiskCache(Z)V
    .locals 3
    .param p1, "fromDiskCache"    # Z

    .prologue
    .line 27
    iget-object v0, p0, Lc8/Twb;->payload:Ljava/util/Map;

    const-string/jumbo v1, "fromDiskCache"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 2
    .param p1, "phrase"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lc8/Twb;->payload:Ljava/util/Map;

    const-string/jumbo v1, "reasonPhrase"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public setStatusCode(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lc8/Twb;->payload:Ljava/util/Map;

    const-string/jumbo v1, "statusCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public setTiming(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "timing":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lc8/Twb;->payload:Ljava/util/Map;

    const-string/jumbo v1, "timing"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method
