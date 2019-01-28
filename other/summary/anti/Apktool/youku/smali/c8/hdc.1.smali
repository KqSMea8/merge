.class public Lc8/hdc;
.super Landroid/os/Handler;
.source "VerifyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/verificationsdk/ui/VerifyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 1122
    iput-object p1, p0, Lc8/hdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1125
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1126
    .local v2, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1161
    :goto_0
    return-void

    .line 1128
    :pswitch_0
    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lc8/hdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    iget-object v4, v4, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->requestRunnable:Ljava/lang/Runnable;

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1131
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    .line 1132
    .local v1, "json":Lorg/json/JSONObject;
    iget-object v3, p0, Lc8/hdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    const-string/jumbo v4, "session_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3102(Lcom/alibaba/verificationsdk/ui/VerifyActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1135
    .end local v1    # "json":Lorg/json/JSONObject;
    :pswitch_2
    iget-object v3, p0, Lc8/hdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$3102(Lcom/alibaba/verificationsdk/ui/VerifyActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1136
    const-string/jumbo v3, "code"

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->values()[Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v3, v4

    .line 1138
    .local v0, "error_type":Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;
    const-string/jumbo v3, "errorCode"

    invoke-virtual {v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    sget-object v3, Lc8/odc;->$SwitchMap$com$alibaba$verificationsdk$ui$VerifyActivity$ERROR_TYPE:[I

    invoke-virtual {v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity$ERROR_TYPE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 1141
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    .line 1142
    .restart local v1    # "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "VerifyActivity"

    const-string/jumbo v4, "msg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Idc;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    const-string/jumbo v3, "VerifyActivity"

    const-string/jumbo v4, "sub_msg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Idc;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const-string/jumbo v3, "errorMsg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "msg"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "sub_msg"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1147
    .end local v1    # "json":Lorg/json/JSONObject;
    :pswitch_4
    const-string/jumbo v4, "VerifyActivity"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lc8/Idc;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    const-string/jumbo v4, "errorMsg"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1126
    .line 1139
    nop

    :pswitch_data_0
    .packed-switch 0x186ad
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
