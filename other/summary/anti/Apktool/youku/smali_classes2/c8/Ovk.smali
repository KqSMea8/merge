.class public Lc8/Ovk;
.super Ljava/lang/Object;
.source "TelecomMgr.java"

# interfaces
.implements Lc8/Ivk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Pvk;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Pvk;


# direct methods
.method constructor <init>(Lc8/Pvk;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lc8/Ovk;->this$0:Lc8/Pvk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "failInfo"    # Ljava/lang/String;

    .prologue
    .line 74
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 9
    .param p1, "successMessage"    # Ljava/lang/String;

    .prologue
    .line 47
    :try_start_0
    const-class v5, Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;

    invoke-static {p1, v5}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;

    .line 48
    .local v4, "telecomProduct":Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;
    if-nez v4, :cond_0

    .line 49
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "fastjson fail,use org.json"

    invoke-static {v5}, Lc8/pwk;->errorLog(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v5, "openId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "openId":Ljava/lang/String;
    const-string/jumbo v5, "code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 53
    .local v0, "code":I
    const-string/jumbo v5, "state"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "state":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/pwk;->errorLog(Ljava/lang/String;)V

    .line 55
    new-instance v4, Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;

    .end local v4    # "telecomProduct":Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;
    invoke-direct {v4}, Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;-><init>()V

    .line 56
    .restart local v4    # "telecomProduct":Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;
    invoke-virtual {v4, v0}, Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;->setCode(I)V

    .line 57
    invoke-virtual {v4, v2}, Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;->setOpenId(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v4, v3}, Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;->setState(Ljava/lang/String;)V

    .line 61
    .end local v0    # "code":I
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "openId":Ljava/lang/String;
    .end local v3    # "state":Ljava/lang/String;
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;->getOpenId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 62
    iget-object v5, p0, Lc8/Ovk;->this$0:Lc8/Pvk;

    invoke-virtual {v4}, Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;->getOpenId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lc8/Pvk;->access$000(Lc8/Pvk;Ljava/lang/String;Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;)V

    .line 63
    invoke-static {}, Lc8/tvk;->getInstance()Lc8/tvk;

    move-result-object v5

    iget-object v6, p0, Lc8/Ovk;->this$0:Lc8/Pvk;

    invoke-static {v6}, Lc8/Pvk;->access$100(Lc8/Pvk;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lc8/Ovk;->this$0:Lc8/Pvk;

    invoke-static {v7}, Lc8/Pvk;->access$200(Lc8/Pvk;)Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lc8/tvk;->sycTelecomData(Ljava/lang/String;Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v4    # "telecomProduct":Lcom/youku/phone/freeflow/telecom/bean/TelecomProduct;
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v5

    goto :goto_0
.end method
