.class public Lc8/BUb;
.super Ljava/lang/Object;
.source "MotuMediaBase.java"


# instance fields
.field public extInfoData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mediaType:Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

.field public playerCore:Ljava/lang/String;

.field public sourceIdentity:Ljava/lang/String;

.field public videoFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/BUb;->extInfoData:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public toBaseMap()Ljava/util/Map;
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
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lc8/BUb;->mediaType:Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

    if-eqz v1, :cond_1

    .line 41
    const-string/jumbo v1, "mediaType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/BUb;->mediaType:Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

    invoke-virtual {v3}, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :goto_0
    iget-object v1, p0, Lc8/BUb;->videoFormat:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 46
    const-string/jumbo v1, "videoFormat"

    iget-object v2, p0, Lc8/BUb;->videoFormat:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :goto_1
    iget-object v1, p0, Lc8/BUb;->sourceIdentity:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 52
    const-string/jumbo v1, "sourceIdentity"

    iget-object v2, p0, Lc8/BUb;->sourceIdentity:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :goto_2
    iget-object v1, p0, Lc8/BUb;->playerCore:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 58
    const-string/jumbo v1, "playerCore"

    iget-object v2, p0, Lc8/BUb;->playerCore:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :goto_3
    iget-object v1, p0, Lc8/BUb;->extInfoData:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/BUb;->extInfoData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 64
    iget-object v1, p0, Lc8/BUb;->extInfoData:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 67
    :cond_0
    return-object v0

    .line 43
    :cond_1
    const-string/jumbo v1, "mediaType"

    const-string/jumbo v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 48
    :cond_2
    const-string/jumbo v1, "videoFormat"

    const-string/jumbo v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 54
    :cond_3
    const-string/jumbo v1, "sourceIdentity"

    const-string/jumbo v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 60
    :cond_4
    const-string/jumbo v1, "playerCore"

    const-string/jumbo v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method
