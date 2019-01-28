.class public Lc8/qUb;
.super Lc8/zUb;
.source "MotuRequestErrInfo.java"


# instance fields
.field public cdnIP:Ljava/lang/String;

.field public playStage:Ljava/lang/String;

.field public playWay:Ljava/lang/String;

.field public videoPlayType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lc8/zUb;-><init>()V

    return-void
.end method


# virtual methods
.method public toMap()Ljava/util/Map;
    .locals 4
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
    .line 40
    invoke-virtual {p0}, Lc8/qUb;->toBaseMap()Ljava/util/Map;

    move-result-object v1

    .line 42
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lc8/qUb;->toErrorInfoMap()Ljava/util/Map;

    move-result-object v0

    .line 43
    .local v0, "errInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 47
    :cond_0
    iget-object v2, p0, Lc8/qUb;->errorCode:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 48
    const-string/jumbo v2, "requestErrorCode"

    iget-object v3, p0, Lc8/qUb;->errorCode:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_1
    iget-object v2, p0, Lc8/qUb;->errorMsg:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 51
    const-string/jumbo v2, "requestErrorMsg"

    iget-object v3, p0, Lc8/qUb;->errorMsg:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_2
    iget-object v2, p0, Lc8/qUb;->videoPlayType:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 55
    const-string/jumbo v2, "videoPlayType"

    iget-object v3, p0, Lc8/qUb;->videoPlayType:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :goto_0
    iget-object v2, p0, Lc8/qUb;->cdnIP:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 61
    const-string/jumbo v2, "cdnIP"

    iget-object v3, p0, Lc8/qUb;->cdnIP:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :goto_1
    iget-object v2, p0, Lc8/qUb;->playWay:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 67
    const-string/jumbo v2, "playWay"

    iget-object v3, p0, Lc8/qUb;->playWay:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :goto_2
    iget-object v2, p0, Lc8/qUb;->playStage:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 73
    const-string/jumbo v2, "playStage"

    iget-object v3, p0, Lc8/qUb;->playStage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :goto_3
    return-object v1

    .line 57
    :cond_3
    const-string/jumbo v2, "videoPlayType"

    const-string/jumbo v3, "-1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    :cond_4
    const-string/jumbo v2, "cdnIP"

    const-string/jumbo v3, "-1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 69
    :cond_5
    const-string/jumbo v2, "playWay"

    const-string/jumbo v3, "-1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 75
    :cond_6
    const-string/jumbo v2, "playStage"

    const-string/jumbo v3, "-1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method
