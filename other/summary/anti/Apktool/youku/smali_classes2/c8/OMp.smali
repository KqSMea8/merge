.class public Lc8/OMp;
.super Ljava/lang/Object;
.source "ErrorCodeMappingAfterFilter.java"

# interfaces
.implements Lc8/JMp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ErrorCodeMappingAfterFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAfter(Lc8/IMp;)Ljava/lang/String;
    .locals 7
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 32
    const-string/jumbo v2, "CONTINUE"

    .line 33
    .local v2, "result":Ljava/lang/String;
    invoke-static {}, Lc8/oOp;->getInstance()Lc8/oOp;

    move-result-object v4

    invoke-virtual {v4}, Lc8/oOp;->isGlobalErrorCodeMappingOpen()Z

    move-result v4

    if-nez v4, :cond_1

    .line 34
    const-string/jumbo v4, "mtopsdk.ErrorCodeMappingAfterFilter"

    iget-object v5, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    const-string/jumbo v6, "GlobalErrorCodeMappingOpen=false,Don\'t do ErrorCode Mapping."

    invoke-static {v4, v5, v6}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    :goto_0
    return-object v2

    .line 38
    :cond_1
    iget-object v1, p1, Lc8/IMp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 39
    .local v1, "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v4

    if-nez v4, :cond_0

    .line 44
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 45
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/iPp;->getMappingCodeByErrorCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lmtopsdk/mtop/domain/MtopResponse;->mappingCodeSuffix:Ljava/lang/String;

    .line 46
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v4

    iget-object v5, v1, Lmtopsdk/mtop/domain/MtopResponse;->mappingCodeSuffix:Ljava/lang/String;

    invoke-static {v4, v5}, Lc8/iPp;->appendMappingCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lmtopsdk/mtop/domain/MtopResponse;->mappingCode:Ljava/lang/String;

    .line 47
    const-string/jumbo v4, "\u7f51\u7edc\u7adf\u7136\u5d29\u6e83\u4e86"

    invoke-virtual {v1, v4}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 53
    :cond_3
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/iPp;->getMappingCodeByErrorCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lmtopsdk/mtop/domain/MtopResponse;->mappingCodeSuffix:Ljava/lang/String;

    .line 54
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v4

    iget-object v5, v1, Lmtopsdk/mtop/domain/MtopResponse;->mappingCodeSuffix:Ljava/lang/String;

    invoke-static {v4, v5}, Lc8/iPp;->appendMappingCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lmtopsdk/mtop/domain/MtopResponse;->mappingCode:Ljava/lang/String;

    .line 55
    const-string/jumbo v4, "\u7adf\u7136\u88ab\u6324\u7206\u4e86"

    invoke-virtual {v1, v4}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_4
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopServerError()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 61
    iget-object v4, v1, Lmtopsdk/mtop/domain/MtopResponse;->mappingCodeSuffix:Ljava/lang/String;

    invoke-static {v4}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 62
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/iPp;->getMappingCodeByErrorCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "localMappingCode":Ljava/lang/String;
    invoke-static {v0}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .end local v0    # "localMappingCode":Ljava/lang/String;
    :goto_1
    iput-object v0, v1, Lmtopsdk/mtop/domain/MtopResponse;->mappingCodeSuffix:Ljava/lang/String;

    .line 65
    :cond_5
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v4

    iget-object v5, v1, Lmtopsdk/mtop/domain/MtopResponse;->mappingCodeSuffix:Ljava/lang/String;

    invoke-static {v4, v5}, Lc8/iPp;->appendMappingCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lmtopsdk/mtop/domain/MtopResponse;->mappingCode:Ljava/lang/String;

    .line 66
    const-string/jumbo v4, "\u670d\u52a1\u7adf\u7136\u51fa\u9519\u4e86"

    invoke-virtual {v1, v4}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    .restart local v0    # "localMappingCode":Ljava/lang/String;
    :cond_6
    const-string/jumbo v0, "ES00000"

    goto :goto_1

    .line 71
    .end local v0    # "localMappingCode":Ljava/lang/String;
    :cond_7
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "retCode":Ljava/lang/String;
    invoke-static {v3}, Lc8/iPp;->getMappingCodeByErrorCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .restart local v0    # "localMappingCode":Ljava/lang/String;
    if-eqz v3, :cond_8

    const-string/jumbo v4, "ANDROID_SYS_GENERATE_MTOP_SIGN_ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 77
    const-string/jumbo v0, "EC40002"

    .line 79
    :cond_8
    invoke-static {v0}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .end local v0    # "localMappingCode":Ljava/lang/String;
    :goto_2
    iput-object v0, v1, Lmtopsdk/mtop/domain/MtopResponse;->mappingCodeSuffix:Ljava/lang/String;

    .line 80
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v4

    iget-object v5, v1, Lmtopsdk/mtop/domain/MtopResponse;->mappingCodeSuffix:Ljava/lang/String;

    invoke-static {v4, v5}, Lc8/iPp;->appendMappingCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lmtopsdk/mtop/domain/MtopResponse;->mappingCode:Ljava/lang/String;

    .line 81
    const-string/jumbo v4, "\u670d\u52a1\u7adf\u7136\u51fa\u9519\u4e86"

    invoke-virtual {v1, v4}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    .restart local v0    # "localMappingCode":Ljava/lang/String;
    :cond_9
    const-string/jumbo v0, "EC00000"

    goto :goto_2
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 27
    const-string/jumbo v0, "mtopsdk.ErrorCodeMappingAfterFilter"

    return-object v0
.end method
