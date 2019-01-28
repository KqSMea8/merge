.class public final Lc8/iwk;
.super Lc8/Kvk;
.source "NetMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jwk;->getTelecomResult(Lc8/Ivk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field startTime:J

.field final synthetic val$callBack:Lc8/Ivk;


# direct methods
.method constructor <init>(Lc8/Ivk;)V
    .locals 2

    .prologue
    .line 404
    iput-object p1, p0, Lc8/iwk;->val$callBack:Lc8/Ivk;

    invoke-direct {p0}, Lc8/Kvk;-><init>()V

    .line 405
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/iwk;->startTime:J

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 438
    iget-object v0, p0, Lc8/iwk;->val$callBack:Lc8/Ivk;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lc8/iwk;->val$callBack:Lc8/Ivk;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u7535\u4fe1:\u8bf7\u6c42\u83b7\u53d6\u8ba2\u8d2d\u5173\u7cfb\u5931\u8d25\uff0c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/Ivk;->onFail(Ljava/lang/String;)V

    .line 440
    const-string/jumbo v0, "-1002"

    iget-wide v2, p0, Lc8/iwk;->startTime:J

    const-string/jumbo v1, "3"

    invoke-static {v0, v2, v3, v1}, Lc8/owk;->mobileUpdate(Ljava/lang/String;JLjava/lang/String;)V

    .line 442
    :cond_0
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "resultStr"    # Ljava/lang/String;

    .prologue
    .line 409
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 410
    invoke-static {p2}, Lc8/Qvk;->isJsonp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    invoke-static {p2}, Lc8/Qvk;->getJsonFromResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 413
    :cond_0
    const-string/jumbo v0, ""

    .line 415
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    invoke-static {p2}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 419
    :goto_0
    :try_start_1
    const-string/jumbo v1, "e1c3d0de067d4666"

    invoke-static {v0, v1}, Lc8/Nvk;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 423
    :goto_1
    if-eqz v0, :cond_1

    .line 424
    const-string/jumbo v1, "0"

    iget-wide v2, p0, Lc8/iwk;->startTime:J

    const-string/jumbo v4, "3"

    invoke-static {v1, v2, v3, v4}, Lc8/owk;->telecomUpdate(Ljava/lang/String;JLjava/lang/String;)V

    .line 425
    iget-object v1, p0, Lc8/iwk;->val$callBack:Lc8/Ivk;

    invoke-interface {v1, v0}, Lc8/Ivk;->onSuccess(Ljava/lang/String;)V

    .line 434
    .end local v0    # "data":Ljava/lang/String;
    :goto_2
    return-void

    .line 427
    .restart local v0    # "data":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "-1005"

    iget-wide v2, p0, Lc8/iwk;->startTime:J

    const-string/jumbo v4, "3"

    invoke-static {v1, v2, v3, v4}, Lc8/owk;->telecomUpdate(Ljava/lang/String;JLjava/lang/String;)V

    .line 428
    iget-object v1, p0, Lc8/iwk;->val$callBack:Lc8/Ivk;

    const-string/jumbo v2, "\u89e3\u6790\u9519\u8bef"

    invoke-interface {v1, v2}, Lc8/Ivk;->onFail(Ljava/lang/String;)V

    goto :goto_2

    .line 431
    .end local v0    # "data":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lc8/iwk;->val$callBack:Lc8/Ivk;

    const-string/jumbo v2, "result str null \u7535\u4fe1:\u8bf7\u6c42\u83b7\u53d6\u8ba2\u8d2d\u5173\u7cfb\u6210\u529f\uff0c\u4f46\u63a5\u53e3\u8fd4\u56de\u503c\u4e3a\u7a7a"

    invoke-interface {v1, v2}, Lc8/Ivk;->onFail(Ljava/lang/String;)V

    .line 432
    const-string/jumbo v1, "-1004"

    iget-wide v2, p0, Lc8/iwk;->startTime:J

    const-string/jumbo v4, "3"

    invoke-static {v1, v2, v3, v4}, Lc8/owk;->telecomUpdate(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_2

    .restart local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method
