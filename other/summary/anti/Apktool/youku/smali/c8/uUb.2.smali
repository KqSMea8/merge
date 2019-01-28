.class public Lc8/uUb;
.super Lc8/zUb;
.source "MotuVideoVIPErrInfo.java"


# instance fields
.field public playStage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
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
    .line 22
    invoke-virtual {p0}, Lc8/uUb;->toBaseMap()Ljava/util/Map;

    move-result-object v1

    .line 24
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lc8/uUb;->toErrorInfoMap()Ljava/util/Map;

    move-result-object v0

    .line 25
    .local v0, "errInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 29
    :cond_0
    iget-object v2, p0, Lc8/uUb;->errorCode:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 30
    const-string/jumbo v2, "VIPErrorCode"

    iget-object v3, p0, Lc8/uUb;->errorCode:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_1
    iget-object v2, p0, Lc8/uUb;->errorMsg:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 33
    const-string/jumbo v2, "VIPErrorMsg"

    iget-object v3, p0, Lc8/uUb;->errorMsg:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_2
    iget-object v2, p0, Lc8/uUb;->playStage:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 37
    const-string/jumbo v2, "playStage"

    iget-object v3, p0, Lc8/uUb;->playStage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :goto_0
    return-object v1

    .line 39
    :cond_3
    const-string/jumbo v2, "playStage"

    const-string/jumbo v3, "-1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
