.class public Lc8/NMp;
.super Ljava/lang/Object;
.source "BusinessErrorAfterFilter.java"

# interfaces
.implements Lc8/JMp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.BusinessErrorAfterFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAfter(Lc8/IMp;)Ljava/lang/String;
    .locals 4
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 27
    iget-object v1, p1, Lc8/IMp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 29
    .local v1, "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    const/16 v2, 0x130

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lc8/IMp;->responseSource:Lmtopsdk/mtop/domain/ResponseSource;

    if-eqz v2, :cond_0

    .line 30
    iget-object v2, p1, Lc8/IMp;->responseSource:Lmtopsdk/mtop/domain/ResponseSource;

    iget-object v0, v2, Lmtopsdk/mtop/domain/ResponseSource;->cacheResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 31
    .local v0, "cacheResponse":Lmtopsdk/mtop/domain/MtopResponse;
    if-eqz v0, :cond_0

    .line 32
    iput-object v0, p1, Lc8/IMp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 33
    invoke-static {p1}, Lc8/jNp;->handleExceptionCallBack(Lc8/IMp;)V

    .line 34
    const-string/jumbo v2, "STOP"

    .line 48
    .end local v0    # "cacheResponse":Lmtopsdk/mtop/domain/MtopResponse;
    :goto_0
    return-object v2

    .line 39
    :cond_0
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v2

    if-nez v2, :cond_1

    .line 40
    const-string/jumbo v2, "ANDROID_SYS_JSONDATA_BLANK"

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    .line 41
    const-string/jumbo v2, "\u8fd4\u56deJSONDATA\u4e3a\u7a7a"

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lc8/jNp;->handleExceptionCallBack(Lc8/IMp;)V

    .line 43
    const-string/jumbo v2, "STOP"

    goto :goto_0

    .line 47
    :cond_1
    invoke-static {v1}, Lc8/jNp;->parseRetCodeFromHeader(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 48
    const-string/jumbo v2, "CONTINUE"

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "mtopsdk.BusinessErrorAfterFilter"

    return-object v0
.end method
