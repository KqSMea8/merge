.class public abstract Lc8/fSh;
.super Ljava/lang/Object;
.source "InitalMtopListener.java"

# interfaces
.implements Lc8/JNp;


# static fields
.field private static final TAG:Ljava/lang/String; = "InitalMtopListener"


# instance fields
.field protected api_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "api_name"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lc8/fSh;->api_name:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method protected localload(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 60
    return-void
.end method

.method public onFinished(Lc8/ONp;Ljava/lang/Object;)V
    .locals 3
    .param p1, "event"    # Lc8/ONp;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 30
    invoke-virtual {p1}, Lc8/ONp;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 32
    .local v0, "response":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const-string/jumbo v1, "InitalMtopListener"

    const-string/jumbo v2, "mTop api success!"

    invoke-static {v1, v2}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    const-string/jumbo v2, "success"

    iput-object v2, v1, Lcom/youku/vo/Initial;->status:Ljava/lang/String;

    .line 36
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/fSh;->parseJson(Lorg/json/JSONObject;)V

    .line 54
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    const-string/jumbo v1, "InitalMtopListener"

    const-string/jumbo v2, "session error"

    invoke-static {v1, v2}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string/jumbo v1, "session error"

    invoke-virtual {p0, v1}, Lc8/fSh;->localload(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v1

    if-nez v1, :cond_2

    .line 43
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    :cond_2
    const-string/jumbo v1, "InitalMtopListener"

    const-string/jumbo v2, "mTop network error"

    invoke-static {v1, v2}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string/jumbo v1, "mTop network error"

    invoke-virtual {p0, v1}, Lc8/fSh;->localload(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_3
    const-string/jumbo v1, "InitalMtopListener"

    const-string/jumbo v2, "other error"

    invoke-static {v1, v2}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "other error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/fSh;->localload(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract parseJson(Lorg/json/JSONObject;)V
.end method
