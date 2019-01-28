.class public Lc8/cH;
.super Ljava/lang/Object;
.source "WVZipSecurityManager.java"


# static fields
.field private static MAX_LRU_CACHE_SIZE:I

.field private static mSecTokenCache:Lc8/cH;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lc8/YG;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x3e8

    sput v0, Lc8/cH;->MAX_LRU_CACHE_SIZE:I

    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Lc8/cH;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/cH;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/cH;->mSampleMap:Ljava/util/HashMap;

    .line 61
    new-instance v0, Landroid/util/LruCache;

    sget v1, Lc8/cH;->MAX_LRU_CACHE_SIZE:I

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lc8/cH;->mLruCache:Landroid/util/LruCache;

    .line 62
    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/cH;
    .locals 2

    .prologue
    .line 52
    const-class v1, Lc8/cH;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/cH;->mSecTokenCache:Lc8/cH;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lc8/cH;

    invoke-direct {v0}, Lc8/cH;-><init>()V

    sput-object v0, Lc8/cH;->mSecTokenCache:Lc8/cH;

    .line 55
    :cond_0
    sget-object v0, Lc8/cH;->mSecTokenCache:Lc8/cH;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lc8/cH;->mLruCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lc8/cH;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/YG;

    iget-object v0, v0, Lc8/YG;->mHash:Ljava/lang/String;

    .line 76
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppResInfo(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;)Lc8/YG;
    .locals 9
    .param p1, "appInfo"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 186
    if-nez p1, :cond_0

    .line 187
    invoke-static {p2}, Lc8/vG;->getAppInfoByUrl(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object p1

    .line 188
    if-nez p1, :cond_0

    .line 189
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v6

    invoke-virtual {v6, p2}, Lc8/WG;->isZcacheUrl(Ljava/lang/String;)Lc8/VG;

    move-result-object v0

    .line 190
    .local v0, "data":Lc8/VG;
    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v6

    iget-object v7, v0, Lc8/VG;->appName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lc8/WG;->getAppInfo(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object p1

    .line 195
    .end local v0    # "data":Lc8/VG;
    :cond_0
    if-nez p1, :cond_1

    .line 214
    :goto_0
    return-object v5

    .line 199
    :cond_1
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v6

    sget-object v7, Lc8/dH;->APP_RES_NAME:Ljava/lang/String;

    invoke-virtual {v6, p1, v7, v8}, Lc8/AG;->getZipResAbsolutePath(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "path":Ljava/lang/String;
    invoke-static {p2}, Lc8/dI;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 203
    iget-object v6, p0, Lc8/cH;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v6, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    .line 204
    const-string/jumbo v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 205
    .local v1, "index":I
    if-gez v1, :cond_2

    .line 206
    iget-object v6, p0, Lc8/cH;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u672c\u5730\u8d44\u6e90\u7684\u7edd\u5bf9\u8def\u5f84\u51fa\u9519 path= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lc8/dH;->APP_RES_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "path_appRes":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lc8/dH;->APP_RES_INC_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "path_appResInc":Ljava/lang/String;
    invoke-static {}, Lc8/NG;->getInstance()Lc8/NG;

    move-result-object v5

    invoke-virtual {v5, v4}, Lc8/NG;->validRunningZipPackage(Ljava/lang/String;)I

    .line 212
    invoke-static {}, Lc8/NG;->getInstance()Lc8/NG;

    move-result-object v5

    invoke-virtual {v5, v3}, Lc8/NG;->validRunningZipPackage(Ljava/lang/String;)I

    .line 214
    .end local v1    # "index":I
    .end local v3    # "path_appRes":Ljava/lang/String;
    .end local v4    # "path_appResInc":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lc8/cH;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v5, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/YG;

    goto/16 :goto_0
.end method

.method public getAppSample(Ljava/lang/String;)D
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 121
    sget-object v4, Lc8/DB;->commonConfig:Lc8/EB;

    iget-object v4, v4, Lc8/EB;->verifySampleRate:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lc8/cH;->parseSampleMap(Ljava/lang/String;)V

    .line 122
    if-eqz p1, :cond_0

    iget-object v4, p0, Lc8/cH;->mSampleMap:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/cH;->mSampleMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 124
    :try_start_0
    iget-object v4, p0, Lc8/cH;->mSampleMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 125
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 126
    .local v2, "rate":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_0

    .line 132
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "rate":D
    :goto_0
    return-wide v2

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lc8/cH;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u83b7\u53d6\u3010"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u3011\u91c7\u6837\u7387\u5931\u8d25"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u6570\u636e\u683c\u5f0f\u9519\u8beferror :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public getLruSize()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lc8/cH;->mLruCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lc8/cH;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFileSecrity(Ljava/lang/String;[BLjava/lang/String;Lc8/bH;Ljava/lang/String;)Z
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "utdata"    # Lc8/bH;
    .param p5, "appName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 144
    invoke-static {p1}, Lc8/dI;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 147
    .local v2, "begin":J
    iget-object v10, p0, Lc8/cH;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v10, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_3

    .line 148
    const-string/jumbo v10, "/"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 149
    .local v5, "index":I
    if-gez v5, :cond_0

    .line 150
    iget-object v10, p0, Lc8/cH;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\u672c\u5730\u8d44\u6e90\u7684\u7edd\u5bf9\u8def\u5f84\u51fa\u9519 path= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v10, 0x0

    .line 176
    .end local v5    # "index":I
    :goto_0
    return v10

    .line 153
    .restart local v5    # "index":I
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    add-int/lit8 v12, v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lc8/dH;->APP_RES_NAME:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "path_appRes":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    add-int/lit8 v12, v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lc8/dH;->APP_RES_INC_NAME:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, "path_appResInc":Ljava/lang/String;
    invoke-static {}, Lc8/NG;->getInstance()Lc8/NG;

    move-result-object v10

    invoke-virtual {v10, v7}, Lc8/NG;->validRunningZipPackage(Ljava/lang/String;)I

    move-result v8

    .line 156
    .local v8, "val":I
    invoke-static {}, Lc8/NG;->getInstance()Lc8/NG;

    move-result-object v10

    invoke-virtual {v10, v6}, Lc8/NG;->validRunningZipPackage(Ljava/lang/String;)I

    move-result v9

    .line 158
    .local v9, "val2":I
    sget v10, Lc8/UG;->SECCUSS:I

    if-eq v8, v10, :cond_2

    .line 159
    move-object/from16 v0, p4

    iput v8, v0, Lc8/bH;->verifyError:I

    .line 163
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    move-object/from16 v0, p4

    iput-wide v10, v0, Lc8/bH;->verifyResTime:J

    .line 164
    iget-object v10, p0, Lc8/cH;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "validRunningZipPackage all time =\u3010"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    iget-wide v12, v0, Lc8/bH;->verifyResTime:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\u3011"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p4

    iget v10, v0, Lc8/bH;->verifyError:I

    sget v11, Lc8/UG;->SECCUSS:I

    if-eq v10, v11, :cond_3

    .line 166
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 160
    :cond_2
    sget v10, Lc8/UG;->SECCUSS:I

    if-eq v9, v10, :cond_1

    .line 161
    move-object/from16 v0, p4

    iput v9, v0, Lc8/bH;->verifyError:I

    goto :goto_1

    .line 169
    .end local v5    # "index":I
    .end local v6    # "path_appRes":Ljava/lang/String;
    .end local v7    # "path_appResInc":Ljava/lang/String;
    .end local v8    # "val":I
    .end local v9    # "val2":I
    :cond_3
    invoke-static/range {p2 .. p2}, Lc8/NH;->md5ToHex([B)Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "datamd5":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    move-object/from16 v0, p4

    iput-wide v10, v0, Lc8/bH;->verifyTime:J

    .line 171
    iget-object v10, p0, Lc8/cH;->mLruCache:Landroid/util/LruCache;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lc8/cH;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v10, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 172
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 174
    :cond_4
    sget v10, Lc8/UG;->ERR_MD5_RES:I

    move-object/from16 v0, p4

    iput v10, v0, Lc8/bH;->verifyError:I

    .line 176
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public isFileSecrity(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 19
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "appName"    # Ljava/lang/String;

    .prologue
    .line 97
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/cH;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u5f00\u59cb\u5b89\u5168\u6821\u9a8c "

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 99
    .local v16, "begin":J
    new-instance v6, Lc8/bH;

    invoke-direct {v6}, Lc8/bH;-><init>()V

    .local v6, "utdata":Lc8/bH;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    .line 100
    invoke-virtual/range {v2 .. v7}, Lc8/cH;->isFileSecrity(Ljava/lang/String;[BLjava/lang/String;Lc8/bH;Ljava/lang/String;)Z

    move-result v18

    .line 101
    .local v18, "result":Z
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 102
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/cH;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  \u5b89\u5168\u6821\u9a8c \u57cb\u70b9\u4fe1\u606f utdata.verifyResTime=\u3010"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v6, Lc8/bH;->verifyResTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u3011  utdata.verifyTime=\u3010"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v6, Lc8/bH;->verifyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u3011  utdata.verifyError=\u3010"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v6, Lc8/bH;->verifyError:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u3011 LRUcache size =\u3010 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lc8/cH;->getLruSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u3011"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v8

    iget-wide v10, v6, Lc8/bH;->verifyResTime:J

    iget-wide v12, v6, Lc8/bH;->verifyTime:J

    iget v14, v6, Lc8/bH;->verifyError:I

    invoke-virtual/range {p0 .. p0}, Lc8/cH;->getLruSize()I

    move-result v15

    move-object/from16 v9, p1

    invoke-interface/range {v8 .. v15}, Lc8/cG;->didGetResourceVerifyCode(Ljava/lang/String;JJII)V

    .line 107
    if-nez v18, :cond_1

    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/cH;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  \u5b89\u5168\u6821\u9a8c \u5931\u8d25 url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_1
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/cH;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  \u5b89\u5168\u6821\u9a8c \u6210\u529f result ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "cost time\u3010"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u3011"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v6    # "utdata":Lc8/bH;
    .end local v16    # "begin":J
    .end local v18    # "result":Z
    :cond_2
    :goto_0
    return v18

    :catch_0
    move-exception v2

    const/16 v18, 0x0

    goto :goto_0
.end method

.method public parseSampleMap(Ljava/lang/String;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 37
    :try_start_0
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    iget-object v4, p0, Lc8/cH;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u6bcf\u4e2aapp\u7684\u91c7\u6837\u7387\u914d\u7f6e\u4fe1\u606f  data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lc8/cH;->mSampleMap:Ljava/util/HashMap;

    .line 41
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 43
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 45
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lc8/cH;->mSampleMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lc8/cH;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "app\u7684\u91c7\u6837\u7387\u914d\u7f6e\u4fe1\u606f  error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "hash"    # Ljava/lang/String;
    .param p3, "headers"    # Lorg/json/JSONObject;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lc8/cH;->mLruCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lc8/cH;->mLruCache:Landroid/util/LruCache;

    new-instance v1, Lc8/YG;

    invoke-direct {v1, p2, p3}, Lc8/YG;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    return-void
.end method

.method public setSampleMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "SampleMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lc8/cH;->mSampleMap:Ljava/util/HashMap;

    .line 34
    return-void
.end method
