.class public Lc8/jPp;
.super Ljava/lang/Object;
.source "MtopConvert.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopConvert"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertJsonToOutputDO([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p0, "jsonData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "outputClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 77
    :cond_0
    const-string/jumbo v3, "mtopsdk.MtopConvert"

    const-string/jumbo v4, "[jsonToOutputDO]outputClass is null or jsonData is blank"

    invoke-static {v3, v4}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v2, 0x0

    .line 89
    :goto_0
    return-object v2

    .line 81
    :cond_1
    const/4 v2, 0x0

    .line 83
    .local v2, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 84
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0, p1}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 85
    .end local v0    # "content":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "mtopsdk.MtopConvert"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[jsonToOutputDO]invoke JSON.parseObject error ---Class="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static convertMtopResponseToOutputDO(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "mtopResponse"    # Lmtopsdk/mtop/domain/MtopResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "outputClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 100
    :cond_0
    const-string/jumbo v0, "mtopsdk.MtopConvert"

    const-string/jumbo v1, "outputClass is null or mtopResponse is null"

    invoke-static {v0, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v0

    invoke-static {v0, p1}, Lc8/jPp;->convertJsonToOutputDO([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static inputDoToMtopRequest(Lc8/dOp;)Lmtopsdk/mtop/domain/MtopRequest;
    .locals 1
    .param p0, "inputDO"    # Lc8/dOp;

    .prologue
    .line 116
    if-nez p0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    .line 119
    :cond_0
    invoke-static {p0}, Lc8/qPp;->convertToMtopRequest(Lc8/dOp;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    .line 120
    .local v0, "request":Lmtopsdk/mtop/domain/MtopRequest;
    goto :goto_0
.end method

.method public static inputDoToMtopRequest(Ljava/lang/Object;)Lmtopsdk/mtop/domain/MtopRequest;
    .locals 1
    .param p0, "input"    # Ljava/lang/Object;

    .prologue
    .line 131
    if-nez p0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    .line 134
    :cond_0
    invoke-static {p0}, Lc8/qPp;->convertToMtopRequest(Ljava/lang/Object;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    .line 135
    .local v0, "request":Lmtopsdk/mtop/domain/MtopRequest;
    goto :goto_0
.end method

.method public static jsonToOutputDO([BLjava/lang/Class;)Lc8/cOp;
    .locals 7
    .param p0, "jsonData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/Class",
            "<*>;)",
            "Lc8/cOp;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    .local p1, "outputClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    .line 35
    :cond_0
    const-string/jumbo v4, "mtopsdk.MtopConvert"

    const-string/jumbo v5, "[jsonToOutputDO]outClass is null or jsonData is blank"

    invoke-static {v4, v5}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 v1, 0x0

    .line 47
    :goto_0
    return-object v1

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 41
    .local v1, "baseOutDo":Lc8/cOp;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 42
    .local v2, "content":Ljava/lang/String;
    invoke-static {v2, p1}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lc8/cOp;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    .end local v2    # "content":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 44
    .local v3, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "mtopsdk.MtopConvert"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[jsonToOutputDO]invoke JSON.parseObject error ---Class="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static mtopResponseToOutputDO(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lc8/cOp;
    .locals 2
    .param p0, "mtopResponse"    # Lmtopsdk/mtop/domain/MtopResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lc8/cOp;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    .local p1, "outputClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 62
    :cond_0
    const-string/jumbo v0, "mtopsdk.MtopConvert"

    const-string/jumbo v1, "outClass is null or response is null"

    invoke-static {v0, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v0

    invoke-static {v0, p1}, Lc8/jPp;->jsonToOutputDO([BLjava/lang/Class;)Lc8/cOp;

    move-result-object v0

    goto :goto_0
.end method
