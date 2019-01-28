.class public Lc8/Swb;
.super Lc8/Rwb;
.source "InspectRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lc8/Rwb;-><init>()V

    return-void
.end method


# virtual methods
.method public setBody(Ljava/lang/String;)V
    .locals 2
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v0, p0, Lc8/Swb;->payload:Ljava/util/Map;

    const-string/jumbo v1, "body"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public setBody([B)V
    .locals 2
    .param p1, "body"    # [B

    .prologue
    .line 26
    iget-object v0, p0, Lc8/Swb;->payload:Ljava/util/Map;

    const-string/jumbo v1, "body"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v0, p0, Lc8/Swb;->payload:Ljava/util/Map;

    const-string/jumbo v1, "friendlyName"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public setFriendlyNameExtra(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "extra"    # Ljava/lang/Integer;

    .prologue
    .line 10
    iget-object v0, p0, Lc8/Swb;->payload:Ljava/util/Map;

    const-string/jumbo v1, "friendlyNameExtra"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 18
    iget-object v0, p0, Lc8/Swb;->payload:Ljava/util/Map;

    const-string/jumbo v1, "method"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 14
    iget-object v0, p0, Lc8/Swb;->payload:Ljava/util/Map;

    const-string/jumbo v1, "url"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-void
.end method
