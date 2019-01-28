.class public Lc8/eJj;
.super Ljava/lang/Object;
.source "YKResponse.java"


# instance fields
.field private bytedata:[B

.field private connHeadFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private desc:Ljava/lang/String;

.field private error:Ljava/lang/Throwable;

.field private mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

.field private responseCode:I

.field private statisticData:Lanetwork/channel/statist/StatisticData;

.field private ykErrorCode:I

.field private ykErrorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lc8/eJj;->ykErrorCode:I

    return-void
.end method

.method public static newInstance()Lc8/eJj;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lc8/eJj;

    invoke-direct {v0}, Lc8/eJj;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getBytedata()[B
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lc8/eJj;->bytedata:[B

    return-object v0
.end method

.method public getConnHeadFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lc8/eJj;->connHeadFields:Ljava/util/Map;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lc8/eJj;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 5

    .prologue
    .line 99
    iget-object v0, p0, Lc8/eJj;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget v0, p0, Lc8/eJj;->responseCode:I

    if-gez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/Throwable;

    const-string/jumbo v1, "Netowrk SDK error: %d, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lc8/eJj;->responseCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lc8/eJj;->desc:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/eJj;->error:Ljava/lang/Throwable;

    .line 102
    :cond_0
    iget-object v0, p0, Lc8/eJj;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lc8/eJj;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lc8/eJj;->responseCode:I

    return v0
.end method

.method public getStatisticData()Lanetwork/channel/statist/StatisticData;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lc8/eJj;->statisticData:Lanetwork/channel/statist/StatisticData;

    return-object v0
.end method

.method public getYkErrorCode()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lc8/eJj;->ykErrorCode:I

    if-gez v0, :cond_0

    iget v0, p0, Lc8/eJj;->ykErrorCode:I

    .line 51
    :goto_0
    return v0

    .line 50
    :cond_0
    iget v0, p0, Lc8/eJj;->responseCode:I

    if-gez v0, :cond_1

    iget v0, p0, Lc8/eJj;->responseCode:I

    goto :goto_0

    .line 51
    :cond_1
    iget v0, p0, Lc8/eJj;->ykErrorCode:I

    goto :goto_0
.end method

.method public getYkErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lc8/eJj;->ykErrorCode:I

    invoke-static {v0}, Lc8/QJj;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCallSuccess()Z
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lc8/eJj;->isMTop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lc8/eJj;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v0

    .line 126
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lc8/eJj;->ykErrorCode:I

    invoke-static {v0}, Lc8/QJj;->containError(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lc8/eJj;->responseCode:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMTop()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lc8/eJj;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistentConnection()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v2, p0, Lc8/eJj;->statisticData:Lanetwork/channel/statist/StatisticData;

    if-nez v2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v1

    .line 136
    :cond_1
    iget-object v2, p0, Lc8/eJj;->statisticData:Lanetwork/channel/statist/StatisticData;

    iget-object v0, v2, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    .line 137
    .local v0, "connType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    const-string/jumbo v2, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "https"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setBytedata([B)V
    .locals 0
    .param p1, "bytedata"    # [B

    .prologue
    .line 87
    iput-object p1, p0, Lc8/eJj;->bytedata:[B

    .line 88
    return-void
.end method

.method public setConnHeadFields(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "connHeadFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lc8/eJj;->connHeadFields:Ljava/util/Map;

    .line 96
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lc8/eJj;->desc:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 106
    iput-object p1, p0, Lc8/eJj;->error:Ljava/lang/Throwable;

    .line 107
    return-void
.end method

.method public setMtopResponse(Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 0
    .param p1, "mtopResponse"    # Lmtopsdk/mtop/domain/MtopResponse;

    .prologue
    .line 151
    iput-object p1, p0, Lc8/eJj;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 152
    return-void
.end method

.method public setResponseCode(I)V
    .locals 0
    .param p1, "responseCode"    # I

    .prologue
    .line 71
    iput p1, p0, Lc8/eJj;->responseCode:I

    .line 72
    return-void
.end method

.method public setStatisticData(Lanetwork/channel/statist/StatisticData;)V
    .locals 0
    .param p1, "statisticData"    # Lanetwork/channel/statist/StatisticData;

    .prologue
    .line 114
    iput-object p1, p0, Lc8/eJj;->statisticData:Lanetwork/channel/statist/StatisticData;

    .line 115
    return-void
.end method

.method public setYkErrorCode(I)V
    .locals 0
    .param p1, "ykErrorCode"    # I

    .prologue
    .line 59
    iput p1, p0, Lc8/eJj;->ykErrorCode:I

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "YKResponse{ykErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/eJj;->ykErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ykErrorMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/eJj;->ykErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/eJj;->error:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/eJj;->responseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", desc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/eJj;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bytedata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lc8/eJj;->bytedata:[B

    if-nez v0, :cond_0

    const-string/jumbo v0, "Null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", connHeadFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/eJj;->connHeadFields:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", statisticData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/eJj;->statisticData:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lc8/eJj;->bytedata:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method
