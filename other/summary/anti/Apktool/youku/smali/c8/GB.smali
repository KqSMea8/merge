.class public Lc8/GB;
.super Lc8/WB;
.source "WVConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KB;->updateImmediately(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/WB",
        "<",
        "Lc8/ZB;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KB;

.field final synthetic val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lc8/KB;JLandroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lc8/GB;->this$0:Lc8/KB;

    iput-wide p2, p0, Lc8/GB;->val$startTime:J

    iput-object p4, p0, Lc8/GB;->val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-direct {p0}, Lc8/WB;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 188
    const-string/jumbo v0, "WVConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update entry failed! : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lc8/YF;->getConfigMonitor()Lc8/GF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lc8/YF;->getConfigMonitor()Lc8/GF;

    move-result-object v0

    const-string/jumbo v1, "entry-NoNetwork"

    sget-object v2, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UNKNOWN_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-virtual {v2}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2, p2}, Lc8/GF;->didOccurUpdateConfigError(Ljava/lang/String;ILjava/lang/String;)V

    .line 192
    :cond_0
    invoke-super {p0, p1, p2}, Lc8/WB;->onError(ILjava/lang/String;)V

    .line 193
    return-void
.end method

.method public onFinish(Lc8/ZB;I)V
    .locals 26
    .param p1, "data"    # Lc8/ZB;
    .param p2, "token"    # I

    .prologue
    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lc8/GB;->val$startTime:J

    sub-long v6, v4, v8

    .line 125
    .local v6, "updateTime":J
    const/16 v20, 0x1

    .line 127
    .local v20, "isSuccess":Z
    if-nez p1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    :try_start_0
    new-instance v10, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lc8/ZB;->getData()[B

    move-result-object v3

    const-string/jumbo v4, "utf-8"

    invoke-direct {v10, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 130
    .local v10, "content":Ljava/lang/String;
    const/16 v21, 0x0

    .line 131
    .local v21, "jsObj":Lorg/json/JSONObject;
    new-instance v24, Lc8/gC;

    invoke-direct/range {v24 .. v24}, Lc8/gC;-><init>()V

    .line 132
    .local v24, "response":Lc8/gC;
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lc8/gC;->parseJsonResult(Ljava/lang/String;)Lc8/gC;

    move-result-object v3

    iget-boolean v3, v3, Lc8/gC;->success:Z

    if-eqz v3, :cond_2

    .line 133
    move-object/from16 v0, v24

    iget-object v0, v0, Lc8/gC;->data:Lorg/json/JSONObject;

    move-object/from16 v21, v0

    .line 135
    :cond_2
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 137
    .local v12, "currentTime":J
    invoke-virtual/range {p1 .. p1}, Lc8/ZB;->getHeaders()Ljava/util/Map;

    move-result-object v19

    .line 138
    .local v19, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v19, :cond_7

    .line 139
    const-string/jumbo v3, "Age"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    .local v2, "age":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    const-string/jumbo v3, "age"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "age":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 143
    .restart local v2    # "age":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "Date"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 144
    .local v11, "date":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 145
    const-string/jumbo v3, "date"

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "date":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 147
    .restart local v11    # "date":Ljava/lang/String;
    :cond_4
    const-wide/16 v16, 0x0

    .line 148
    .local v16, "diffSTime":J
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 149
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    mul-long v16, v4, v8

    .line 151
    :cond_5
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 152
    invoke-static {v11}, Lc8/JH;->parseDate(Ljava/lang/String;)J

    move-result-wide v4

    add-long v16, v16, v4

    .line 154
    :cond_6
    const-wide/16 v4, 0x0

    cmp-long v3, v16, v4

    if-eqz v3, :cond_7

    .line 155
    sub-long v14, v12, v16

    .line 156
    .local v14, "diff":J
    const-string/jumbo v3, "WVConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateDiffTime by config : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lc8/YF;->getPackageMonitorInterface()Lc8/aG;

    move-result-object v3

    invoke-interface {v3, v14, v15}, Lc8/aG;->uploadDiffTimeTime(J)V

    .line 162
    .end local v2    # "age":Ljava/lang/String;
    .end local v11    # "date":Ljava/lang/String;
    .end local v12    # "currentTime":J
    .end local v14    # "diff":J
    .end local v16    # "diffSTime":J
    .end local v19    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/GB;->this$0:Lc8/KB;

    invoke-static {v3}, Lc8/KB;->access$100(Lc8/KB;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/GB;->this$0:Lc8/KB;

    invoke-static {v3}, Lc8/KB;->access$100(Lc8/KB;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v23

    .line 165
    .local v23, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 166
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 167
    .local v22, "key":Ljava/lang/String;
    const-string/jumbo v3, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 168
    .local v25, "responseVal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/GB;->this$0:Lc8/KB;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/GB;->val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v3, v0, v1, v4, v5}, Lc8/KB;->access$200(Lc8/KB;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 174
    .end local v10    # "content":Ljava/lang/String;
    .end local v21    # "jsObj":Lorg/json/JSONObject;
    .end local v22    # "key":Ljava/lang/String;
    .end local v23    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v24    # "response":Lc8/gC;
    .end local v25    # "responseVal":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 175
    .local v18, "e":Ljava/lang/Exception;
    const/16 v20, 0x0

    .line 176
    invoke-static {}, Lc8/YF;->getConfigMonitor()Lc8/GF;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 177
    invoke-static {}, Lc8/YF;->getConfigMonitor()Lc8/GF;

    move-result-object v3

    const-string/jumbo v4, "entry"

    sget-object v5, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UNKNOWN_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-virtual {v5}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->ordinal()I

    move-result v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update entry error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v4, v5, v8}, Lc8/GF;->didOccurUpdateConfigError(Ljava/lang/String;ILjava/lang/String;)V

    .line 179
    :cond_8
    const-string/jumbo v3, "WVConfigManager"

    const-string/jumbo v4, "updateImmediately failed!"

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_2
    invoke-static {}, Lc8/YF;->getConfigMonitor()Lc8/GF;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 182
    invoke-static {}, Lc8/YF;->getConfigMonitor()Lc8/GF;

    move-result-object v3

    const-string/jumbo v4, "entry"

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/GB;->val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-virtual {v5}, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->ordinal()I

    move-result v5

    if-eqz v20, :cond_b

    const/4 v8, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/GB;->this$0:Lc8/KB;

    invoke-static {v9}, Lc8/KB;->access$100(Lc8/KB;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v9

    invoke-interface/range {v3 .. v9}, Lc8/GF;->didUpdateConfig(Ljava/lang/String;IJII)V

    goto/16 :goto_0

    .line 170
    .restart local v10    # "content":Ljava/lang/String;
    .restart local v21    # "jsObj":Lorg/json/JSONObject;
    .restart local v23    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v24    # "response":Lc8/gC;
    :cond_a
    :try_start_1
    invoke-static {}, Lc8/YF;->getConfigMonitor()Lc8/GF;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 171
    invoke-static {}, Lc8/YF;->getConfigMonitor()Lc8/GF;

    move-result-object v3

    const-string/jumbo v4, "entry"

    invoke-interface {v3, v4}, Lc8/GF;->didOccurUpdateConfigSuccess(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 182
    .end local v10    # "content":Ljava/lang/String;
    .end local v21    # "jsObj":Lorg/json/JSONObject;
    .end local v23    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v24    # "response":Lc8/gC;
    :cond_b
    const/4 v8, 0x0

    goto :goto_3
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 121
    check-cast p1, Lc8/ZB;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/GB;->onFinish(Lc8/ZB;I)V

    return-void
.end method
