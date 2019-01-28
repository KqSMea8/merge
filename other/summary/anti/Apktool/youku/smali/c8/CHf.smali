.class public Lc8/CHf;
.super Landroid/content/BroadcastReceiver;
.source "TLogInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/EHf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionChangeReceiver"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 385
    :try_start_0
    const-string/jumbo v20, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 386
    .local v4, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v7, 0x0

    .line 387
    .local v7, "info":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    .line 388
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 390
    :cond_0
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v20

    sget-object v21, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 393
    .local v3, "b":Landroid/os/Bundle;
    const-string/jumbo v20, "networkInfo"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkInfo;

    .line 396
    .local v9, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 398
    .local v2, "activeNetInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v20

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 399
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 400
    .local v13, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v20, "tlog_upload_files"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 401
    const-string/jumbo v20, "tlog_upload_files"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v14

    .line 402
    .local v14, "taskFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v14, :cond_1

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v20

    if-nez v20, :cond_2

    .line 453
    .end local v2    # "activeNetInfo":Landroid/net/NetworkInfo;
    .end local v3    # "b":Landroid/os/Bundle;
    .end local v4    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v7    # "info":Landroid/net/NetworkInfo;
    .end local v9    # "netInfo":Landroid/net/NetworkInfo;
    .end local v13    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v14    # "taskFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void

    .line 405
    .restart local v2    # "activeNetInfo":Landroid/net/NetworkInfo;
    .restart local v3    # "b":Landroid/os/Bundle;
    .restart local v4    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v9    # "netInfo":Landroid/net/NetworkInfo;
    .restart local v13    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v14    # "taskFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    invoke-static/range {p1 .. p1}, Lc8/SHf;->getInstances(Landroid/content/Context;)Lc8/SHf;

    move-result-object v18

    .line 406
    .local v18, "uploadManager":Lc8/SHf;
    invoke-virtual/range {v18 .. v18}, Lc8/SHf;->isUploading()Z

    move-result v20

    if-nez v20, :cond_1

    .line 410
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 411
    .local v8, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v6, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 413
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2    # "activeNetInfo":Landroid/net/NetworkInfo;
    .end local v3    # "b":Landroid/os/Bundle;
    .end local v4    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v6    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "info":Landroid/net/NetworkInfo;
    .end local v8    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9    # "netInfo":Landroid/net/NetworkInfo;
    .end local v13    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v14    # "taskFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v18    # "uploadManager":Lc8/SHf;
    :catch_0
    move-exception v20

    goto :goto_0

    .line 415
    .restart local v2    # "activeNetInfo":Landroid/net/NetworkInfo;
    .restart local v3    # "b":Landroid/os/Bundle;
    .restart local v4    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v6    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "info":Landroid/net/NetworkInfo;
    .restart local v8    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v9    # "netInfo":Landroid/net/NetworkInfo;
    .restart local v13    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v14    # "taskFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v18    # "uploadManager":Lc8/SHf;
    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lc8/SHf;->addFiles(Ljava/util/List;)V

    .line 417
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 418
    .local v10, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v20, "userId"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 419
    .local v19, "userId":Ljava/lang/String;
    const-string/jumbo v20, "serviceId"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 420
    .local v12, "serviceId":Ljava/lang/String;
    const-string/jumbo v20, "serialNumber"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 421
    .local v11, "serialNumber":Ljava/lang/String;
    const-string/jumbo v20, "taskId"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 422
    .local v15, "taskId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 423
    .local v5, "extData":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v20, "tlog_upload_extdata"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 424
    const-string/jumbo v20, "tlog_upload_extdata"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 425
    .local v16, "tmp":Ljava/lang/String;
    if-eqz v16, :cond_4

    .line 426
    invoke-static/range {v16 .. v16}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 428
    .end local v16    # "tmp":Ljava/lang/String;
    :cond_4
    const-string/jumbo v20, "tlog_upload_type"

    const-string/jumbo v21, "server"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 430
    .local v17, "type":Ljava/lang/String;
    const-string/jumbo v20, "userId"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string/jumbo v20, "serviceId"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string/jumbo v20, "serialNumber"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string/jumbo v20, "taskId"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lc8/SHf;->setReportParams(Ljava/util/Map;)V

    .line 437
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lc8/SHf;->setExtData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 438
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lc8/SHf;->setType(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {v18 .. v18}, Lc8/SHf;->startUpload()V

    goto/16 :goto_0

    .line 447
    .end local v2    # "activeNetInfo":Landroid/net/NetworkInfo;
    .end local v3    # "b":Landroid/os/Bundle;
    .end local v5    # "extData":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9    # "netInfo":Landroid/net/NetworkInfo;
    .end local v10    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "serialNumber":Ljava/lang/String;
    .end local v12    # "serviceId":Ljava/lang/String;
    .end local v13    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v14    # "taskFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "taskId":Ljava/lang/String;
    .end local v17    # "type":Ljava/lang/String;
    .end local v18    # "uploadManager":Lc8/SHf;
    .end local v19    # "userId":Ljava/lang/String;
    :cond_5
    invoke-static/range {p1 .. p1}, Lc8/SHf;->getInstances(Landroid/content/Context;)Lc8/SHf;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lc8/SHf;->cancelUploadTask()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
