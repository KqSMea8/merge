.class public Lc8/xC;
.super Lc8/wF;
.source "TBUploadService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final LAST_PIC:Ljava/lang/String; = "\"isLastPic\":\"true\""

.field private static final MUTI_SELECTION:Ljava/lang/String; = "\"mutipleSelection\":\"1\""

.field private static final NOTIFY_ERROR:I = 0x7d3

.field private static final NOTIFY_FINISH:I = 0x7d2

.field private static final NOTIFY_START:I = 0x7d1

.field private static final TAG:Ljava/lang/String; = "TBUploadService"


# instance fields
.field private mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lc8/wF;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/xC;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc8/xC;->mHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lc8/xC;Lc8/GE;)V
    .locals 0
    .param p0, "x0"    # Lc8/xC;
    .param p1, "x1"    # Lc8/GE;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lc8/xC;->doMtopUpload(Lc8/GE;)V

    return-void
.end method

.method static synthetic access$100(Lc8/xC;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/xC;

    .prologue
    .line 56
    iget-object v0, p0, Lc8/xC;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private doMtopUpload(Lc8/GE;)V
    .locals 11
    .param p1, "params"    # Lc8/GE;

    .prologue
    .line 167
    :try_start_0
    const-string/jumbo v7, "windvane"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/taobao/windvane/util/MimeTypeEnum;->JPG:Landroid/taobao/windvane/util/MimeTypeEnum;

    invoke-virtual {v9}, Landroid/taobao/windvane/util/MimeTypeEnum;->getSuffix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lc8/qB;->getInstance()Lc8/qB;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lc8/qB;->getTempDir(Z)Ljava/io/File;

    move-result-object v9

    invoke-static {v7, v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 168
    .local v4, "tmpFile":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    iget-object v8, p1, Lc8/GE;->filePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v4}, Lc8/KD;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 169
    new-instance v1, Lc8/kE;

    invoke-direct {v1}, Lc8/kE;-><init>()V

    .line 170
    .local v1, "result":Lc8/kE;
    const-string/jumbo v7, "errorInfo"

    const-string/jumbo v8, "Failed to copy file!"

    invoke-virtual {v1, v7, v8}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v7, p0, Lc8/xC;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v7, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .end local v1    # "result":Lc8/kE;
    .end local v4    # "tmpFile":Ljava/io/File;
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "tmpFile":Ljava/io/File;
    :cond_0
    new-instance v1, Lc8/kE;

    invoke-direct {v1}, Lc8/kE;-><init>()V

    .line 181
    .restart local v1    # "result":Lc8/kE;
    :try_start_1
    invoke-static {}, Lc8/ssg;->get()Lc8/osg;

    move-result-object v6

    .line 182
    .local v6, "uploaderManager":Lc8/osg;
    new-instance v2, Lc8/uC;

    invoke-direct {v2, p0, p1, v4}, Lc8/uC;-><init>(Lc8/xC;Lc8/GE;Ljava/io/File;)V

    .line 204
    .local v2, "task":Lc8/qsg;
    new-instance v3, Lc8/vC;

    invoke-direct {v3, p0, v1, p1}, Lc8/vC;-><init>(Lc8/xC;Lc8/kE;Lc8/GE;)V

    .line 265
    .local v3, "taskListener":Lc8/hsg;
    iget-object v7, p0, Lc8/xC;->mHandler:Landroid/os/Handler;

    invoke-interface {v6, v2, v3, v7}, Lc8/osg;->uploadAsync(Lc8/qsg;Lc8/hsg;Landroid/os/Handler;)Z

    .line 266
    const-string/jumbo v7, "TBUploadService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "do aus upload "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lc8/GE;->filePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 268
    .end local v2    # "task":Lc8/qsg;
    .end local v3    # "taskListener":Lc8/hsg;
    .end local v6    # "uploaderManager":Lc8/osg;
    :catch_1
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "TBUploadService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "try aus upload error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :try_start_2
    new-instance v5, Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-direct {v5}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;-><init>()V

    .line 274
    .local v5, "uploadFileInfo":Lmtopsdk/mtop/upload/domain/UploadFileInfo;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->setFilePath(Ljava/lang/String;)V

    .line 275
    iget-object v7, p1, Lc8/GE;->bizCode:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->setBizCode(Ljava/lang/String;)V

    .line 276
    iget-object v7, p1, Lc8/GE;->extraData:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->setPrivateData(Ljava/lang/String;)V

    .line 277
    const-string/jumbo v7, "identifier"

    iget-object v8, p1, Lc8/GE;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v7, "isLastPic"

    iget-boolean v8, p1, Lc8/GE;->isLastPic:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v7, "mutipleSelection"

    iget-object v8, p1, Lc8/GE;->mutipleSelection:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lmtopsdk/mtop/upload/FileUploadMgr;->getInstance()Lmtopsdk/mtop/upload/FileUploadMgr;

    move-result-object v7

    new-instance v8, Lc8/wC;

    invoke-direct {v8, p0, v1, p1}, Lc8/wC;-><init>(Lc8/xC;Lc8/kE;Lc8/GE;)V

    iget-boolean v9, p1, Lc8/GE;->needLogin:Z

    invoke-virtual {v7, v5, v8, v9}, Lmtopsdk/mtop/upload/FileUploadMgr;->addTask(Lmtopsdk/mtop/upload/domain/UploadFileInfo;Lmtopsdk/mtop/upload/FileUploadBaseListener;Z)V

    .line 349
    const-string/jumbo v7, "TBUploadService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "do mtop upload "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lc8/GE;->filePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 350
    .end local v5    # "uploadFileInfo":Lmtopsdk/mtop/upload/domain/UploadFileInfo;
    :catch_2
    move-exception v0

    .line 351
    const-string/jumbo v7, "TBUploadService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mtop sdk not exist."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private doNormalUpload(Lc8/GE;)V
    .locals 5
    .param p1, "params"    # Lc8/GE;

    .prologue
    .line 105
    invoke-static {}, Lc8/wH;->getInstance()Lc8/wH;

    move-result-object v0

    new-instance v1, Lc8/HD;

    iget-object v2, p1, Lc8/GE;->filePath:Ljava/lang/String;

    sget-object v3, Landroid/taobao/windvane/util/MimeTypeEnum;->JPG:Landroid/taobao/windvane/util/MimeTypeEnum;

    invoke-virtual {v3}, Landroid/taobao/windvane/util/MimeTypeEnum;->getSuffix()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lc8/tC;

    invoke-direct {v4, p0, p1}, Lc8/tC;-><init>(Lc8/xC;Lc8/GE;)V

    invoke-direct {v1, v2, v3, v4}, Lc8/HD;-><init>(Ljava/lang/String;Ljava/lang/String;Lc8/WB;)V

    invoke-virtual {v0, v1}, Lc8/wH;->execute(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method


# virtual methods
.method public doUpload(Lc8/GE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 3
    .param p1, "params"    # Lc8/GE;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    const-string/jumbo v1, "TBUploadService"

    const-string/jumbo v2, "UploadParams is null."

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v1, Lc8/kE;

    invoke-direct {v1}, Lc8/kE;-><init>()V

    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 97
    :goto_0
    return-void

    .line 77
    :cond_0
    iput-object p2, p0, Lc8/xC;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 79
    :try_start_0
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v1

    invoke-interface {v1}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TBUploadService bizCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lc8/GE;->bizCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lc8/GE;->v:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/EF;->commitOffMonitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0    # "url":Ljava/lang/String;
    :goto_1
    const-string/jumbo v1, "2.0"

    iget-object v2, p1, Lc8/GE;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    sget-object v1, Lc8/oB;->wvAdapter:Lc8/mC;

    if-eqz v1, :cond_1

    .line 85
    sget-object v1, Lc8/oB;->wvAdapter:Lc8/mC;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lc8/mC;->getLoginInfo(Landroid/os/Handler;)Ljava/util/Map;

    .line 87
    :cond_1
    invoke-static {}, Lc8/wH;->getInstance()Lc8/wH;

    move-result-object v1

    new-instance v2, Lc8/sC;

    invoke-direct {v2, p0, p1}, Lc8/sC;-><init>(Lc8/xC;Lc8/GE;)V

    invoke-virtual {v1, v2}, Lc8/wH;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-direct {p0, p1}, Lc8/xC;->doNormalUpload(Lc8/GE;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 357
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    packed-switch v13, :pswitch_data_0

    .line 438
    const/4 v13, 0x0

    :goto_0
    return v13

    .line 359
    :pswitch_0
    const-string/jumbo v13, "TBUploadService"

    const-string/jumbo v14, "start upload file ..."

    invoke-static {v13, v14}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/xC;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    const-string/jumbo v14, "WVPhoto.Event.prepareUploadPhotoSuccess"

    const-string/jumbo v15, "{}"

    invoke-virtual {v13, v14, v15}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/4 v13, 0x1

    goto :goto_0

    .line 364
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v13, :cond_3

    .line 365
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 366
    const-string/jumbo v14, "TBUploadService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "upload file success, retString: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lc8/kE;

    invoke-virtual {v13}, Lc8/kE;->toJsonString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_0
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lc8/kE;

    .line 369
    .local v8, "result":Lc8/kE;
    invoke-virtual {v8}, Lc8/kE;->toJsonString()Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "data":Ljava/lang/String;
    const/4 v4, 0x0

    .line 372
    .local v4, "images":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .line 373
    .local v12, "url":Ljava/lang/String;
    const/4 v7, 0x0

    .line 374
    .local v7, "resourceURL":Ljava/lang/String;
    const/4 v11, 0x0

    .line 375
    .local v11, "tfsKey":Ljava/lang/String;
    const/4 v6, 0x0

    .line 376
    .local v6, "localPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 379
    .local v1, "base64Data":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 380
    .local v5, "jso":Lorg/json/JSONObject;
    const-string/jumbo v13, "images"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 381
    const-string/jumbo v13, "url"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 382
    const-string/jumbo v13, "resourceURL"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 383
    const-string/jumbo v13, "localPath"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 384
    const-string/jumbo v13, "tfsKey"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 385
    const-string/jumbo v13, "base64Data"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 386
    const-string/jumbo v13, "base64Data"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 391
    .end local v5    # "jso":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 393
    .local v9, "resultData":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v13, "url"

    invoke-virtual {v9, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    const-string/jumbo v13, "resourceURL"

    invoke-virtual {v9, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    const-string/jumbo v13, "localPath"

    invoke-virtual {v9, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    const-string/jumbo v13, "tfsKey"

    invoke-virtual {v9, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    if-eqz v1, :cond_2

    .line 398
    const-string/jumbo v13, "base64Data"

    invoke-virtual {v9, v13, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 403
    :cond_2
    :goto_2
    const-string/jumbo v13, "\"mutipleSelection\":\"1\""

    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 404
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/xC;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    .line 417
    :goto_3
    invoke-static {}, Lc8/qB;->getInstance()Lc8/qB;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lc8/qB;->getTempDir(Z)Ljava/io/File;

    move-result-object v13

    invoke-static {v13}, Lc8/JD;->deleteFile(Ljava/io/File;)Z

    .line 419
    .end local v1    # "base64Data":Ljava/lang/String;
    .end local v2    # "data":Ljava/lang/String;
    .end local v4    # "images":Lorg/json/JSONArray;
    .end local v6    # "localPath":Ljava/lang/String;
    .end local v7    # "resourceURL":Ljava/lang/String;
    .end local v8    # "result":Lc8/kE;
    .end local v9    # "resultData":Lorg/json/JSONObject;
    .end local v11    # "tfsKey":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    :cond_3
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 388
    .restart local v1    # "base64Data":Ljava/lang/String;
    .restart local v2    # "data":Ljava/lang/String;
    .restart local v4    # "images":Lorg/json/JSONArray;
    .restart local v6    # "localPath":Ljava/lang/String;
    .restart local v7    # "resourceURL":Ljava/lang/String;
    .restart local v8    # "result":Lc8/kE;
    .restart local v11    # "tfsKey":Ljava/lang/String;
    .restart local v12    # "url":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 389
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 400
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v9    # "resultData":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    .line 401
    .restart local v3    # "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 406
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_4
    const-string/jumbo v13, "\"isLastPic\":\"true\""

    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 407
    if-nez v4, :cond_6

    .line 408
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/xC;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    .line 415
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/xC;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    const-string/jumbo v14, "WVPhoto.Event.uploadPhotoSuccess"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 410
    :cond_6
    new-instance v10, Lc8/kE;

    invoke-direct {v10}, Lc8/kE;-><init>()V

    .line 411
    .local v10, "resultLast":Lc8/kE;
    const-string/jumbo v13, "images"

    invoke-virtual {v10, v13, v4}, Lc8/kE;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/xC;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v13, v10}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    goto :goto_4

    .line 422
    .end local v1    # "base64Data":Ljava/lang/String;
    .end local v2    # "data":Ljava/lang/String;
    .end local v4    # "images":Lorg/json/JSONArray;
    .end local v6    # "localPath":Ljava/lang/String;
    .end local v7    # "resourceURL":Ljava/lang/String;
    .end local v8    # "result":Lc8/kE;
    .end local v9    # "resultData":Lorg/json/JSONObject;
    .end local v10    # "resultLast":Lc8/kE;
    .end local v11    # "tfsKey":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v13, :cond_9

    .line 423
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lc8/kE;

    .line 424
    .restart local v8    # "result":Lc8/kE;
    invoke-virtual {v8}, Lc8/kE;->toJsonString()Ljava/lang/String;

    move-result-object v2

    .line 425
    .restart local v2    # "data":Ljava/lang/String;
    const-string/jumbo v13, "\"mutipleSelection\":\"1\""

    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 426
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/xC;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    const-string/jumbo v14, "WVPhoto.Event.uploadPhotoFailed"

    invoke-virtual {v13, v14, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string/jumbo v13, "\"isLastPic\":\"true\""

    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 428
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/xC;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v13, v8}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 435
    .end local v2    # "data":Ljava/lang/String;
    .end local v8    # "result":Lc8/kE;
    :cond_7
    :goto_5
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 431
    .restart local v2    # "data":Ljava/lang/String;
    .restart local v8    # "result":Lc8/kE;
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/xC;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v13, v8}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_5

    .line 433
    .end local v2    # "data":Ljava/lang/String;
    .end local v8    # "result":Lc8/kE;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/xC;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v13}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_5

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
