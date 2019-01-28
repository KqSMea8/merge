.class public Lc8/YGo;
.super Ljava/lang/Object;
.source "VipConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;
    }
.end annotation


# static fields
.field public static final ACTION_GET_GLOBAL_CONFIG:Ljava/lang/String; = "ACTION_GET_GLOBAL_CONFIG"

.field private static final CONFIG_TIME_FROM:Ljava/lang/String; = "from"

.field private static final CONFIG_TIME_TO:Ljava/lang/String; = "to"

.field private static final MAX_INTERVAL_TIME:I = 0x1b7740

.field private static final MAX_REQUEST_DELAY:I = 0x1388

.field private static final MAX_REQUEST_INTERVAL_TIME:I = 0x1388

.field private static final MESSAGE_REQUEST_CONFIG:I = 0x64

.field private static final MIN_REQUEST_DELAY:I = 0x1

.field public static final RESULT_GET_CONFIG_FAILED:I = 0x2

.field public static final RESULT_GET_CONFIG_SUCCESS:I = 0x1

.field public static final RESULT_KEY:Ljava/lang/String; = "RESULT_KEY"

.field private static final SWITCH_KEY:Ljava/lang/String; = "switch_key"

.field private static final SWITCH_VALUE:Ljava/lang/String; = "switch_value"

.field private static final TAG:Ljava/lang/String; = "VipConfigManager"

.field private static mInstance:Lc8/YGo;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mArrayMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mRequestID:Lc8/BGo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/YGo;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/YGo;->mHandler:Landroid/os/Handler;

    .line 104
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/YGo;->mArrayMap:Ljava/util/Map;

    .line 105
    return-void
.end method

.method static synthetic access$002(Lc8/YGo;Lc8/BGo;)Lc8/BGo;
    .locals 0
    .param p0, "x0"    # Lc8/YGo;
    .param p1, "x1"    # Lc8/BGo;

    .prologue
    .line 37
    iput-object p1, p0, Lc8/YGo;->mRequestID:Lc8/BGo;

    return-object p1
.end method

