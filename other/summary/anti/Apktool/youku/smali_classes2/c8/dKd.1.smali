.class public Lc8/dKd;
.super Lc8/bKd;
.source "AndroidVideoNotification.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/XJd;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushNotificationBuilder"    # Lc8/XJd;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lc8/bKd;-><init>(Landroid/content/Context;Lc8/XJd;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected buildContentView(Landroid/app/Notification;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 17
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "messageV3"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 45
    invoke-super/range {p0 .. p2}, Lc8/bKd;->buildContentView(Landroid/app/Notification;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    .line 46
    invoke-static/range {p2 .. p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV4;->parse(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Lcom/meizu/cloud/pushsdk/handler/MessageV4;

    move-result-object v10

    .line 47
    .local v10, "messageV4":Lcom/meizu/cloud/pushsdk/handler/MessageV4;
    invoke-virtual {v10}, Lcom/meizu/cloud/pushsdk/handler/MessageV4;->getActVideoSetting()Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-virtual {v10}, Lcom/meizu/cloud/pushsdk/handler/MessageV4;->getActVideoSetting()Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;

    move-result-object v14

    invoke-virtual {v14}, Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;->isWifiDisplay()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/dKd;->context:Landroid/content/Context;

    invoke-static {v14}, Lc8/BLd;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 49
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/Android/data/pushSdkAct/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 50
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, "baseActDir":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "actFileName":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/meizu/cloud/pushsdk/handler/MessageV4;->getActVideoSetting()Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;

    move-result-object v14

    invoke-virtual {v14}, Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;->getActUrl()Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "actUrl":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 56
    invoke-static {v5, v6, v4}, Lc8/HHd;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/RHd;

    move-result-object v14

    invoke-virtual {v14}, Lc8/RHd;->build()Lc8/VHd;

    move-result-object v11

    .line 57
    .local v11, "request":Lc8/VHd;
    invoke-virtual {v11}, Lc8/VHd;->executeForDownload()Lc8/WHd;

    move-result-object v12

    .line 58
    .local v12, "response":Lc8/WHd;
    invoke-virtual {v12}, Lc8/WHd;->isSuccess()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 59
    const-string/jumbo v14, "AbstractPushNotification"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "down load "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " success"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "ACT-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "actDir":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "actFile":Ljava/lang/String;
    new-instance v13, Lc8/sKd;

    invoke-direct {v13, v3, v2}, Lc8/sKd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v13, "zipExtractTask":Lc8/sKd;
    invoke-virtual {v13}, Lc8/sKd;->doUnzipSync()Z

    move-result v8

    .line 65
    .local v8, "isUzipSuccess":Z
    const-string/jumbo v14, "AbstractPushNotification"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "zip file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-eqz v8, :cond_1

    .line 68
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v7, "bigBundle":Landroid/os/Bundle;
    const-string/jumbo v14, "path"

    invoke-virtual {v7, v14, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v9, "mainBundle":Landroid/os/Bundle;
    const-string/jumbo v14, "big"

    invoke-virtual {v9, v14, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 73
    invoke-static {}, Lc8/CLd;->isSupportVideoNotification()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 74
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v15, "flyme.active"

    invoke-virtual {v14, v15, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 80
    .end local v2    # "actDir":Ljava/lang/String;
    .end local v3    # "actFile":Ljava/lang/String;
    .end local v7    # "bigBundle":Landroid/os/Bundle;
    .end local v8    # "isUzipSuccess":Z
    .end local v9    # "mainBundle":Landroid/os/Bundle;
    .end local v11    # "request":Lc8/VHd;
    .end local v12    # "response":Lc8/WHd;
    .end local v13    # "zipExtractTask":Lc8/sKd;
    :cond_1
    new-instance v14, Lc8/cKd;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v6}, Lc8/cKd;-><init>(Lc8/dKd;Ljava/lang/String;)V

    invoke-static {v14}, Lc8/cLd;->execute(Ljava/lang/Runnable;)V

    .line 93
    .end local v4    # "actFileName":Ljava/lang/String;
    .end local v5    # "actUrl":Ljava/lang/String;
    .end local v6    # "baseActDir":Ljava/lang/String;
    :goto_0
    return-void

    .line 91
    :cond_2
    const-string/jumbo v14, "AbstractPushNotification"

    const-string/jumbo v15, "only wifi can download act"

    invoke-static {v14, v15}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected buildExpandableContent(Landroid/app/Notification$Builder;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "messageV3"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 34
    invoke-static {}, Lc8/CLd;->isSupportNotificationBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 36
    .local v0, "notiStyle":Landroid/app/Notification$BigTextStyle;
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 37
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 38
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmNotificationStyle()Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->getExpandableText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 39
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 41
    .end local v0    # "notiStyle":Landroid/app/Notification$BigTextStyle;
    :cond_0
    return-void
.end method
