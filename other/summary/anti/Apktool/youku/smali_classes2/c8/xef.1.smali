.class public Lc8/xef;
.super Ljava/lang/Object;
.source "TemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/vef;,
        Lc8/wef;
    }
.end annotation


# static fields
.field private static final BYTE_MEM_CACHE_SIZE:I = 0x8

.field private static final DAILY_ENV_URL_PREFIX:Ljava/lang/String; = "http://d.daily.taobaocdn.net/L0/avengers/component/"

.field private static final DB_NAME:Ljava/lang/String; = "trade_template_db"

.field private static final FILE_CAPACITY:J = 0x400000L

.field private static final JSON_OBJECT_CACHE_SIZE:I = 0x8

.field private static final ONLINE_ENV_URL_PREFIX:Ljava/lang/String; = "https://gw.alicdn.com/tfscom/L0/avengers/component/"

.field private static final ROOT_DIR_NAME:Ljava/lang/String; = "trade_template"

.field private static final TAG:Ljava/lang/String; = "TemplateManager"

.field private static volatile instance:Lc8/xef;


# instance fields
.field private final context:Landroid/content/Context;

.field private env:I

.field private final jsonObjectCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final templateCache:Lc8/sef;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v4, p0, Lc8/xef;->env:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/xef;->context:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lc8/xef;->jsonObjectCache:Landroid/util/LruCache;

    .line 54
    new-instance v0, Lc8/qef;

    invoke-direct {v0}, Lc8/qef;-><init>()V

    invoke-virtual {v0, p1}, Lc8/qef;->withContext(Landroid/content/Context;)Lc8/qef;

    move-result-object v0

    const-string/jumbo v1, "trade_template_db"

    invoke-virtual {v0, v1}, Lc8/qef;->withDbName(Ljava/lang/String;)Lc8/qef;

    move-result-object v0

    const-string/jumbo v1, "trade_template"

    invoke-virtual {v0, v1}, Lc8/qef;->withRootDirName(Ljava/lang/String;)Lc8/qef;

    move-result-object v0

    invoke-virtual {v0, v2}, Lc8/qef;->withMemCacheSize(I)Lc8/qef;

    move-result-object v0

    const-wide/32 v2, 0x400000

    invoke-virtual {v0, v2, v3}, Lc8/qef;->withFileCapacity(J)Lc8/qef;

    move-result-object v0

    invoke-virtual {v0, v4}, Lc8/qef;->withUseTemplateIdAsFileName(Z)Lc8/qef;

    move-result-object v0

    invoke-virtual {v0}, Lc8/qef;->build()Lc8/sef;

    move-result-object v0

    iput-object v0, p0, Lc8/xef;->templateCache:Lc8/sef;

    .line 59
    return-void
.end method

.method static synthetic access$200(Lc8/xef;Ljava/lang/String;Z)Lc8/Aef;
    .locals 1
    .param p0, "x0"    # Lc8/xef;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lc8/xef;->readDefaultTemplate(Ljava/lang/String;Z)Lc8/Aef;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lc8/xef;Lc8/zef;ZZ)Lc8/Aef;
    .locals 1
    .param p0, "x0"    # Lc8/xef;
    .param p1, "x1"    # Lc8/zef;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lc8/xef;->sendTemplateRequest(Lc8/zef;ZZ)Lc8/Aef;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lc8/xef;Lc8/zef;Lc8/Aef;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/xef;
    .param p1, "x1"    # Lc8/zef;
    .param p2, "x2"    # Lc8/Aef;
    .param p3, "x3"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lc8/xef;->getContentFromTemplateCache(Lc8/zef;Lc8/Aef;Z)V

    return-void
.end method

