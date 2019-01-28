.class public Lc8/pUb;
.super Lc8/BUb;
.source "MotuAdPlayErrorInfo.java"


# instance fields
.field public adErrorCode:Ljava/lang/String;

.field public adErrorType:Ljava/lang/String;

.field public adPhase:Ljava/lang/String;

.field public adType:Ljava/lang/String;

.field public isOnline:Ljava/lang/String;

.field public isReqAd:Ljava/lang/String;

.field public isVip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lc8/BUb;-><init>()V

    return-void
.end method


# virtual methods
.method public toMap()Ljava/util/Map;
    .locals 3
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
    .line 47
    invoke-virtual {p0}, Lc8/pUb;->toBaseMap()Ljava/util/Map;

    move-result-object v0

    .line 49
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lc8/pUb;->adErrorCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 50
    const-string/jumbo v1, "adErrorCode"

    iget-object v2, p0, Lc8/pUb;->adErrorCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :goto_0
    iget-object v1, p0, Lc8/pUb;->adErrorType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 55
    const-string/jumbo v1, "adErrorType"

    iget-object v2, p0, Lc8/pUb;->adErrorType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :goto_1
    iget-object v1, p0, Lc8/pUb;->adType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 61
    const-string/jumbo v1, "adType"

    iget-object v2, p0, Lc8/pUb;->adType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :goto_2
    iget-object v1, p0, Lc8/pUb;->adPhase:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 67
    const-string/jumbo v1, "adPhase"

    iget-object v2, p0, Lc8/pUb;->adPhase:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :goto_3
    iget-object v1, p0, Lc8/pUb;->isOnline:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 73
    const-string/jumbo v1, "isOnline"

    iget-object v2, p0, Lc8/pUb;->isOnline:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :goto_4
    iget-object v1, p0, Lc8/pUb;->isVip:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 80
    const-string/jumbo v1, "isVip"

    iget-object v2, p0, Lc8/pUb;->isVip:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :goto_5
    iget-object v1, p0, Lc8/pUb;->isOnline:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 86
    const-string/jumbo v1, "isReqAd"

    iget-object v2, p0, Lc8/pUb;->isReqAd:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :goto_6
    return-object v0

    .line 52
    :cond_0
    const-string/jumbo v1, "adErrorCode"

    const-string/jumbo v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_1
    const-string/jumbo v1, "adErrorType"

    const-string/jumbo v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 63
    :cond_2
    const-string/jumbo v1, "adType"

    const-string/jumbo v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 69
    :cond_3
    const-string/jumbo v1, "adPhase"

    const-string/jumbo v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 75
    :cond_4
    const-string/jumbo v1, "isOnline"

    const-string/jumbo v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 82
    :cond_5
    const-string/jumbo v1, "isVip"

    const-string/jumbo v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 88
    :cond_6
    const-string/jumbo v1, "isReqAd"

    const-string/jumbo v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method
