.class public Lc8/Xye;
.super Lc8/Uye;
.source "ShareWebViewRequestParam.java"


# static fields
.field private static final SHARE_URL:Ljava/lang/String; = "http://service.weibo.com/share/mobilesdk.php"

.field private static final UPLOAD_PIC_URL:Ljava/lang/String; = "http://service.weibo.com/share/mobilesdk_uppic.php"


# instance fields
.field private hashKey:Ljava/lang/String;

.field private mBase64ImgData:[B

.field private mShareContent:Ljava/lang/String;

.field private multiMessage:Lc8/Jwe;

.field private packageName:Ljava/lang/String;

.field private picId:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lc8/Uye;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/web/WebRequestType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "authInfo"    # Lcom/sina/weibo/sdk/auth/AuthInfo;
    .param p2, "type"    # Lcom/sina/weibo/sdk/web/WebRequestType;
    .param p3, "callback"    # Ljava/lang/String;
    .param p4, "callbackType"    # I
    .param p5, "specialTitle"    # Ljava/lang/String;
    .param p6, "url"    # Ljava/lang/String;
    .param p7, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p7}, Lc8/Uye;-><init>(Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/web/WebRequestType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/web/WebRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 8
    .param p1, "authInfo"    # Lcom/sina/weibo/sdk/auth/AuthInfo;
    .param p2, "type"    # Lcom/sina/weibo/sdk/web/WebRequestType;
    .param p3, "callback"    # Ljava/lang/String;
    .param p4, "specialTitle"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lc8/Xye;-><init>(Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/web/WebRequestType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lc8/Xye;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/Xye;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/Xye;->picId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lc8/Xye;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/Xye;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lc8/Xye;->picId:Ljava/lang/String;

    return-object p1
.end method

.method private getBaseUrl()V
    .locals 5

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v0, "content":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lc8/Xye;->multiMessage:Lc8/Jwe;

    iget-object v3, v3, Lc8/Jwe;->textObject:Lcom/sina/weibo/sdk/api/TextObject;

    instance-of v3, v3, Lcom/sina/weibo/sdk/api/TextObject;

    if-eqz v3, :cond_0

    .line 181
    iget-object v3, p0, Lc8/Xye;->multiMessage:Lc8/Jwe;

    iget-object v2, v3, Lc8/Jwe;->textObject:Lcom/sina/weibo/sdk/api/TextObject;

    .line 182
    .local v2, "textObject":Lcom/sina/weibo/sdk/api/TextObject;
    iget-object v3, v2, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .end local v2    # "textObject":Lcom/sina/weibo/sdk/api/TextObject;
    :cond_0
    iget-object v3, p0, Lc8/Xye;->multiMessage:Lc8/Jwe;

    iget-object v3, v3, Lc8/Jwe;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    instance-of v3, v3, Lcom/sina/weibo/sdk/api/ImageObject;

    if-eqz v3, :cond_1

    .line 185
    iget-object v3, p0, Lc8/Xye;->multiMessage:Lc8/Jwe;

    iget-object v1, v3, Lc8/Jwe;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    .line 186
    .local v1, "imageObject":Lcom/sina/weibo/sdk/api/ImageObject;
    iget-object v3, v1, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    iget-object v4, v1, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    invoke-direct {p0, v3, v4}, Lc8/Xye;->handleMblogPic(Ljava/lang/String;[B)V

    .line 190
    .end local v1    # "imageObject":Lcom/sina/weibo/sdk/api/ImageObject;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc8/Xye;->mShareContent:Ljava/lang/String;

    .line 191
    return-void
.end method

.method private handleMblogPic(Ljava/lang/String;[B)V
    .locals 8
    .param p1, "picPath"    # Ljava/lang/String;
    .param p2, "thumbData"    # [B

    .prologue
    .line 200
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 201
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v2, "picFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 203
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v3, v4, [B
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    .local v3, "tmpPic":[B
    const/4 v0, 0x0

    .line 206
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 208
    invoke-static {v3}, Lc8/nye;->encodebyte([B)[B

    move-result-object v4

    iput-object v4, p0, Lc8/Xye;->mBase64ImgData:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 214
    if-eqz v1, :cond_0

    .line 215
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 227
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "picFile":Ljava/io/File;
    .end local v3    # "tmpPic":[B
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "picFile":Ljava/io/File;
    .restart local v3    # "tmpPic":[B
    :catch_0
    move-exception v4

    .line 214
    :goto_1
    if-eqz v0, :cond_1

    .line 215
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    .line 224
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "picFile":Ljava/io/File;
    .end local v3    # "tmpPic":[B
    :cond_1
    :goto_2
    if-eqz p2, :cond_0

    array-length v4, p2

    if-lez v4, :cond_0

    .line 225
    invoke-static {p2}, Lc8/nye;->encodebyte([B)[B

    move-result-object v4

    iput-object v4, p0, Lc8/Xye;->mBase64ImgData:[B

    goto :goto_0

    .line 213
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "picFile":Ljava/io/File;
    .restart local v3    # "tmpPic":[B
    :catchall_0
    move-exception v4

    .line 214
    :goto_3
    if-eqz v0, :cond_2

    .line 215
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1

    .line 217
    :cond_2
    :goto_4
    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "picFile":Ljava/io/File;
    .end local v3    # "tmpPic":[B
    :catch_1
    move-exception v4

    goto :goto_2

    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "picFile":Ljava/io/File;
    .restart local v3    # "tmpPic":[B
    :catch_2
    move-exception v4

    goto :goto_0

    .line 218
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    goto :goto_2

    :catch_4
    move-exception v5

    goto :goto_4

    .line 213
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v4

    move-object v0, v1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method


# virtual methods
.method protected childFillBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 101
    iget-object v0, p0, Lc8/Xye;->multiMessage:Lc8/Jwe;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lc8/Xye;->multiMessage:Lc8/Jwe;

    invoke-virtual {v0, p1}, Lc8/Jwe;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 104
    :cond_0
    const-string/jumbo v0, "token"

    iget-object v1, p0, Lc8/Xye;->token:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v0, "packageName"

    iget-object v1, p0, Lc8/Xye;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v0, "hashKey"

    iget-object v1, p0, Lc8/Xye;->hashKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public doExtraTask(Lc8/Tye;)V
    .locals 6
    .param p1, "callback"    # Lc8/Tye;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lc8/Uye;->doExtraTask(Lc8/Tye;)V

    .line 64
    new-instance v1, Lc8/Fxe;

    invoke-virtual {p0}, Lc8/Xye;->getBaseData()Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/Fxe;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "param":Lc8/Fxe;
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lc8/Xye;->mBase64ImgData:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 66
    .local v0, "imgDataBase64Str":Ljava/lang/String;
    const-string/jumbo v2, "img"

    invoke-virtual {v1, v2, v0}, Lc8/Fxe;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v2, Lc8/wxe;

    iget-object v3, p0, Lc8/Xye;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lc8/wxe;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "http://service.weibo.com/share/mobilesdk_uppic.php"

    const-string/jumbo v4, "POST"

    new-instance v5, Lc8/Wye;

    invoke-direct {v5, p0, p1}, Lc8/Wye;-><init>(Lc8/Xye;Lc8/Tye;)V

    invoke-virtual {v2, v3, v1, v4, v5}, Lc8/wxe;->requestAsync(Ljava/lang/String;Lc8/Fxe;Ljava/lang/String;Lc8/Exe;)V

    .line 97
    return-void
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 7

    .prologue
    .line 122
    invoke-virtual {p0}, Lc8/Xye;->getBaseData()Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/web/BaseWebViewRequestData;->getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "appKey":Ljava/lang/String;
    const-string/jumbo v4, "http://service.weibo.com/share/mobilesdk.php"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 125
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 126
    .local v2, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v4, "title"

    iget-object v5, p0, Lc8/Xye;->mShareContent:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 127
    const-string/jumbo v4, "version"

    const-string/jumbo v5, "0031405000"

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 128
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 129
    const-string/jumbo v4, "source"

    invoke-virtual {v2, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 131
    :cond_0
    iget-object v4, p0, Lc8/Xye;->token:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 132
    const-string/jumbo v4, "access_token"

    iget-object v5, p0, Lc8/Xye;->token:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 135
    :cond_1
    iget-object v4, p0, Lc8/Xye;->context:Landroid/content/Context;

    invoke-static {v4, v1}, Lc8/Aye;->getAid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "aid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 137
    const-string/jumbo v4, "aid"

    invoke-virtual {v2, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 139
    :cond_2
    iget-object v4, p0, Lc8/Xye;->packageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 140
    const-string/jumbo v4, "packagename"

    iget-object v5, p0, Lc8/Xye;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 142
    :cond_3
    iget-object v4, p0, Lc8/Xye;->hashKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 143
    const-string/jumbo v4, "key_hash"

    iget-object v5, p0, Lc8/Xye;->hashKey:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 145
    :cond_4
    iget-object v4, p0, Lc8/Xye;->picId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 146
    const-string/jumbo v4, "picinfo"

    iget-object v5, p0, Lc8/Xye;->picId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 148
    :cond_5
    const-string/jumbo v4, "luicode"

    const-string/jumbo v5, "10000360"

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 149
    const-string/jumbo v4, "lfid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OP_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 150
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public hasExtraTask()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lc8/Xye;->mBase64ImgData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Xye;->mBase64ImgData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 56
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lc8/Uye;->hasExtraTask()Z

    move-result v0

    goto :goto_0
.end method

.method public setHashKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "hashKey"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lc8/Xye;->hashKey:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setMultiMessage(Lc8/Jwe;)V
    .locals 0
    .param p1, "message"    # Lc8/Jwe;

    .prologue
    .line 159
    iput-object p1, p0, Lc8/Xye;->multiMessage:Lc8/Jwe;

    .line 160
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lc8/Xye;->packageName:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lc8/Xye;->token:Ljava/lang/String;

    .line 164
    return-void
.end method

.method protected transformChildBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 111
    new-instance v0, Lc8/Jwe;

    invoke-direct {v0}, Lc8/Jwe;-><init>()V

    iput-object v0, p0, Lc8/Xye;->multiMessage:Lc8/Jwe;

    .line 112
    iget-object v0, p0, Lc8/Xye;->multiMessage:Lc8/Jwe;

    invoke-virtual {v0, p1}, Lc8/Jwe;->toObject(Landroid/os/Bundle;)Lc8/Jwe;

    .line 113
    const-string/jumbo v0, "token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Xye;->token:Ljava/lang/String;

    .line 114
    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Xye;->packageName:Ljava/lang/String;

    .line 115
    const-string/jumbo v0, "hashKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Xye;->hashKey:Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Lc8/Xye;->getBaseUrl()V

    .line 117
    return-void
.end method

.method public updateRequestUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lc8/Xye;->picId:Ljava/lang/String;

    .line 156
    return-void
.end method
