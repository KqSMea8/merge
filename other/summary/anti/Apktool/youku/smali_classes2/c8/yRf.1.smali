.class public Lc8/yRf;
.super Ljava/lang/Object;
.source "UpdateDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/xRf;
    }
.end annotation


# static fields
.field private static INSTANCE:Lc8/yRf; = null

.field private static final LOCAL_UPDATE_FOLDER:Ljava/lang/String; = "/atlas_local_update/tpatch"

.field private static final TAG:Ljava/lang/String; = "UPDATE-DS"

.field public static inited:Z

.field private static listenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/zRf;",
            ">;"
        }
    .end annotation
.end field

.field public static sContext:Landroid/app/Application;

.field public static sUpdateAdapter:Lc8/aQf;

.field private static sUpdateCheckListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/qRf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile hasUpdate:Z

.field volatile isUpdating:Z

.field private mOverridedLocalUpdateFolder:Ljava/lang/String;

.field private updateBusiness:Lc8/FRf;

.field private updateStrategy:Lc8/ARf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lc8/yRf;->inited:Z

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/yRf;->listenerMap:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/yRf;->sUpdateCheckListeners:Ljava/util/List;

    .line 52
    new-instance v0, Lc8/yRf;

    invoke-direct {v0}, Lc8/yRf;-><init>()V

    sput-object v0, Lc8/yRf;->INSTANCE:Lc8/yRf;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v0, p0, Lc8/yRf;->hasUpdate:Z

    .line 335
    iput-boolean v0, p0, Lc8/yRf;->isUpdating:Z

    .line 58
    return-void
.end method

.method static synthetic access$000(Lc8/yRf;)Lc8/ARf;
    .locals 1
    .param p0, "x0"    # Lc8/yRf;

    .prologue
    .line 34
    iget-object v0, p0, Lc8/yRf;->updateStrategy:Lc8/ARf;

    return-object v0
.end method

.method static synthetic access$100(Lc8/yRf;)Z
    .locals 1
    .param p0, "x0"    # Lc8/yRf;

    .prologue
    .line 34
    iget-boolean v0, p0, Lc8/yRf;->hasUpdate:Z

    return v0
.end method

