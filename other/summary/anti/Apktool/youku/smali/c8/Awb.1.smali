.class public Lc8/Awb;
.super Ljava/lang/Object;
.source "PackageCache.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final CACHE_PACKAGE:I = 0x1

.field public static final CACHE_PAGE:I = 0x2

.field private static final MODULE_NAME:Ljava/lang/String; = "aliweex.cache"

.field private static final PACKAGEAPP_NAME_DEFAULT:Ljava/lang/String; = "gwxcache"

.field private static final PACKAGE_SPLITER:Ljava/lang/String; = "/\\*combo\\*/"

.field private static isAvfsCacheExist:Z

.field private static nullAllObjectRemoveCallback:Ljava/lang/Object;

.field private static nullObjectSetCallback:Ljava/lang/Object;

.field private static sInstance:Lc8/Awb;


# instance fields
.field private cacheHandler:Landroid/os/Handler;

.field private gettingPackageApp:Z

.field private hasGotPackageApp:Z

.field private memoryCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/aliweex/cache/Package$Info;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lc8/Awb;->isAvfsCacheExist:Z

    .line 56
    sput-object v1, Lc8/Awb;->nullObjectSetCallback:Ljava/lang/Object;

    .line 57
    sput-object v1, Lc8/Awb;->nullAllObjectRemoveCallback:Ljava/lang/Object;

    .line 60
    :try_start_0
    const-string/jumbo v0, "com.taobao.alivfssdk.cache.AVFSCacheManager"

    invoke-static {v0}, Lc8/Awb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 61
    new-instance v0, Lc8/rwb;

    invoke-direct {v0}, Lc8/rwb;-><init>()V

    sput-object v0, Lc8/Awb;->nullObjectSetCallback:Ljava/lang/Object;

    .line 66
    new-instance v0, Lc8/swb;

    invoke-direct {v0}, Lc8/swb;-><init>()V

    sput-object v0, Lc8/Awb;->nullAllObjectRemoveCallback:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lc8/Awb;->isAvfsCacheExist:Z

    .line 73
    const-string/jumbo v0, "Page_Cache"

    const-string/jumbo v1, "no alivfs sdk!"

    invoke-static {v0, v1}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v1, p0, Lc8/Awb;->hasGotPackageApp:Z

    .line 50
    iput-boolean v1, p0, Lc8/Awb;->gettingPackageApp:Z

    .line 78
    new-instance v0, Lc8/VXf;

    const-string/jumbo v1, "WeexCache"

    invoke-direct {v0, v1, p0}, Lc8/VXf;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    .line 79
    .local v0, "cacheThread":Lc8/VXf;
    invoke-virtual {v0}, Lc8/VXf;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lc8/Awb;->cacheHandler:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lc8/Awb;Lcom/alibaba/aliweex/cache/Package$Info;)V
    .locals 0
    .param p0, "x0"    # Lc8/Awb;
    .param p1, "x1"    # Lcom/alibaba/aliweex/cache/Package$Info;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lc8/Awb;->putPackageInfoToMemoryCache(Lcom/alibaba/aliweex/cache/Package$Info;)V

    return-void
.end method

