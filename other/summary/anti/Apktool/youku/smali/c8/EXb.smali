.class public Lc8/EXb;
.super Landroid/os/AsyncTask;
.source "ConfigMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/FXb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateConfigTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lc8/BXb;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/FXb;


# direct methods
.method private constructor <init>(Lc8/FXb;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lc8/EXb;->this$0:Lc8/FXb;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/FXb;Lc8/DXb;)V
    .locals 0
    .param p1, "x0"    # Lc8/FXb;
    .param p2, "x1"    # Lc8/DXb;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lc8/EXb;-><init>(Lc8/FXb;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 93
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/EXb;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .locals 19
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/BXb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    const-string/jumbo v15, "%s. begin update Config."

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Lc8/FXb;->TAG:Ljava/lang/String;

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 100
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/EXb;->this$0:Lc8/FXb;

    invoke-static {v15}, Lc8/FXb;->access$100(Lc8/FXb;)Lc8/oXb;

    move-result-object v15

    const-string/jumbo v16, "layer_manager_config"

    invoke-interface/range {v15 .. v16}, Lc8/oXb;->getConfigByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "config":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 102
    const-string/jumbo v15, "%s. %s is empty."

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Lc8/FXb;->TAG:Ljava/lang/String;

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string/jumbo v18, "layer_manager_config"

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 136
    :cond_0
    return-object v14

    .line 105
    :cond_1
    const-string/jumbo v15, "%s. %s: {%s}."

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Lc8/FXb;->TAG:Ljava/lang/String;

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string/jumbo v18, "layer_manager_config"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    aput-object v6, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v14, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/poplayer/layermanager/config/BizConfig;>;"
    const-string/jumbo v15, "\\,"

    invoke-virtual {v6, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 110
    .local v12, "keys":[Ljava/lang/String;
    move-object v1, v12

    .local v1, "arr$":[Ljava/lang/String;
    array-length v13, v12

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .local v10, "i$":I
    :goto_0
    if-ge v10, v13, :cond_0

    aget-object v11, v1, v10

    .line 111
    .local v11, "key":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 112
    const-string/jumbo v15, "%s. ==> update bizConfig: bizId:{%s}."

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Lc8/FXb;->TAG:Ljava/lang/String;

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v11, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/EXb;->this$0:Lc8/FXb;

    invoke-static {v15}, Lc8/FXb;->access$100(Lc8/FXb;)Lc8/oXb;

    move-result-object v15

    invoke-interface {v15, v11}, Lc8/oXb;->getConfigByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "bizConfigByKey":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lc8/BXb;

    invoke-direct {v2}, Lc8/BXb;-><init>()V

    .line 116
    .local v2, "bizConfig":Lc8/BXb;
    invoke-static {v3}, Lcom/alibaba/poplayer/utils/Utils;->getMapForJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 118
    .local v4, "bizConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v10    # "i$":I
    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    .local v5, "bizkey":Ljava/lang/String;
    :try_start_1
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-class v16, Lc8/CXb;

    invoke-static/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/CXb;

    .line 121
    .local v7, "configItem":Lc8/CXb;
    iget-object v15, v2, Lc8/BXb;->mConfigs:Ljava/util/Map;

    invoke-interface {v15, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string/jumbo v15, "%s. ==> put tpye:{%s},val:{%s}."

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Lc8/FXb;->TAG:Ljava/lang/String;

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v5, v16, v17

    const/16 v17, 0x2

    invoke-virtual {v7}, Lc8/CXb;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 123
    .end local v7    # "configItem":Lc8/CXb;
    :catch_0
    move-exception v8

    .line 124
    .local v8, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lc8/FXb;->TAG:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ".update key:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ",,error."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v8}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 132
    .end local v2    # "bizConfig":Lc8/BXb;
    .end local v4    # "bizConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "bizkey":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Throwable;
    .end local v9    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v8

    .line 133
    .restart local v8    # "e":Ljava/lang/Throwable;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lc8/FXb;->TAG:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ".update key:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ",error."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v8}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .end local v8    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    add-int/lit8 v9, v10, 0x1

    .local v9, "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto/16 :goto_0

    .line 127
    .end local v10    # "i$":I
    .restart local v2    # "bizConfig":Lc8/BXb;
    .restart local v4    # "bizConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v9, "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    iget-object v15, v2, Lc8/BXb;->mConfigs:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    .line 130
    invoke-virtual {v14, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string/jumbo v15, "%s. --> complete bizId:{%s}. update"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Lc8/FXb;->TAG:Ljava/lang/String;

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string/jumbo v18, "layer_manager_config"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    aput-object v11, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 93
    check-cast p1, Ljava/util/Map;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/EXb;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/BXb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "stringBizConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/poplayer/layermanager/config/BizConfig;>;"
    :try_start_0
    iget-object v1, p0, Lc8/EXb;->this$0:Lc8/FXb;

    iput-object p1, v1, Lc8/FXb;->mBizConfigMap:Ljava/util/Map;

    .line 143
    iget-object v1, p0, Lc8/EXb;->this$0:Lc8/FXb;

    iget-object v2, p0, Lc8/EXb;->this$0:Lc8/FXb;

    iget-object v2, v2, Lc8/FXb;->mBizConfigMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lc8/FXb;->onConfigChanged(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/FXb;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".onPostExecute.error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
