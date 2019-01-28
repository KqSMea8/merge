.class public Lc8/pTh;
.super Ljava/lang/Object;
.source "UploadHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/oTh;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCameraFilePath:Ljava/lang/String;

.field private mFragment:Landroid/support/v4/app/Fragment;

.field private mParams:Lc8/oTh;

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
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lc8/pTh;->mActivity:Landroid/app/Activity;

    .line 50
    iput p2, p0, Lc8/pTh;->mRequestCode:I

    .line 51
    iput-object p3, p0, Lc8/pTh;->mTitle:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "requestCode"    # I
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lc8/pTh;->mActivity:Landroid/app/Activity;

    .line 56
    iput-object p1, p0, Lc8/pTh;->mFragment:Landroid/support/v4/app/Fragment;

    .line 57
    iput p2, p0, Lc8/pTh;->mRequestCode:I

    .line 58
    iput-object p3, p0, Lc8/pTh;->mTitle:Ljava/lang/String;

    .line 59
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
    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private createCameraIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 162
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, "cameraIntent":Landroid/content/Intent;
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 164
    .local v2, "externalDataDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "youku-upload-photos"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "cameraDataDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc8/pTh;->mCameraFilePath:Ljava/lang/String;

    .line 167
    const-string/jumbo v3, "output"

    iget-object v4, p0, Lc8/pTh;->mActivity:Landroid/app/Activity;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lc8/pTh;->mCameraFilePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lc8/LD;->getFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 168
    return-object v1
.end method

