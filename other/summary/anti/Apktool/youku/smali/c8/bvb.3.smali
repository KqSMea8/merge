.class public final Lc8/bvb;
.super Ljava/lang/Object;
.source "PrefetchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/aliweex/adapter/module/prefetch/PrefetchManager$LruLinkedHashMap;,
        Lc8/Zub;,
        Lc8/Vub;,
        Lc8/avb;,
        Lc8/Uub;,
        Lc8/Wub;,
        Lc8/Tub;
    }
.end annotation


# static fields
.field static final DEFAULT_DELAY_MILLIS:J = 0x5dcL

.field static final DEFAULT_MAX_AGE_IN_MILLIS:J = 0x493e0L

.field static final DEFAULT_MAX_CACHE_NUM:I = 0x5

.field private static final MAX_CACHED_URL_NUM:I = 0x80

.field private static final MSG_ALREADY_REQUESTED:Ljava/lang/String; = "already_requested"

.field private static final MSG_BEEN_CACHED:Ljava/lang/String; = "been_cached"

.field private static final MSG_ERROR_CONNECTION:Ljava/lang/String; = "error_connection_type"

.field private static final MSG_EXCEED:Ljava/lang/String; = "exceed"

.field private static final MSG_INTERNAL_ERROR:Ljava/lang/String; = "internal_error"

.field private static final MSG_NETWORK_FAILED:Ljava/lang/String; = "network_failed"

.field private static final MSG_SWITCH_OFF:Ljava/lang/String; = "switch_off"

.field private static final TAG:Ljava/lang/String; = "WXPrefetchModule"

.field private static volatile mCachedEntries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lc8/Wub;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sPrefetchCounter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static volatile shouldReport:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private mConnection:Lc8/Iub;

.field private final mDelay:J

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mExternalCacheChecker:Lc8/Uub;

.field private mHandler:Landroid/os/Handler;

.field private mHttpAdapter:Lc8/DVf;

.field private mInstanceId:Ljava/lang/String;

.field private final mMaxCacheNum:I

.field private mProcessor:Lc8/avb;

.field private mRemoteConfig:Lc8/Mub;

