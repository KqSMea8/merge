.class public Lc8/uRf;
.super Ljava/lang/Object;
.source "UpdateDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/yRf;->localUpdate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/yRf;


# direct methods
.method constructor <init>(Lc8/yRf;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lc8/uRf;->this$0:Lc8/yRf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 350
    :try_start_0
    sget-object v8, Lc8/yRf;->sContext:Landroid/app/Application;

    invoke-virtual {v8}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    sget-object v9, Lc8/yRf;->sContext:Landroid/app/Application;

    invoke-virtual {v9}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 352
    .local v0, "currentVersionName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lc8/uRf;->this$0:Lc8/yRf;

    invoke-virtual {v8}, Lc8/yRf;->getLocalUpdateFolderPath()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "update-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".json"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .local v5, "localUpdateJsonFile":Ljava/io/File;
    invoke-static {v5}, Lc8/yRf;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 355
    .local v4, "localUpdateJsonContent":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "get local update data:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    invoke-static {v4}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 359
    .local v7, "updateJSONObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "baseVersion"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "updateBundles"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "updateVersion"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 363
    invoke-static {}, Lc8/yRf;->access$400()Ljava/util/Map;

    move-result-object v8

    const-string/jumbo v9, "local_atlas_update"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/zRf;

    .line 365
    .local v3, "listener":Lc8/zRf;
    if-eqz v3, :cond_0

    .line 366
    const/4 v8, 0x0

    const-string/jumbo v9, "local_update"

    invoke-interface {v3, v8, v7, v9}, Lc8/zRf;->onUpdate(ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    .line 384
    .end local v3    # "listener":Lc8/zRf;
    :cond_0
    :goto_0
    iget-object v8, p0, Lc8/uRf;->this$0:Lc8/yRf;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lc8/yRf;->isUpdating:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    iget-object v8, p0, Lc8/uRf;->this$0:Lc8/yRf;

    iput-boolean v11, v8, Lc8/yRf;->isUpdating:Z

    .line 389
    .end local v0    # "currentVersionName":Ljava/lang/String;
    .end local v4    # "localUpdateJsonContent":Ljava/lang/String;
    .end local v5    # "localUpdateJsonFile":Ljava/io/File;
    .end local v7    # "updateJSONObject":Lcom/alibaba/fastjson/JSONObject;
    :goto_1
    return-void

    .line 369
    .restart local v0    # "currentVersionName":Ljava/lang/String;
    .restart local v4    # "localUpdateJsonContent":Ljava/lang/String;
    .restart local v5    # "localUpdateJsonFile":Ljava/io/File;
    .restart local v7    # "updateJSONObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    :try_start_1
    const-string/jumbo v8, "data"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 370
    invoke-static {v4}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "data"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "local_update"

    invoke-static {v8, v9}, Lc8/BRf;->convert2UpdateInfo(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/taobao/update/datasource/local/UpdateInfo;

    move-result-object v6

    .line 372
    .local v6, "updateInfo":Lcom/taobao/update/datasource/local/UpdateInfo;
    invoke-static {}, Lc8/yRf;->access$400()Ljava/util/Map;

    move-result-object v8

    const-string/jumbo v9, "local_update"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/zRf;

    .line 374
    .restart local v3    # "listener":Lc8/zRf;
    if-eqz v3, :cond_0

    .line 375
    iget-object v8, v6, Lcom/taobao/update/datasource/local/UpdateInfo;->updateList:Ljava/util/Map;

    const-string/jumbo v9, "dynamic"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;

    .line 376
    .local v1, "data":Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;
    if-eqz v1, :cond_0

    .line 377
    const/4 v8, 0x0

    iget-object v9, v1, Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;->value:Lcom/alibaba/fastjson/JSONObject;

    iget-object v10, v1, Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;->from:Ljava/lang/String;

    invoke-interface {v3, v8, v9, v10}, Lc8/zRf;->onUpdate(ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 385
    .end local v0    # "currentVersionName":Ljava/lang/String;
    .end local v1    # "data":Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;
    .end local v3    # "listener":Lc8/zRf;
    .end local v4    # "localUpdateJsonContent":Ljava/lang/String;
    .end local v5    # "localUpdateJsonFile":Ljava/io/File;
    .end local v6    # "updateInfo":Lcom/taobao/update/datasource/local/UpdateInfo;
    .end local v7    # "updateJSONObject":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v2

    .line 386
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 388
    iget-object v8, p0, Lc8/uRf;->this$0:Lc8/yRf;

    iput-boolean v11, v8, Lc8/yRf;->isUpdating:Z

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lc8/uRf;->this$0:Lc8/yRf;

    iput-boolean v11, v9, Lc8/yRf;->isUpdating:Z

    throw v8
.end method
