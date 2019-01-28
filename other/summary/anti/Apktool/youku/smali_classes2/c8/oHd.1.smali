.class public Lc8/oHd;
.super Lc8/iHd;
.source "LogUploadMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/iHd",
        "<",
        "Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/dHd;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "abstractAppLogicListener"    # Lc8/dHd;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lc8/iHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    const-string/jumbo v5, "mz_push_control_message"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "control":Ljava/lang/String;
    const-string/jumbo v5, "extra_app_push_seq_Id"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "seqId":Ljava/lang/String;
    const-string/jumbo v5, "statistics_imei_key"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "deviceId":Ljava/lang/String;
    const-string/jumbo v5, "pushMessage"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "pushMessage":Ljava/lang/String;
    new-instance v4, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;

    invoke-direct {v4, v2, v0, v1, v3}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .local v4, "uploadLogMessage":Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;
    return-object v4
.end method

.method protected bridge synthetic getMessage(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lc8/oHd;->getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;

    move-result-object v0

    return-object v0
.end method

.method public getProcessorType()I
    .locals 1

    .prologue
    .line 97
    const/high16 v0, 0x10000

    return v0
.end method

.method public messageMatch(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    const-string/jumbo v3, "AbstractMessageHandler"

    const-string/jumbo v4, "start LogUploadMessageHandler match"

    invoke-static {v3, v4}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v3, "mz_push_control_message"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "control":Ljava/lang/String;
    const/4 v2, 0x0

    .line 85
    .local v2, "pushType":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v1

    .line 87
    .local v1, "controlMessage":Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getControl()Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 88
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getControl()Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->getPushType()I

    move-result v2

    .line 91
    .end local v1    # "controlMessage":Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;
    :cond_0
    const-string/jumbo v3, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "2"

    .line 92
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    .line 91
    goto :goto_0
.end method

.method protected onBeforeEvent(Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;)V
    .locals 6
    .param p1, "message"    # Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;

    .prologue
    .line 102
    invoke-virtual {p0}, Lc8/oHd;->context()Landroid/content/Context;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lc8/oHd;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->getControlMessage()Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getStatics()Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->getControlMessage()Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getStatics()Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->getTaskId()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->getControlMessage()Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getStatics()Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->getSeqId()Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->getControlMessage()Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getStatics()Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->getTime()Ljava/lang/String;

    move-result-object v5

    .line 102
    invoke-static/range {v0 .. v5}, Lc8/FLd;->onReceivePushMessageEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method protected bridge synthetic onBeforeEvent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;

    invoke-virtual {p0, p1}, Lc8/oHd;->onBeforeEvent(Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;)V

    return-void
.end method

.method protected unsafeSend(Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;Lc8/WJd;)V
    .locals 14
    .param p1, "message"    # Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;
    .param p2, "pushNotification"    # Lc8/WJd;

    .prologue
    .line 42
    invoke-static {}, Lc8/xGd;->flush()V

    .line 44
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, "root":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->getControlMessage()Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getStatics()Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    move-result-object v9

    invoke-virtual {v9}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->getTaskId()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "messageId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->getControlMessage()Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getStatics()Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    move-result-object v9

    invoke-virtual {v9}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "deviceId":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/Android/data/pushSdktmp/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".zip"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 48
    .local v6, "uploadFile":Ljava/lang/String;
    new-instance v8, Lc8/pHd;

    invoke-direct {v8, v6}, Lc8/pHd;-><init>(Ljava/lang/String;)V

    .line 49
    .local v8, "zipTask":Lc8/pHd;
    const/4 v2, 0x0

    .line 52
    .local v2, "errorMessage":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->getFileList()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Lc8/pHd;->zip(Ljava/util/List;)Z

    .line 53
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .local v7, "zipFile":Ljava/io/File;
    :goto_0
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->getMaxSize()I

    move-result v9

    int-to-long v12, v9

    cmp-long v9, v10, v12

    if-lez v9, :cond_2

    .line 60
    const-string/jumbo v2, "the upload file exceeds the max size"

    .line 64
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lc8/oHd;->context()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lc8/DKd;->getInstance(Landroid/content/Context;)Lc8/DKd;

    move-result-object v9

    .line 65
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->getControlMessage()Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v10

    invoke-virtual {v10}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getStatics()Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    move-result-object v10

    invoke-virtual {v10}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->getTaskId()Ljava/lang/String;

    move-result-object v10

    .line 66
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->getControlMessage()Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v11

    invoke-virtual {v11}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getStatics()Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    move-result-object v11

    invoke-virtual {v11}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    .line 65
    invoke-virtual {v9, v10, v11, v2, v7}, Lc8/DKd;->uploadLogFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lc8/WHd;

    move-result-object v4

    .line 69
    .local v4, "response":Lc8/WHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANResponse<Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lc8/WHd;->isSuccess()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 70
    if-eqz v7, :cond_1

    .line 71
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 73
    :cond_1
    const-string/jumbo v10, "AbstractMessageHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "upload success "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lc8/WHd;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_2
    return-void

    .line 54
    .end local v4    # "response":Lc8/WHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANResponse<Ljava/lang/String;>;"
    .end local v7    # "zipFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 56
    const/4 v7, 0x0

    .line 57
    .restart local v7    # "zipFile":Ljava/io/File;
    const-string/jumbo v9, "AbstractMessageHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "zip error message "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 61
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;->isWifiUpload()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lc8/oHd;->context()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lc8/BLd;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 62
    const-string/jumbo v2, "current network not allowed upload log file"

    goto/16 :goto_1

    .line 75
    .restart local v4    # "response":Lc8/WHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANResponse<Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v10, "AbstractMessageHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "upload error code "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lc8/WHd;->getError()Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lc8/WHd;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected bridge synthetic unsafeSend(Ljava/lang/Object;Lc8/WJd;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;

    invoke-virtual {p0, p1, p2}, Lc8/oHd;->unsafeSend(Lcom/meizu/cloud/pushsdk/handler/impl/model/UploadLogMessage;Lc8/WJd;)V

    return-void
.end method
