.class public final Lc8/pfn;
.super Ljava/lang/Object;
.source "DownloadVipLegalManager.java"

# interfaces
.implements Lc8/JNp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/rfn;->getMtopResponse(Lmtopsdk/mtop/domain/MtopRequest;Ljava/util/Map;Lc8/qfn;Ljava/lang/Class;)Lc8/ENp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$listener:Lc8/qfn;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lc8/qfn;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lc8/pfn;->val$clazz:Ljava/lang/Class;

    iput-object p2, p0, Lc8/pfn;->val$listener:Lc8/qfn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 6
    .param p1, "event"    # Lc8/ONp;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 101
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v2

    .line 102
    .local v2, "response":Lmtopsdk/mtop/domain/MtopResponse;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMtopResponse onFinished,  api:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getApi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " responseCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " retCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 105
    .local v0, "json":Lorg/json/JSONObject;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMtopResponse json length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "jsonString":Ljava/lang/String;
    iget-object v4, p0, Lc8/pfn;->val$clazz:Ljava/lang/Class;

    invoke-static {v1, v4}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 109
    .local v3, "t":Ljava/lang/Object;, "TT;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadReList response data json string \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    iget-object v4, p0, Lc8/pfn;->val$listener:Lc8/qfn;

    if-eqz v4, :cond_0

    .line 111
    iget-object v4, p0, Lc8/pfn;->val$listener:Lc8/qfn;

    invoke-interface {v4, v3, v1}, Lc8/qfn;->onGetDataSuccess(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "jsonString":Ljava/lang/String;
    .end local v3    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_1
    return-void

    .line 105
    .restart local v0    # "json":Lorg/json/JSONObject;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 115
    .end local v0    # "json":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v4

    if-nez v4, :cond_3

    .line 118
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v4

    if-nez v4, :cond_3

    .line 119
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    .line 130
    :cond_3
    iget-object v4, p0, Lc8/pfn;->val$listener:Lc8/qfn;

    if-eqz v4, :cond_0

    .line 131
    iget-object v4, p0, Lc8/pfn;->val$listener:Lc8/qfn;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lc8/qfn;->onGetDataFail(Ljava/lang/String;)V

    goto :goto_1
.end method
