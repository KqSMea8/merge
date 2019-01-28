.class public Lc8/oen;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# static fields
.field public static final CLICK_MAX_COUNT:I = 0x5

.field public static final DOWNLOADID_FILE:Ljava/lang/String; = "idlist_info"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "com.youku.phone.download_preferences"

.field public static final SHARE_PREFERENCE_DOWNLOAD_LOGIN_CLICKCOUNT_KEY:Ljava/lang/String; = "clickCount"

.field public static final SHARE_PREFERENCE_DOWNLOAD_LOGIN_MAXCOUNT_KEY:Ljava/lang/String; = "maxCount"

.field public static final SHARE_PREFERENCE_DOWNLOAD_LOGIN_NAME:Ljava/lang/String; = "DownloadLogin"

.field public static final SHARE_PREFERENCE_PLAY_LOGIN_MAXCOUNT_KEY:Ljava/lang/String; = "playMaxCount"

.field private static final TAG:Ljava/lang/String; = "Download_Utils"

.field private static final df:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/oen;->df:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doDownloadLogin(Landroid/app/Activity;Lc8/Qdn;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mDownloadLoginListener"    # Lc8/Qdn;

    .prologue
    .line 263
    const-class v3, Lc8/vdn;

    invoke-static {v3}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/vdn;

    invoke-interface {v3}, Lc8/vdn;->isLogined()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    if-eqz p1, :cond_0

    .line 265
    invoke-interface {p1}, Lc8/Qdn;->doDownload()V

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    sget-object v3, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v4, "clickCount"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lc8/oen;->getPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 269
    .local v0, "clickCount":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doDownloadLogin().clickCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    const-string/jumbo v3, "maxCount"

    const/4 v4, 0x5

    invoke-static {p0, v3, v4}, Lc8/oen;->getPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 271
    .local v2, "maxCount":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doDownloadLogin().maxCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    add-int/lit8 v3, v2, -0x1

    if-lt v0, v3, :cond_2

    .line 273
    const/4 v0, 0x0

    .line 274
    sget-object v3, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v4, "clickCount"

    invoke-static {v3, v4, v0}, Lc8/oen;->savePreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 276
    invoke-virtual {p0}, Landroid/app/Activity;->isRestricted()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 280
    new-instance v1, Lc8/Cbp;

    sget-object v3, Lcom/youku/widget/YoukuDialog$TYPE;->normal:Lcom/youku/widget/YoukuDialog$TYPE;

    invoke-direct {v1, p0, v3}, Lc8/Cbp;-><init>(Landroid/app/Activity;Lcom/youku/widget/YoukuDialog$TYPE;)V

    .line 281
    .local v1, "dialog":Lc8/Cbp;
    sget v3, Lcom/youku/phone/R$string;->download_login_tips:I

    invoke-virtual {v1, v3}, Lc8/Cbp;->setMessage(I)V

    .line 282
    sget v3, Lcom/youku/phone/R$string;->download_login_left:I

    new-instance v4, Lc8/men;

    invoke-direct {v4, v1, p1}, Lc8/men;-><init>(Lc8/Cbp;Lc8/Qdn;)V

    invoke-virtual {v1, v3, v4}, Lc8/Cbp;->setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 291
    sget v3, Lcom/youku/phone/R$string;->download_login_right:I

    new-instance v4, Lc8/nen;

    invoke-direct {v4, p1, v1, p0}, Lc8/nen;-><init>(Lc8/Qdn;Lc8/Cbp;Landroid/app/Activity;)V

    invoke-virtual {v1, v3, v4}, Lc8/Cbp;->setNormalNegtiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 304
    invoke-virtual {v1}, Lc8/Cbp;->show()V

    goto :goto_0

    .line 310
    .end local v1    # "dialog":Lc8/Cbp;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 311
    const-string/jumbo v3, "clickCount"

    invoke-static {p0, v3, v0}, Lc8/oen;->savePreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 312
    if-eqz p1, :cond_0

    .line 313
    invoke-interface {p1}, Lc8/Qdn;->doDownload()V

    goto/16 :goto_0
.end method

.method public static getDownloadFormat()I
    .locals 2

    .prologue
    .line 248
    sget-boolean v1, Lc8/Dfh;->isHighEnd:Z

    if-eqz v1, :cond_1

    .line 250
    :try_start_0
    const-string/jumbo v1, "definition"

    invoke-static {v1}, Lc8/Iin;->getPreferenceInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 254
    .local v0, "i":I
    :goto_0
    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x5

    .line 259
    :cond_0
    :goto_1
    return v0

    .line 252
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    const-string/jumbo v1, "definition"

    invoke-static {v1}, Lc8/Iin;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "i":I
    goto :goto_0

    .line 257
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x2

    .restart local v0    # "i":I
    goto :goto_1
.end method

.method public static getFormatData1(D)Ljava/lang/String;
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 239
    sget-object v0, Lc8/oen;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "f"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string/jumbo v0, "flvhd"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x5

    .line 99
    :goto_0
    return v0

    .line 92
    :cond_0
    const-string/jumbo v0, "mp4hd"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :cond_1
    const-string/jumbo v0, "mp4hd2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    const/4 v0, 0x7

    goto :goto_0

    .line 96
    :cond_2
    const-string/jumbo v0, "mp4hd3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    const/16 v0, 0x8

    goto :goto_0

    .line 99
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLocalThumbPath([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "thumb"    # [Ljava/lang/String;
    .param p1, "dirPath"    # Ljava/lang/String;

    .prologue
    .line 446
    if-eqz p0, :cond_2

    .line 447
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "thumb/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 448
    .local v4, "savePath":Ljava/lang/String;
    array-length v3, p0

    .line 449
    .local v3, "n":I
    new-array v2, v3, [Ljava/lang/String;

    .line 450
    .local v2, "localPath":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 451
    aget-object v5, p0, v1

    .line 452
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 453
    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 455
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 457
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    .line 450
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    .end local v1    # "i":I
    .end local v2    # "localPath":[Ljava/lang/String;
    .end local v3    # "n":I
    .end local v4    # "savePath":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    :cond_3
    return-object v2
.end method

.method public static getPreference(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 325
    if-eqz p0, :cond_0

    .line 326
    const-string/jumbo v1, "DownloadLogin"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 327
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 329
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local p2    # "defaultValue":I
    :cond_0
    return p2
.end method

.method public static getPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 401
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v2, "com.youku.phone.download_preferences"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 402
    .local v0, "s":Landroid/content/SharedPreferences;
    const-string/jumbo v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # Ljava/lang/String;

    .prologue
    .line 406
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v2, "com.youku.phone.download_preferences"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 407
    .local v0, "s":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPreferenceBoolean(Ljava/lang/String;)Z
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 416
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v2, "com.youku.phone.download_preferences"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 417
    .local v0, "s":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getPreferenceBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # Z

    .prologue
    .line 421
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v2, "com.youku.phone.download_preferences"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 422
    .local v0, "s":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getPreferenceInt(Ljava/lang/String;)I
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 411
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v2, "com.youku.phone.download_preferences"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 412
    .local v0, "s":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static hasEnoughSpace(J)Z
    .locals 1
    .param p0, "needSpace"    # J

    .prologue
    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method public static hasEnoughSpace(Ljava/lang/String;J)Z
    .locals 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "needSpace"    # J

    .prologue
    const/4 v2, 0x0

    .line 349
    new-instance v0, Lc8/wfn;

    invoke-direct {v0, p0}, Lc8/wfn;-><init>(Ljava/lang/String;)V

    .line 350
    .local v0, "m":Lc8/wfn;
    invoke-virtual {v0}, Lc8/wfn;->exist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v2

    .line 360
    :cond_1
    const/high16 v1, 0x6400000

    .line 362
    .local v1, "necessary_size":I
    invoke-virtual {v0}, Lc8/wfn;->getFreeSize()J

    move-result-wide v4

    sub-long/2addr v4, p1

    int-to-long v6, v1

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isNeedM3U8File(I)Z
    .locals 2
    .param p0, "format"    # I

    .prologue
    const/4 v0, 0x1

    .line 192
    sget-boolean v1, Lc8/Dfh;->isHighEnd:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized makeDownloadIdFile(Ljava/lang/String;)V
    .locals 1
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 199
    const-class v0, Lc8/oen;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 226
    :cond_0
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized makeDownloadInfoFile(Lcom/youku/service/download/DownloadInfo;)Z
    .locals 11
    .param p0, "info"    # Lcom/youku/service/download/DownloadInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 108
    const-class v7, Lc8/oen;

    monitor-enter v7

    if-nez p0, :cond_1

    .line 139
    :cond_0
    :goto_0
    monitor-exit v7

    return v5

    .line 110
    :cond_1
    const/4 v3, 0x0

    .line 112
    .local v3, "w":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/youku/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "info"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 114
    new-instance v0, Ljava/io/File;

    iget-object v8, p0, Lcom/youku/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "d":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 118
    .end local v0    # "d":Ljava/io/File;
    :cond_2
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 119
    .end local v3    # "w":Ljava/io/BufferedWriter;
    .local v4, "w":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Lcom/youku/service/download/DownloadInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 121
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/youku/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "info"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 132
    if-eqz v4, :cond_3

    .line 133
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_1
    move v5, v6

    .line 139
    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v5, "Download_Utils"

    invoke-static {v5, v1}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 108
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    move-object v3, v4

    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "w":Ljava/io/BufferedWriter;
    .restart local v3    # "w":Ljava/io/BufferedWriter;
    :goto_2
    monitor-exit v7

    throw v5

    .line 122
    :catch_1
    move-exception v1

    .line 123
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    const-string/jumbo v6, "Download_Utils"

    invoke-static {v6, v1}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/youku/service/download/DownloadInfo;->setExceptionId(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 132
    if-eqz v3, :cond_0

    .line 133
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 135
    :catch_2
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v6, "Download_Utils"

    invoke-static {v6, v1}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    .line 108
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    goto :goto_2

    .line 126
    :catch_3
    move-exception v1

    .line 127
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string/jumbo v6, "Download_Utils"

    invoke-static {v6, v1}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/youku/service/download/DownloadInfo;->setExceptionId(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 132
    if-eqz v3, :cond_0

    .line 133
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 135
    :catch_4
    move-exception v1

    .line 136
    :try_start_9
    const-string/jumbo v6, "Download_Utils"

    invoke-static {v6, v1}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 131
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v5

    .line 132
    :goto_5
    if-eqz v3, :cond_4

    .line 133
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 137
    :cond_4
    :goto_6
    :try_start_b
    throw v5

    .line 135
    :catch_5
    move-exception v1

    .line 136
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "Download_Utils"

    invoke-static {v6, v1}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_6

    .line 131
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "w":Ljava/io/BufferedWriter;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "w":Ljava/io/BufferedWriter;
    :catchall_3
    move-exception v5

    move-object v3, v4

    .end local v4    # "w":Ljava/io/BufferedWriter;
    .restart local v3    # "w":Ljava/io/BufferedWriter;
    goto :goto_5

    .line 126
    .end local v3    # "w":Ljava/io/BufferedWriter;
    .restart local v4    # "w":Ljava/io/BufferedWriter;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "w":Ljava/io/BufferedWriter;
    .restart local v3    # "w":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 122
    .end local v3    # "w":Ljava/io/BufferedWriter;
    .restart local v4    # "w":Ljava/io/BufferedWriter;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "w":Ljava/io/BufferedWriter;
    .restart local v3    # "w":Ljava/io/BufferedWriter;
    goto :goto_3
.end method

.method public static makeLocalFile(Lcom/youku/service/download/DownloadInfo;)V
    .locals 6
    .param p0, "info"    # Lcom/youku/service/download/DownloadInfo;

    .prologue
    .line 370
    if-eqz p0, :cond_1

    .line 371
    invoke-static {p0}, Lc8/oen;->makeM3U8File(Lcom/youku/service/download/DownloadInfo;)V

    .line 372
    iget v2, p0, Lcom/youku/service/download/DownloadInfo;->format:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 373
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/youku/service/download/DownloadInfo;->segsSeconds:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 374
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/youku/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".flv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/youku/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/youku/service/download/DownloadInfo;->FORMAT_POSTFIX:[Ljava/lang/String;

    iget v5, p0, Lcom/youku/service/download/DownloadInfo;->format:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 373
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public static makeM3U8File(Lcom/youku/service/download/DownloadInfo;)V
    .locals 10
    .param p0, "info"    # Lcom/youku/service/download/DownloadInfo;

    .prologue
    .line 147
    if-eqz p0, :cond_0

    iget v7, p0, Lcom/youku/service/download/DownloadInfo;->format:I

    invoke-static {v7}, Lc8/oen;->isNeedM3U8File(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v7, p0, Lcom/youku/service/download/DownloadInfo;->segsSeconds:[I

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/youku/service/download/DownloadInfo;->segsSeconds:[I

    array-length v7, v7

    if-eqz v7, :cond_0

    .line 152
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/youku/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 154
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 156
    :cond_2
    new-instance v3, Ljava/io/File;

    .end local v3    # "f":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/youku/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "youku.m3u8"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .restart local v3    # "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 158
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 160
    :cond_3
    const/4 v0, 0x0

    .line 162
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 163
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_1
    const-string/jumbo v7, "#PLSEXTM3U\r\n"

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 165
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "#EXT-X-TARGETDURATION:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/youku/service/download/DownloadInfo;->seconds:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 166
    const-string/jumbo v7, "#EXT-X-VERSION:2\r\n"

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v7, "#EXT-X-DISCONTINUITY\r\n"

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 168
    iget-object v6, p0, Lcom/youku/service/download/DownloadInfo;->segsSeconds:[I

    .line 169
    .local v6, "s":[I
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, v6

    .local v5, "n":I
    :goto_1
    if-ge v4, v5, :cond_5

    .line 170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "#EXTINF:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 171
    iget-boolean v7, p0, Lcom/youku/service/download/DownloadInfo;->isEncryption:Z

    if-eqz v7, :cond_4

    .line 172
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/youku/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 169
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 174
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/youku/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/youku/service/download/DownloadInfo;->FORMAT_POSTFIX:[Ljava/lang/String;

    iget v9, p0, Lcom/youku/service/download/DownloadInfo;->format:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 179
    .end local v4    # "i":I
    .end local v5    # "n":I
    .end local v6    # "s":[I
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 180
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_2
    const-string/jumbo v7, "Download_Utils"

    const-string/jumbo v8, "makeM3U8File fail"

    invoke-static {v7, v8, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 185
    :catch_1
    move-exception v2

    .line 186
    const-string/jumbo v7, "Download_Utils"

    invoke-static {v7, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 177
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "i":I
    .restart local v5    # "n":I
    .restart local v6    # "s":[I
    :cond_5
    :try_start_4
    const-string/jumbo v7, "#EXT-X-ENDLIST\r\n"

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 178
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "#Created by 2@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 183
    if-eqz v1, :cond_0

    .line 184
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 185
    :catch_2
    move-exception v2

    .line 186
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "Download_Utils"

    invoke-static {v7, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 182
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "i":I
    .end local v5    # "n":I
    .end local v6    # "s":[I
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v7

    .line 183
    :goto_4
    if-eqz v0, :cond_6

    .line 184
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 187
    :cond_6
    :goto_5
    throw v7

    .line 185
    :catch_3
    move-exception v2

    .line 186
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "Download_Utils"

    invoke-static {v8, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 182
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 179
    :catch_4
    move-exception v2

    goto :goto_3
.end method

.method public static parsePreview(Lorg/json/JSONObject;)Lcom/youku/upsplayer/module/Preview;
    .locals 8
    .param p0, "previewJosn"    # Lorg/json/JSONObject;

    .prologue
    .line 426
    if-nez p0, :cond_1

    const/4 v4, 0x0

    .line 443
    :cond_0
    :goto_0
    return-object v4

    .line 427
    :cond_1
    const/4 v4, 0x0

    .line 429
    .local v4, "preview":Lcom/youku/upsplayer/module/Preview;
    :try_start_0
    const-string/jumbo v7, "thumb"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 430
    .local v0, "arr":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 431
    .local v3, "n":I
    if-eqz v3, :cond_0

    .line 432
    new-array v6, v3, [Ljava/lang/String;

    .line 433
    .local v6, "thumb":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 434
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 433
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 436
    :cond_2
    new-instance v5, Lcom/youku/upsplayer/module/Preview;

    invoke-direct {v5}, Lcom/youku/upsplayer/module/Preview;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v4    # "preview":Lcom/youku/upsplayer/module/Preview;
    .local v5, "preview":Lcom/youku/upsplayer/module/Preview;
    :try_start_1
    iput-object v6, v5, Lcom/youku/upsplayer/module/Preview;->thumb:[Ljava/lang/String;

    .line 438
    const-string/jumbo v7, "timespan"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/youku/upsplayer/module/Preview;->timespan:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .end local v5    # "preview":Lcom/youku/upsplayer/module/Preview;
    .restart local v4    # "preview":Lcom/youku/upsplayer/module/Preview;
    goto :goto_0

    .line 440
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v6    # "thumb":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 441
    .local v1, "e":Lorg/json/JSONException;
    :goto_2
    const-string/jumbo v7, "Download_Utils"

    invoke-static {v7, v1}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 440
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v4    # "preview":Lcom/youku/upsplayer/module/Preview;
    .restart local v0    # "arr":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    .restart local v3    # "n":I
    .restart local v5    # "preview":Lcom/youku/upsplayer/module/Preview;
    .restart local v6    # "thumb":[Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5    # "preview":Lcom/youku/upsplayer/module/Preview;
    .restart local v4    # "preview":Lcom/youku/upsplayer/module/Preview;
    goto :goto_2
.end method

.method public static savePreference(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 320
    const-string/jumbo v1, "DownloadLogin"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 321
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 322
    return-void
.end method

.method public static savePreference(Ljava/lang/String;I)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 391
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v2, "com.youku.phone.download_preferences"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 392
    .local v0, "s":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 393
    return-void
.end method

.method public static savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 396
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v2, "com.youku.phone.download_preferences"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 397
    .local v0, "s":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 398
    return-void
.end method

.method public static savePreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 386
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v2, "com.youku.phone.download_preferences"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 387
    .local v0, "s":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 388
    return-void
.end method
