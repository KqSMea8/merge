.class public Lc8/zKj;
.super Ljava/lang/Object;
.source "MobileSecurePayHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mProgress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lc8/zKj;->mProgress:Landroid/app/ProgressDialog;

    .line 46
    iput-object v0, p0, Lc8/zKj;->mContext:Landroid/content/Context;

    .line 398
    new-instance v0, Lc8/yKj;

    invoke-direct {v0, p0}, Lc8/yKj;-><init>(Lc8/zKj;)V

    iput-object v0, p0, Lc8/zKj;->mHandler:Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lc8/zKj;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lc8/zKj;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/zKj;

    .prologue
    .line 43
    iget-object v0, p0, Lc8/zKj;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lc8/zKj;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/zKj;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lc8/zKj;->doInstallApk(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private doInstallApk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cachePath"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string/jumbo v3, "PayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":doInstallApk:start:cachePath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 171
    invoke-static {p1}, Lc8/Jbp;->show(Landroid/content/Context;)V

    .line 173
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 174
    check-cast v2, Landroid/app/Activity;

    .line 175
    .local v2, "mActivity":Landroid/app/Activity;
    const-string/jumbo v3, "PayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doInstallApk:mActivity.getWindow():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string/jumbo v3, "PayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doInstallApk:mActivity.isFinishing():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v2    # "mActivity":Landroid/app/Activity;
    :cond_0
    const-string/jumbo v3, "PayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doInstallApk:context.isRestricted():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    const-string/jumbo v3, "PayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doInstallApk:file.length():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    const-string/jumbo v3, "PayManager"

    const-string/jumbo v4, "doInstallApk:file.BaseHelper.chmod.start"

    invoke-static {v3, v4}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string/jumbo v3, "777"

    invoke-static {v3, p2}, Lc8/pKj;->chmod(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string/jumbo v3, "PayManager"

    const-string/jumbo v4, "doInstallApk:file.BaseHelper.chmod.end"

    invoke-static {v3, v4}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v3, p0, Lc8/zKj;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lc8/zKj;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 198
    const-string/jumbo v3, "PayManager"

    const-string/jumbo v4, "doInstallApk:end"

    invoke-static {v3, v4}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_2
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    const-string/jumbo v3, "PayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doInstallApk:file.Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "archiveFilePath"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 269
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 270
    .local v0, "apkInfo":Landroid/content/pm/PackageInfo;
    return-object v0
.end method


# virtual methods
.method public checkNewUpdate(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 281
    const/4 v2, 0x0

    .line 284
    .local v2, "url":Ljava/lang/String;
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lc8/zKj;->sendCheckNewUpdate(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 286
    .local v1, "resp":Lorg/json/JSONObject;
    const-string/jumbo v3, "true"

    const-string/jumbo v4, "needUpdate"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    const-string/jumbo v3, "updateUrl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 294
    .end local v1    # "resp":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method closeProgress()V
    .locals 2

    .prologue
    .line 386
    :try_start_0
    iget-object v1, p0, Lc8/zKj;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lc8/zKj;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 388
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/zKj;->mProgress:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendCheckNewUpdate(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 305
    const/4 v2, 0x0

    .line 307
    .local v2, "objResp":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 308
    .local v3, "req":Lorg/json/JSONObject;
    const-string/jumbo v4, "action"

    const-string/jumbo v5, "update"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 311
    .local v0, "data":Lorg/json/JSONObject;
    const-string/jumbo v4, "platform"

    const-string/jumbo v5, "android"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string/jumbo v4, "version"

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string/jumbo v4, "partner"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string/jumbo v4, "data"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lc8/zKj;->sendRequest(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 322
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v3    # "req":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendRequest(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 332
    new-instance v3, Lc8/FKj;

    iget-object v5, p0, Lc8/zKj;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lc8/FKj;-><init>(Landroid/content/Context;)V

    .line 335
    .local v3, "nM":Lc8/FKj;
    const/4 v1, 0x0

    .line 339
    .local v1, "jsonResponse":Lorg/json/JSONObject;
    :try_start_0
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :try_start_1
    const-string/jumbo v5, "https://msp.alipay.com/x.htm"

    invoke-virtual {v3, p1, v5}, Lc8/FKj;->SendAndWaitResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, "response":Ljava/lang/String;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1    # "jsonResponse":Lorg/json/JSONObject;
    .local v2, "jsonResponse":Lorg/json/JSONObject;
    move-object v1, v2

    .line 350
    .end local v2    # "jsonResponse":Lorg/json/JSONObject;
    .end local v4    # "response":Ljava/lang/String;
    .restart local v1    # "jsonResponse":Lorg/json/JSONObject;
    :goto_0
    if-eqz v1, :cond_0

    .line 351
    const-string/jumbo v5, "PayManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MobileSecurePayHelper...sendRequest...jsonResponse:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    return-object v1

    .line 342
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