.method private createCaptureIntent()[Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 137
    const-string/jumbo v2, "*/*"

    .line 138
    .local v2, "mimeType":Ljava/lang/String;
    iget-object v3, p0, Lc8/pTh;->mParams:Lc8/oTh;

    invoke-virtual {v3}, Lc8/oTh;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "acceptTypes":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 140
    aget-object v2, v0, v4

    .line 143
    :cond_0
    const-string/jumbo v3, "image/*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    new-array v1, v5, [Landroid/content/Intent;

    .line 145
    .local v1, "intents":[Landroid/content/Intent;
    invoke-direct {p0}, Lc8/pTh;->createCameraIntent()Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v1, v4

    .line 158
    :goto_0
    return-object v1

    .line 146
    .end local v1    # "intents":[Landroid/content/Intent;
    :cond_1
    const-string/jumbo v3, "video/*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    new-array v1, v5, [Landroid/content/Intent;

    .line 148
    .restart local v1    # "intents":[Landroid/content/Intent;
    invoke-direct {p0}, Lc8/pTh;->createCamcorderIntent()Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v1, v4

    goto :goto_0

    .line 149
    .end local v1    # "intents":[Landroid/content/Intent;
    :cond_2
    const-string/jumbo v3, "audio/*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 150
    new-array v1, v5, [Landroid/content/Intent;

    .line 151
    .restart local v1    # "intents":[Landroid/content/Intent;
    invoke-direct {p0}, Lc8/pTh;->createSoundRecorderIntent()Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v1, v4

    goto :goto_0

    .line 153
    .end local v1    # "intents":[Landroid/content/Intent;
    :cond_3
    const/4 v3, 0x3

    new-array v1, v3, [Landroid/content/Intent;

    .line 154
    .restart local v1    # "intents":[Landroid/content/Intent;
    invoke-direct {p0}, Lc8/pTh;->createCameraIntent()Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v1, v4

    .line 155
    invoke-direct {p0}, Lc8/pTh;->createCamcorderIntent()Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v1, v5

    .line 156
    const/4 v3, 0x2

    invoke-direct {p0}, Lc8/pTh;->createSoundRecorderIntent()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_0
.end method

.method private createSoundRecorderIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static generateParams(Landroid/webkit/WebChromeClient$FileChooserParams;)Lc8/oTh;
    .locals 1
    .param p0, "params"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 262
    new-instance v0, Lc8/nTh;

    invoke-direct {v0, p0}, Lc8/nTh;-><init>(Landroid/webkit/WebChromeClient$FileChooserParams;)V

    return-object v0
.end method

.method public static generateParams(Ljava/lang/String;)Lc8/oTh;
    .locals 1
    .param p0, "acceptType"    # Ljava/lang/String;

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc8/pTh;->generateParams(Ljava/lang/String;Ljava/lang/String;)Lc8/oTh;

    move-result-object v0

    return-object v0
.end method

.method public static generateParams(Ljava/lang/String;Ljava/lang/String;)Lc8/oTh;
    .locals 1
    .param p0, "acceptType"    # Ljava/lang/String;
    .param p1, "capture"    # Ljava/lang/String;

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc8/pTh;->generateParams(Ljava/lang/String;Ljava/lang/String;Z)Lc8/oTh;

    move-result-object v0

    return-object v0
.end method

.method public static generateParams(Ljava/lang/String;Ljava/lang/String;Z)Lc8/oTh;
    .locals 1
    .param p0, "acceptType"    # Ljava/lang/String;
    .param p1, "capture"    # Ljava/lang/String;
    .param p2, "isMultiple"    # Z

    .prologue
    .line 204
    new-instance v0, Lc8/mTh;

    invoke-direct {v0, p0, p1, p2}, Lc8/mTh;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 6
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 107
    if-nez p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-object v0

    .line 110
    :cond_1
    if-eqz p2, :cond_2

    if-eq p1, v3, :cond_4

    :cond_2
    move-object v1, v0

    .line 117
    .local v1, "uri":Landroid/net/Uri;
    :goto_1
    if-nez v1, :cond_3

    if-nez p2, :cond_3

    if-ne p1, v3, :cond_3

    iget-object v3, p0, Lc8/pTh;->mCameraFilePath:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 118
    iget-object v3, p0, Lc8/pTh;->mActivity:Landroid/app/Activity;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lc8/pTh;->mCameraFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lc8/LD;->getFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 121
    :cond_3
    const/4 v0, 0x0

    .line 123
    .local v0, "result":Ljava/lang/Object;
    iget-object v3, p0, Lc8/pTh;->mParams:Lc8/oTh;

    invoke-virtual {v3}, Lc8/oTh;->isMultiple()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 124
    if-eqz v1, :cond_0

    .line 125
    const/4 v3, 0x1

    new-array v2, v3, [Landroid/net/Uri;

    .line 126
    .local v2, "uris":[Landroid/net/Uri;
    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 127
    move-object v0, v2

    .line 128
    .local v0, "result":[Landroid/net/Uri;
    goto :goto_0

    .line 110
    .end local v0    # "result":[Landroid/net/Uri;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "uris":[Landroid/net/Uri;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 130
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
    .line 181
    :try_start_0
    iget-object v0, p0, Lc8/pTh;->mFragment:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lc8/pTh;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lc8/pTh;->mRequestCode:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 191
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lc8/pTh;->mFragment:Landroid/support/v4/app/Fragment;

    iget v1, p0, Lc8/pTh;->mRequestCode:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    iget-object v0, p0, Lc8/pTh;->mActivity:Landroid/app/Activity;

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
    .line 62
    iget v3, p0, Lc8/pTh;->mRequestCode:I

    if-eq p1, v3, :cond_0

    .line 77
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-direct {p0, p2, p3}, Lc8/pTh;->parseResult(ILandroid/content/Intent;)Ljava/lang/Object;

    move-result-object v2

    .line 72
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

    .line 73
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lc8/pTh;->mUploadMessage:Landroid/webkit/ValueCallback;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v1, v3, v4}, Lc8/pTh;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Lc8/oTh;)V
    .locals 4
    .param p2, "params"    # Lc8/oTh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<*>;",
            "Lc8/oTh;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<*>;"
    iget-object v2, p0, Lc8/pTh;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_0

    .line 104
    :goto_0
    return-void

    .line 85
    :cond_0
    iput-object p1, p0, Lc8/pTh;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 86
    iput-object p2, p0, Lc8/pTh;->mParams:Lc8/oTh;

    .line 89
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/pTh;->mCameraFilePath:Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Lc8/pTh;->createCaptureIntent()[Landroid/content/Intent;

    move-result-object v0

    .line 95
    .local v0, "captureIntents":[Landroid/content/Intent;
    invoke-virtual {p2}, Lc8/oTh;->isCaptureEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 96
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 103
    .local v1, "intent":Landroid/content/Intent;
    :goto_1
    invoke-direct {p0, v1}, Lc8/pTh;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 98
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CHOOSER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.TITLE"

    iget-object v3, p0, Lc8/pTh;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string/jumbo v2, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    const-string/jumbo v2, "android.intent.extra.INTENT"

    invoke-virtual {p2}, Lc8/oTh;->createIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1
.end method
