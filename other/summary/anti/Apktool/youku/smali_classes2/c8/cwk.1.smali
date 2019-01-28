.class public final Lc8/cwk;
.super Lc8/Kvk;
.source "NetMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jwk;->getUnicomPhoneNumber(Lc8/Jvk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field startTime:J

.field final synthetic val$callback:Lc8/Jvk;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Jvk;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 61
    iput-object p1, p0, Lc8/cwk;->val$callback:Lc8/Jvk;

    iput-object p2, p0, Lc8/cwk;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Lc8/Kvk;-><init>()V

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/cwk;->startTime:J

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lc8/cwk;->val$callback:Lc8/Jvk;

    invoke-virtual {v0, p2}, Lc8/Jvk;->onFail(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v0, "-1002"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lc8/cwk;->startTime:J

    const-string/jumbo v4, "2"

    invoke-static {v0, v1, v2, v3, v4}, Lc8/owk;->unicomUpdate(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 106
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 9
    .param p1, "code"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 67
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 68
    iget-object v4, p0, Lc8/cwk;->val$callback:Lc8/Jvk;

    invoke-virtual {v4, p2}, Lc8/Jvk;->onSuccess(Ljava/lang/String;)V

    .line 69
    const-class v4, Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;

    invoke-static {p2, v4}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .local v2, "phoneNumberDTO":Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;
    if-nez v2, :cond_0

    .line 72
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 74
    .local v0, "jsonData":Lorg/json/JSONObject;
    new-instance v3, Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;

    invoke-direct {v3}, Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    .end local v2    # "phoneNumberDTO":Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;
    .local v3, "phoneNumberDTO":Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;
    :try_start_2
    new-instance v4, Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;

    invoke-direct {v4}, Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;-><init>()V

    invoke-virtual {v3, v4}, Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;->setData(Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;)V

    .line 76
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;->setCode(I)V

    .line 77
    iget-object v4, p0, Lc8/cwk;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;->setUrl(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v3}, Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;->getData()Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;

    move-result-object v4

    const-string/jumbo v5, "mobile "

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;->setMobile(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v3}, Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;->getData()Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;->setOrderId(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 84
    .end local v0    # "jsonData":Lorg/json/JSONObject;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "phoneNumberDTO":Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;
    .restart local v2    # "phoneNumberDTO":Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;->getData()Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 85
    invoke-virtual {v2}, Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;->getData()Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/phone/freeflow/unicom/bean/UnicomCardResult;->getMobile()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 86
    iget-object v4, p0, Lc8/cwk;->val$callback:Lc8/Jvk;

    invoke-virtual {v4, v2}, Lc8/Jvk;->onGetPhoneNumber(Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;)V

    .line 87
    const-string/jumbo v4, "0"

    iget-wide v6, p0, Lc8/cwk;->startTime:J

    const-string/jumbo v5, "2"

    invoke-static {v4, p2, v6, v7, v5}, Lc8/owk;->unicomUpdate(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 100
    .end local v2    # "phoneNumberDTO":Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;
    :goto_1
    return-void

    .line 89
    .restart local v2    # "phoneNumberDTO":Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;
    :cond_1
    const-string/jumbo v4, "-1006"

    iget-wide v6, p0, Lc8/cwk;->startTime:J

    const-string/jumbo v5, "2"

    invoke-static {v4, p2, v6, v7, v5}, Lc8/owk;->unicomUpdate(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 98
    .end local v2    # "phoneNumberDTO":Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;
    :catch_0
    move-exception v4

    const-string/jumbo v4, "-1006"

    iget-wide v6, p0, Lc8/cwk;->startTime:J

    const-string/jumbo v5, "2"

    invoke-static {v4, p2, v6, v7, v5}, Lc8/owk;->unicomUpdate(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    .line 92
    .restart local v2    # "phoneNumberDTO":Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;
    :cond_2
    :try_start_4
    const-string/jumbo v4, "-1005"

    iget-wide v6, p0, Lc8/cwk;->startTime:J

    const-string/jumbo v5, "2"

    invoke-static {v4, p2, v6, v7, v5}, Lc8/owk;->unicomUpdate(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    .line 95
    .end local v2    # "phoneNumberDTO":Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;
    :cond_3
    const-string/jumbo v4, "-1004"

    const-string/jumbo v5, ""

    iget-wide v6, p0, Lc8/cwk;->startTime:J

    const-string/jumbo v8, "2"

    invoke-static {v4, v5, v6, v7, v8}, Lc8/owk;->unicomUpdate(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .restart local v2    # "phoneNumberDTO":Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v2    # "phoneNumberDTO":Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;
    .restart local v0    # "jsonData":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "phoneNumberDTO":Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;
    :catch_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "phoneNumberDTO":Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;
    .restart local v2    # "phoneNumberDTO":Lcom/youku/phone/freeflow/unicom/bean/UnicomPhoneNumberDTO;
    goto :goto_0
.end method
