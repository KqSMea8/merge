.class public Lc8/sUb;
.super Lc8/zUb;
.source "MotuVideoPlayErrInfo.java"


# instance fields
.field public bussinessType:Ljava/lang/String;

.field public cdnIP:Ljava/lang/String;

.field public playStage:Ljava/lang/String;

.field public playWay:Ljava/lang/String;

.field public videoPlayType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
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
    .line 48
    invoke-virtual {p0}, Lc8/sUb;->toBaseMap()Ljava/util/Map;

    move-result-object v1

    .line 50
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lc8/sUb;->toErrorInfoMap()Ljava/util/Map;

    move-result-object v0

    .line 51
    .local v0, "errInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 55
    :cond_0
    iget-object v2, p0, Lc8/sUb;->errorCode:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 56
    const-string/jumbo v2, "videoErrorCode"

    iget-object v3, p0, Lc8/sUb;->errorCode:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_1
    iget-object v2, p0, Lc8/sUb;->errorMsg:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 59
    const-string/jumbo v2, "videoErrorMsg"

    iget-object v3, p0, Lc8/sUb;->errorMsg:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_2
    iget-object v2, p0, Lc8/sUb;->bussinessType:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 63
    const-string/jumbo v2, "bussinessType"

    iget-object v3, p0, Lc8/sUb;->bussinessType:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_3
    iget-object v2, p0, Lc8/sUb;->playWay:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 67
    const-string/jumbo v2, "playWay"

    iget-object v3, p0, Lc8/sUb;->playWay:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :goto_0
    iget-object v2, p0, Lc8/sUb;->videoPlayType:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 73
    const-string/jumbo v2, "videoPlayType"

    iget-object v3, p0, Lc8/sUb;->videoPlayType:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :goto_1
    iget-object v2, p0, Lc8/sUb;->cdnIP:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 79
    const-string/jumbo v2, "cdnIP"

    iget-object v3, p0, Lc8/sUb;->cdnIP:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :goto_2
    iget-object v2, p0, Lc8/sUb;->playStage:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 85
    const-string/jumbo v2, "playStage"

    iget-object v3, p0, Lc8/sUb;->playStage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :goto_3
    return-object v1

    .line 69
    :cond_4
    const-string/jumbo v2, "playWay"

    const-string/jumbo v3, "-1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
    :cond_5
    const-string/jumbo v2, "videoPlayType"

    const-string/jumbo v3, "-1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 81
    :cond_6
    const-string/jumbo v2, "cdnIP"

    const-string/jumbo v3, "-1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 87
    :cond_7
    const-string/jumbo v2, "playStage"

    const-string/jumbo v3, "-1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method
