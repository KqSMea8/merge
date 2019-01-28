.class public Lc8/Phn;
.super Ljava/lang/Object;
.source "PreCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ohn;,
        Lc8/Nhn;
    }
.end annotation


# static fields
.field private static final CONFIG_NS:Ljava/lang/String; = "PushReceiver"

.field public static final KEY_PRE_CACHED_DATA:Ljava/lang/String; = "key_pre_cached_data"

.field public static final KEY_REQUEST_PRE_CACHE_LIST_DAY:Ljava/lang/String; = "key_request_pre_cache_list_day"

.field public static final KEY_VIP_ERRO_DATA:Ljava/lang/String; = "push_vip_erro_data"

.field private static final TYPE_PRE_CACHE_FAILURE:I = 0x0

.field private static final TYPE_PRE_CACHE_SUCCESS:I = 0x1

.field private static final TYPE_VIP_ERRO:I = -0x1

.field private static listener:Lc8/Nhn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lc8/Nhn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/Nhn;-><init>(Lc8/Khn;)V

    sput-object v0, Lc8/Phn;->listener:Lc8/Nhn;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lc8/Phn;->arrayToString(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3}, Lc8/Phn;->downloadPreCache(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method private static arrayToString(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "vids"    # [Ljava/lang/String;
    .param p2, "vNames"    # [Ljava/lang/String;

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    if-eqz p2, :cond_1

    array-length v2, p2

    if-le v2, v1, :cond_1

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :goto_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 323
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ":\u89c6\u9891\u6807\u9898"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 326
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static cacheCreatedEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 296
    const-string/jumbo v0, "Page_start_early_download"

    .line 297
    .local v0, "aPage":Ljava/lang/String;
    const/16 v1, 0x4e1f

    .line 298
    .local v1, "aEventId":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 299
    .local v6, "currentTime":J
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 301
    .local v5, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v2, Lc8/vdn;

    invoke-static {v2}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/vdn;

    invoke-interface {v2}, Lc8/vdn;->isVIP()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    const-string/jumbo v8, "1"

    .line 306
    .local v8, "isVip":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "isvip"

    invoke-virtual {v5, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string/jumbo v2, "pvv_vid"

    invoke-virtual {v5, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string/jumbo v2, "pvv_sid"

    invoke-virtual {v5, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static/range {v0 .. v5}, Lc8/LHg;->utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 310
    return-void

    .line 304
    .end local v8    # "isVip":Ljava/lang/String;
    :cond_0
    const-string/jumbo v8, "0"

    .restart local v8    # "isVip":Ljava/lang/String;
    goto :goto_0
.end method

.method private static downloadPreCache(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 12
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "vids"    # [Ljava/lang/String;
    .param p2, "vidNames"    # [Ljava/lang/String;
    .param p3, "isPush"    # Z

    .prologue
    .line 218
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v9, "!!==!! PreCacheManager downloadPreCache"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    :try_start_0
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v8

    const-string/jumbo v9, "PushReceiver"

    const-string/jumbo v10, "add_spm"

    const-string/jumbo v11, "1"

    invoke-virtual {v8, v9, v10, v11}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    const-string/jumbo v0, "1"

    .line 229
    .local v0, "add_spm":Ljava/lang/String;
    const-string/jumbo v8, "PreCacheManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "downloadPreCache add_spm:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    if-eqz v0, :cond_1

    const-string/jumbo v8, "1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 233
    :try_start_1
    new-instance v1, Lcom/youku/service/download/DownloadManager$CacheRequest;

    invoke-direct {v1}, Lcom/youku/service/download/DownloadManager$CacheRequest;-><init>()V

    .line 234
    .local v1, "cacheRequest":Lcom/youku/service/download/DownloadManager$CacheRequest;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, p1

    if-ge v3, v8, :cond_0

    array-length v8, p2

    if-ge v3, v8, :cond_0

    .line 235
    aget-object v8, p1, v3

    aget-object v9, p2, v3

    invoke-virtual {v1, v8, v9}, Lcom/youku/service/download/DownloadManager$CacheRequest;->addVideo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 222
    .end local v0    # "add_spm":Ljava/lang/String;
    .end local v1    # "cacheRequest":Lcom/youku/service/download/DownloadManager$CacheRequest;
    .end local v3    # "i":I
    :catch_0
    move-exception v6

    .line 223
    .local v6, "t":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 237
    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v0    # "add_spm":Ljava/lang/String;
    .restart local v1    # "cacheRequest":Lcom/youku/service/download/DownloadManager$CacheRequest;
    .restart local v3    # "i":I
    :cond_0
    :try_start_2
    invoke-virtual {v1, p3}, Lcom/youku/service/download/DownloadManager$CacheRequest;->setPush(Z)V

    .line 238
    const-string/jumbo v8, "a2h0b.8166716.auto.download"

    invoke-virtual {v1, v8}, Lcom/youku/service/download/DownloadManager$CacheRequest;->setSource(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v8

    new-instance v9, Lc8/Lhn;

    invoke-direct {v9}, Lc8/Lhn;-><init>()V

    invoke-virtual {v8, v1, v9}, Lc8/ben;->createDownload(Lcom/youku/service/download/DownloadManager$CacheRequest;Lc8/Cen;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 265
    .end local v1    # "cacheRequest":Lcom/youku/service/download/DownloadManager$CacheRequest;
    .end local v3    # "i":I
    :goto_2
    array-length v9, p1

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v9, :cond_2

    aget-object v7, p1, v8

    .line 266
    .local v7, "vid":Ljava/lang/String;
    invoke-static {v7, p0}, Lc8/Phn;->cacheCreatedEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 245
    .end local v7    # "vid":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 246
    .restart local v6    # "t":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 251
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_1
    :try_start_3
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v8

    new-instance v9, Lc8/Mhn;

    invoke-direct {v9}, Lc8/Mhn;-><init>()V

    invoke-virtual {v8, p1, p2, v9, p3}, Lc8/ben;->createDownload([Ljava/lang/String;[Ljava/lang/String;Lc8/Cen;Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 257
    :catch_2
    move-exception v6

    .line 258
    .restart local v6    # "t":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 269
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_2
    invoke-static {}, Lc8/ben;->getDownloadIdFile()Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "cacheVidStr":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "save cacheVidStr:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 272
    invoke-static {p0, p1, p2}, Lc8/Phn;->arrayToString(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lc8/oen;->makeDownloadIdFile(Ljava/lang/String;)V

    .line 277
    :goto_4
    const-string/jumbo v8, "key_pre_cached_data"

    invoke-static {v8}, Lc8/Phn;->getPreCacheVids(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 278
    .local v5, "preCacheVidStr":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "save errovid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 280
    invoke-static {p0, p1, p2}, Lc8/Phn;->arrayToString(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "key_pre_cached_data"

    invoke-static {v8, v9}, Lc8/Phn;->savePreCaheVidStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_3
    :goto_5
    return-void

    .line 274
    .end local v5    # "preCacheVidStr":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0, p1, p2}, Lc8/Phn;->arrayToString(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lc8/oen;->makeDownloadIdFile(Ljava/lang/String;)V

    goto :goto_4

    .line 282
    .restart local v5    # "preCacheVidStr":Ljava/lang/String;
    :cond_5
    invoke-static {p0, p1, p2}, Lc8/Phn;->arrayToString(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, "newCacheStr":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 284
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "key_pre_cached_data"

    invoke-static {v8, v9}, Lc8/Phn;->savePreCaheVidStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private static getDeletePendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 589
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 590
    .local v0, "i":Landroid/content/Intent;
    const/high16 v2, 0x34400000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 594
    const-class v2, Lcom/youku/service/push/service/DeletePushService;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_del"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 597
    .local v1, "p":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private static getNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 4
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "ticker"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    const/4 v3, 0x1

    .line 538
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v2, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 540
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    sget v2, Lcom/youku/phone/R$drawable;->push_icon_small:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 544
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 545
    .local v1, "style":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    if-ne p4, v3, :cond_0

    .line 546
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 547
    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 549
    :cond_0
    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 550
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 552
    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 553
    invoke-virtual {v0, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 554
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 555
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 556
    sget-object v2, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v2, p0, p4}, Lc8/Phn;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 557
    sget-object v2, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lc8/Phn;->getDeletePendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 559
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 561
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    return-object v2
.end method

.method private static getPendingIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 568
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 569
    .local v0, "i":Landroid/content/Intent;
    const/high16 v2, 0x34400000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 574
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 575
    const-string/jumbo v2, "video_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    const-string/jumbo v2, "com.youku.ui.activity.DetailActivity"

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 585
    .local v1, "p":Landroid/app/PendingIntent;
    return-object v1

    .line 577
    .end local v1    # "p":Landroid/app/PendingIntent;
    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 578
    const-string/jumbo v2, "go"

    const-string/jumbo v3, "inner"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    const-string/jumbo v2, "showid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    const-string/jumbo v2, "com.youku.ui.activity.DownloadPageActivity"

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 582
    :cond_1
    const-string/jumbo v2, "com.youku.ui.activity.DownloadPageActivity"

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getPreCacheVids(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-static {}, Lc8/Gin;->getInstance()Lc8/Gin;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, p0, v2}, Lc8/Gin;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "vidStr":Ljava/lang/String;
    return-object v0
.end method

.method private static isCached(Ljava/lang/String;)Z
    .locals 2
    .param p0, "vid"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-static {}, Lc8/ben;->getDownloadIdFile()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "vidStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static notifyForSeries(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/service/download/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "downloadInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/service/download/DownloadInfo;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 477
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 478
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v1, "finishInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/service/download/DownloadInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/service/download/DownloadInfo;

    .line 480
    .local v2, "info":Lcom/youku/service/download/DownloadInfo;
    iget v9, v2, Lcom/youku/service/download/DownloadInfo;->state:I

    if-ne v9, v11, :cond_0

    .line 481
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 485
    .end local v2    # "info":Lcom/youku/service/download/DownloadInfo;
    :cond_1
    sget-object v8, Lc8/KWc;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 487
    .local v4, "nm":Landroid/app/NotificationManager;
    const-string/jumbo v5, ""

    .line 488
    .local v5, "showId":Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 489
    .local v7, "title":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 490
    .local v6, "ticker":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    .local v0, "content":Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 493
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x3

    if-gt v8, v9, :cond_5

    .line 494
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/service/download/DownloadInfo;

    .line 495
    .restart local v2    # "info":Lcom/youku/service/download/DownloadInfo;
    iget-object v5, v2, Lcom/youku/service/download/DownloadInfo;->showid:Ljava/lang/String;

    .line 496
    iget-object v7, v2, Lcom/youku/service/download/DownloadInfo;->showname:Ljava/lang/String;

    .line 497
    iget v9, v2, Lcom/youku/service/download/DownloadInfo;->show_videoseq:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 498
    const-string/jumbo v9, ","

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    iget-object v6, v2, Lcom/youku/service/download/DownloadInfo;->showname:Ljava/lang/String;

    .line 500
    goto :goto_1

    .line 501
    .end local v2    # "info":Lcom/youku/service/download/DownloadInfo;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-le v8, v11, :cond_3

    .line 502
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 510
    :cond_3
    :goto_2
    const-string/jumbo v8, "\u5df2\u4e3a\u4f60\u9884\u7f13\u5b58\u5b8c\u6210\uff0c\u8bf7\u70b9\u51fb\u89c2\u770b"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8, v6, v11}, Lc8/Phn;->getNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v3

    .line 526
    .local v3, "n":Landroid/app/Notification;
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 527
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-virtual {v4, v8, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 530
    .end local v0    # "content":Ljava/lang/StringBuilder;
    .end local v1    # "finishInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/service/download/DownloadInfo;>;"
    .end local v3    # "n":Landroid/app/Notification;
    .end local v4    # "nm":Landroid/app/NotificationManager;
    .end local v5    # "showId":Ljava/lang/String;
    .end local v6    # "ticker":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    :cond_4
    return-void

    .line 505
    .restart local v0    # "content":Ljava/lang/StringBuilder;
    .restart local v1    # "finishInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/service/download/DownloadInfo;>;"
    .restart local v4    # "nm":Landroid/app/NotificationManager;
    .restart local v5    # "showId":Ljava/lang/String;
    .restart local v6    # "ticker":Ljava/lang/String;
    .restart local v7    # "title":Ljava/lang/String;
    :cond_5
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/youku/service/download/DownloadInfo;

    iget-object v5, v8, Lcom/youku/service/download/DownloadInfo;->showid:Ljava/lang/String;

    .line 506
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/youku/service/download/DownloadInfo;

    iget-object v7, v8, Lcom/youku/service/download/DownloadInfo;->showname:Ljava/lang/String;

    .line 507
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/youku/service/download/DownloadInfo;

    iget-object v6, v8, Lcom/youku/service/download/DownloadInfo;->showname:Ljava/lang/String;

    .line 508
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u5171"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u96c6"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 513
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/service/download/DownloadInfo;

    .line 514
    .restart local v2    # "info":Lcom/youku/service/download/DownloadInfo;
    iget-object v5, v2, Lcom/youku/service/download/DownloadInfo;->showid:Ljava/lang/String;

    .line 515
    iget-object v7, v2, Lcom/youku/service/download/DownloadInfo;->showname:Ljava/lang/String;

    .line 516
    iget-object v9, v2, Lcom/youku/service/download/DownloadInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const-string/jumbo v9, ","

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    iget-object v6, v2, Lcom/youku/service/download/DownloadInfo;->showname:Ljava/lang/String;

    .line 519
    goto :goto_4

    .line 520
    .end local v2    # "info":Lcom/youku/service/download/DownloadInfo;
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-le v8, v11, :cond_8

    .line 521
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 523
    :cond_8
    const-string/jumbo v8, "\u5df2\u66f4\u65b0\uff0c\u70b9\u51fb\u7acb\u523b\u81ea\u52a8\u7f13\u5b58"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8, v6, v10}, Lc8/Phn;->getNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v3

    .restart local v3    # "n":Landroid/app/Notification;
    goto/16 :goto_3
.end method

.method private static notifyVipErrorForSeries(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Ohn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "vipErrorInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/service/push/precache/PreCacheManager$VipErroInfo;>;"
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 414
    sget-object v7, Lc8/KWc;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 416
    .local v3, "nm":Landroid/app/NotificationManager;
    const-string/jumbo v4, ""

    .line 417
    .local v4, "showId":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 418
    .local v6, "title":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 419
    .local v5, "ticker":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .local v0, "content":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "\u56e0\u4f1a\u5458\u8eab\u4efd\u9a8c\u8bc1\u5931\u8d25,"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Ohn;

    .line 423
    .local v1, "info":Lc8/Ohn;
    iget-object v4, v1, Lc8/Ohn;->sid:Ljava/lang/String;

    .line 424
    iget-object v8, v1, Lc8/Ohn;->vName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const-string/jumbo v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    iget-object v5, v1, Lc8/Ohn;->vName:Ljava/lang/String;

    .line 427
    goto :goto_0

    .line 428
    .end local v1    # "info":Lc8/Ohn;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_1

    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 431
    :cond_1
    const-string/jumbo v7, "\u9884\u7f13\u5b58\u672a\u6210\u529f\uff0c\u8bf7\u70b9\u51fb\u67e5\u770b"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-static {v4, v6, v7, v5, v8}, Lc8/Phn;->getNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v2

    .line 434
    .local v2, "n":Landroid/app/Notification;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 435
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-virtual {v3, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 437
    .end local v0    # "content":Ljava/lang/StringBuilder;
    .end local v2    # "n":Landroid/app/Notification;
    .end local v3    # "nm":Landroid/app/NotificationManager;
    .end local v4    # "showId":Ljava/lang/String;
    .end local v5    # "ticker":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static requestDownData(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 7
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "vids"    # [Ljava/lang/String;
    .param p2, "vidNames"    # [Ljava/lang/String;
    .param p3, "isNotify"    # Z

    .prologue
    const/4 v6, 0x1

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lc8/Uhn;->YOUKU_DOWN_FLAG_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "GET"

    const-string/jumbo v5, "/video/down/flag"

    invoke-static {v4, v5}, Lc8/Uhn;->getStatisticsParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestDownData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    const-class v3, Lc8/TIj;

    invoke-static {v3, v6}, Lc8/ddn;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/TIj;

    .line 175
    .local v1, "seriesVideoDownDataHttpRequest":Lc8/TIj;
    invoke-interface {v1}, Lc8/TIj;->cancel()V

    .line 176
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, v2, v6}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 177
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lc8/Khn;

    invoke-direct {v3, p0, p1, p2}, Lc8/Khn;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v1, v0, v3}, Lc8/TIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V

    .line 215
    return-void
.end method

.method public static savePreCaheVidStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "vidStr"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 347
    invoke-static {}, Lc8/Gin;->getInstance()Lc8/Gin;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lc8/Gin;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public static sendNotification(Ljava/lang/String;)V
    .locals 13
    .param p0, "vidStr"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 445
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 446
    const-string/jumbo v9, ","

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 447
    .local v8, "vids":[Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 448
    .local v0, "downloadInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/youku/service/download/DownloadInfo;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v8

    if-ge v2, v9, :cond_3

    .line 449
    aget-object v9, v8, v2

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 450
    .local v6, "split":[Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 451
    .local v5, "showId":Ljava/lang/String;
    aget-object v7, v6, v11

    .line 452
    .local v7, "vid":Ljava/lang/String;
    array-length v9, v6

    if-le v9, v12, :cond_0

    .line 453
    aget-object v5, v6, v11

    .line 454
    aget-object v7, v6, v12

    .line 456
    :cond_0
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v9

    invoke-virtual {v9, v7}, Lc8/ben;->getDownloadInfo(Ljava/lang/String;)Lcom/youku/service/download/DownloadInfo;

    move-result-object v3

    .line 457
    .local v3, "info":Lcom/youku/service/download/DownloadInfo;
    if-eqz v3, :cond_1

    iget-boolean v9, v3, Lcom/youku/service/download/DownloadInfo;->isExposure:Z

    if-nez v9, :cond_1

    .line 460
    iput-object v5, v3, Lcom/youku/service/download/DownloadInfo;->showid:Ljava/lang/String;

    .line 462
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 463
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 465
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v1, "downloadInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/service/download/DownloadInfo;>;"
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 470
    .end local v1    # "downloadInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/service/download/DownloadInfo;>;"
    .end local v3    # "info":Lcom/youku/service/download/DownloadInfo;
    .end local v5    # "showId":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "vid":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 471
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/service/download/DownloadInfo;>;"
    invoke-static {v4}, Lc8/Phn;->notifyForSeries(Ljava/util/List;)V

    goto :goto_2

    .line 474
    .end local v0    # "downloadInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/youku/service/download/DownloadInfo;>;>;"
    .end local v2    # "i":I
    .end local v4    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/service/download/DownloadInfo;>;"
    .end local v8    # "vids":[Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public static sendVipErrorNotification(Ljava/lang/String;)V
    .locals 12
    .param p0, "vidStr"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 374
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 375
    const-string/jumbo v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, "vids":[Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 377
    .local v5, "vipErroMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/youku/service/push/precache/PreCacheManager$VipErroInfo;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v4

    if-ge v0, v7, :cond_2

    .line 378
    new-instance v1, Lc8/Ohn;

    invoke-direct {v1}, Lc8/Ohn;-><init>()V

    .line 379
    .local v1, "info":Lc8/Ohn;
    aget-object v7, v4, v0

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "split":[Ljava/lang/String;
    aget-object v7, v3, v9

    iput-object v7, v1, Lc8/Ohn;->sid:Ljava/lang/String;

    .line 381
    array-length v7, v3

    if-lez v7, :cond_0

    .line 382
    aget-object v7, v3, v9

    iput-object v7, v1, Lc8/Ohn;->sid:Ljava/lang/String;

    .line 386
    array-length v7, v3

    if-le v7, v10, :cond_0

    .line 387
    aget-object v7, v3, v10

    iput-object v7, v1, Lc8/Ohn;->vid:Ljava/lang/String;

    .line 391
    array-length v7, v3

    if-le v7, v11, :cond_0

    .line 392
    aget-object v7, v3, v11

    iput-object v7, v1, Lc8/Ohn;->vName:Ljava/lang/String;

    .line 396
    iget-object v7, v1, Lc8/Ohn;->sid:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 398
    iget-object v7, v1, Lc8/Ohn;->sid:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v6, "vipErrorInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/service/push/precache/PreCacheManager$VipErroInfo;>;"
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v7, v1, Lc8/Ohn;->sid:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 405
    .end local v1    # "info":Lc8/Ohn;
    .end local v3    # "split":[Ljava/lang/String;
    .end local v6    # "vipErrorInfos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/service/push/precache/PreCacheManager$VipErroInfo;>;"
    :cond_2
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 406
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/service/push/precache/PreCacheManager$VipErroInfo;>;"
    invoke-static {v2}, Lc8/Phn;->notifyVipErrorForSeries(Ljava/util/List;)V

    goto :goto_2

    .line 409
    .end local v0    # "i":I
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/youku/service/push/precache/PreCacheManager$VipErroInfo;>;"
    .end local v4    # "vids":[Ljava/lang/String;
    .end local v5    # "vipErroMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/youku/service/push/precache/PreCacheManager$VipErroInfo;>;>;"
    :cond_3
    return-void
.end method

.method public static startPreCache(Lc8/Jhn;Z)V
    .locals 7
    .param p0, "data"    # Lc8/Jhn;
    .param p1, "isNotify"    # Z

    .prologue
    .line 121
    if-eqz p0, :cond_0

    iget-object v3, p0, Lc8/Jhn;->model:Ljava/util/List;

    if-nez v3, :cond_1

    .line 134
    :cond_0
    return-void

    .line 124
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lc8/Jhn;->model:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 125
    iget-object v3, p0, Lc8/Jhn;->model:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Ihn;

    .line 126
    .local v1, "itemData":Lc8/Ihn;
    iget-object v3, v1, Lc8/Ihn;->sid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 127
    invoke-static {}, Lc8/Gin;->getInstance()Lc8/Gin;

    move-result-object v3

    const-string/jumbo v4, "set_use_auto_cache_showid"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lc8/Gin;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "showid":Ljava/lang/String;
    invoke-static {}, Lc8/Gin;->getInstance()Lc8/Gin;

    move-result-object v3

    const-string/jumbo v4, "set_use_auto_cache_showid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lc8/Ihn;->sid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lc8/Gin;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .end local v2    # "showid":Ljava/lang/String;
    :cond_2
    iget-object v3, v1, Lc8/Ihn;->sid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lc8/Ihn;->vids:[Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lc8/Ihn;->vids:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 131
    iget-object v3, v1, Lc8/Ihn;->sid:Ljava/lang/String;

    iget-object v4, v1, Lc8/Ihn;->vids:[Ljava/lang/String;

    iget-object v5, v1, Lc8/Ihn;->videoTitles:[Ljava/lang/String;

    invoke-static {v3, v4, v5, p1}, Lc8/Phn;->startSeriesCache(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 124
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static startSeriesCache(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 7
    .param p0, "sid"    # Ljava/lang/String;
    .param p1, "vids"    # [Ljava/lang/String;
    .param p2, "vidNames"    # [Ljava/lang/String;
    .param p3, "isNotify"    # Z

    .prologue
    .line 137
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v3, "vidlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v2, "vNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 140
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Lc8/ben;->getDownloadInfo(Ljava/lang/String;)Lcom/youku/service/download/DownloadInfo;

    move-result-object v0

    .line 142
    .local v0, "downloadInfo":Lcom/youku/service/download/DownloadInfo;
    aget-object v4, p1, v1

    invoke-static {v4}, Lc8/Phn;->isCached(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v0, :cond_1

    .line 143
    aget-object v4, p1, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    if-eqz p2, :cond_0

    array-length v4, p2

    if-le v4, v1, :cond_0

    .line 145
    aget-object v4, p2, v1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 151
    :cond_1
    const-string/jumbo v4, "PushReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vid ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") is once cached"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 154
    .end local v0    # "downloadInfo":Lcom/youku/service/download/DownloadInfo;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 155
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 156
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 155
    invoke-static {p0, v4, v5, p3}, Lc8/Phn;->requestDownData(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 159
    :cond_3
    return-void
.end method

.method public static syncPreCache()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 60
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "!!==!! PreCacheManager syncPreCache"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lc8/Gin;->getInstance()Lc8/Gin;

    move-result-object v5

    const-string/jumbo v6, "set_use_auto_cache_showid"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Lc8/Gin;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, 0x1

    .line 64
    .local v0, "canPrecCache":Z
    :goto_0
    const-string/jumbo v5, "PreCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "canPrecCache:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lc8/Ghn;->setAlarmSchedule()V

    .line 68
    invoke-static {}, Lc8/Gin;->getInstance()Lc8/Gin;

    move-result-object v5

    const-string/jumbo v6, "key_request_pre_cache_list_day"

    invoke-virtual {v5, v6, v4}, Lc8/Gin;->getPreferenceInt(Ljava/lang/String;I)I

    move-result v1

    .line 69
    .local v1, "day":I
    const-string/jumbo v5, "PreCacheManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "day:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " getDayOfYear:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lc8/Ghn;->getDayOfYear()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lc8/Ghn;->getDayOfYear()I

    move-result v5

    if-eq v1, v5, :cond_0

    .line 72
    const/4 v5, 0x6

    invoke-static {v5, v4, v4}, Lc8/Ghn;->getCalendarLong(III)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 73
    .local v2, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 74
    sget-object v4, Lc8/Phn;->listener:Lc8/Nhn;

    invoke-static {v4}, Lc8/Qhn;->requestPreCacheList(Lc8/JNp;)V

    .line 78
    .end local v1    # "day":I
    .end local v2    # "time":J
    :cond_0
    return-void

    .end local v0    # "canPrecCache":Z
    :cond_1
    move v0, v4

    .line 62
    goto :goto_0
.end method
