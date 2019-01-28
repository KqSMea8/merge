.class public Lc8/cYb;
.super Landroid/os/AsyncTask;
.source "AConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/eYb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateCacheConfigTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Lc8/eYb",
        "<TConfigItemType;>.UpdateCacheConfigTaskResult;>;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lc8/eYb;


# direct methods
.method public constructor <init>(Lc8/eYb;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    .local p0, "this":Lc8/cYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>.UpdateCacheConfigTask;"
    iput-object p1, p0, Lc8/cYb;->this$0:Lc8/eYb;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 253
    iput-object p2, p0, Lc8/cYb;->mContext:Landroid/content/Context;

    .line 254
    return-void
.end method

.method private updateCacheConfig(Z)Lc8/dYb;
    .locals 17
    .param p1, "init"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lc8/eYb",
            "<TConfigItemType;>.UpdateCacheConfigTaskResult;"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lc8/cYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>.UpdateCacheConfigTask;"
    const-string/jumbo v13, "UpdateCacheConfigTask.updateCacheConfig?init=%s.run.start"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v4, "configs":Ljava/util/List;, "Ljava/util/List<TConfigItemType;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/cYb;->this$0:Lc8/eYb;

    invoke-static {v13}, Lc8/eYb;->access$500(Lc8/eYb;)Lcom/alibaba/poplayer/norm/IConfigAdapter;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/cYb;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/cYb;->this$0:Lc8/eYb;

    invoke-static {v15}, Lc8/eYb;->access$400(Lc8/eYb;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/alibaba/poplayer/norm/IConfigAdapter;->getConfigItemByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 284
    .local v8, "poplayerConfig":Ljava/lang/String;
    invoke-static {v8}, Lc8/eYb;->isConfigStringEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 285
    const-string/jumbo v13, "UpdateCacheConfigTask.configSet.empty.return"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    new-instance v13, Lc8/dYb;

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/cYb;->this$0:Lc8/eYb;

    invoke-direct {v13, v14}, Lc8/dYb;-><init>(Lc8/eYb;)V

    .line 312
    :goto_0
    return-object v13

    .line 288
    :cond_0
    const-string/jumbo v13, "UpdateCacheConfigTask.configSet.%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    invoke-static {v13, v14}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/cYb;->this$0:Lc8/eYb;

    invoke-static {v13}, Lc8/eYb;->access$500(Lc8/eYb;)Lcom/alibaba/poplayer/norm/IConfigAdapter;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/cYb;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/cYb;->this$0:Lc8/eYb;

    invoke-static {v15}, Lc8/eYb;->access$600(Lc8/eYb;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/alibaba/poplayer/norm/IConfigAdapter;->getConfigItemByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 291
    .local v10, "stringBlackList":Ljava/lang/String;
    invoke-static {v10}, Lc8/eYb;->isConfigStringEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v3, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    const-string/jumbo v13, "UpdateCacheConfigTask.blacklist.%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v10, v14, v15

    invoke-static {v13, v14}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    const-string/jumbo v13, "\\,"

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 296
    .local v12, "uuids":[Ljava/lang/String;
    move-object v2, v12

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v12

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v7, :cond_3

    aget-object v11, v2, v6

    .line 297
    .local v11, "uuid":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 298
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/cYb;->this$0:Lc8/eYb;

    invoke-static {v13}, Lc8/eYb;->access$500(Lc8/eYb;)Lcom/alibaba/poplayer/norm/IConfigAdapter;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/cYb;->mContext:Landroid/content/Context;

    invoke-interface {v13, v14, v11}, Lcom/alibaba/poplayer/norm/IConfigAdapter;->getConfigItemByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "activityByUuid":Ljava/lang/String;
    const-string/jumbo v13, "UpdateCacheConfigTask.config{%s}"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    invoke-static {v13, v14}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/cYb;->this$0:Lc8/eYb;

    invoke-virtual {v13, v1}, Lc8/eYb;->parseConfig(Ljava/lang/String;)Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v9

    .line 303
    .local v9, "rawConfig":Lcom/alibaba/poplayer/trigger/BaseConfigItem;, "TConfigItemType;"
    if-eqz v9, :cond_1

    .line 304
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v9    # "rawConfig":Lcom/alibaba/poplayer/trigger/BaseConfigItem;, "TConfigItemType;"
    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 291
    .end local v1    # "activityByUuid":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v11    # "uuid":Ljava/lang/String;
    .end local v12    # "uuids":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v13, ","

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    .line 306
    .restart local v1    # "activityByUuid":Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v3    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    .restart local v11    # "uuid":Ljava/lang/String;
    .restart local v12    # "uuids":[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 307
    .local v5, "e":Ljava/lang/Throwable;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "UpdateCacheConfigTask.parse.error.uuid{"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "}.content{"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "}"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 311
    .end local v1    # "activityByUuid":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Throwable;
    .end local v11    # "uuid":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/cYb;->this$0:Lc8/eYb;

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/cYb;->this$0:Lc8/eYb;

    invoke-static {v14}, Lc8/eYb;->access$500(Lc8/eYb;)Lcom/alibaba/poplayer/norm/IConfigAdapter;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/cYb;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14, v15}, Lc8/eYb;->specialConfigsParse(Lcom/alibaba/poplayer/norm/IConfigAdapter;Landroid/content/Context;)V

    .line 312
    new-instance v13, Lc8/dYb;

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/cYb;->this$0:Lc8/eYb;

    invoke-direct {v13, v14, v4, v8, v3}, Lc8/dYb;-><init>(Lc8/eYb;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Lc8/dYb;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Boolean;",
            ")",
            "Lc8/eYb",
            "<TConfigItemType;>.UpdateCacheConfigTaskResult;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lc8/cYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>.UpdateCacheConfigTask;"
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lc8/cYb;->updateCacheConfig(Z)Lc8/dYb;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 262
    :goto_0
    return-object v1

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UpdateCacheConfigTask.doInBackground.fail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    new-instance v1, Lc8/dYb;

    iget-object v2, p0, Lc8/cYb;->this$0:Lc8/eYb;

    invoke-direct {v1, v2}, Lc8/dYb;-><init>(Lc8/eYb;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 249
    .local p0, "this":Lc8/cYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>.UpdateCacheConfigTask;"
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/cYb;->doInBackground([Ljava/lang/Boolean;)Lc8/dYb;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lc8/dYb;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/eYb",
            "<TConfigItemType;>.UpdateCacheConfigTaskResult;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lc8/cYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>.UpdateCacheConfigTask;"
    .local p1, "result":Lc8/dYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>.UpdateCacheConfigTaskResult;"
    :try_start_0
    iget-object v1, p0, Lc8/cYb;->this$0:Lc8/eYb;

    invoke-static {p1}, Lc8/dYb;->access$000(Lc8/dYb;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lc8/eYb;->mCurrentConfigItems:Ljava/util/List;

    .line 270
    iget-object v1, p0, Lc8/cYb;->this$0:Lc8/eYb;

    invoke-static {p1}, Lc8/dYb;->access$100(Lc8/dYb;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/eYb;->mCurrentConfigSet:Ljava/lang/String;

    .line 271
    iget-object v1, p0, Lc8/cYb;->this$0:Lc8/eYb;

    invoke-static {p1}, Lc8/dYb;->access$200(Lc8/dYb;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lc8/eYb;->mCurrentBlackList:Ljava/util/List;

    .line 272
    iget-object v1, p0, Lc8/cYb;->this$0:Lc8/eYb;

    iget-object v2, p0, Lc8/cYb;->this$0:Lc8/eYb;

    iget-object v2, v2, Lc8/eYb;->mCurrentConfigItems:Ljava/util/List;

    iget-object v3, p0, Lc8/cYb;->this$0:Lc8/eYb;

    iget-object v3, v3, Lc8/eYb;->mCurrentConfigSet:Ljava/lang/String;

    iget-object v4, p0, Lc8/cYb;->this$0:Lc8/eYb;

    iget-object v4, v4, Lc8/eYb;->mCurrentBlackList:Ljava/util/List;

    invoke-virtual {v1, v2, v3, v4}, Lc8/eYb;->onCachedConfigChanged(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    .line 273
    iget-object v1, p0, Lc8/cYb;->this$0:Lc8/eYb;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/eYb;->access$302(Lc8/eYb;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "UpdateCacheConfigTask.onPostExecute.error"

    invoke-static {v1, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 249
    .local p0, "this":Lc8/cYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>.UpdateCacheConfigTask;"
    check-cast p1, Lc8/dYb;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/cYb;->onPostExecute(Lc8/dYb;)V

    return-void
.end method
