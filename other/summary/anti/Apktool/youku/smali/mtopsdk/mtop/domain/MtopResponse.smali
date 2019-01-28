.class public Lmtopsdk/mtop/domain/MtopResponse;
.super Ljava/lang/Object;
.source "MtopResponse.java"

# interfaces
.implements Lc8/dOp;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;
    }
.end annotation


# static fields
.field private static final SHARP:Ljava/lang/String; = "::"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopResponse"

.field private static final serialVersionUID:J = 0x15bd0e193dcddcdbL


# instance fields
.field private api:Ljava/lang/String;

.field private volatile bParsed:Z

.field private bytedata:[B

.field private data:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private dataJsonObject:Lorg/json/JSONObject;

.field private headerFields:Ljava/util/Map;
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

.field public mappingCode:Ljava/lang/String;

.field public mappingCodeSuffix:Ljava/lang/String;

.field private mtopStat:Lc8/pPp;

.field private responseCode:I

.field private responseSource:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

.field private ret:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private retCode:Ljava/lang/String;

.field private retMsg:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    .line 98
    sget-object v0, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->NETWORK_REQUEST:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseSource:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "retCode"    # Ljava/lang/String;
    .param p2, "retMsg"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    .line 98
    sget-object v0, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->NETWORK_REQUEST:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseSource:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    .line 118
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "retCode"    # Ljava/lang/String;
    .param p4, "retMsg"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    .line 98
    sget-object v0, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->NETWORK_REQUEST:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseSource:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    .line 125
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 128
    iput-object p4, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    .line 129
    return-void
.end method


# virtual methods
.method public getApi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    .line 178
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    return-object v0
.end method

.method public getBytedata()[B
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    return-object v0
.end method

.method public getData()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->data:[B

    return-object v0
.end method

.method public getDataJsonObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->dataJsonObject:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    .line 249
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->dataJsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getFullKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    invoke-static {v0}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    invoke-static {v0}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    :cond_0
    const/4 v0, 0x0

    .line 473
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    iget-object v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/yMp;->concatStr2LowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaderFields()Ljava/util/Map;
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
    .line 279
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->headerFields:Ljava/util/Map;

    return-object v0
.end method

.method public getMappingCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->mappingCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMtopStat()Lc8/pPp;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->mtopStat:Lc8/pPp;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseCode:I

    return v0
.end method

.method public getRet()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    .line 213
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    return-object v0
.end method

.method public getRetCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRetMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    .line 161
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseSource:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    return-object v0
.end method

.method public getV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    .line 195
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    return-object v0
.end method

.method public is41XResult()Z
    .locals 1

    .prologue
    .line 547
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/iPp;->is41XResult(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isApiLockedResult()Z
    .locals 1

    .prologue
    .line 557
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/iPp;->isApiLockedResult(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isApiSuccess()Z
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/iPp;->isSuccess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpiredRequest()Z
    .locals 1

    .prologue
    .line 490
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/iPp;->isExpiredRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIllegelSign()Z
    .locals 1

    .prologue
    .line 538
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/iPp;->isIllegelSign(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMtopSdkError()Z
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/iPp;->isMtopSdkError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMtopServerError()Z
    .locals 1

    .prologue
    .line 575
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/iPp;->isMtopServerError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNetworkError()Z
    .locals 1

    .prologue
    .line 511
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/iPp;->isNetworkError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNoNetwork()Z
    .locals 1

    .prologue
    .line 520
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/iPp;->isNoNetwork(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSessionInvalid()Z
    .locals 1

    .prologue
    .line 529
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/iPp;->isSessionInvalid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSystemError()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 502
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/iPp;->isSystemError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parseJsonByte()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 331
    iget-boolean v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-eqz v8, :cond_0

    .line 411
    :goto_0
    return-void

    .line 335
    :cond_0
    monitor-enter p0

    .line 336
    :try_start_0
    iget-boolean v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-eqz v8, :cond_1

    .line 337
    monitor-exit p0

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 339
    :cond_1
    :try_start_1
    iget-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    if-eqz v8, :cond_2

    iget-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    array-length v8, v8

    if-nez v8, :cond_6

    .line 340
    :cond_2
    sget-object v8, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v8}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 341
    const-string/jumbo v8, "mtopsdk.MtopResponse"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[parseJsonByte]MtopResponse bytedata is blank,api="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",v="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_3
    iget-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    invoke-static {v8}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 344
    const-string/jumbo v8, "ANDROID_SYS_JSONDATA_BLANK"

    iput-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 347
    :cond_4
    iget-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    invoke-static {v8}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 348
    const-string/jumbo v8, "\u8fd4\u56deJSONDATA\u4e3a\u7a7a"

    iput-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    .line 350
    :cond_5
    const/4 v8, 0x1

    iput-boolean v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    .line 351
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 355
    :cond_6
    :try_start_2
    new-instance v4, Ljava/lang/String;

    iget-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([B)V

    .line 356
    .local v4, "jsonStr":Ljava/lang/String;
    sget-object v8, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v8}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 357
    const-string/jumbo v8, "mtopsdk.MtopResponse"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[parseJsonByte]MtopResponse bytedata : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 362
    .local v3, "jsonObject":Lorg/json/JSONObject;
    iget-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    if-nez v8, :cond_8

    .line 363
    const-string/jumbo v8, "api"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    .line 366
    :cond_8
    iget-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    if-nez v8, :cond_9

    .line 367
    const-string/jumbo v8, "v"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    .line 371
    :cond_9
    const-string/jumbo v8, "ret"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 372
    .local v2, "jsArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 373
    .local v7, "size":I
    new-array v8, v7, [Ljava/lang/String;

    iput-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    .line 374
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v7, :cond_a

    .line 375
    iget-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 378
    :cond_a
    if-lez v7, :cond_c

    .line 379
    iget-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v6, v8, v9

    .line 380
    .local v6, "result":Ljava/lang/String;
    invoke-static {v6}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 381
    const-string/jumbo v8, "::"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 382
    .local v5, "message":[Ljava/lang/String;
    if-eqz v5, :cond_c

    array-length v8, v5

    if-le v8, v11, :cond_c

    .line 384
    iget-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    invoke-static {v8}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 385
    const/4 v8, 0x0

    aget-object v8, v5, v8

    iput-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 388
    :cond_b
    iget-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    invoke-static {v8}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 389
    const/4 v8, 0x1

    aget-object v8, v5, v8

    iput-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    .line 396
    .end local v5    # "message":[Ljava/lang/String;
    .end local v6    # "result":Ljava/lang/String;
    :cond_c
    const-string/jumbo v8, "data"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    iput-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->dataJsonObject:Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 409
    const/4 v8, 0x1

    :try_start_3
    iput-boolean v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    .line 411
    .end local v1    # "i":I
    .end local v2    # "jsArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "jsonStr":Ljava/lang/String;
    .end local v7    # "size":I
    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v9, "mtopsdk.MtopResponse"

    iget-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->mtopStat:Lc8/pPp;

    if-eqz v8, :cond_f

    iget-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->mtopStat:Lc8/pPp;

    iget-object v8, v8, Lc8/pPp;->seqNo:Ljava/lang/String;

    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[parseJsonByte] parse bytedata error ,api="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",v="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v8, v10, v0}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 401
    iget-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    invoke-static {v8}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 402
    const-string/jumbo v8, "ANDROID_SYS_JSONDATA_PARSE_ERROR"

    iput-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 405
    :cond_d
    iget-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    invoke-static {v8}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 406
    const-string/jumbo v8, "\u89e3\u6790JSONDATA\u9519\u8bef"

    iput-object v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 409
    :cond_e
    const/4 v8, 0x1

    :try_start_5
    iput-boolean v8, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    goto :goto_2

    .line 398
    :cond_f
    const/4 v8, 0x0

    goto :goto_3

    .line 409
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v8

    const/4 v9, 0x1

    iput-boolean v9, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setApi(Ljava/lang/String;)V
    .locals 0
    .param p1, "api"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setBytedata([B)V
    .locals 0
    .param p1, "bytedata"    # [B

    .prologue
    .line 270
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    .line 271
    return-void
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->data:[B

    .line 240
    return-void
.end method

.method public setDataJsonObject(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "dataJsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 256
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->dataJsonObject:Lorg/json/JSONObject;

    .line 257
    return-void
.end method

.method public setHeaderFields(Ljava/util/Map;)V
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
    .line 288
    .local p1, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->headerFields:Ljava/util/Map;

    .line 289
    return-void
.end method

.method public setMtopStat(Lc8/pPp;)V
    .locals 0
    .param p1, "mtopStat"    # Lc8/pPp;

    .prologue
    .line 324
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->mtopStat:Lc8/pPp;

    .line 325
    return-void
.end method

.method public setResponseCode(I)V
    .locals 0
    .param p1, "responseCode"    # I

    .prologue
    .line 306
    iput p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseCode:I

    .line 307
    return-void
.end method

.method public setRet([Ljava/lang/String;)V
    .locals 0
    .param p1, "ret"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setRetCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "retCode"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setRetMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "retMsg"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setSource(Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;)V
    .locals 0
    .param p1, "source"    # Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    .prologue
    .line 433
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseSource:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    .line 434
    return-void
.end method

.method public setV(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 450
    .local v1, "str":Ljava/lang/StringBuilder;
    :try_start_0
    const-string/jumbo v2, "MtopResponse[ api="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string/jumbo v2, ",v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    const-string/jumbo v2, ",retCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const-string/jumbo v2, ",retMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    const-string/jumbo v2, ",mappingCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->mappingCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string/jumbo v2, ",mappingCodeSuffix="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->mappingCodeSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string/jumbo v2, ",ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string/jumbo v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->dataJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 458
    const-string/jumbo v2, ",responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 459
    const-string/jumbo v2, ",headerFields="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->headerFields:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 460
    const-string/jumbo v2, ",bytedata="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 466
    :goto_1
    return-object v2

    .line 460
    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 466
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
