.class public final Lc8/fwk;
.super Lc8/Kvk;
.source "NetMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jwk;->getMobilePcidToRestData(Lc8/Hvk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field startTime:J

.field final synthetic val$callback:Lc8/Hvk;


# direct methods
.method constructor <init>(Lc8/Hvk;)V
    .locals 2

    .prologue
    .line 253
    iput-object p1, p0, Lc8/fwk;->val$callback:Lc8/Hvk;

    invoke-direct {p0}, Lc8/Kvk;-><init>()V

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/fwk;->startTime:J

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v0, p0, Lc8/fwk;->val$callback:Lc8/Hvk;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lc8/fwk;->val$callback:Lc8/Hvk;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u79fb\u52a8:\u8bf7\u6c42\u83b7\u53d6\u4f2a\u7801\u94fe\u63a5\u5931\u8d25\uff0c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Hvk;->onBreak(Ljava/lang/String;)V

    .line 293
    const-string/jumbo v0, "-1002"

    iget-wide v2, p0, Lc8/fwk;->startTime:J

    const-string/jumbo v1, "1"

    invoke-static {v0, v2, v3, v1}, Lc8/owk;->mobileUpdate(Ljava/lang/String;JLjava/lang/String;)V

    .line 295
    :cond_0
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 259
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 260
    const-class v3, Lcom/youku/phone/freeflow/mobile/bean/MobileUrlParameterRequestDataBean;

    invoke-static {p2, v3}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/phone/freeflow/mobile/bean/MobileUrlParameterRequestDataBean;

    .line 261
    .local v2, "requestDataBean":Lcom/youku/phone/freeflow/mobile/bean/MobileUrlParameterRequestDataBean;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/youku/phone/freeflow/mobile/bean/MobileUrlParameterRequestDataBean;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/youku/phone/freeflow/mobile/bean/MobileUrlParameterRequestDataBean;->data:Lcom/youku/phone/freeflow/mobile/bean/MobileUrlData;

    if-eqz v3, :cond_2

    .line 262
    iget-object v3, v2, Lcom/youku/phone/freeflow/mobile/bean/MobileUrlParameterRequestDataBean;->data:Lcom/youku/phone/freeflow/mobile/bean/MobileUrlData;

    iget-object v1, v3, Lcom/youku/phone/freeflow/mobile/bean/MobileUrlData;->url_encoded:Ljava/lang/String;

    .line 263
    .local v1, "encoded":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 264
    const-string/jumbo v3, "&amp;"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    const-string/jumbo v3, "&amp;"

    const-string/jumbo v4, "&"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 269
    :cond_0
    const-string/jumbo v3, "0"

    iget-wide v4, p0, Lc8/fwk;->startTime:J

    const-string/jumbo v6, "1"

    invoke-static {v3, v4, v5, v6}, Lc8/owk;->mobileUpdate(Ljava/lang/String;JLjava/lang/String;)V

    .line 270
    iget-object v3, p0, Lc8/fwk;->val$callback:Lc8/Hvk;

    invoke-static {v1, v3}, Lc8/jwk;->getMobilePcid(Ljava/lang/String;Lc8/Hvk;)V

    .line 287
    .end local v1    # "encoded":Ljava/lang/String;
    .end local v2    # "requestDataBean":Lcom/youku/phone/freeflow/mobile/bean/MobileUrlParameterRequestDataBean;
    :goto_0
    return-void

    .line 272
    .restart local v1    # "encoded":Ljava/lang/String;
    .restart local v2    # "requestDataBean":Lcom/youku/phone/freeflow/mobile/bean/MobileUrlParameterRequestDataBean;
    :cond_1
    iget-object v3, p0, Lc8/fwk;->val$callback:Lc8/Hvk;

    const-string/jumbo v4, "encoded null"

    invoke-virtual {v3, v4}, Lc8/Hvk;->onBreak(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    .end local v1    # "encoded":Ljava/lang/String;
    .end local v2    # "requestDataBean":Lcom/youku/phone/freeflow/mobile/bean/MobileUrlParameterRequestDataBean;
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    iget-object v3, p0, Lc8/fwk;->val$callback:Lc8/Hvk;

    const-string/jumbo v4, "requesUrlAndParameters Exception: \u79fb\u52a8:\u8bf7\u6c42\u83b7\u53d6\u4f2a\u7801\u94fe\u63a5\u6210\u529f\uff0c\u4f46\u5904\u7406\u6570\u636e\u51fa\u73b0\u5f02\u5e38"

    invoke-virtual {v3, v4}, Lc8/Hvk;->onBreak(Ljava/lang/String;)V

    .line 285
    const-string/jumbo v3, "-1005"

    iget-wide v4, p0, Lc8/fwk;->startTime:J

    const-string/jumbo v6, "1"

    invoke-static {v3, v4, v5, v6}, Lc8/owk;->mobileUpdate(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 275
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "requestDataBean":Lcom/youku/phone/freeflow/mobile/bean/MobileUrlParameterRequestDataBean;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lc8/fwk;->val$callback:Lc8/Hvk;

    const-string/jumbo v4, "json parseData error \u79fb\u52a8:\u8bf7\u6c42\u83b7\u53d6\u4f2a\u7801\u94fe\u63a5\u6210\u529f\uff0c\u4f46\u63a5\u53e3\u8fd4\u56de\u503c\u9519\u8bef"

    invoke-virtual {v3, v4}, Lc8/Hvk;->onBreak(Ljava/lang/String;)V

    .line 276
    const-string/jumbo v3, "-1005"

    iget-wide v4, p0, Lc8/fwk;->startTime:J

    const-string/jumbo v6, "1"

    invoke-static {v3, v4, v5, v6}, Lc8/owk;->mobileUpdate(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 279
    .end local v2    # "requestDataBean":Lcom/youku/phone/freeflow/mobile/bean/MobileUrlParameterRequestDataBean;
    :cond_3
    iget-object v3, p0, Lc8/fwk;->val$callback:Lc8/Hvk;

    const-string/jumbo v4, "result str null \u79fb\u52a8:\u8bf7\u6c42\u83b7\u53d6\u4f2a\u7801\u94fe\u63a5\u6210\u529f\uff0c\u4f46\u63a5\u53e3\u8fd4\u56de\u503c\u4e3a\u7a7a"

    invoke-virtual {v3, v4}, Lc8/Hvk;->onBreak(Ljava/lang/String;)V

    .line 280
    const-string/jumbo v3, "-1004"

    iget-wide v4, p0, Lc8/fwk;->startTime:J

    const-string/jumbo v6, "1"

    invoke-static {v3, v4, v5, v6}, Lc8/owk;->mobileUpdate(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
