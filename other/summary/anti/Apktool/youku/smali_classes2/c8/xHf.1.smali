.class public Lc8/xHf;
.super Landroid/os/Handler;
.source "TLogCommandPareser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/yHf;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/yHf;


# direct methods
.method constructor <init>(Lc8/yHf;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 110
    iput-object p1, p0, Lc8/xHf;->this$0:Lc8/yHf;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 114
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    .line 115
    .local v9, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "result"

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 116
    .local v13, "result":Ljava/lang/String;
    const-string/jumbo v1, "userId"

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 117
    .local v18, "userId":Ljava/lang/String;
    const-string/jumbo v1, "serviceId"

    const-string/jumbo v2, "mtop"

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 119
    .local v15, "serviceId":Ljava/lang/String;
    if-nez v13, :cond_1

    .line 179
    .end local v9    # "data":Landroid/os/Bundle;
    .end local v13    # "result":Ljava/lang/String;
    .end local v15    # "serviceId":Ljava/lang/String;
    .end local v18    # "userId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 122
    .restart local v9    # "data":Landroid/os/Bundle;
    .restart local v13    # "result":Ljava/lang/String;
    .restart local v15    # "serviceId":Ljava/lang/String;
    .restart local v18    # "userId":Ljava/lang/String;
    :cond_1
    invoke-static {v13}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 123
    .local v12, "object":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v12, :cond_0

    .line 125
    const-string/jumbo v1, "serialNumber"

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v14

    .line 126
    .local v14, "serialNumber":I
    const-string/jumbo v1, "taskId"

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v17

    .line 127
    .local v17, "taskId":I
    const-string/jumbo v1, "command"

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 128
    .local v8, "command":I
    const-string/jumbo v1, "session"

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 130
    .local v16, "session":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "userId"

    move-object/from16 v0, v18

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string/jumbo v1, "serviceId"

    invoke-interface {v4, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string/jumbo v1, "serialNumber"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string/jumbo v1, "taskId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v1, "session"

    move-object/from16 v0, v16

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const v1, 0xfff5

    const-string/jumbo v2, ""

    const-string/jumbo v3, "0"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lc8/GHf;->sendResponse(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/AIb;)V

    .line 138
    const-string/jumbo v1, "tlog_monitor_module"

    const-string/jumbo v2, "tlog_command_receiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "commandID : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lc8/FHf;->commandReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_0

    .line 141
    :sswitch_0
    invoke-static {v12, v4}, Lc8/yHf;->access$000(Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 175
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "command":I
    .end local v9    # "data":Landroid/os/Bundle;
    .end local v12    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v13    # "result":Ljava/lang/String;
    .end local v14    # "serialNumber":I
    .end local v15    # "serviceId":Ljava/lang/String;
    .end local v16    # "session":Ljava/lang/String;
    .end local v17    # "taskId":I
    .end local v18    # "userId":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 176
    .local v10, "e":Ljava/lang/Exception;
    if-eqz v10, :cond_0

    .line 177
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 144
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "command":I
    .restart local v9    # "data":Landroid/os/Bundle;
    .restart local v12    # "object":Lcom/alibaba/fastjson/JSONObject;
    .restart local v13    # "result":Ljava/lang/String;
    .restart local v14    # "serialNumber":I
    .restart local v15    # "serviceId":Ljava/lang/String;
    .restart local v16    # "session":Ljava/lang/String;
    .restart local v17    # "taskId":I
    .restart local v18    # "userId":Ljava/lang/String;
    :sswitch_1
    :try_start_1
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v1, "tlog_multi_process_message"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v11, "intent":Landroid/content/Intent;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v7, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "command"

    const/4 v2, 0x3

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    const-string/jumbo v1, "data"

    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v11, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 149
    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/xHf;->this$0:Lc8/yHf;

    invoke-static {v1, v12, v4}, Lc8/yHf;->access$100(Lc8/yHf;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 153
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v11    # "intent":Landroid/content/Intent;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/xHf;->this$0:Lc8/yHf;

    invoke-static {v1, v12, v4}, Lc8/yHf;->access$200(Lc8/yHf;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 156
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/xHf;->this$0:Lc8/yHf;

    invoke-static {v1, v12, v4}, Lc8/yHf;->access$300(Lc8/yHf;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 159
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/xHf;->this$0:Lc8/yHf;

    invoke-static {v1, v12, v4}, Lc8/yHf;->access$400(Lc8/yHf;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 163
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/xHf;->this$0:Lc8/yHf;

    invoke-static {v1, v12, v4}, Lc8/yHf;->access$500(Lc8/yHf;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 166
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/xHf;->this$0:Lc8/yHf;

    invoke-static {v1, v12, v4}, Lc8/yHf;->access$600(Lc8/yHf;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 169
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/xHf;->this$0:Lc8/yHf;

    invoke-static {v1, v12, v4}, Lc8/yHf;->access$700(Lc8/yHf;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 139
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x9 -> :sswitch_3
        0xb -> :sswitch_4
        0xd -> :sswitch_5
        0xfff6 -> :sswitch_7
        0xfffa -> :sswitch_6
        0xfffd -> :sswitch_2
    .end sparse-switch
.end method