.field private mWrappedListener:Lc8/Zub;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/alibaba/aliweex/adapter/module/prefetch/PrefetchManager$LruLinkedHashMap;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/alibaba/aliweex/adapter/module/prefetch/PrefetchManager$LruLinkedHashMap;-><init>(I)V

    .line 52
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lc8/bvb;->mCachedEntries:Ljava/util/Set;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/bvb;->sPrefetchCounter:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lc8/bvb;->shouldReport:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Lc8/Iub;Lc8/Uub;Lc8/DVf;Lc8/Mub;Lc8/avb;)V
    .locals 10
    .param p1, "connection"    # Lc8/Iub;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "cacheChecker"    # Lc8/Uub;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "httpAdapter"    # Lc8/DVf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "remoteConfig"    # Lc8/Mub;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "processor"    # Lc8/avb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, Lc8/bvb;->mHandler:Landroid/os/Handler;

    .line 68
    const/4 v6, 0x0

    iput-object v6, p0, Lc8/bvb;->mWrappedListener:Lc8/Zub;

    .line 88
    iput-object p1, p0, Lc8/bvb;->mConnection:Lc8/Iub;

    .line 89
    iput-object p2, p0, Lc8/bvb;->mExternalCacheChecker:Lc8/Uub;

    .line 90
    iput-object p3, p0, Lc8/bvb;->mHttpAdapter:Lc8/DVf;

    .line 91
    iput-object p4, p0, Lc8/bvb;->mRemoteConfig:Lc8/Mub;

    .line 92
    iput-object p5, p0, Lc8/bvb;->mProcessor:Lc8/avb;

    .line 94
    const-wide/16 v4, 0x5dc

    .line 95
    .local v4, "delay":J
    if-eqz p4, :cond_0

    .line 96
    invoke-interface {p4}, Lc8/Mub;->getDelay()J

    move-result-wide v2

    .line 97
    .local v2, "d":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 98
    move-wide v4, v2

    .line 101
    .end local v2    # "d":J
    :cond_0
    iput-wide v4, p0, Lc8/bvb;->mDelay:J

    .line 102
    const-string/jumbo v6, "WXPrefetchModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "delay millis:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lc8/bvb;->mDelay:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v1, 0x5

    .line 105
    .local v1, "maxCacheNum":I
    if-eqz p4, :cond_1

    .line 106
    invoke-interface {p4}, Lc8/Mub;->getMaxCacheNum()I

    move-result v0

    .line 107
    .local v0, "c":I
    if-lez v0, :cond_1

    .line 108
    move v1, v0

    .line 111
    .end local v0    # "c":I
    :cond_1
    iput v1, p0, Lc8/bvb;->mMaxCacheNum:I

    .line 112
    new-instance v6, Lc8/Zub;

    iget-object v7, p0, Lc8/bvb;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, v7}, Lc8/Zub;-><init>(Landroid/os/Handler;)V

    iput-object v6, p0, Lc8/bvb;->mWrappedListener:Lc8/Zub;

    .line 113
    const-string/jumbo v6, "WXPrefetchModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "max cache num:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lc8/bvb;->mMaxCacheNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method synthetic constructor <init>(Lc8/Iub;Lc8/Uub;Lc8/DVf;Lc8/Mub;Lc8/avb;Lc8/Rub;)V
    .locals 0
    .param p1, "x0"    # Lc8/Iub;
    .param p2, "x1"    # Lc8/Uub;
    .param p3, "x2"    # Lc8/DVf;
    .param p4, "x3"    # Lc8/Mub;
    .param p5, "x4"    # Lc8/avb;
    .param p6, "x5"    # Lc8/Rub;

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lc8/bvb;-><init>(Lc8/Iub;Lc8/Uub;Lc8/DVf;Lc8/Mub;Lc8/avb;)V

    return-void
.end method

