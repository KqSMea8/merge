.class public Lc8/xub;
.super Landroid/os/Handler;
.source "WXMtopRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Dub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Dub;


# direct methods
.method constructor <init>(Lc8/Dub;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Dub;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 66
    iput-object p1, p0, Lc8/xub;->this$0:Lc8/Dub;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 69
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lc8/uub;

    if-eqz v4, :cond_0

    .line 72
    sget-object v4, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v4}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    const-string/jumbo v5, "WXMtopRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "call result, retString: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lc8/uub;

    invoke-virtual {v4}, Lc8/uub;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_1
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lc8/uub;

    .line 77
    .local v2, "mtopResult":Lc8/uub;
    invoke-virtual {v2}, Lc8/uub;->getCallback()Lc8/EWf;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lc8/uub;->getResult()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 78
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 80
    .local v3, "result":Lcom/alibaba/fastjson/JSONObject;
    iget-object v4, p0, Lc8/xub;->this$0:Lc8/Dub;

    invoke-static {v4}, Lc8/Dub;->access$000(Lc8/Dub;)Lcom/alibaba/aliweex/adapter/module/mtop/WXMtopModule$MTOP_VERSION;

    move-result-object v4

    sget-object v5, Lcom/alibaba/aliweex/adapter/module/mtop/WXMtopModule$MTOP_VERSION;->V1:Lcom/alibaba/aliweex/adapter/module/mtop/WXMtopModule$MTOP_VERSION;

    if-ne v4, v5, :cond_3

    .line 81
    const-string/jumbo v5, "result"

    invoke-virtual {v2}, Lc8/uub;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "WX_SUCCESS"

    :goto_1
    invoke-virtual {v3, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v4, "data"

    invoke-virtual {v2}, Lc8/uub;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {v2}, Lc8/uub;->getCallback()Lc8/EWf;

    move-result-object v0

    .line 97
    .local v0, "callback":Lc8/EWf;
    :goto_2
    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0, v3}, Lc8/EWf;->invoke(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v0    # "callback":Lc8/EWf;
    .end local v2    # "mtopResult":Lc8/uub;
    .end local v3    # "result":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Lcom/alibaba/fastjson/JSONException;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v1    # "e":Lcom/alibaba/fastjson/JSONException;
    .restart local v2    # "mtopResult":Lc8/uub;
    .restart local v3    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    :try_start_1
    const-string/jumbo v4, "WX_FAILED"

    goto :goto_1

    .line 85
    :cond_3
    invoke-virtual {v2}, Lc8/uub;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 86
    invoke-virtual {v2}, Lc8/uub;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 87
    invoke-virtual {v2}, Lc8/uub;->getCallback()Lc8/EWf;

    move-result-object v0

    .restart local v0    # "callback":Lc8/EWf;
    goto :goto_2

    .line 91
    .end local v0    # "callback":Lc8/EWf;
    :cond_4
    const-string/jumbo v4, "result"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 92
    const-string/jumbo v4, "result"

    invoke-virtual {v2}, Lc8/uub;->getRetCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_5
    invoke-virtual {v2}, Lc8/uub;->getFailureCallback()Lc8/EWf;
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0    # "callback":Lc8/EWf;
    goto :goto_2

    .line 69
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method