.method static synthetic access$600(Lc8/xef;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lc8/xef;

    .prologue
    .line 23
    iget-object v0, p0, Lc8/xef;->jsonObjectCache:Landroid/util/LruCache;

    return-object v0
.end method

.method private bytes2String([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "encode"    # Ljava/lang/String;

    .prologue
    .line 300
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createDownloadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lc8/xef;->env:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "http://d.daily.taobaocdn.net/L0/avengers/component/"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "https://gw.alicdn.com/tfscom/L0/avengers/component/"

    goto :goto_0
.end method

.method private getContentFromTemplateCache(Lc8/zef;Lc8/Aef;Z)V
    .locals 10
    .param p1, "request"    # Lc8/zef;
    .param p2, "result"    # Lc8/Aef;
    .param p3, "toJSONObject"    # Z

    .prologue
    .line 269
    new-instance v1, Lc8/yef;

    invoke-direct {v1}, Lc8/yef;-><init>()V

    .line 271
    .local v1, "perfInfo":Lc8/yef;
    iget-object v8, p1, Lc8/zef;->templateId:Ljava/lang/String;

    invoke-direct {p0, v8}, Lc8/xef;->createDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "url":Ljava/lang/String;
    iget-object v8, p0, Lc8/xef;->templateCache:Lc8/sef;

    iget-object v9, p1, Lc8/zef;->templateId:Ljava/lang/String;

    invoke-virtual {v8, v9, v5, v1}, Lc8/sef;->getTemplateById(Ljava/lang/String;Ljava/lang/String;Lc8/yef;)[B

    move-result-object v0

    .line 275
    .local v0, "bytes":[B
    invoke-virtual {p2, v1}, Lc8/Aef;->fillPerfInfo(Lc8/yef;)V

    .line 277
    if-eqz v0, :cond_1

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 280
    .local v6, "startTime":J
    const-string/jumbo v8, "UTF-8"

    invoke-direct {p0, v0, v8}, Lc8/xef;->bytes2String([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, "s":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 282
    if-eqz p3, :cond_2

    .line 284
    :try_start_0
    invoke-static {v4}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    iput-object v8, p2, Lc8/Aef;->jsonObject:Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 294
    .local v2, "endTime":J
    sub-long v8, v2, v6

    iput-wide v8, p2, Lc8/Aef;->jsonCostTimeMillis:J

    .line 296
    .end local v2    # "endTime":J
    .end local v4    # "s":Ljava/lang/String;
    .end local v6    # "startTime":J
    :cond_1
    return-void

    .line 289
    .restart local v4    # "s":Ljava/lang/String;
    .restart local v6    # "startTime":J
    :cond_2
    iput-object v4, p2, Lc8/Aef;->content:Ljava/lang/String;

    goto :goto_0

    .line 287
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lc8/xef;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-object v0, Lc8/xef;->instance:Lc8/xef;

    if-nez v0, :cond_1

    .line 63
    const-class v1, Lc8/xef;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Lc8/xef;->instance:Lc8/xef;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lc8/xef;

    invoke-direct {v0, p0}, Lc8/xef;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/xef;->instance:Lc8/xef;

    .line 67
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    sget-object v0, Lc8/xef;->instance:Lc8/xef;

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private presetDefaultTemplate(Lc8/zef;)V
    .locals 4
    .param p1, "request"    # Lc8/zef;

    .prologue
    .line 209
    iget-object v1, p1, Lc8/zef;->templateId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lc8/zef;->templateId:Ljava/lang/String;

    iget-object v2, p1, Lc8/zef;->defaultTemplateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v1, p0, Lc8/xef;->templateCache:Lc8/sef;

    iget-object v1, v1, Lc8/sef;->memCache:Landroid/util/LruCache;

    iget-object v2, p1, Lc8/zef;->templateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 221
    iget-object v1, p1, Lc8/zef;->defaultTemplateAssetName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lc8/xef;->readDefaultTemplate(Ljava/lang/String;Z)Lc8/Aef;

    move-result-object v0

    .line 223
    .local v0, "result":Lc8/Aef;
    if-eqz v0, :cond_0

    .line 228
    iget-object v1, v0, Lc8/Aef;->content:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lc8/xef;->templateCache:Lc8/sef;

    iget-object v1, v1, Lc8/sef;->memCache:Landroid/util/LruCache;

    iget-object v2, p1, Lc8/zef;->templateId:Ljava/lang/String;

    iget-object v3, v0, Lc8/Aef;->content:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private readDefaultTemplate(Ljava/lang/String;Z)Lc8/Aef;
    .locals 8
    .param p1, "assetsName"    # Ljava/lang/String;
    .param p2, "toJSONObject"    # Z

    .prologue
    .line 237
    new-instance v1, Lc8/Aef;

    invoke-direct {v1}, Lc8/Aef;-><init>()V

    .line 238
    .local v1, "result":Lc8/Aef;
    const/4 v6, 0x4

    iput v6, v1, Lc8/Aef;->arrivedPhase:I

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 241
    .local v4, "startTime":J
    invoke-virtual {p0, p1}, Lc8/xef;->getStringFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "content":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 244
    .local v2, "endTime":J
    sub-long v6, v2, v4

    iput-wide v6, v1, Lc8/Aef;->fileCostTimeMillis:J

    .line 246
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 247
    :cond_0
    const/4 v1, 0x0

    .line 264
    .end local v1    # "result":Lc8/Aef;
    :goto_0
    return-object v1

    .line 250
    .restart local v1    # "result":Lc8/Aef;
    :cond_1
    if-eqz p2, :cond_2

    .line 252
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 253
    invoke-static {v0}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    iput-object v6, v1, Lc8/Aef;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 256
    sub-long v6, v2, v4

    iput-wide v6, v1, Lc8/Aef;->jsonCostTimeMillis:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_2
    :goto_1
    iput-object v0, v1, Lc8/Aef;->content:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private sendTemplateRequest(Lc8/zef;ZZ)Lc8/Aef;
    .locals 10
    .param p1, "request"    # Lc8/zef;
    .param p2, "toJSONObject"    # Z
    .param p3, "useDefault"    # Z

    .prologue
    const/4 v6, 0x0

    .line 172
    if-nez p1, :cond_0

    move-object v2, v6

    .line 204
    :goto_0
    return-object v2

    .line 176
    :cond_0
    const-string/jumbo v3, "[sendTemplateRequest] template id: %s, default template Id: %s, toJSONObject: %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p1, Lc8/zef;->templateId:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p1, Lc8/zef;->defaultTemplateId:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    new-instance v2, Lc8/Aef;

    invoke-direct {v2}, Lc8/Aef;-><init>()V

    .line 182
    .local v2, "result":Lc8/Aef;
    if-eqz p2, :cond_1

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 184
    .local v4, "startTime":J
    iget-object v3, p0, Lc8/xef;->jsonObjectCache:Landroid/util/LruCache;

    iget-object v7, p1, Lc8/zef;->templateId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    iput-object v3, v2, Lc8/Aef;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 187
    .local v0, "endTime":J
    const/4 v3, 0x5

    iput v3, v2, Lc8/Aef;->arrivedPhase:I

    .line 188
    sub-long v8, v0, v4

    iput-wide v8, v2, Lc8/Aef;->memCostTimeMillis:J

    .line 190
    iget-object v3, v2, Lc8/Aef;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_1

    .line 191
    invoke-direct {p0, p1}, Lc8/xef;->startJSONObjectShiftTask(Lc8/zef;)V

    goto :goto_0

    .line 196
    .end local v0    # "endTime":J
    .end local v4    # "startTime":J
    :cond_1
    invoke-direct {p0, p1}, Lc8/xef;->presetDefaultTemplate(Lc8/zef;)V

    .line 198
    invoke-direct {p0, p1, v2, p2}, Lc8/xef;->getContentFromTemplateCache(Lc8/zef;Lc8/Aef;Z)V

    .line 199
    iget-object v3, v2, Lc8/Aef;->content:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v2, Lc8/Aef;->jsonObject:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_3

    .line 200
    :cond_2
    invoke-direct {p0, p1}, Lc8/xef;->startJSONObjectShiftTask(Lc8/zef;)V

    goto :goto_0

    .line 204
    :cond_3
    if-eqz p3, :cond_4

    iget-object v3, p1, Lc8/zef;->defaultTemplateAssetName:Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lc8/xef;->readDefaultTemplate(Ljava/lang/String;Z)Lc8/Aef;

    move-result-object v2

    goto :goto_0

    :cond_4
    move-object v2, v6

    goto :goto_0
.end method

.method private startJSONObjectShiftTask(Lc8/zef;)V
    .locals 4
    .param p1, "request"    # Lc8/zef;

    .prologue
    .line 346
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lc8/uef;

    invoke-direct {v1, p0, p1}, Lc8/uef;-><init>(Lc8/xef;Lc8/zef;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 356
    return-void
.end method


# virtual methods
.method public clearFileCache()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lc8/xef;->templateCache:Lc8/sef;

    invoke-virtual {v0}, Lc8/sef;->clearFileCache()V

    .line 168
    return-void
.end method

.method public clearMemCache()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lc8/xef;->templateCache:Lc8/sef;

    invoke-virtual {v0}, Lc8/sef;->clearMemCache()V

    .line 164
    return-void
.end method

.method public getStringFromAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 309
    const/4 v4, 0x0

    .line 310
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 312
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v6, p0, Lc8/xef;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 314
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 315
    .local v0, "buffer":[B
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x1000

    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .local v5, "out":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 319
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 320
    .end local v1    # "count":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 321
    .end local v0    # "buffer":[B
    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "out":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_2
    const-string/jumbo v6, "TemplateManager"

    const-string/jumbo v7, "read file from assets exception:"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    if-eqz v3, :cond_0

    .line 325
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 331
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 332
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 338
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 339
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-direct {p0, v6, v7}, Lc8/xef;->bytes2String([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 341
    :goto_4
    return-object v6

    .line 324
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v5    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_2
    if-eqz v3, :cond_3

    .line 325
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 331
    :cond_3
    :goto_5
    if-eqz v5, :cond_4

    .line 332
    :try_start_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    move-object v4, v5

    .line 335
    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "out":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 336
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "out":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 323
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catchall_0
    move-exception v6

    .line 324
    :goto_6
    if-eqz v3, :cond_5

    .line 325
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 331
    :cond_5
    :goto_7
    if-eqz v4, :cond_6

    .line 332
    :try_start_8
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    .line 335
    :cond_6
    :goto_8
    throw v6

    .line 341
    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v5    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v6

    goto :goto_5

    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v6

    goto :goto_2

    .line 336
    :catch_4
    move-exception v6

    goto :goto_3

    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v7

    goto :goto_7

    :catch_6
    move-exception v7

    goto :goto_8

    .line 323
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v5    # "out":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "out":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .line 320
    .end local v0    # "buffer":[B
    :catch_7
    move-exception v2

    goto :goto_1
.end method

.method public sendMultiTemplateRequests(Ljava/util/ArrayList;Z)Ljava/util/HashMap;
    .locals 12
    .param p2, "toJSONObject"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/zef;",
            ">;Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/Aef;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/android/trade/template/manager/TemplateRequest;>;"
    const/4 v11, 0x0

    .line 86
    new-instance v7, Landroid/util/TimingLogger;

    const-string/jumbo v8, "TemplateManager"

    const-string/jumbo v9, "[sendMultiTemplateRequests]"

    invoke-direct {v7, v8, v9}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .local v7, "timings":Landroid/util/TimingLogger;
    new-instance v5, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 90
    .local v5, "results":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/taobao/android/trade/template/manager/TemplateResult;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 91
    .local v0, "count":I
    new-array v6, v0, [Lc8/wef;

    .line 93
    .local v6, "tasks":[Lc8/wef;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 94
    new-instance v8, Lc8/wef;

    invoke-direct {v8, p0}, Lc8/wef;-><init>(Lc8/xef;)V

    aput-object v8, v6, v1

    .line 95
    aget-object v9, v6, v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/zef;

    invoke-static {v9, v8}, Lc8/wef;->access$002(Lc8/wef;Lc8/zef;)Lc8/zef;

    .line 96
    aget-object v8, v6, v1

    invoke-static {v8, p2}, Lc8/wef;->access$102(Lc8/wef;Z)Z

    .line 97
    aget-object v8, v6, v1

    sget-object v9, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v10, v11, [Ljava/lang/Void;

    invoke-virtual {v8, v9, v10}, Lc8/wef;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 102
    :try_start_0
    aget-object v8, v6, v1

    invoke-virtual {v8}, Lc8/wef;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/Aef;

    .line 103
    .local v4, "result":Lc8/Aef;
    if-eqz v4, :cond_1

    .line 104
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/zef;

    iget-object v8, v8, Lc8/zef;->templateId:Ljava/lang/String;

    aget-object v9, v6, v1

    invoke-virtual {v9}, Lc8/wef;->get()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    .line 100
    .end local v4    # "result":Lc8/Aef;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 111
    :cond_2
    const-string/jumbo v8, "work: fetch multiple templates"

    invoke-virtual {v7, v8}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v7}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 114
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v8

    if-ne v8, v0, :cond_3

    .line 151
    .end local v5    # "results":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/taobao/android/trade/template/manager/TemplateResult;>;"
    :goto_3
    return-object v5

    .line 117
    .restart local v5    # "results":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/taobao/android/trade/template/manager/TemplateResult;>;"
    :cond_3
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 121
    new-array v3, v0, [Landroid/os/AsyncTask;

    .line 122
    .local v3, "readDefaultTasks":[Landroid/os/AsyncTask;, "[Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/taobao/android/trade/template/manager/TemplateResult;>;"
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    .line 123
    move v2, v1

    .line 124
    .local v2, "index":I
    new-instance v8, Lc8/tef;

    invoke-direct {v8, p0, p1, v2, p2}, Lc8/tef;-><init>(Lc8/xef;Ljava/util/ArrayList;IZ)V

    aput-object v8, v3, v1

    .line 132
    aget-object v8, v3, v1

    sget-object v9, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v10, v11, [Ljava/lang/Void;

    invoke-virtual {v8, v9, v10}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 135
    .end local v2    # "index":I
    :cond_4
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_6

    .line 137
    :try_start_1
    aget-object v8, v3, v1

    invoke-virtual {v8}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/Aef;

    .line 138
    .restart local v4    # "result":Lc8/Aef;
    if-eqz v4, :cond_5

    .line 139
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/zef;

    iget-object v8, v8, Lc8/zef;->templateId:Ljava/lang/String;

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    .end local v4    # "result":Lc8/Aef;
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 141
    .restart local v4    # "result":Lc8/Aef;
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 148
    .end local v4    # "result":Lc8/Aef;
    :cond_6
    const-string/jumbo v8, "work: degrade to read default templates"

    invoke-virtual {v7, v8}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v7}, Landroid/util/TimingLogger;->dumpToLog()V

    goto :goto_3

    :catch_0
    move-exception v8

    goto :goto_6

    .end local v3    # "readDefaultTasks":[Landroid/os/AsyncTask;, "[Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/taobao/android/trade/template/manager/TemplateResult;>;"
    :catch_1
    move-exception v8

    goto :goto_2

    :catch_2
    move-exception v8

    goto :goto_2
.end method

.method public sendTemplateRequest(Lc8/zef;Z)Lc8/Aef;
    .locals 4
    .param p1, "request"    # Lc8/zef;
    .param p2, "toJSONObject"    # Z

    .prologue
    .line 74
    new-instance v1, Landroid/util/TimingLogger;

    const-string/jumbo v2, "TemplateManager"

    const-string/jumbo v3, "[sendTemplateRequest]"

    invoke-direct {v1, v2, v3}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .local v1, "timings":Landroid/util/TimingLogger;
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v2}, Lc8/xef;->sendTemplateRequest(Lc8/zef;ZZ)Lc8/Aef;

    move-result-object v0

    .line 78
    .local v0, "result":Lc8/Aef;
    const-string/jumbo v2, "fetch single template"

    invoke-virtual {v1, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 81
    return-object v0
.end method

.method public setEnv(I)V
    .locals 0
    .param p1, "env"    # I

    .prologue
    .line 159
    iput p1, p0, Lc8/xef;->env:I

    .line 160
    return-void
.end method

.method public setHttpLoader(Lc8/ref;)V
    .locals 1
    .param p1, "httpLoader"    # Lc8/ref;

    .prologue
    .line 155
    iget-object v0, p0, Lc8/xef;->templateCache:Lc8/sef;

    iput-object p1, v0, Lc8/sef;->httpLoader:Lc8/ref;

    .line 156
    return-void
.end method
