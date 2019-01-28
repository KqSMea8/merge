.class public Lc8/Xco;
.super Ljava/lang/Object;
.source "UploadHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Wco;
    }
.end annotation


# static fields
.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/*"

.field private static final IMAGE_MIME_TYPE:Ljava/lang/String; = "image/*"

.field private static final MEDIA_SOURCE_KEY:Ljava/lang/String; = "capture"

.field private static final MEDIA_SOURCE_VALUE_CAMCORDER:Ljava/lang/String; = "camcorder"

.field private static final MEDIA_SOURCE_VALUE_CAMERA:Ljava/lang/String; = "camera"

.field private static final MEDIA_SOURCE_VALUE_FILE_SYSTEM:Ljava/lang/String; = "filesystem"

.field private static final MEDIA_SOURCE_VALUE_MICROPHONE:Ljava/lang/String; = "microphone"

.field private static final VIDEO_MIME_TYPE:Ljava/lang/String; = "video/*"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCameraFilePath:Ljava/lang/String;

.field private mParams:Lc8/Wco;

.field private mRequestCode:I

.field private mTitle:Ljava/lang/String;

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lc8/Xco;->mActivity:Landroid/app/Activity;

    .line 47
    iput p2, p0, Lc8/Xco;->mRequestCode:I

    .line 48
    iput-object p3, p0, Lc8/Xco;->mTitle:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private createCamcorderIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private createCameraIntent()Landroid/content/Intent;
    .locals 8

    .prologue
    .line 152
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, "cameraIntent":Landroid/content/Intent;
    :try_start_0
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 155
    .local v3, "externalDataDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "youku-upload-photos"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "cameraDataDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/Xco;->mCameraFilePath:Ljava/lang/String;

    .line 158
    const-string/jumbo v4, "output"

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lc8/Xco;->mCameraFilePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0    # "cameraDataDir":Ljava/io/File;
    .end local v3    # "externalDataDir":Ljava/io/File;
    :goto_0
    return-object v1

    .line 159
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private createCaptureIntent()[Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 127
    const-string/jumbo v2, "*/*"

    .line 128
    .local v2, "mimeType":Ljava/lang/String;
    iget-object v3, p0, Lc8/Xco;->mParams:Lc8/Wco;

    invoke-virtual {v3}, Lc8/Wco;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "acceptTypes":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 130
    aget-object v2, v0, v4

    .line 133
    :cond_0
    const-string/jumbo v3, "image/*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    new-array v1, v5, [Landroid/content/Intent;

    .line 135
    .local v1, "intents":[Landroid/content/Intent;
    invoke-direct {p0}, Lc8/Xco;->createCameraIntent()Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v1, v4

    .line 148
    :goto_0
    return-object v1

    .line 136
    .end local v1    # "intents":[Landroid/content/Intent;
    :cond_1
    const-string/jumbo v3, "video/*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    new-array v1, v5, [Landroid/content/Intent;

    .line 138
    .restart local v1    # "intents":[Landroid/content/Intent;
    invoke-direct {p0}, Lc8/Xco;->createCamcorderIntent()Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v1, v4

    goto :goto_0

    .line 139
    .end local v1    # "intents":[Landroid/content/Intent;
    :cond_2
    const-string/jumbo v3, "audio/*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    new-array v1, v5, [Landroid/content/Intent;

    .line 141
    .restart local v1    # "intents":[Landroid/content/Intent;
    invoke-direct {p0}, Lc8/Xco;->createSoundRecorderIntent()Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v1, v4

    goto :goto_0

    .line 143
    .end local v1    # "intents":[Landroid/content/Intent;
    :cond_3
    const/4 v3, 0x3

    new-array v1, v3, [Landroid/content/Intent;

    .line 144
    .restart local v1    # "intents":[Landroid/content/Intent;
    invoke-direct {p0}, Lc8/Xco;->createCameraIntent()Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v1, v4

    .line 145
    invoke-direct {p0}, Lc8/Xco;->createCamcorderIntent()Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v1, v5

    .line 146
    const/4 v3, 0x2

    invoke-direct {p0}, Lc8/Xco;->createSoundRecorderIntent()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_0
.end method

.method private createSoundRecorderIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static generateParams(Landroid/webkit/WebChromeClient$FileChooserParams;)Lc8/Wco;
    .locals 1
    .param p0, "params"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 248
    new-instance v0, Lc8/Vco;

    invoke-direct {v0, p0}, Lc8/Vco;-><init>(Landroid/webkit/WebChromeClient$FileChooserParams;)V

    return-object v0
.end method

.method public static generateParams(Ljava/lang/String;)Lc8/Wco;
    .locals 1
    .param p0, "acceptType"    # Ljava/lang/String;

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc8/Xco;->generateParams(Ljava/lang/String;Ljava/lang/String;)Lc8/Wco;

    move-result-object v0

    return-object v0
.end method

.method public static generateParams(Ljava/lang/String;Ljava/lang/String;)Lc8/Wco;
    .locals 1
    .param p0, "acceptType"    # Ljava/lang/String;
    .param p1, "capture"    # Ljava/lang/String;

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc8/Xco;->generateParams(Ljava/lang/String;Ljava/lang/String;Z)Lc8/Wco;

    move-result-object v0

    return-object v0
.end method

.method public static generateParams(Ljava/lang/String;Ljava/lang/String;Z)Lc8/Wco;
    .locals 1
    .param p0, "acceptType"    # Ljava/lang/String;
    .param p1, "capture"    # Ljava/lang/String;
    .param p2, "isMultiple"    # Z

    .prologue
    .line 193
    new-instance v0, Lc8/Uco;

    invoke-direct {v0, p0, p1, p2}, Lc8/Uco;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 97
    if-nez p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-object v0

    .line 100
    :cond_1
    if-eqz p2, :cond_2

    if-eq p1, v3, :cond_4

    :cond_2
    move-object v1, v0

    .line 107
    .local v1, "uri":Landroid/net/Uri;
    :goto_1
    if-nez v1, :cond_3

    if-nez p2, :cond_3

    if-ne p1, v3, :cond_3

    iget-object v3, p0, Lc8/Xco;->mCameraFilePath:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 108
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lc8/Xco;->mCameraFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 111
    :cond_3
    const/4 v0, 0x0

    .line 113
    .local v0, "result":Ljava/lang/Object;
    iget-object v3, p0, Lc8/Xco;->mParams:Lc8/Wco;

    invoke-virtual {v3}, Lc8/Wco;->isMultiple()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 114
    if-eqz v1, :cond_0

    .line 115
    const/4 v3, 0x1

    new-array v2, v3, [Landroid/net/Uri;

    .line 116
    .local v2, "uris":[Landroid/net/Uri;
    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 117
    move-object v0, v2

    .line 118
    .local v0, "result":[Landroid/net/Uri;
    goto :goto_0

    .line 100
    .end local v0    # "result":[Landroid/net/Uri;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "uris":[Landroid/net/Uri;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 120
    .local v0, "result":Ljava/lang/Object;
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_5
    move-object v0, v1

    .local v0, "result":Landroid/net/Uri;
    goto :goto_0
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Lc8/Xco;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lc8/Xco;->mRequestCode:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    iget-object v0, p0, Lc8/Xco;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "\u4e0a\u4f20\u5931\u8d25"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    iget v3, p0, Lc8/Xco;->mRequestCode:I

    if-eq p1, v3, :cond_0

    .line 67
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-direct {p0, p2, p3}, Lc8/Xco;->parseResult(ILandroid/content/Intent;)Ljava/lang/Object;

    move-result-object v2

    .line 62
    .local v2, "uris":Ljava/lang/Object;
    :try_start_0
    const-class v3, Landroid/webkit/ValueCallback;

    const-string/jumbo v4, "onReceiveValue"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 63
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lc8/Xco;->mUploadMessage:Landroid/webkit/ValueCallback;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v1, v3, v4}, Lc8/Xco;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Lc8/Wco;)V
    .locals 4
    .param p2, "params"    # Lc8/Wco;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<*>;",
            "Lc8/Wco;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<*>;"
    iget-object v2, p0, Lc8/Xco;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_0

    .line 94
    :goto_0
    return-void

    .line 75
    :cond_0
    iput-object p1, p0, Lc8/Xco;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 76
    iput-object p2, p0, Lc8/Xco;->mParams:Lc8/Wco;

    .line 79
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/Xco;->mCameraFilePath:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lc8/Xco;->createCaptureIntent()[Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, "captureIntents":[Landroid/content/Intent;
    invoke-virtual {p2}, Lc8/Wco;->isCaptureEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 86
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 93
    .local v1, "intent":Landroid/content/Intent;
    :goto_1
    invoke-direct {p0, v1}, Lc8/Xco;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 88
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CHOOSER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.TITLE"

    iget-object v3, p0, Lc8/Xco;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string/jumbo v2, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 91
    const-string/jumbo v2, "android.intent.extra.INTENT"

    invoke-virtual {p2}, Lc8/Wco;->createIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1
.end method