.method static synthetic access$000(Lc8/bvb;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lc8/bvb;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/bvb;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$100(Lc8/bvb;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/bvb;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lc8/bvb;->doPrefetch(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/Set;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lc8/bvb;->mCachedEntries:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lc8/bvb;)Lc8/Zub;
    .locals 1
    .param p0, "x0"    # Lc8/bvb;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/bvb;->mWrappedListener:Lc8/Zub;

    return-object v0
.end method

.method static synthetic access$400(Ljava/util/Map;)J
    .locals 2
    .param p0, "x0"    # Ljava/util/Map;

    .prologue
    .line 39
    invoke-static {p0}, Lc8/bvb;->resolveMaxAgeFromHeaders(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0
.end method

.method static create(Lc8/DVf;)Lc8/Tub;
    .locals 1
    .param p0, "httpAdapter"    # Lc8/DVf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 117
    new-instance v0, Lc8/Tub;

    invoke-direct {v0, p0}, Lc8/Tub;-><init>(Lc8/DVf;)V

    return-object v0
.end method

.method private doPrefetch(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 18
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "instanceId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, "ignoreParams":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 204
    .local v2, "begin":J
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/bvb;->mInstanceId:Ljava/lang/String;

    .line 205
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "{\"pageName\":\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\"}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 207
    .local v7, "extendArgs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/bvb;->mRemoteConfig:Lc8/Mub;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/bvb;->mRemoteConfig:Lc8/Mub;

    invoke-interface {v14}, Lc8/Mub;->isSwitchOn()Z

    move-result v14

    if-nez v14, :cond_1

    .line 208
    const-string/jumbo v14, "WXPrefetchModule"

    const-string/jumbo v15, "switch is off."

    invoke-static {v14, v15}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/bvb;->mWrappedListener:Lc8/Zub;

    const-string/jumbo v15, "switch_off"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Lc8/Zub;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string/jumbo v14, "Aliweex_JSPrefetch"

    const-string/jumbo v15, "task_success"

    const-string/jumbo v16, "-1"

    const-string/jumbo v17, "switch_off"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v15, v7, v0, v1}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/bvb;->mProcessor:Lc8/avb;

    if-eqz v14, :cond_2

    .line 218
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/bvb;->mProcessor:Lc8/avb;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Lc8/avb;->processUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 219
    const-string/jumbo v14, "WXPrefetchModule"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "process url success:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_2
    :goto_1
    sget-object v14, Lc8/bvb;->sPrefetchCounter:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_3

    .line 228
    const/4 v8, 0x1

    .line 229
    .local v8, "num":I
    sget-object v14, Lc8/bvb;->sPrefetchCounter:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-interface {v14, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lc8/bvb;->mMaxCacheNum:I

    if-le v8, v14, :cond_4

    .line 236
    const-string/jumbo v14, "WXPrefetchModule"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "exceed cache num : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", maxCacheNum : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lc8/bvb;->mMaxCacheNum:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/bvb;->mWrappedListener:Lc8/Zub;

    const-string/jumbo v15, "exceed"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Lc8/Zub;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string/jumbo v14, "Aliweex_JSPrefetch"

    const-string/jumbo v15, "task_success"

    const-string/jumbo v16, "-2"

    const-string/jumbo v17, "exceed"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v15, v7, v0, v1}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    .end local v8    # "num":I
    :catch_0
    move-exception v5

    .line 221
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "WXPrefetchModule"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 231
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v14, Lc8/bvb;->sPrefetchCounter:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v8, v14, 0x1

    .line 232
    .restart local v8    # "num":I
    sget-object v14, Lc8/bvb;->sPrefetchCounter:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-interface {v14, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 242
    :cond_4
    const-string/jumbo v14, "WXPrefetchModule"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "current size : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/bvb;->mConnection:Lc8/Iub;

    if-eqz v14, :cond_5

    const-string/jumbo v14, "wifi"

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/bvb;->mConnection:Lc8/Iub;

    invoke-interface {v15}, Lc8/Iub;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 247
    const-string/jumbo v14, "WXPrefetchModule"

    const-string/jumbo v15, "wrong connection type"

    invoke-static {v14, v15}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/bvb;->mWrappedListener:Lc8/Zub;

    const-string/jumbo v15, "error_connection_type"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Lc8/Zub;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string/jumbo v14, "Aliweex_JSPrefetch"

    const-string/jumbo v15, "task_success"

    const-string/jumbo v16, "-3"

    const-string/jumbo v17, "error_connection_type"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v15, v7, v0, v1}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/bvb;->mExternalCacheChecker:Lc8/Uub;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/bvb;->mExternalCacheChecker:Lc8/Uub;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Lc8/Uub;->isCachedAlready(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 256
    const-string/jumbo v14, "WXPrefetchModule"

    const-string/jumbo v15, "page cached already(0)"

    invoke-static {v14, v15}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/bvb;->mWrappedListener:Lc8/Zub;

    const-string/jumbo v15, "been_cached"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Lc8/Zub;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    :cond_6
    if-eqz p2, :cond_7

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/bvb;->mRemoteConfig:Lc8/Mub;

    if-eqz v14, :cond_7

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/bvb;->mRemoteConfig:Lc8/Mub;

    invoke-interface {v14}, Lc8/Mub;->getIgnoreParamsBlackList()Ljava/util/List;

    move-result-object v4

    .line 266
    .local v4, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_7

    .line 267
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 268
    .local v9, "param":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 275
    .end local v4    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "param":Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    .line 277
    .local v10, "parsedUrl":Ljava/lang/String;
    :try_start_1
    invoke-static/range {p1 .. p2}, Lc8/bvb;->removeSpecificQueryParamsInBaseUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 282
    :goto_4
    new-instance v6, Lc8/Wub;

    invoke-direct {v6}, Lc8/Wub;-><init>()V

    .line 283
    .local v6, "entry":Lc8/Wub;
    if-nez v10, :cond_8

    move-object/from16 v10, p1

    .end local v10    # "parsedUrl":Ljava/lang/String;
    :cond_8
    iput-object v10, v6, Lc8/Wub;->url:Ljava/lang/String;

    .line 284
    move-object/from16 v0, p2

    iput-object v0, v6, Lc8/Wub;->ignoreParams:Ljava/util/List;

    .line 288
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lc8/bvb;->isUrlRequestedBefore(Lc8/Wub;)Lc8/Wub;

    move-result-object v12

    .local v12, "tempEntry":Lc8/Wub;
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Lc8/Wub;->isFresh()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 289
    const-string/jumbo v14, "WXPrefetchModule"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "page cached already(1). max_age : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-wide v0, v12, Lc8/Wub;->maxAge:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", fresh : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Lc8/Wub;->isFresh()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/bvb;->mWrappedListener:Lc8/Zub;

    const-string/jumbo v15, "already_requested"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Lc8/Zub;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 294
    :cond_9
    if-eqz v12, :cond_a

    .line 297
    sget-object v14, Lc8/bvb;->mCachedEntries:Ljava/util/Set;

    invoke-interface {v14, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 300
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/bvb;->mHttpAdapter:Lc8/DVf;

    if-nez v14, :cond_b

    .line 301
    const-string/jumbo v14, "WXPrefetchModule"

    const-string/jumbo v15, "http adapter is null"

    invoke-static {v14, v15}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/bvb;->mWrappedListener:Lc8/Zub;

    const-string/jumbo v15, "internal_error"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Lc8/Zub;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string/jumbo v14, "Aliweex_JSPrefetch"

    const-string/jumbo v15, "task_success"

    const-string/jumbo v16, "-5"

    const-string/jumbo v17, "internal_error"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v15, v7, v0, v1}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 307
    :cond_b
    new-instance v11, Lc8/QXf;

    invoke-direct {v11}, Lc8/QXf;-><init>()V

    .line 308
    .local v11, "request":Lc8/QXf;
    new-instance v14, Ljava/util/HashMap;

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Ljava/util/HashMap;-><init>(I)V

    iput-object v14, v11, Lc8/QXf;->paramMap:Ljava/util/Map;

    .line 309
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v14

    invoke-static {}, Lc8/UUf;->getConfig()Ljava/util/Map;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/cag;->assembleUserAgent(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    .line 310
    .local v13, "ua":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 311
    iget-object v14, v11, Lc8/QXf;->paramMap:Ljava/util/Map;

    const-string/jumbo v15, "user-agent"

    invoke-interface {v14, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_c
    const-string/jumbo v14, "GET"

    iput-object v14, v11, Lc8/QXf;->method:Ljava/lang/String;

    .line 316
    iget-object v14, v6, Lc8/Wub;->url:Ljava/lang/String;

    iput-object v14, v11, Lc8/QXf;->url:Ljava/lang/String;

    .line 317
    sget-object v14, Lc8/bvb;->shouldReport:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 318
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/bvb;->mHttpAdapter:Lc8/DVf;

    new-instance v15, Lc8/Sub;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v11, v6, v7}, Lc8/Sub;-><init>(Lc8/bvb;Lc8/QXf;Lc8/Wub;Ljava/lang/String;)V

    invoke-interface {v14, v11, v15}, Lc8/DVf;->sendRequest(Lc8/QXf;Lc8/CVf;)V

    .line 356
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 357
    const-string/jumbo v14, "WXPrefetchModule"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "[doPrefetch] elapse time :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v2

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v6    # "entry":Lc8/Wub;
    .end local v11    # "request":Lc8/QXf;
    .end local v12    # "tempEntry":Lc8/Wub;
    .end local v13    # "ua":Ljava/lang/String;
    .restart local v10    # "parsedUrl":Ljava/lang/String;
    :catch_1
    move-exception v14

    goto/16 :goto_4
.end method

.method static findAlikeEntryInCache(Ljava/lang/String;Ljava/util/Set;)Lc8/Wub;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lc8/Wub;",
            ">;)",
            "Lc8/Wub;"
        }
    .end annotation

    .prologue
    .local p1, "entries":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/aliweex/adapter/module/prefetch/PrefetchManager$PrefetchEntry;>;"
    const/4 v5, 0x0

    .line 429
    const-string/jumbo v6, ""

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v2, v5

    .line 448
    :goto_0
    return-object v2

    .line 433
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 434
    .local v0, "cache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/aliweex/adapter/module/prefetch/PrefetchManager$PrefetchEntry;>;"
    invoke-virtual {v0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 436
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/aliweex/adapter/module/prefetch/PrefetchManager$PrefetchEntry;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 437
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Wub;

    .line 438
    .local v2, "entry":Lc8/Wub;
    iget-object v6, v2, Lc8/Wub;->ignoreParams:Ljava/util/List;

    invoke-static {p0, v6}, Lc8/bvb;->removeSpecificQueryParamsInBaseUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, "tempUrl":Ljava/lang/String;
    iget-object v6, v2, Lc8/Wub;->url:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v2, Lc8/Wub;->url:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 444
    .end local v0    # "cache":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/aliweex/adapter/module/prefetch/PrefetchManager$PrefetchEntry;>;"
    .end local v2    # "entry":Lc8/Wub;
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/aliweex/adapter/module/prefetch/PrefetchManager$PrefetchEntry;>;"
    .end local v4    # "tempUrl":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 445
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "WXPrefetchModule"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v2, v5

    .line 448
    goto :goto_0
.end method

.method private static getHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 413
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 423
    :cond_1
    return-object v1

    .line 415
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 418
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 419
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 420
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method static getPrefetchEntries()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lc8/Wub;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    sget-object v0, Lc8/bvb;->mCachedEntries:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/bvb;->mCachedEntries:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method private isUrlRequestedBefore(Lc8/Wub;)Lc8/Wub;
    .locals 3
    .param p1, "entry"    # Lc8/Wub;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 362
    sget-object v1, Lc8/bvb;->mCachedEntries:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 363
    sget-object v1, Lc8/bvb;->mCachedEntries:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Wub;

    .line 364
    .local v0, "e":Lc8/Wub;
    invoke-virtual {v0, p1}, Lc8/Wub;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    .end local v0    # "e":Lc8/Wub;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseMaxAgeFromSingleValue(Ljava/lang/String;)J
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v4, -0x1

    .line 394
    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 396
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "token":Ljava/lang/String;
    const-string/jumbo v3, "no-cache"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "no-store"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 406
    .end local v1    # "token":Ljava/lang/String;
    :cond_0
    :goto_1
    return-wide v4

    .line 399
    .restart local v1    # "token":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "max-age="

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 401
    const/16 v3, 0x8

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    goto :goto_1

    :catch_0
    move-exception v3

    .line 395
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static removeSpecificQueryParamsInBaseUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 11
    .param p0, "baseUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "ignoreParams":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 163
    :cond_0
    return-object p0

    .line 134
    :cond_1
    const/16 v8, 0x3f

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 135
    .local v2, "index":I
    const/16 v8, 0x23

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 136
    .local v1, "fragmentIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 137
    .local v4, "len":I
    if-ltz v2, :cond_0

    add-int/lit8 v8, v4, -0x1

    if-eq v2, v8, :cond_0

    .line 140
    const/4 v8, -0x1

    if-ne v1, v8, :cond_4

    move v3, v4

    .line 141
    .local v3, "lastIndex":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 142
    .local v7, "param":Ljava/lang/String;
    const-string/jumbo v9, ""

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 145
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 146
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p0, v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 147
    .local v5, "pIndex":I
    if-ltz v5, :cond_2

    .line 150
    const/16 v9, 0x26

    invoke-virtual {p0, v9, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 151
    .local v0, "end":I
    if-gez v0, :cond_5

    .line 152
    move v0, v3

    .line 156
    :goto_2
    if-ne v0, v3, :cond_3

    .line 157
    add-int/lit8 v5, v5, -0x1

    .line 159
    :cond_3
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, "pair":Ljava/lang/String;
    const-string/jumbo v9, ""

    invoke-virtual {p0, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 161
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v3, v9

    .line 162
    goto :goto_1

    .end local v0    # "end":I
    .end local v3    # "lastIndex":I
    .end local v5    # "pIndex":I
    .end local v6    # "pair":Ljava/lang/String;
    .end local v7    # "param":Ljava/lang/String;
    :cond_4
    move v3, v1

    .line 140
    goto :goto_0

    .line 154
    .restart local v0    # "end":I
    .restart local v3    # "lastIndex":I
    .restart local v5    # "pIndex":I
    .restart local v7    # "param":Ljava/lang/String;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static resolveMaxAgeFromHeaders(Ljava/util/Map;)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)J"
        }
    .end annotation

    .prologue
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-wide/32 v4, 0x493e0

    .line 373
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-wide v4

    .line 377
    :cond_1
    const-string/jumbo v6, "Cache-Control"

    invoke-static {p0, v6}, Lc8/bvb;->getHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 378
    .local v0, "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 382
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 383
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Lc8/bvb;->parseMaxAgeFromSingleValue(Ljava/lang/String;)J

    move-result-wide v2

    .line 384
    .local v2, "maxAge":J
    const-wide/16 v8, -0x1

    cmp-long v7, v2, v8

    if-eqz v7, :cond_2

    .line 385
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    goto :goto_0
.end method


# virtual methods
.method destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 462
    iget-object v0, p0, Lc8/bvb;->mConnection:Lc8/Iub;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lc8/bvb;->mConnection:Lc8/Iub;

    invoke-interface {v0}, Lc8/Iub;->destroy()V

    .line 465
    :cond_0
    iput-object v2, p0, Lc8/bvb;->mExternalCacheChecker:Lc8/Uub;

    .line 466
    iput-object v2, p0, Lc8/bvb;->mRemoteConfig:Lc8/Mub;

    .line 467
    iput-object v2, p0, Lc8/bvb;->mProcessor:Lc8/avb;

    .line 468
    iput-object v2, p0, Lc8/bvb;->mHttpAdapter:Lc8/DVf;

    .line 469
    iput-object v2, p0, Lc8/bvb;->mExecutor:Ljava/util/concurrent/Executor;

    .line 470
    iget-object v0, p0, Lc8/bvb;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lc8/bvb;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 473
    :cond_1
    sget-object v0, Lc8/bvb;->sPrefetchCounter:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/bvb;->mInstanceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 474
    sget-object v0, Lc8/bvb;->sPrefetchCounter:Ljava/util/Map;

    iget-object v1, p0, Lc8/bvb;->mInstanceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_2
    iget-object v0, p0, Lc8/bvb;->mWrappedListener:Lc8/Zub;

    if-eqz v0, :cond_3

    .line 477
    iget-object v0, p0, Lc8/bvb;->mWrappedListener:Lc8/Zub;

    invoke-virtual {v0, v2}, Lc8/Zub;->setListener(Lc8/Vub;)V

    .line 479
    :cond_3
    return-void
.end method

.method doPrefetchWithDelay(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "instanceId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "calledWhenIdle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p2, "ignoreParams":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lc8/bvb;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 169
    iget-object v6, p0, Lc8/bvb;->mHandler:Landroid/os/Handler;

    new-instance v0, Lc8/Rub;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lc8/Rub;-><init>(Lc8/bvb;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iget-wide v2, p0, Lc8/bvb;->mDelay:J

    invoke-virtual {v6, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 200
    :cond_0
    return-void
.end method

.method setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 458
    iput-object p1, p0, Lc8/bvb;->mExecutor:Ljava/util/concurrent/Executor;

    .line 459
    return-void
.end method

.method setListener(Lc8/Vub;)V
    .locals 1
    .param p1, "listener"    # Lc8/Vub;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 452
    if-eqz p1, :cond_0

    .line 453
    iget-object v0, p0, Lc8/bvb;->mWrappedListener:Lc8/Zub;

    invoke-virtual {v0, p1}, Lc8/Zub;->setListener(Lc8/Vub;)V

    .line 455
    :cond_0
    return-void
.end method