.method static synthetic access$100(Lc8/YGo;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lc8/YGo;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lc8/YGo;->saveArrayListToMap(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$200(Lc8/YGo;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lc8/YGo;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lc8/YGo;->saveConfig(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$300(Lc8/YGo;)V
    .locals 0
    .param p0, "x0"    # Lc8/YGo;

    .prologue
    .line 37
    invoke-direct {p0}, Lc8/YGo;->resetRequestConfigTime()V

    return-void
.end method

.method public static buildBroadcastIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 683
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 684
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 685
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 689
    const-string/jumbo v1, "RESULT_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    :cond_1
    if-eqz p2, :cond_2

    .line 693
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 696
    :cond_2
    return-object v0
.end method

.method public static getInstance()Lc8/YGo;
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lc8/YGo;->mInstance:Lc8/YGo;

    if-nez v0, :cond_1

    .line 89
    sget-object v1, Lc8/YGo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    sget-object v0, Lc8/YGo;->mInstance:Lc8/YGo;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lc8/YGo;

    invoke-direct {v0}, Lc8/YGo;-><init>()V

    sput-object v0, Lc8/YGo;->mInstance:Lc8/YGo;

    .line 93
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_1
    sget-object v0, Lc8/YGo;->mInstance:Lc8/YGo;

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getRequestConfigTime()J
    .locals 2

    .prologue
    .line 532
    invoke-static {}, Lc8/lSo;->getInstance()Lc8/lSo;

    move-result-object v0

    invoke-virtual {v0}, Lc8/lSo;->getRequestConfigTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private realMtopRequest()V
    .locals 4

    .prologue
    .line 108
    new-instance v0, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;

    invoke-direct {v0}, Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;-><init>()V

    .line 109
    .local v0, "model":Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;
    invoke-static {}, Lc8/AGo;->getInstance()Lc8/AGo;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    new-instance v3, Lc8/XGo;

    invoke-direct {v3, p0}, Lc8/XGo;-><init>(Lc8/YGo;)V

    invoke-virtual {v1, v0, v2, v3}, Lc8/AGo;->request(Lcom/youku/vip/lib/http/model/VipInternalBaseRequestModel;Ljava/lang/Class;Lc8/mGo;)Lc8/BGo;

    move-result-object v1

    iput-object v1, p0, Lc8/YGo;->mRequestID:Lc8/BGo;

    .line 163
    return-void
.end method

.method private resetRequestConfigTime()V
    .locals 1

    .prologue
    .line 536
    invoke-static {}, Lc8/lSo;->getInstance()Lc8/lSo;

    move-result-object v0

    invoke-virtual {v0}, Lc8/lSo;->removeRequestConfigTime()V

    .line 537
    return-void
.end method

.method private saveArrayListToMap(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 16
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 433
    sget-object v13, Lc8/YGo;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 435
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/YGo;->mArrayMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 436
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 437
    .local v10, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 438
    .local v9, "key":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 440
    .local v8, "jsonStr":Ljava/lang/String;
    :try_start_1
    invoke-static {v8}, Lc8/AIb;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    .line 442
    .local v7, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v11

    .line 443
    .local v11, "size":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    .local v4, "innerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v11, :cond_3

    .line 446
    :try_start_2
    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 448
    .local v6, "job":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v14, "switch_key"

    invoke-virtual {v6, v14}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "innerKey":Ljava/lang/String;
    const-string/jumbo v14, "switch_value"

    invoke-virtual {v6, v14}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 450
    .local v5, "innerValue":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 451
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 444
    .end local v3    # "innerKey":Ljava/lang/String;
    .end local v5    # "innerValue":Ljava/lang/String;
    .end local v6    # "job":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 453
    :catch_0
    move-exception v1

    .line 455
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 456
    const-string/jumbo v14, "VipConfigManager"

    const-string/jumbo v15, "\u5185\u90e8\u6570\u7ec4\u7684\u503c\u4e0d\u662fjsonObj"

    invoke-static {v14, v15}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 465
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v4    # "innerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v11    # "size":I
    :catch_1
    move-exception v14

    :try_start_4
    const-string/jumbo v14, "VipConfigManager"

    const-string/jumbo v15, "\u5bf9\u5e94\u7684value\u4e0d\u662f\u6570\u7ec4\u7c7b\u578b"

    invoke-static {v14, v15}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 468
    .end local v8    # "jsonStr":Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_2
    move-exception v1

    .line 469
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 470
    const-string/jumbo v12, "VipConfigManager"

    const-string/jumbo v14, "\u89e3\u6790key array \u7c7b\u578b\u51fa\u9519"

    invoke-static {v12, v14}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    .line 459
    .restart local v2    # "i":I
    .restart local v4    # "innerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v8    # "jsonStr":Ljava/lang/String;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "size":I
    :cond_3
    if-eqz v4, :cond_0

    :try_start_6
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v14

    if-lez v14, :cond_0

    .line 460
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/YGo;->mArrayMap:Ljava/util/Map;

    invoke-interface {v14, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 472
    .end local v2    # "i":I
    .end local v4    # "innerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v8    # "jsonStr":Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "size":I
    :catchall_0
    move-exception v12

    :try_start_7
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v12
.end method

.method private saveConfig(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 523
    invoke-static {}, Lc8/lSo;->getInstance()Lc8/lSo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/lSo;->saveConfigData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 524
    invoke-static {}, Lc8/lSo;->getInstance()Lc8/lSo;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lc8/lSo;->saveConfigTime(J)V

    .line 525
    return-void
.end method

.method private saveRequestConfigTime()V
    .locals 4

    .prologue
    .line 528
    invoke-static {}, Lc8/lSo;->getInstance()Lc8/lSo;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lc8/lSo;->saveRequestConfigTime(J)V

    .line 529
    return-void
.end method

.method private stopMtopRequest()V
    .locals 3

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Lc8/YGo;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lc8/YGo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lc8/YGo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    :cond_0
    iget-object v1, p0, Lc8/YGo;->mRequestID:Lc8/BGo;

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lc8/YGo;->mRequestID:Lc8/BGo;

    invoke-virtual {v1}, Lc8/BGo;->cancle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_1
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clearSaveConfigTime()V
    .locals 4

    .prologue
    .line 509
    invoke-static {}, Lc8/lSo;->getInstance()Lc8/lSo;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lc8/lSo;->saveConfigTime(J)V

    .line 510
    return-void
.end method

.method public getArrayMapValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "key2"    # Ljava/lang/String;

    .prologue
    .line 481
    sget-object v3, Lc8/YGo;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 483
    :try_start_0
    iget-object v2, p0, Lc8/YGo;->mArrayMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 484
    .local v1, "innerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 485
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v3

    .line 491
    .end local v1    # "innerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v2

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 490
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    monitor-exit v3

    .line 491
    const/4 v2, 0x0

    goto :goto_0

    .line 490
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getBooleanConfig(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 600
    :try_start_0
    invoke-virtual {p0}, Lc8/YGo;->getConfig()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 604
    :goto_0
    return v1

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 604
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConfig()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .prologue
    .line 540
    invoke-static {}, Lc8/lSo;->getInstance()Lc8/lSo;

    move-result-object v0

    invoke-virtual {v0}, Lc8/lSo;->getConfigData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getConfigSaveTime()J
    .locals 2

    .prologue
    .line 505
    invoke-static {}, Lc8/lSo;->getInstance()Lc8/lSo;

    move-result-object v0

    invoke-virtual {v0}, Lc8/lSo;->getConfigTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDoubleConfig(Ljava/lang/String;)D
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 619
    :try_start_0
    invoke-virtual {p0}, Lc8/YGo;->getConfig()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONObject;->getDoubleValue(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 623
    :goto_0
    return-wide v2

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 623
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getFloatConfig(Ljava/lang/String;)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 609
    :try_start_0
    invoke-virtual {p0}, Lc8/YGo;->getConfig()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONObject;->getFloatValue(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 613
    :goto_0
    return v1

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 613
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIntConfig(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 573
    :try_start_0
    invoke-virtual {p0}, Lc8/YGo;->getConfig()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 577
    :goto_0
    return v1

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 577
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLongConfig(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 582
    :try_start_0
    invoke-virtual {p0}, Lc8/YGo;->getConfig()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 586
    :goto_0
    return-wide v2

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 586
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getObjectConfig(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 568
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lc8/YGo;->getStringConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getShortConfig(Ljava/lang/String;)S
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 591
    :try_start_0
    invoke-virtual {p0}, Lc8/YGo;->getConfig()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONObject;->getShortValue(Ljava/lang/String;)S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 595
    :goto_0
    return v1

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 595
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStringConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 544
    const/4 v0, 0x0

    .line 546
    .local v0, "config":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lc8/YGo;->getConfig()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    const-string/jumbo v4, "VipConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u83b7\u53d6String Config = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/cIo;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 564
    .end local v0    # "config":Ljava/lang/String;
    .local v1, "config":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 553
    .end local v1    # "config":Ljava/lang/String;
    .restart local v0    # "config":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v0}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 554
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {p0, v3}, Lc8/YGo;->isTimeValid(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 555
    .end local v0    # "config":Ljava/lang/String;
    .restart local v1    # "config":Ljava/lang/String;
    goto :goto_0

    .line 557
    .end local v1    # "config":Ljava/lang/String;
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v0    # "config":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 558
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v0

    .line 559
    .end local v0    # "config":Ljava/lang/String;
    .restart local v1    # "config":Ljava/lang/String;
    goto :goto_0

    .line 561
    .end local v1    # "config":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "config":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 562
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v1, v0

    .line 564
    .end local v0    # "config":Ljava/lang/String;
    .restart local v1    # "config":Ljava/lang/String;
    goto :goto_0
.end method

.method public isContains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 497
    :try_start_0
    invoke-virtual {p0}, Lc8/YGo;->getConfig()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 501
    :goto_0
    return v1

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 501
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNeedRequestData()Z
    .locals 6

    .prologue
    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lc8/YGo;->getConfigSaveTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1b7740

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 514
    .local v0, "isNeedRequest":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isNeedRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    if-nez v0, :cond_0

    .line 516
    invoke-direct {p0}, Lc8/YGo;->resetRequestConfigTime()V

    .line 519
    :cond_0
    return v0

    .line 513
    .end local v0    # "isNeedRequest":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimeValid(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 17
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 629
    if-nez p1, :cond_0

    .line 630
    const/4 v14, 0x1

    .line 678
    :goto_0
    return v14

    .line 633
    :cond_0
    const/4 v5, 0x0

    .line 634
    .local v5, "from":Ljava/lang/String;
    const/4 v11, 0x0

    .line 636
    .local v11, "to":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v14, "from"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 637
    const-string/jumbo v14, "from"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 640
    :cond_1
    const-string/jumbo v14, "to"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 641
    const-string/jumbo v14, "to"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 644
    :cond_2
    const-string/jumbo v14, "VipConfigManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "\u914d\u7f6e\u6709\u6548\u65f6\u95f4from: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/cIo;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const-string/jumbo v14, "VipConfigManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "\u914d\u7f6e\u6709\u6548\u65f6\u95f4to: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/cIo;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v14, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v10, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 648
    .local v10, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    if-nez v5, :cond_5

    const-wide/16 v6, -0x1

    .line 649
    .local v6, "fromTime":J
    :goto_1
    if-nez v11, :cond_6

    const-wide/16 v12, -0x1

    .line 650
    .local v12, "toTime":J
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 652
    .local v2, "currentTime":J
    const-string/jumbo v14, "VipConfigManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "\u914d\u7f6e\u6709\u6548\u65f6\u95f4fromTime: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/cIo;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const-string/jumbo v14, "VipConfigManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "\u914d\u7f6e\u6709\u6548\u65f6\u95f4toTime: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/cIo;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v8, 0x0

    .line 656
    .local v8, "isFromValid":Z
    const/4 v9, 0x0

    .line 658
    .local v9, "isToValid":Z
    const-wide/16 v14, -0x1

    cmp-long v14, v6, v14

    if-nez v14, :cond_7

    .line 659
    const/4 v8, 0x1

    .line 664
    :cond_3
    :goto_3
    const-wide/16 v14, -0x1

    cmp-long v14, v12, v14

    if-nez v14, :cond_8

    .line 665
    const/4 v9, 0x1

    .line 670
    :cond_4
    :goto_4
    const-string/jumbo v14, "VipConfigManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "\u914d\u7f6e\u6709\u6548\u65f6\u95f4isFromValid: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/cIo;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const-string/jumbo v14, "VipConfigManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "\u914d\u7f6e\u6709\u6548\u65f6\u95f4isToValid: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/cIo;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    if-eqz v8, :cond_9

    if-eqz v9, :cond_9

    const/4 v14, 0x1

    goto/16 :goto_0

    .line 648
    .end local v2    # "currentTime":J
    .end local v6    # "fromTime":J
    .end local v8    # "isFromValid":Z
    .end local v9    # "isToValid":Z
    .end local v12    # "toTime":J
    :cond_5
    invoke-virtual {v10, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    goto/16 :goto_1

    .line 649
    .restart local v6    # "fromTime":J
    :cond_6
    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    goto/16 :goto_2

    .line 660
    .restart local v2    # "currentTime":J
    .restart local v8    # "isFromValid":Z
    .restart local v9    # "isToValid":Z
    .restart local v12    # "toTime":J
    :cond_7
    cmp-long v14, v2, v6

    if-ltz v14, :cond_3

    .line 661
    const/4 v8, 0x1

    goto :goto_3

    .line 666
    :cond_8
    cmp-long v14, v2, v12

    if-gtz v14, :cond_4

    .line 667
    const/4 v9, 0x1

    goto :goto_4

    .line 673
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 675
    .end local v2    # "currentTime":J
    .end local v6    # "fromTime":J
    .end local v8    # "isFromValid":Z
    .end local v9    # "isToValid":Z
    .end local v10    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .end local v12    # "toTime":J
    :catch_0
    move-exception v4

    .line 676
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "VipConfigManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "\u914d\u7f6e\u6709\u6548\u65f6\u95f4\u8f6c\u6362\u5f02\u5e38:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/cIo;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 678
    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method public requestConfig(Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;Ljava/lang/Class;Lc8/mGo;)Lc8/BGo;
    .locals 2
    .param p1, "model"    # Lcom/youku/vip/manager/VipConfigManager$VipGlobalSwitchRequestModel;
    .param p2, "classObj"    # Ljava/lang/Class;
    .param p3, "listener"    # Lc8/mGo;

    .prologue
    .line 357
    invoke-static {}, Lc8/AGo;->getInstance()Lc8/AGo;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lc8/AGo;->request(Lcom/youku/vip/lib/http/model/VipInternalBaseRequestModel;Ljava/lang/Class;Lc8/mGo;)Lc8/BGo;

    move-result-object v0

    .line 359
    .local v0, "requestID":Lc8/BGo;
    return-object v0
.end method

.method public requestConfig()V
    .locals 3

    .prologue
    .line 257
    const-class v1, Lc8/vdn;

    invoke-static {v1}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vdn;

    .line 258
    .local v0, "dataSource":Lc8/vdn;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lc8/YGo;->requestConfig(Ljava/lang/String;Z)V

    .line 259
    return-void

    .line 258
    :cond_0
    invoke-interface {v0}, Lc8/vdn;->getUserNumberId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public requestConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/YGo;->requestConfig(Ljava/lang/String;Z)V

    .line 269
    return-void
.end method

.method public requestConfig(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "isApp"    # Z

    .prologue
    .line 278
    :try_start_0
    invoke-static {}, Lc8/lSo;->getInstance()Lc8/lSo;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/lSo;->setUserId(Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lc8/YGo;->getRequestConfigTime()J

    move-result-wide v4

    .line 281
    .local v4, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x1388

    cmp-long v3, v6, v8

    if-gtz v3, :cond_1

    .line 354
    .end local v4    # "time":J
    :cond_0
    :goto_0
    return-void

    .line 285
    .restart local v4    # "time":J
    :cond_1
    invoke-direct {p0}, Lc8/YGo;->saveRequestConfigTime()V

    .line 287
    invoke-virtual {p0}, Lc8/YGo;->isNeedRequestData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    if-eqz p2, :cond_4

    .line 292
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 293
    .local v1, "random":Ljava/util/Random;
    const/16 v3, 0x1388

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    rem-int/lit16 v3, v3, 0x1388

    add-int/lit8 v2, v3, 0x1

    .line 294
    .local v2, "s":I
    invoke-direct {p0}, Lc8/YGo;->stopMtopRequest()V

    .line 337
    iget-object v3, p0, Lc8/YGo;->mHandler:Landroid/os/Handler;

    if-nez v3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 338
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lc8/YGo;->mHandler:Landroid/os/Handler;

    .line 341
    :cond_2
    iget-object v3, p0, Lc8/YGo;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_3

    .line 342
    iget-object v3, p0, Lc8/YGo;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    int-to-long v8, v2

    invoke-virtual {v3, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    .end local v1    # "random":Ljava/util/Random;
    .end local v2    # "s":I
    .end local v4    # "time":J
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 344
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "random":Ljava/util/Random;
    .restart local v2    # "s":I
    .restart local v4    # "time":J
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lc8/YGo;->realMtopRequest()V

    goto :goto_0

    .line 347
    .end local v1    # "random":Ljava/util/Random;
    .end local v2    # "s":I
    :cond_4
    invoke-direct {p0}, Lc8/YGo;->stopMtopRequest()V

    .line 348
    invoke-direct {p0}, Lc8/YGo;->realMtopRequest()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public requestConfig(Z)V
    .locals 2
    .param p1, "isApp"    # Z

    .prologue
    .line 262
    const-class v1, Lc8/vdn;

    invoke-static {v1}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vdn;

    .line 263
    .local v0, "dataSource":Lc8/vdn;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, p1}, Lc8/YGo;->requestConfig(Ljava/lang/String;Z)V

    .line 264
    return-void

    .line 263
    :cond_0
    invoke-interface {v0}, Lc8/vdn;->getUserNumberId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