.method static synthetic access$102(Lc8/Awb;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/Awb;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lc8/Awb;->hasGotPackageApp:Z

    return p1
.end method

.method private clearAvfs()V
    .locals 5

    .prologue
    .line 420
    sget-boolean v2, Lc8/Awb;->isAvfsCacheExist:Z

    if-eqz v2, :cond_0

    .line 422
    :try_start_0
    invoke-direct {p0}, Lc8/Awb;->getFileCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object v0

    .line 423
    .local v0, "avfsCache":Lcom/taobao/alivfssdk/cache/IAVFSCache;
    if-eqz v0, :cond_0

    .line 424
    sget-object v2, Lc8/Awb;->nullAllObjectRemoveCallback:Ljava/lang/Object;

    check-cast v2, Lcom/taobao/alivfssdk/cache/IAVFSCache$OnAllObjectRemoveCallback;

    invoke-interface {v0, v2}, Lcom/taobao/alivfssdk/cache/IAVFSCache;->removeAllObject(Lcom/taobao/alivfssdk/cache/IAVFSCache$OnAllObjectRemoveCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .end local v0    # "avfsCache":Lcom/taobao/alivfssdk/cache/IAVFSCache;
    :cond_0
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Page_Cache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clear cache failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getFileCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;
    .locals 3

    .prologue
    .line 394
    invoke-static {}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->getInstance()Lcom/taobao/alivfssdk/cache/AVFSCacheManager;

    move-result-object v1

    const-string/jumbo v2, "aliweex.cache"

    invoke-virtual {v1, v2}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->cacheForModule(Ljava/lang/String;)Lcom/taobao/alivfssdk/cache/AVFSCache;

    move-result-object v0

    .line 395
    .local v0, "moduleCache":Lcom/taobao/alivfssdk/cache/AVFSCache;
    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0}, Lcom/taobao/alivfssdk/cache/AVFSCache;->getFileCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object v1

    .line 398
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lc8/Awb;
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lc8/Awb;->sInstance:Lc8/Awb;

    if-nez v0, :cond_1

    .line 84
    const-class v1, Lc8/Awb;

    monitor-enter v1

    .line 85
    :try_start_0
    sget-object v0, Lc8/Awb;->sInstance:Lc8/Awb;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lc8/Awb;

    invoke-direct {v0}, Lc8/Awb;-><init>()V

    sput-object v0, Lc8/Awb;->sInstance:Lc8/Awb;

    .line 88
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_1
    sget-object v0, Lc8/Awb;->sInstance:Lc8/Awb;

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private putContentToAvfsCache(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 340
    sget-boolean v2, Lc8/Awb;->isAvfsCacheExist:Z

    if-eqz v2, :cond_0

    .line 342
    :try_start_0
    invoke-direct {p0}, Lc8/Awb;->getFileCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object v0

    .line 343
    .local v0, "avfsCache":Lcom/taobao/alivfssdk/cache/IAVFSCache;
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, p1, v2}, Lcom/taobao/alivfssdk/cache/IAVFSCache;->setStreamForKey(Ljava/lang/String;Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v0    # "avfsCache":Lcom/taobao/alivfssdk/cache/IAVFSCache;
    :cond_0
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Page_Cache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "put cache failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private putPackageInfoToAvfsCache(Lcom/alibaba/aliweex/cache/Package$Info;)V
    .locals 2
    .param p1, "entry"    # Lcom/alibaba/aliweex/cache/Package$Info;

    .prologue
    .line 336
    invoke-virtual {p1}, Lcom/alibaba/aliweex/cache/Package$Info;->getMD5CacheKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/aliweex/cache/Package$Info;->code:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lc8/Awb;->putContentToAvfsCache(Ljava/lang/String;[B)V

    .line 337
    return-void
.end method

.method private putPackageInfoToMemoryCache(Lcom/alibaba/aliweex/cache/Package$Info;)V
    .locals 3
    .param p1, "pkgInfo"    # Lcom/alibaba/aliweex/cache/Package$Info;

    .prologue
    .line 326
    invoke-virtual {p1}, Lcom/alibaba/aliweex/cache/Package$Info;->getMD5CacheKey()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "cacheKey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lc8/Awb;->getPackageInfoFromMemCache(Ljava/lang/String;)Lcom/alibaba/aliweex/cache/Package$Info;

    move-result-object v1

    .line 328
    .local v1, "cachedPkgInfo":Lcom/alibaba/aliweex/cache/Package$Info;
    if-nez v1, :cond_0

    .line 329
    invoke-static {p1}, Lcom/alibaba/aliweex/cache/Package$Info;->cloneInstance(Lcom/alibaba/aliweex/cache/Package$Info;)Lcom/alibaba/aliweex/cache/Package$Info;

    move-result-object v1

    .line 331
    :cond_0
    iget-object v2, p0, Lc8/Awb;->memoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    return-void
.end method

.method private removeOneItemFromAvfs(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 402
    sget-boolean v2, Lc8/Awb;->isAvfsCacheExist:Z

    if-eqz v2, :cond_0

    .line 404
    :try_start_0
    invoke-direct {p0}, Lc8/Awb;->getFileCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object v0

    .line 405
    .local v0, "avfsCache":Lcom/taobao/alivfssdk/cache/IAVFSCache;
    if-eqz v0, :cond_0

    .line 406
    new-instance v2, Lc8/qwb;

    invoke-direct {v2, p0}, Lc8/qwb;-><init>(Lc8/Awb;)V

    invoke-interface {v0, p1, v2}, Lcom/taobao/alivfssdk/cache/IAVFSCache;->removeObjectForKey(Ljava/lang/String;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectRemoveCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .end local v0    # "avfsCache":Lcom/taobao/alivfssdk/cache/IAVFSCache;
    :cond_0
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v1

    .line 414
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Page_Cache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clear cache failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cachePackages(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lwb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/aliweex/cache/Package$Item;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 131
    .local v2, "msgCacheStart":J
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 132
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 133
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lc8/Awb;->cacheHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v2

    .line 136
    .local v4, "sendMsgTime":J
    const-string/jumbo v1, "Page_Cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "send cache msg time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public cachePage(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 140
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 141
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v0, "dataBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "key"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 145
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 147
    iget-object v2, p0, Lc8/Awb;->cacheHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method getContentFromAvfs(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 366
    sget-boolean v7, Lc8/Awb;->isAvfsCacheExist:Z

    if-eqz v7, :cond_0

    .line 368
    :try_start_0
    invoke-direct {p0}, Lc8/Awb;->getFileCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object v0

    .line 369
    .local v0, "avfsCache":Lcom/taobao/alivfssdk/cache/IAVFSCache;
    if-eqz v0, :cond_0

    .line 370
    invoke-interface {v0, p1}, Lcom/taobao/alivfssdk/cache/IAVFSCache;->inputStreamForKey(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 371
    .local v5, "is":Ljava/io/InputStream;
    if-eqz v5, :cond_0

    .line 372
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 374
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    new-array v3, v7, [B

    .line 375
    .local v3, "data":[B
    :goto_0
    const/4 v7, 0x0

    array-length v8, v3

    invoke-virtual {v5, v3, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .local v6, "nRead":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 376
    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    .end local v0    # "avfsCache":Lcom/taobao/alivfssdk/cache/IAVFSCache;
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "data":[B
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "nRead":I
    :catch_0
    move-exception v4

    .line 387
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "Page_Cache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "get cache failed:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 378
    .restart local v0    # "avfsCache":Lcom/taobao/alivfssdk/cache/IAVFSCache;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "data":[B
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "nRead":I
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 379
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "code":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 381
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method getPackageInfoFromAvfs(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 358
    invoke-virtual {p0, p1}, Lc8/Awb;->getContentFromAvfs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPackageInfoFromMemCache(Ljava/lang/String;)Lcom/alibaba/aliweex/cache/Package$Info;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 354
    iget-object v0, p0, Lc8/Awb;->memoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/aliweex/cache/Package$Info;

    return-object v0
.end method

.method public getPageFromAvfs(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lc8/Awb;->getContentFromAvfs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 156
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    .line 157
    .local v14, "what":I
    packed-switch v14, :pswitch_data_0

    .line 236
    :cond_0
    :goto_0
    const/4 v15, 0x0

    :goto_1
    return v15

    .line 159
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v15, :cond_1

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v15, v15, Ljava/util/ArrayList;

    if-eqz v15, :cond_1

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 161
    .local v10, "start":J
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    .line 162
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/aliweex/cache/Package$Item;>;"
    invoke-static {v4}, Lc8/nyb;->make(Ljava/lang/Iterable;)Lc8/nyb;

    move-result-object v15

    new-instance v16, Lc8/wwb;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lc8/wwb;-><init>(Lc8/Awb;)V

    .line 163
    invoke-virtual/range {v15 .. v16}, Lc8/nyb;->next(Lc8/Hxb;)Lc8/nyb;

    move-result-object v15

    new-instance v16, Lc8/vwb;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lc8/vwb;-><init>(Lc8/Awb;)V

    .line 192
    invoke-virtual/range {v15 .. v16}, Lc8/nyb;->next(Lc8/Hxb;)Lc8/nyb;

    move-result-object v15

    .line 197
    invoke-virtual {v15}, Lc8/nyb;->flow()Lc8/Zxb;

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v8, v16, v10

    .line 199
    .local v8, "saveCacheTime":J
    const-string/jumbo v15, "Page_Cache"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "save cache all time:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lc8/kwb;->getInstance()Lc8/kwb;

    move-result-object v15

    invoke-virtual {v15, v4}, Lc8/kwb;->commitStatWeexCache(Ljava/util/ArrayList;)V

    .line 203
    const/4 v15, 0x1

    goto :goto_1

    .line 205
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/aliweex/cache/Package$Item;>;"
    .end local v8    # "saveCacheTime":J
    .end local v10    # "start":J
    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    .line 207
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 208
    .local v3, "dataBundle":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 209
    const-string/jumbo v15, "key"

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "remoteMd5":Ljava/lang/String;
    const-string/jumbo v15, "data"

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 211
    .local v2, "data":[B
    invoke-static {v2}, Lc8/NH;->md5ToHex([B)Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, "responseMd5":Ljava/lang/String;
    const-string/jumbo v15, "url"

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 213
    .local v12, "url":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 214
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v15

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 216
    .local v13, "urlWithoutQuery":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lc8/Awb;->getContentFromAvfs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "pageMd5FromAvfs":Ljava/lang/String;
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 219
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 220
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lc8/Awb;->removeOneItemFromAvfs(Ljava/lang/String;)V

    .line 223
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 224
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lc8/Awb;->putContentToAvfsCache(Ljava/lang/String;[B)V

    .line 227
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    if-eqz v2, :cond_0

    .line 228
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2}, Lc8/Awb;->putContentToAvfsCache(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 4

    .prologue
    .line 94
    new-instance v2, Lc8/twb;

    const/high16 v3, 0x200000

    invoke-direct {v2, p0, v3}, Lc8/twb;-><init>(Lc8/Awb;I)V

    iput-object v2, p0, Lc8/Awb;->memoryCache:Landroid/support/v4/util/LruCache;

    .line 101
    sget-boolean v2, Lc8/Awb;->isAvfsCacheExist:Z

    if-eqz v2, :cond_0

    .line 102
    invoke-static {}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->getInstance()Lcom/taobao/alivfssdk/cache/AVFSCacheManager;

    move-result-object v2

    const-string/jumbo v3, "aliweex.cache"

    invoke-virtual {v2, v3}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->cacheForModule(Ljava/lang/String;)Lcom/taobao/alivfssdk/cache/AVFSCache;

    move-result-object v1

    .line 103
    .local v1, "moduleCache":Lcom/taobao/alivfssdk/cache/AVFSCache;
    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v1}, Lcom/taobao/alivfssdk/cache/AVFSCache;->getFileCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;

    .line 105
    new-instance v0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;

    invoke-direct {v0}, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;-><init>()V

    .line 106
    .local v0, "config":Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;
    const-wide/32 v2, 0xf00000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->limitSize:Ljava/lang/Long;

    .line 107
    const-wide/32 v2, 0x200000

    iput-wide v2, v0, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->fileMemMaxSize:J

    .line 108
    invoke-virtual {v1, v0}, Lcom/taobao/alivfssdk/cache/AVFSCache;->moduleConfig(Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;)Lcom/taobao/alivfssdk/cache/AVFSCache;

    .line 111
    .end local v0    # "config":Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;
    .end local v1    # "moduleCache":Lcom/taobao/alivfssdk/cache/AVFSCache;
    :cond_0
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v2

    new-instance v3, Lc8/uwb;

    invoke-direct {v3, p0}, Lc8/uwb;-><init>(Lc8/Awb;)V

    invoke-virtual {v2, v3}, Lc8/qH;->addEventListener(Lc8/pH;)V

    .line 127
    return-void
.end method

.method putCache(Lcom/alibaba/aliweex/cache/Package$Info;)V
    .locals 0
    .param p1, "info"    # Lcom/alibaba/aliweex/cache/Package$Info;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lc8/Awb;->putPackageInfoToMemoryCache(Lcom/alibaba/aliweex/cache/Package$Info;)V

    .line 241
    invoke-direct {p0, p1}, Lc8/Awb;->putPackageInfoToAvfsCache(Lcom/alibaba/aliweex/cache/Package$Info;)V

    .line 242
    return-void
.end method

.method public tryToPutZCachePackageIntoMemroyCache(Z)V
    .locals 4
    .param p1, "force"    # Z

    .prologue
    .line 254
    iget-boolean v2, p0, Lc8/Awb;->gettingPackageApp:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lc8/Awb;->hasGotPackageApp:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 323
    :goto_0
    return-void

    .line 255
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/Awb;->gettingPackageApp:Z

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 257
    .local v0, "startTime":J
    const-string/jumbo v2, "gwxcache"

    .line 258
    invoke-static {v2}, Lc8/nyb;->make(Ljava/lang/Object;)Lc8/nyb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/nyb;->runOnNewThread()Lc8/nyb;

    move-result-object v2

    new-instance v3, Lc8/pwb;

    invoke-direct {v3, p0}, Lc8/pwb;-><init>(Lc8/Awb;)V

    .line 259
    invoke-virtual {v2, v3}, Lc8/nyb;->next(Lc8/Hxb;)Lc8/nyb;

    move-result-object v2

    new-instance v3, Lc8/owb;

    invoke-direct {v3, p0}, Lc8/owb;-><init>(Lc8/Awb;)V

    .line 276
    invoke-virtual {v2, v3}, Lc8/nyb;->cancel(Lc8/Rxb;)Lc8/nyb;

    move-result-object v2

    new-instance v3, Lc8/zwb;

    invoke-direct {v3, p0}, Lc8/zwb;-><init>(Lc8/Awb;)V

    .line 282
    invoke-virtual {v2, v3}, Lc8/nyb;->next(Lc8/Hxb;)Lc8/nyb;

    move-result-object v2

    new-instance v3, Lc8/ywb;

    invoke-direct {v3, p0, v0, v1}, Lc8/ywb;-><init>(Lc8/Awb;J)V

    .line 307
    invoke-virtual {v2, v3}, Lc8/nyb;->next(Lc8/Hxb;)Lc8/nyb;

    move-result-object v2

    new-instance v3, Lc8/xwb;

    invoke-direct {v3, p0}, Lc8/xwb;-><init>(Lc8/Awb;)V

    .line 315
    invoke-virtual {v2, v3}, Lc8/nyb;->onCancel(Lc8/Vxb;)Lc8/nyb;

    move-result-object v2

    .line 321
    invoke-virtual {v2}, Lc8/nyb;->flow()Lc8/Zxb;

    .line 322
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc8/Awb;->gettingPackageApp:Z

    goto :goto_0
.end method
