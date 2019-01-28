.class public abstract Lc8/Kvk;
.super Ljava/lang/Object;
.source "YkNetWorkCallBackString.java"

# interfaces
.implements Lc8/OIj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFail(ILjava/lang/String;)V
.end method

.method public onFinish(Lc8/eJj;)V
    .locals 6
    .param p1, "ykResponse"    # Lc8/eJj;

    .prologue
    .line 15
    if-eqz p1, :cond_4

    .line 16
    invoke-virtual {p1}, Lc8/eJj;->getResponseCode()I

    move-result v2

    .line 17
    .local v2, "httpcode":I
    invoke-virtual {p1}, Lc8/eJj;->getYkErrorCode()I

    move-result v0

    .line 18
    .local v0, "errorcode":I
    invoke-virtual {p1}, Lc8/eJj;->getYkErrorMsg()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "errormsg":Ljava/lang/String;
    const/4 v3, 0x0

    .line 20
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {p1}, Lc8/eJj;->isCallSuccess()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 21
    invoke-virtual {p1}, Lc8/eJj;->getBytedata()[B

    move-result-object v4

    if-eqz v4, :cond_0

    .line 22
    new-instance v3, Ljava/lang/String;

    .end local v3    # "result":Ljava/lang/String;
    invoke-virtual {p1}, Lc8/eJj;->getBytedata()[B

    move-result-object v4

    const-string/jumbo v5, "utf-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 24
    .restart local v3    # "result":Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_1

    .line 25
    invoke-virtual {p0, v2, v3}, Lc8/Kvk;->onSuccess(ILjava/lang/String;)V

    .line 38
    .end local v0    # "errorcode":I
    .end local v1    # "errormsg":Ljava/lang/String;
    .end local v2    # "httpcode":I
    .end local v3    # "result":Ljava/lang/String;
    :goto_0
    return-void

    .line 27
    .restart local v0    # "errorcode":I
    .restart local v1    # "errormsg":Ljava/lang/String;
    .restart local v2    # "httpcode":I
    .restart local v3    # "result":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "response is null"

    invoke-virtual {p0, v2, v4}, Lc8/Kvk;->onFail(ILjava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_2
    if-nez v1, :cond_3

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    :cond_3
    invoke-virtual {p0, v0, v1}, Lc8/Kvk;->onFail(ILjava/lang/String;)V

    goto :goto_0

    .line 36
    .end local v0    # "errorcode":I
    .end local v1    # "errormsg":Ljava/lang/String;
    .end local v2    # "httpcode":I
    .end local v3    # "result":Ljava/lang/String;
    :cond_4
    const/16 v4, -0x64

    const-string/jumbo v5, "ykResponse is null"

    invoke-virtual {p0, v4, v5}, Lc8/Kvk;->onFail(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public abstract onSuccess(ILjava/lang/String;)V
.end method