.method static synthetic access$102(Lc8/yRf;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/yRf;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lc8/yRf;->hasUpdate:Z

    return p1
.end method

.method static synthetic access$200(Lc8/yRf;Lcom/taobao/update/datasource/local/UpdateInfo;Z[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/yRf;
    .param p1, "x1"    # Lcom/taobao/update/datasource/local/UpdateInfo;
    .param p2, "x2"    # Z
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lc8/yRf;->dispatchUpdate(Lcom/taobao/update/datasource/local/UpdateInfo;Z[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lc8/yRf;)Lc8/FRf;
    .locals 1
    .param p0, "x0"    # Lc8/yRf;

    .prologue
    .line 34
    iget-object v0, p0, Lc8/yRf;->updateBusiness:Lc8/FRf;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Map;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lc8/yRf;->listenerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lc8/yRf;Lcom/taobao/update/datasource/local/UpdateInfo;)V
    .locals 0
    .param p0, "x0"    # Lc8/yRf;
    .param p1, "x1"    # Lcom/taobao/update/datasource/local/UpdateInfo;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lc8/yRf;->dispatchCheckResult(Lcom/taobao/update/datasource/local/UpdateInfo;)V

    return-void
.end method

.method private declared-synchronized dispatchCheckResult(Lcom/taobao/update/datasource/local/UpdateInfo;)V
    .locals 8
    .param p1, "updateInfo"    # Lcom/taobao/update/datasource/local/UpdateInfo;

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    sget-object v6, Lc8/yRf;->sUpdateCheckListeners:Ljava/util/List;

    if-eqz v6, :cond_1

    sget-object v6, Lc8/yRf;->sUpdateCheckListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 262
    sget-object v6, Lc8/yRf;->sUpdateCheckListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/qRf;

    .line 263
    .local v4, "listener":Lc8/qRf;
    if-eqz p1, :cond_0

    iget-object v6, p1, Lcom/taobao/update/datasource/local/UpdateInfo;->updateList:Ljava/util/Map;

    if-eqz v6, :cond_0

    iget-object v6, p1, Lcom/taobao/update/datasource/local/UpdateInfo;->updateList:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 264
    :cond_0
    const/4 v6, 0x0

    const-string/jumbo v7, ""

    invoke-interface {v4, v6, v7}, Lc8/qRf;->onChecked(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 281
    .end local v4    # "listener":Lc8/qRf;
    :catch_0
    move-exception v6

    :cond_1
    monitor-exit p0

    return-void

    .line 266
    .restart local v4    # "listener":Lc8/qRf;
    :cond_2
    :try_start_1
    const-string/jumbo v5, ""

    .line 267
    .local v5, "updateTypes":Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    iget-object v6, p1, Lcom/taobao/update/datasource/local/UpdateInfo;->updateList:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 268
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 269
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 270
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 272
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 273
    goto :goto_1

    .line 274
    .end local v2    # "key":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x1

    invoke-interface {v4, v6, v5}, Lc8/qRf;->onChecked(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 261
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "listener":Lc8/qRf;
    .end local v5    # "updateTypes":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private varargs declared-synchronized dispatchUpdate(Lcom/taobao/update/datasource/local/UpdateInfo;Z[Ljava/lang/String;)V
    .locals 10
    .param p1, "updateInfo"    # Lcom/taobao/update/datasource/local/UpdateInfo;
    .param p2, "background"    # Z
    .param p3, "extData"    # [Ljava/lang/String;

    .prologue
    .line 289
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v6, p1, Lcom/taobao/update/datasource/local/UpdateInfo;->updateList:Ljava/util/Map;

    if-eqz v6, :cond_0

    iget-object v6, p1, Lcom/taobao/update/datasource/local/UpdateInfo;->updateList:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 290
    :cond_0
    if-nez p2, :cond_1

    .line 291
    sget-object v6, Lc8/yRf;->listenerMap:Ljava/util/Map;

    const-string/jumbo v7, "main"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 292
    sget-object v6, Lc8/yRf;->listenerMap:Ljava/util/Map;

    const-string/jumbo v7, "main"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/zRf;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, ""

    invoke-interface {v6, v7, v8, v9}, Lc8/zRf;->onUpdate(ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 298
    :cond_2
    if-nez p2, :cond_3

    .line 299
    :try_start_1
    iget-object v6, p1, Lcom/taobao/update/datasource/local/UpdateInfo;->updateList:Ljava/util/Map;

    const-string/jumbo v7, "main"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 300
    sget-object v6, Lc8/yRf;->listenerMap:Ljava/util/Map;

    const-string/jumbo v7, "main"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 301
    sget-object v6, Lc8/yRf;->listenerMap:Ljava/util/Map;

    const-string/jumbo v7, "main"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/zRf;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, ""

    invoke-interface {v6, v7, v8, v9}, Lc8/zRf;->onUpdate(ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :cond_3
    :try_start_2
    new-instance v4, Ljava/util/HashSet;

    sget-object v6, Lc8/yRf;->listenerMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 308
    .local v4, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 309
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p1, Lcom/taobao/update/datasource/local/UpdateInfo;->updateList:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;

    .line 310
    .local v0, "data":Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;
    if-eqz v0, :cond_4

    iget-boolean v6, v0, Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;->valid:Z

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;->value:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;->value:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " listenerMap.get(key).onUpdate ON key  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    const-string/jumbo v6, "dynamic"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p1, Lcom/taobao/update/datasource/local/UpdateInfo;->updateList:Ljava/util/Map;

    const-string/jumbo v7, "main"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 315
    :cond_5
    const-string/jumbo v6, "hotpatch"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz p3, :cond_6

    array-length v6, p3

    if-lez v6, :cond_6

    sget-object v6, Lc8/rRf;->ACCS_SOURCE:Ljava/lang/String;

    iget-object v7, v0, Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;->from:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 316
    sget-object v6, Lc8/yRf;->sUpdateAdapter:Lc8/aQf;

    const-string/jumbo v7, "update_center_accs"

    const-string/jumbo v8, "UpdateListener_callback"

    const/4 v9, 0x0

    aget-object v9, p3, v9

    invoke-virtual {v6, v7, v8, v9}, Lc8/aQf;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v6, v0, Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;->value:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v6, :cond_6

    .line 319
    iget-object v6, v0, Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;->value:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v7, "dataId"

    const/4 v8, 0x0

    aget-object v8, p3, v8

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_6
    sget-object v6, Lc8/yRf;->listenerMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/zRf;

    .line 323
    .local v5, "updateListener":Lc8/zRf;
    if-eqz v5, :cond_4

    .line 324
    const-string/jumbo v6, "hotpatch"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    :goto_2
    iget-object v7, v0, Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;->value:Lcom/alibaba/fastjson/JSONObject;

    iget-object v8, v0, Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;->from:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v8}, Lc8/zRf;->onUpdate(ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 330
    .end local v0    # "data":Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "updateListener":Lc8/zRf;
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 289
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .restart local v0    # "data":Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "updateListener":Lc8/zRf;
    :cond_7
    move v6, p2

    .line 324
    goto :goto_2
.end method

.method public static getInstance()Lc8/yRf;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lc8/yRf;->INSTANCE:Lc8/yRf;

    return-object v0
.end method

.method private queryFromServer()Lcom/taobao/update/datasource/local/UpdateInfo;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v2, p0, Lc8/yRf;->updateStrategy:Lc8/ARf;

    invoke-virtual {v2}, Lc8/ARf;->isUpdating()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-object v1

    .line 204
    :cond_1
    iget-object v2, p0, Lc8/yRf;->updateBusiness:Lc8/FRf;

    invoke-virtual {v2}, Lc8/FRf;->queryUpdateInfo()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 206
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    iget-object v2, p0, Lc8/yRf;->updateStrategy:Lc8/ARf;

    invoke-virtual {v2}, Lc8/ARf;->isUpdating()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 209
    const-string/jumbo v1, "hasUpdate"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "hasUpdate"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/yRf;->hasUpdate:Z

    .line 212
    :cond_2
    sget-object v1, Lc8/rRf;->MTOP_SOURCE:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/BRf;->convert2UpdateInfo(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/taobao/update/datasource/local/UpdateInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 466
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 468
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 469
    .local v0, "alldata":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "data":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 474
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 475
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private updateLocal()Lcom/taobao/update/datasource/local/UpdateInfo;
    .locals 2

    .prologue
    .line 192
    invoke-direct {p0}, Lc8/yRf;->queryFromServer()Lcom/taobao/update/datasource/local/UpdateInfo;

    move-result-object v0

    .line 193
    .local v0, "updateInfo":Lcom/taobao/update/datasource/local/UpdateInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lc8/yRf;->hasUpdate:Z

    if-eqz v1, :cond_0

    .line 194
    sget-object v1, Lc8/yRf;->sContext:Landroid/app/Application;

    invoke-static {v1}, Lc8/ERf;->getInstance(Landroid/content/Context;)Lc8/ERf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/ERf;->resetData(Lcom/taobao/update/datasource/local/UpdateInfo;)V

    .line 196
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addUpdateInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 438
    new-instance v0, Lc8/wRf;

    invoke-direct {v0, p0, p1}, Lc8/wRf;-><init>(Lc8/yRf;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lc8/wRf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 463
    return-void
.end method

.method public varargs addUpdateInfo(Ljava/lang/String;Ljava/lang/String;Lc8/oRf;[Ljava/lang/String;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "addUpdateCallback"    # Lc8/oRf;
    .param p4, "extData"    # [Ljava/lang/String;

    .prologue
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " >>>>>> add update info <<<<<<   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v0, Lc8/sRf;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lc8/sRf;-><init>(Lc8/yRf;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lc8/oRf;)V

    .line 164
    .local v0, "runnable":Ljava/lang/Runnable;
    sget-object v1, Lc8/rRf;->ACCS_SOURCE:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 165
    :cond_1
    sget-object v1, Lc8/yRf;->sUpdateAdapter:Lc8/aQf;

    invoke-virtual {v1, v0}, Lc8/aQf;->executeThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 167
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public checkApkUpdate(Lc8/xRf;)V
    .locals 2
    .param p1, "callback"    # Lc8/xRf;

    .prologue
    .line 216
    if-eqz p1, :cond_0

    .line 217
    new-instance v0, Lc8/tRf;

    invoke-direct {v0, p0, p1}, Lc8/tRf;-><init>(Lc8/yRf;Lc8/xRf;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lc8/tRf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 240
    :cond_0
    return-void
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lc8/yRf;->sContext:Landroid/app/Application;

    invoke-static {v0}, Lc8/ERf;->getInstance(Landroid/content/Context;)Lc8/ERf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/ERf;->clearCache()V

    .line 257
    return-void
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lc8/yRf;->sContext:Landroid/app/Application;

    return-object v0
.end method

.method public getLocalUpdateFolderPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lc8/yRf;->mOverridedLocalUpdateFolder:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/yRf;->sContext:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/atlas_local_update/tpatch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/yRf;->mOverridedLocalUpdateFolder:Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized getRecentData(Z)Lc8/pRf;
    .locals 3
    .param p1, "forceRequest"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lc8/pRf",
            "<",
            "Lcom/taobao/update/datasource/local/UpdateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    sget-object v1, Lc8/yRf;->sContext:Landroid/app/Application;

    invoke-static {v1}, Lc8/BRf;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/yRf;->sContext:Landroid/app/Application;

    invoke-static {v1}, Lc8/BRf;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.youku.phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    new-instance v1, Lc8/pRf;

    invoke-direct {p0}, Lc8/yRf;->updateLocal()Lcom/taobao/update/datasource/local/UpdateInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/pRf;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_0
    monitor-exit p0

    return-object v1

    .line 176
    :cond_0
    if-eqz p1, :cond_1

    .line 177
    :try_start_1
    new-instance v1, Lc8/pRf;

    invoke-direct {p0}, Lc8/yRf;->updateLocal()Lcom/taobao/update/datasource/local/UpdateInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/pRf;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 180
    :cond_1
    :try_start_2
    sget-object v1, Lc8/yRf;->sContext:Landroid/app/Application;

    invoke-static {v1}, Lc8/ERf;->getInstance(Landroid/content/Context;)Lc8/ERf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/ERf;->getData()Lcom/taobao/update/datasource/local/UpdateInfo;

    move-result-object v0

    .line 182
    .local v0, "localUpdateInfo":Lcom/taobao/update/datasource/local/UpdateInfo;
    iget-object v1, p0, Lc8/yRf;->updateStrategy:Lc8/ARf;

    invoke-virtual {v1, v0}, Lc8/ARf;->isLocalDataValid(Lcom/taobao/update/datasource/local/UpdateInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    new-instance v1, Lc8/pRf;

    invoke-direct {v1, v0}, Lc8/pRf;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    :cond_2
    new-instance v1, Lc8/pRf;

    invoke-direct {p0}, Lc8/yRf;->updateLocal()Lcom/taobao/update/datasource/local/UpdateInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/pRf;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;ZLc8/aQf;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Application;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "ttid"    # Ljava/lang/String;
    .param p4, "isOutApk"    # Z
    .param p5, "updateAdapter"    # Lc8/aQf;

    .prologue
    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lc8/yRf;->inited:Z

    .line 80
    sput-object p1, Lc8/yRf;->sContext:Landroid/app/Application;

    .line 81
    sput-object p5, Lc8/yRf;->sUpdateAdapter:Lc8/aQf;

    .line 83
    new-instance v0, Lc8/ARf;

    invoke-direct {v0}, Lc8/ARf;-><init>()V

    iput-object v0, p0, Lc8/yRf;->updateStrategy:Lc8/ARf;

    .line 84
    new-instance v0, Lc8/FRf;

    invoke-direct {v0, p1, p3, p2, p4}, Lc8/FRf;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lc8/yRf;->updateBusiness:Lc8/FRf;

    .line 86
    sget-object v0, Lc8/yRf;->sUpdateAdapter:Lc8/aQf;

    invoke-virtual {v0, p1, p0}, Lc8/aQf;->registerPushApi(Landroid/content/Context;Lc8/yRf;)V

    .line 88
    return-void
.end method

.method public invalidUpdateInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 244
    sget-object v2, Lc8/yRf;->sContext:Landroid/app/Application;

    invoke-static {v2}, Lc8/ERf;->getInstance(Landroid/content/Context;)Lc8/ERf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/ERf;->getData()Lcom/taobao/update/datasource/local/UpdateInfo;

    move-result-object v1

    .line 245
    .local v1, "updateInfo":Lcom/taobao/update/datasource/local/UpdateInfo;
    if-nez v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v2, v1, Lcom/taobao/update/datasource/local/UpdateInfo;->updateList:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;

    .line 249
    .local v0, "updateData":Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;
    if-eqz v0, :cond_0

    .line 250
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/taobao/update/datasource/local/UpdateInfo$UpdateData;->valid:Z

    .line 251
    sget-object v2, Lc8/yRf;->sContext:Landroid/app/Application;

    invoke-static {v2}, Lc8/ERf;->getInstance(Landroid/content/Context;)Lc8/ERf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lc8/ERf;->updateData(Lcom/taobao/update/datasource/local/UpdateInfo;)V

    goto :goto_0
.end method

.method public localUpdate(Z)V
    .locals 2
    .param p1, "sync"    # Z

    .prologue
    .line 344
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/yRf;->isUpdating:Z

    .line 345
    new-instance v0, Lc8/uRf;

    invoke-direct {v0, p0}, Lc8/uRf;-><init>(Lc8/yRf;)V

    .line 393
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz p1, :cond_0

    .line 394
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    sget-object v1, Lc8/yRf;->sUpdateAdapter:Lc8/aQf;

    invoke-virtual {v1, v0}, Lc8/aQf;->executeThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public registerListener(Ljava/lang/String;Lc8/zRf;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "updateListener"    # Lc8/zRf;

    .prologue
    .line 69
    sget-object v0, Lc8/yRf;->listenerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public registerUpdateCheckListener(Lc8/qRf;)V
    .locals 1
    .param p1, "listener"    # Lc8/qRf;

    .prologue
    .line 73
    sget-object v0, Lc8/yRf;->sUpdateCheckListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public setLocalUpdateFolder(Ljava/lang/String;)V
    .locals 0
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lc8/yRf;->mOverridedLocalUpdateFolder:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public startUpdate(ZZ)V
    .locals 2
    .param p1, "background"    # Z
    .param p2, "sync"    # Z

    .prologue
    .line 406
    iget-boolean v1, p0, Lc8/yRf;->isUpdating:Z

    if-nez v1, :cond_0

    sget-object v1, Lc8/yRf;->sContext:Landroid/app/Application;

    if-nez v1, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/yRf;->isUpdating:Z

    .line 411
    new-instance v0, Lc8/vRf;

    invoke-direct {v0, p0, p1}, Lc8/vRf;-><init>(Lc8/yRf;Z)V

    .line 428
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz p2, :cond_2

    .line 429
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 431
    :cond_2
    sget-object v1, Lc8/yRf;->sUpdateAdapter:Lc8/aQf;

    invoke-virtual {v1, v0}, Lc8/aQf;->executeThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
