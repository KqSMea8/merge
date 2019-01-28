.class public Lc8/XGo;
.super Ljava/lang/Object;
.source "VipConfigManager.java"

# interfaces
.implements Lc8/mGo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/YGo;->realMtopRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/mGo",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/YGo;


# direct methods
.method constructor <init>(Lc8/YGo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/YGo;

    .prologue
    .line 109
    iput-object p1, p0, Lc8/XGo;->this$0:Lc8/YGo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailed(Lc8/oGo;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 109
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lc8/XGo;->onFailed(Lc8/oGo;Ljava/lang/String;)V

    return-void
.end method

.method public onFailed(Lc8/oGo;Ljava/lang/String;)V
    .locals 3
    .param p1, "globalResponseModel"    # Lc8/oGo;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lc8/XGo;->this$0:Lc8/YGo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/YGo;->access$002(Lc8/YGo;Lc8/BGo;)Lc8/BGo;

    .line 154
    iget-object v0, p0, Lc8/XGo;->this$0:Lc8/YGo;

    invoke-virtual {v0}, Lc8/YGo;->clearSaveConfigTime()V

    .line 155
    iget-object v0, p0, Lc8/XGo;->this$0:Lc8/YGo;

    invoke-static {v0}, Lc8/YGo;->access$300(Lc8/YGo;)V

    .line 158
    invoke-static {}, Lc8/QFo;->getBroadcast()Lc8/VFo;

    move-result-object v0

    const-string/jumbo v1, "ACTION_GET_GLOBAL_CONFIG"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lc8/VFo;->sendBroadcast(Ljava/lang/String;I)V

    .line 160
    const-string/jumbo v0, "VipConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u83b7\u53d6\u914d\u7f6e\u8bf7\u6c42\u5931\u8d25ret.code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lc8/oGo;->getRetCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/cIo;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method public bridge synthetic onSuccess(Lc8/oGo;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 109
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lc8/XGo;->onSuccess(Lc8/oGo;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lc8/oGo;Ljava/lang/String;)V
    .locals 5
    .param p1, "globalResponseModel"    # Lc8/oGo;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v2, p0, Lc8/XGo;->this$0:Lc8/YGo;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lc8/YGo;->access$002(Lc8/YGo;Lc8/BGo;)Lc8/BGo;

    .line 115
    :try_start_0
    const-string/jumbo v2, "VipConfigManager"

    const-string/jumbo v3, "\u83b7\u53d6\u914d\u7f6e\u8bf7\u6c42success"

    invoke-static {v2, v3}, Lc8/cIo;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    :try_start_1
    invoke-static {p2}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 126
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-nez v1, :cond_0

    .line 127
    :try_start_2
    const-string/jumbo v2, "VipConfigManager"

    const-string/jumbo v3, "\u83b7\u53d6\u914d\u7f6e\u8bf7\u6c42\u914d\u7f6e\u4e3a\u7a7a"

    invoke-static {v2, v3}, Lc8/cIo;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 132
    .restart local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    iget-object v2, p0, Lc8/XGo;->this$0:Lc8/YGo;

    invoke-static {v2, v1}, Lc8/YGo;->access$100(Lc8/YGo;Lcom/alibaba/fastjson/JSONObject;)V

    .line 134
    const-string/jumbo v2, "VipConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u8bf7\u6c42\u5168\u5c40 Config = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/cIo;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v2, p0, Lc8/XGo;->this$0:Lc8/YGo;

    invoke-static {v2, v1}, Lc8/YGo;->access$200(Lc8/YGo;Lcom/alibaba/fastjson/JSONObject;)V

    .line 138
    iget-object v2, p0, Lc8/XGo;->this$0:Lc8/YGo;

    invoke-static {v2}, Lc8/YGo;->access$300(Lc8/YGo;)V

    .line 141
    invoke-static {}, Lc8/QFo;->getBroadcast()Lc8/VFo;

    move-result-object v2

    const-string/jumbo v3, "ACTION_GET_GLOBAL_CONFIG"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lc8/VFo;->sendBroadcast(Ljava/lang/String;I)V

    .line 143
    const-string/jumbo v2, "VipConfigManager"

    const-string/jumbo v3, "\u83b7\u53d6\u914d\u7f6e\u8bf7\u6c42\u6210\u529f\uff0c \u5e76\u4e14\u914d\u7f6e\u4fe1\u606f\u4e0d\u4e3a\u7a7a"

    invoke-static {v2, v3}, Lc8/cIo;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "VipConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u89e3\u6790\u914d\u7f6e\u8bf7\u6c42\u5931\u8d25msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/cIo;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 146
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
