.class public final Lc8/gwk;
.super Lc8/Kvk;
.source "NetMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jwk;->getMobilePcid(Ljava/lang/String;Lc8/Hvk;)V
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
    .line 316
    iput-object p1, p0, Lc8/gwk;->val$callback:Lc8/Hvk;

    invoke-direct {p0}, Lc8/Kvk;-><init>()V

    .line 317
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/gwk;->startTime:J

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 346
    iget-object v0, p0, Lc8/gwk;->val$callback:Lc8/Hvk;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lc8/gwk;->val$callback:Lc8/Hvk;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u79fb\u52a8:\u8bf7\u6c42\u83b7\u53d6\u4f2a\u7801\u5931\u8d25\uff0c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Hvk;->onBreak(Ljava/lang/String;)V

    .line 348
    const-string/jumbo v0, "-1002"

    iget-wide v2, p0, Lc8/gwk;->startTime:J

    const-string/jumbo v1, "2"

    invoke-static {v0, v2, v3, v1}, Lc8/owk;->mobileUpdate(Ljava/lang/String;JLjava/lang/String;)V

    .line 350
    :cond_0
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 322
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 323
    const-class v3, Lcom/youku/phone/freeflow/mobile/bean/MobilePcIdRequestDataBean;

    invoke-static {p2, v3}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/phone/freeflow/mobile/bean/MobilePcIdRequestDataBean;

    .line 324
    .local v2, "requestDataBean":Lcom/youku/phone/freeflow/mobile/bean/MobilePcIdRequestDataBean;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/youku/phone/freeflow/mobile/bean/MobilePcIdRequestDataBean;->pcId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 325
    iget-object v1, v2, Lcom/youku/phone/freeflow/mobile/bean/MobilePcIdRequestDataBean;->pcId:Ljava/lang/String;

    .line 327
    .local v1, "pcId":Ljava/lang/String;
    iget-object v3, p0, Lc8/gwk;->val$callback:Lc8/Hvk;

    invoke-virtual {v3, v1}, Lc8/Hvk;->onPcidSuccess(Ljava/lang/String;)V

    .line 328
    const-string/jumbo v3, "0"

    iget-wide v4, p0, Lc8/gwk;->startTime:J

    const-string/jumbo v6, "2"

    invoke-static {v3, v4, v5, v6}, Lc8/owk;->mobileUpdate(Ljava/lang/String;JLjava/lang/String;)V

    .line 330
    iget-object v3, p0, Lc8/gwk;->val$callback:Lc8/Hvk;

    invoke-static {v1, v3}, Lc8/jwk;->getMobileProductsAndRestData(Ljava/lang/String;Lc8/Ivk;)V

    .line 342
    .end local v1    # "pcId":Ljava/lang/String;
    .end local v2    # "requestDataBean":Lcom/youku/phone/freeflow/mobile/bean/MobilePcIdRequestDataBean;
    :goto_0
    return-void

    .line 332
    .restart local v2    # "requestDataBean":Lcom/youku/phone/freeflow/mobile/bean/MobilePcIdRequestDataBean;
    :cond_0
    iget-object v3, p0, Lc8/gwk;->val$callback:Lc8/Hvk;

    const-string/jumbo v4, "json parseData error \u79fb\u52a8:\u8bf7\u6c42\u83b7\u53d6\u4f2a\u7801\u6210\u529f\uff0c\u4f46\u63a5\u53e3\u8fd4\u56de\u503c\u9519\u8bef"

    invoke-virtual {v3, v4}, Lc8/Hvk;->onBreak(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    .end local v2    # "requestDataBean":Lcom/youku/phone/freeflow/mobile/bean/MobilePcIdRequestDataBean;
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    iget-object v3, p0, Lc8/gwk;->val$callback:Lc8/Hvk;

    const-string/jumbo v4, "requestPcid Exception: \u79fb\u52a8:\u8bf7\u6c42\u83b7\u53d6\u4f2a\u7801\u6210\u529f\uff0c\u4f46\u5904\u7406\u6570\u636e\u51fa\u73b0\u5f02\u5e38"

    invoke-virtual {v3, v4}, Lc8/Hvk;->onBreak(Ljava/lang/String;)V

    .line 340
    const-string/jumbo v3, "-1005"

    iget-wide v4, p0, Lc8/gwk;->startTime:J

    const-string/jumbo v6, "2"

    invoke-static {v3, v4, v5, v6}, Lc8/owk;->mobileUpdate(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 335
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lc8/gwk;->val$callback:Lc8/Hvk;

    const-string/jumbo v4, "result str null \u79fb\u52a8:\u8bf7\u6c42\u83b7\u53d6\u4f2a\u7801\u6210\u529f\uff0c\u4f46\u63a5\u53e3\u8fd4\u56de\u503c\u4e3a\u7a7a"

    invoke-virtual {v3, v4}, Lc8/Hvk;->onBreak(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
