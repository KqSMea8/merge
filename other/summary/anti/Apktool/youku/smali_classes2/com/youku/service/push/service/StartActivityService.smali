.class public Lcom/youku/service/push/service/StartActivityService;
.super Landroid/app/IntentService;
.source "StartActivityService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "YKPush.StartActivityService"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "YKPush.StartActivityService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static reportPushClick(Lcom/youku/service/push/PushMsg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "msg"    # Lcom/youku/service/push/PushMsg;
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 272
    if-nez p0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    iget v1, p0, Lcom/youku/service/push/PushMsg;->type:I

    invoke-static {v0, v1, p2, p1}, Lc8/cin;->notificationOpenFeedback(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/youku/service/push/PushMsg;->channelType:Ljava/lang/String;

    iget-object v1, p0, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    iget v4, p0, Lcom/youku/service/push/PushMsg;->type:I

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lc8/cin;->sendPushClickUTFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 276
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/youku/service/push/PushMsg;->agooID:Ljava/lang/String;

    invoke-static {v0, v1, v5}, Lc8/qXe;->clickMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lc8/LHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v6

    .line 279
    .local v6, "argsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    .line 280
    const-string/jumbo v0, "spm_url"

    const-string/jumbo v1, "a2h0d.8166721.push.1"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/youku/service/push/PushMsg;->jsonStr:Ljava/lang/String;

    invoke-static {v0}, Lc8/Fhn;->setPushMsgRead(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startApp()V
    .locals 3

    .prologue
    .line 258
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    sget-object v2, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/cin;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 259
    .local v0, "app":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 260
    const/high16 v1, 0x10400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 261
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 263
    :cond_0
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 269
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 27
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 41
    if-nez p1, :cond_1

    .line 255
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 44
    :cond_1
    const-string/jumbo v3, "PushMsg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v21

    check-cast v21, Lcom/youku/service/push/PushMsg;

    .line 45
    .local v21, "msg":Lcom/youku/service/push/PushMsg;
    if-nez v21, :cond_4

    .line 47
    const-string/jumbo v3, "force_msg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    check-cast v17, Lcom/youku/service/push/bean/ForceMsg;

    .line 48
    .local v17, "fMsg":Lcom/youku/service/push/bean/ForceMsg;
    if-eqz v17, :cond_0

    .line 49
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/youku/service/push/bean/ForceMsg;->mid:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 50
    const-string/jumbo v6, "IMG"

    .line 51
    .local v6, "actionStr":Ljava/lang/String;
    const-string/jumbo v5, "youku"

    .line 53
    .local v5, "ownn":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/youku/service/push/bean/ForceMsg;->mid:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/youku/service/push/bean/ForceMsg;->type:I

    invoke-static {v3, v4, v6, v5}, Lc8/cin;->notificationOpenFeedback(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/youku/service/push/bean/ForceMsg;->channelType:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/youku/service/push/bean/ForceMsg;->mid:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v7, v0, Lcom/youku/service/push/bean/ForceMsg;->type:I

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lc8/cin;->sendPushClickUTFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/youku/service/push/service/StartActivityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/youku/service/push/bean/ForceMsg;->agooID:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Lc8/qXe;->clickMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    .end local v5    # "ownn":Ljava/lang/String;
    .end local v6    # "actionStr":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/youku/service/push/bean/ForceMsg;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 63
    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v20, "intent":Landroid/content/Intent;
    const/high16 v3, 0x34400000

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    :try_start_1
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/youku/service/push/bean/ForceMsg;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 71
    .local v18, "iii":Landroid/net/Uri;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 72
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/youku/service/push/service/StartActivityService;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 74
    .end local v18    # "iii":Landroid/net/Uri;
    :catch_0
    move-exception v15

    .line 75
    .local v15, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "YKPush.StartActivityService"

    const-string/jumbo v4, "start force intent error"

    invoke-static {v3, v4, v15}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 56
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v20    # "intent":Landroid/content/Intent;
    .restart local v5    # "ownn":Ljava/lang/String;
    .restart local v6    # "actionStr":Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 57
    .restart local v15    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "YKPush.StartActivityService"

    const-string/jumbo v4, "ut error"

    invoke-static {v3, v4, v15}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 78
    .end local v5    # "ownn":Ljava/lang/String;
    .end local v6    # "actionStr":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v3, "YKPush.StartActivityService"

    const-string/jumbo v4, "start force error,url is error"

    invoke-static {v3, v4}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    .end local v17    # "fMsg":Lcom/youku/service/push/bean/ForceMsg;
    :cond_4
    const-string/jumbo v3, "owner"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, "owner":Ljava/lang/String;
    const/4 v10, 0x0

    .line 87
    .local v10, "action":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 88
    const-string/jumbo v3, "action"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 89
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    move-object/from16 v0, v21

    iget v4, v0, Lcom/youku/service/push/PushMsg;->type:I

    invoke-static {v3, v4, v10, v9}, Lc8/cin;->notificationOpenFeedback(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/youku/service/push/PushMsg;->channelType:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    move-object/from16 v0, v21

    iget v11, v0, Lcom/youku/service/push/PushMsg;->type:I

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lc8/cin;->sendPushClickUTFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/youku/service/push/service/StartActivityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/youku/service/push/PushMsg;->agooID:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Lc8/qXe;->clickMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lc8/LHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v13

    .line 93
    .local v13, "argsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v13, :cond_5

    .line 94
    const-string/jumbo v3, "spm_url"

    const-string/jumbo v4, "a2h0d.8166721.push.1"

    invoke-interface {v13, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v13    # "argsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v0, v21

    iget v3, v0, Lcom/youku/service/push/PushMsg;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    move-object/from16 v0, v21

    iget v3, v0, Lcom/youku/service/push/PushMsg;->type:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    move-object/from16 v0, v21

    iget v3, v0, Lcom/youku/service/push/PushMsg;->type:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_7

    .line 101
    :cond_6
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/youku/service/push/PushMsg;->jsonStr:Ljava/lang/String;

    invoke-static {v3}, Lc8/Fhn;->setPushMsgRead(Ljava/lang/String;)V

    .line 103
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "push jump "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/youku/service/push/PushMsg;->jsonStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-object/from16 v0, v21

    iget v3, v0, Lcom/youku/service/push/PushMsg;->type:I

    packed-switch v3, :pswitch_data_0

    .line 251
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/youku/service/push/service/StartActivityService;->startApp()V

    goto/16 :goto_0

    .line 109
    :pswitch_2
    const/high16 v3, 0x34400000

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    const-string/jumbo v3, "com.youku.ui.activity.UpdateActivity"

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string/jumbo v3, "updateurl"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/youku/service/push/PushMsg;->updateurl:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string/jumbo v3, "updateversion"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/youku/service/push/PushMsg;->updateversion:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string/jumbo v3, "updatecontent"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/youku/service/push/PushMsg;->updatecontent:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string/jumbo v3, "updateType"

    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    invoke-virtual/range {p0 .. p1}, Lcom/youku/service/push/service/StartActivityService;->startActivity(Landroid/content/Intent;)V

    .line 119
    new-instance v25, Landroid/content/Intent;

    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v25, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v3, "com.youku.service.update.UpdateService"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    sget-object v3, Lc8/KWc;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 125
    .end local v25    # "serviceIntent":Landroid/content/Intent;
    :pswitch_3
    const/high16 v3, 0x10400000

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 126
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/youku/service/push/PushMsg;->videoid:Ljava/lang/String;

    if-eqz v3, :cond_8

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/youku/service/push/PushMsg;->videoid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_b

    .line 127
    :cond_8
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/youku/service/push/PushMsg;->showId:Ljava/lang/String;

    if-eqz v3, :cond_9

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/youku/service/push/PushMsg;->showId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    .line 128
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/youku/service/push/service/StartActivityService;->startApp()V

    goto/16 :goto_0

    .line 131
    :cond_a
    const-string/jumbo v3, "video_id"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/youku/service/push/PushMsg;->showId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    :goto_2
    const-string/jumbo v3, "com.youku.ui.activity.DetailActivity"

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual/range {p0 .. p1}, Lcom/youku/service/push/service/StartActivityService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 134
    :cond_b
    const-string/jumbo v3, "video_id"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/youku/service/push/PushMsg;->videoid:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 140
    :pswitch_4
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v14, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "liveid"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/youku/service/push/PushMsg;->live_id:Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v3, "title"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/youku/service/push/PushMsg;->live_title:Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v3, "liveurl"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/youku/service/push/PushMsg;->live_url:Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v3, "liveimg"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/youku/service/push/PushMsg;->live_img:Ljava/lang/String;

    invoke-virtual {v14, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static/range {p0 .. p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v3

    invoke-virtual {v3, v14}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v3

    const-string/jumbo v4, "youku://playlive"

    invoke-virtual {v3, v4}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 154
    .end local v14    # "bundle":Landroid/os/Bundle;
    :pswitch_5
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/youku/service/push/PushMsg;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 156
    :try_start_2
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v24, "pushType":Landroid/os/Bundle;
    const-string/jumbo v3, "source_type"

    move-object/from16 v0, v21

    iget v4, v0, Lcom/youku/service/push/PushMsg;->source_type:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    const-string/jumbo v3, "__from_push__"

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/youku/service/push/PushMsg;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v3, v1}, Lc8/HTh;->launchInteractionWebView(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 162
    .end local v24    # "pushType":Landroid/os/Bundle;
    :catch_2
    move-exception v15

    .line 163
    .restart local v15    # "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 165
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_c
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/youku/service/push/PushMsg;->view_type:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string/jumbo v3, "1"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/youku/service/push/PushMsg;->view_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 166
    sget-object v3, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "vipcenter_url"

    aput-object v8, v4, v7

    invoke-static {v3, v4}, Lc8/Vhn;->getInitialField(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 168
    .local v26, "vipcenterUrl":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 170
    :try_start_3
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    .line 171
    .restart local v24    # "pushType":Landroid/os/Bundle;
    const-string/jumbo v3, "source_type"

    move-object/from16 v0, v21

    iget v4, v0, Lcom/youku/service/push/PushMsg;->source_type:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lc8/HTh;->launchInteractionWebView(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 175
    .end local v24    # "pushType":Landroid/os/Bundle;
    :catch_3
    move-exception v15

    .line 176
    .restart local v15    # "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 180
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/youku/service/push/service/StartActivityService;->startApp()V

    goto/16 :goto_0

    .line 183
    .end local v26    # "vipcenterUrl":Ljava/lang/String;
    :cond_e
    const-string/jumbo v3, "MC"

    const-string/jumbo v4, "action"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    invoke-direct/range {p0 .. p0}, Lcom/youku/service/push/service/StartActivityService;->startApp()V

    goto/16 :goto_0

    .line 192
    :pswitch_6
    const-string/jumbo v3, "IMG"

    invoke-static {v3, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 194
    invoke-static/range {p0 .. p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/youku/service/push/PushMsg;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 197
    :cond_f
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/youku/service/push/PushMsg;->actionItems:Ljava/util/ArrayList;

    invoke-static {v10}, Lcom/youku/service/push/PushMsg$SchemeActionItem;->newInstance(Ljava/lang/String;)Lcom/youku/service/push/PushMsg$SchemeActionItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 198
    .local v19, "index":I
    const/4 v3, -0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_0

    .line 199
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/youku/service/push/PushMsg;->actionItems:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    invoke-static/range {p0 .. p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/youku/service/push/PushMsg;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 208
    .end local v19    # "index":I
    :pswitch_7
    const/high16 v3, 0x10400000

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 209
    const-string/jumbo v3, "tab"

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    const-string/jumbo v3, "subtab"

    const-string/jumbo v4, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string/jumbo v3, "top_vids"

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/youku/service/push/PushMsg;->top_vids:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string/jumbo v3, "com.youku.ui.activity.HomePageActivity"

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    invoke-virtual/range {p0 .. p1}, Lcom/youku/service/push/service/StartActivityService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 216
    :pswitch_8
    const/high16 v3, 0x10400000

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 217
    const-string/jumbo v3, "tab"

    move-object/from16 v0, v21

    iget v4, v0, Lcom/youku/service/push/PushMsg;->tab:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    const-string/jumbo v3, "com.youku.ui.activity.HomePageActivity"

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    invoke-virtual/range {p0 .. p1}, Lcom/youku/service/push/service/StartActivityService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 222
    :pswitch_9
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/youku/service/push/PushMsg;->jsonStr:Ljava/lang/String;

    invoke-static {v3}, Lc8/Jhn;->parsePushData(Ljava/lang/String;)Lc8/Jhn;

    move-result-object v22

    .line 223
    .local v22, "preCacheData":Lc8/Jhn;
    if-eqz v22, :cond_10

    move-object/from16 v0, v22

    iget-object v3, v0, Lc8/Jhn;->model:Ljava/util/List;

    if-eqz v3, :cond_10

    move-object/from16 v0, v22

    iget-object v3, v0, Lc8/Jhn;->model:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_10

    .line 224
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-static {v0, v3}, Lc8/Phn;->startPreCache(Lc8/Jhn;Z)V

    goto/16 :goto_0

    .line 226
    :cond_10
    const-string/jumbo v3, "PushReceiver"

    const-string/jumbo v4, "PushMsg is null"

    invoke-static {v3, v4}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    .end local v22    # "preCacheData":Lc8/Jhn;
    :pswitch_a
    const-string/jumbo v3, "PushReceiver"

    const-string/jumbo v4, "SCHEDULE notification call"

    invoke-static {v3, v4}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v3, "key_pre_cached_data"

    invoke-static {v3}, Lc8/Phn;->getPreCacheVids(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 232
    .local v23, "preCacheVidStr":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 234
    :try_start_4
    invoke-static/range {v23 .. v23}, Lc8/Phn;->sendNotification(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 238
    :goto_3
    const-string/jumbo v3, ""

    const-string/jumbo v4, "key_pre_cached_data"

    invoke-static {v3, v4}, Lc8/Phn;->savePreCaheVidStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_11
    const-string/jumbo v3, "push_vip_erro_data"

    invoke-static {v3}, Lc8/Phn;->getPreCacheVids(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 241
    .local v16, "errorVidStr":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 243
    :try_start_5
    invoke-static/range {v16 .. v16}, Lc8/Phn;->sendVipErrorNotification(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 247
    :goto_4
    const-string/jumbo v3, ""

    const-string/jumbo v4, "push_vip_erro_data"

    invoke-static {v3, v4}, Lc8/Phn;->savePreCaheVidStr(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 236
    .end local v16    # "errorVidStr":Ljava/lang/String;
    :catch_4
    move-exception v3

    const-string/jumbo v3, "PushReceiver"

    const-string/jumbo v4, "PreCacheManager send preCache notification error"

    invoke-static {v3, v4}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 245
    .restart local v16    # "errorVidStr":Ljava/lang/String;
    :catch_5
    move-exception v3

    const-string/jumbo v3, "PushReceiver"

    const-string/jumbo v4, "PreCacheManager send vipError notification error"

    invoke-static {v3, v4}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method
