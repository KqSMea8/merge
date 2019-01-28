.class public Lc8/AEb;
.super Lc8/Gzb;
.source "AMSamplingMgr.java"


# static fields
.field private static final MAX_SAMPLING_SEED:I = 0x2710

.field private static instance:Lc8/AEb;

.field private static final namespaces:[Ljava/lang/String;


# instance fields
.field private eventTypeSamplings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/appmonitor/event/EventType;",
            "Lc8/zEb;",
            ">;"
        }
    .end annotation
.end field

.field private samplingSeed:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lc8/AEb;->instance:Lc8/AEb;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ap_stat"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "ap_counter"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "ap_alarm"

    aput-object v2, v0, v1

    sput-object v0, Lc8/AEb;->namespaces:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 12

    .prologue
    .line 35
    invoke-direct {p0}, Lc8/Gzb;-><init>()V

    .line 30
    new-instance v8, Ljava/util/HashMap;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v8}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    iput-object v8, p0, Lc8/AEb;->eventTypeSamplings:Ljava/util/Map;

    .line 36
    invoke-virtual {p0}, Lc8/AEb;->updateSamplingSeed()V

    .line 37
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventType;->values()[Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v1

    .local v1, "arr$":[Lcom/alibaba/appmonitor/event/EventType;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v4, v1, v5

    .line 38
    .local v4, "eventType":Lcom/alibaba/appmonitor/event/EventType;
    invoke-virtual {v4}, Lcom/alibaba/appmonitor/event/EventType;->getCls()Ljava/lang/Class;

    move-result-object v2

    .line 39
    .local v2, "cls":Ljava/lang/Class;
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v8

    invoke-virtual {v8}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v8

    const/4 v9, 0x0

    const-string/jumbo v10, "module,mp ASC "

    const/4 v11, -0x1

    invoke-virtual {v8, v2, v9, v10, v11}, Lc8/Wzb;->find(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 40
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/appmonitor/sample/AMConifg;>;"
    invoke-direct {p0, v3}, Lc8/AEb;->buildRelation(Ljava/util/List;)Lc8/zEb;

    move-result-object v7

    .line 41
    .local v7, "root":Lc8/zEb;
    if-nez v7, :cond_0

    .line 43
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lc8/zEb;

    move-object v7, v0

    .line 44
    const-string/jumbo v8, "event_type"

    iput-object v8, v7, Lc8/zEb;->module:Ljava/lang/String;

    .line 45
    invoke-virtual {v4}, Lcom/alibaba/appmonitor/event/EventType;->getDefaultSampling()I

    move-result v8

    invoke-virtual {v7, v8}, Lc8/zEb;->setSampling(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    :goto_1
    iget-object v8, p0, Lc8/AEb;->eventTypeSamplings:Ljava/util/Map;

    invoke-interface {v8, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 52
    .end local v2    # "cls":Ljava/lang/Class;
    .end local v3    # "configs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/appmonitor/sample/AMConifg;>;"
    .end local v4    # "eventType":Lcom/alibaba/appmonitor/event/EventType;
    .end local v7    # "root":Lc8/zEb;
    :cond_1
    return-void

    .restart local v2    # "cls":Ljava/lang/Class;
    .restart local v3    # "configs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/appmonitor/sample/AMConifg;>;"
    .restart local v4    # "eventType":Lcom/alibaba/appmonitor/event/EventType;
    .restart local v7    # "root":Lc8/zEb;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private buildRelation(Ljava/util/List;)Lc8/zEb;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/zEb;",
            ">;)",
            "Lc8/zEb;"
        }
    .end annotation

    .prologue
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/appmonitor/sample/AMConifg;>;"
    const/4 v7, 0x0

    .line 150
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 151
    .local v4, "size":I
    const/4 v3, 0x0

    .line 152
    .local v3, "rootConfig":Lc8/zEb;
    const/4 v1, 0x0

    .line 153
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 154
    const-string/jumbo v6, "event_type"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/zEb;

    iget-object v5, v5, Lc8/zEb;->module:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :cond_0
    if-ge v1, v4, :cond_2

    .line 159
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "rootConfig":Lc8/zEb;
    check-cast v3, Lc8/zEb;

    .line 160
    .restart local v3    # "rootConfig":Lc8/zEb;
    const-string/jumbo v5, "remove root element"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :goto_1
    if-nez v3, :cond_3

    const/4 v3, 0x0

    .line 175
    .end local v3    # "rootConfig":Lc8/zEb;
    :cond_1
    return-object v3

    .line 162
    .restart local v3    # "rootConfig":Lc8/zEb;
    :cond_2
    const-string/jumbo v5, "cannot found the root element"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 166
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 167
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v4, :cond_1

    .line 168
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/zEb;

    .line 169
    .local v0, "config":Lc8/zEb;
    iget-object v5, v0, Lc8/zEb;->monitorPoint:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 170
    iget-object v5, v0, Lc8/zEb;->module:Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Lc8/zEb;->add(Ljava/lang/String;Lc8/zEb;)V

    .line 167
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 172
    :cond_4
    iget-object v5, v0, Lc8/zEb;->module:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lc8/zEb;->getOrBulidNext(Ljava/lang/String;)Lc8/zEb;

    move-result-object v5

    iget-object v6, v0, Lc8/zEb;->monitorPoint:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lc8/zEb;->add(Ljava/lang/String;Lc8/zEb;)V

    goto :goto_3
.end method

.method public static getInstance()Lc8/AEb;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lc8/AEb;->instance:Lc8/AEb;

    if-nez v0, :cond_1

    .line 56
    const-class v1, Lc8/AEb;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lc8/AEb;->instance:Lc8/AEb;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lc8/AEb;

    invoke-direct {v0}, Lc8/AEb;-><init>()V

    sput-object v0, Lc8/AEb;->instance:Lc8/AEb;

    .line 60
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    sget-object v0, Lc8/AEb;->instance:Lc8/AEb;

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isSelfMonitorEvent(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Lcom/alibaba/appmonitor/event/EventType;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 320
    if-eqz p1, :cond_1

    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    if-ne p1, v0, :cond_1

    .line 321
    const-string/jumbo v0, "AppMonitor"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    const-string/jumbo v0, "upload_traffic"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "tnet_request_send"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    :cond_0
    const/4 v0, 0x1

    .line 328
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseConfigEntity(Ljava/lang/Class;Lcom/alibaba/fastjson/JSONObject;)Lc8/zEb;
    .locals 7
    .param p2, "configJson"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc8/zEb;",
            ">;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Lc8/zEb;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/appmonitor/sample/AMConifg;>;"
    const/4 v2, 0x0

    .line 120
    .local v2, "moduleConifg":Lc8/zEb;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lc8/zEb;

    move-object v2, v0

    .line 121
    const-string/jumbo v5, "offline"

    invoke-virtual {p2, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    const-string/jumbo v5, "offline"

    invoke-virtual {p2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lc8/zEb;->offline:Ljava/lang/String;

    .line 124
    :cond_0
    const-string/jumbo v5, "cp"

    invoke-virtual {p2, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 125
    const-string/jumbo v5, "cp"

    invoke-virtual {p2, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    .line 126
    .local v3, "moduleCp":I
    invoke-virtual {v2, v3}, Lc8/zEb;->setSampling(I)V

    .line 128
    .end local v3    # "moduleCp":I
    :cond_1
    instance-of v5, v2, Lc8/DEb;

    if-eqz v5, :cond_5

    .line 129
    move-object v0, v2

    check-cast v0, Lc8/DEb;

    move-object v1, v0

    .line 130
    .local v1, "alarmConfig":Lc8/DEb;
    const-string/jumbo v5, "scp"

    invoke-virtual {p2, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 131
    const-string/jumbo v5, "scp"

    invoke-virtual {p2, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lc8/DEb;->successSampling:I

    .line 133
    :cond_2
    const-string/jumbo v5, "fcp"

    invoke-virtual {p2, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 134
    const-string/jumbo v5, "fcp"

    invoke-virtual {p2, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lc8/DEb;->failSampling:I

    .line 136
    :cond_3
    move-object v2, v1

    .line 146
    .end local v1    # "alarmConfig":Lc8/DEb;
    :cond_4
    :goto_0
    return-object v2

    .line 137
    :cond_5
    instance-of v5, v2, Lc8/GEb;

    if-eqz v5, :cond_4

    .line 138
    move-object v0, v2

    check-cast v0, Lc8/GEb;

    move-object v4, v0

    .line 139
    .local v4, "statConfig":Lc8/GEb;
    const-string/jumbo v5, "detail"

    invoke-virtual {p2, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 140
    const-string/jumbo v5, "detail"

    invoke-virtual {p2, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lc8/GEb;->detail:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    .end local v4    # "statConfig":Lc8/GEb;
    :catch_0
    move-exception v5

    const-string/jumbo v5, "new AppMonitorConfig error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAlarmSampled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "isSuccess"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 74
    .local p4, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/AEb;->isAlarmSampled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public checkSampled(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "eventType"    # Lcom/alibaba/appmonitor/event/EventType;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/AEb;->isSampled(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public checkSampled(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .param p1, "eventType"    # Lcom/alibaba/appmonitor/event/EventType;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/appmonitor/event/EventType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 70
    .local p4, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/AEb;->isSampled(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public enableOffline(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Lcom/alibaba/appmonitor/event/EventType;
    .param p2, "page"    # Ljava/lang/String;
    .param p3, "monitorPoints"    # [Ljava/lang/String;

    .prologue
    .line 268
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p3, :cond_1

    .line 293
    :cond_0
    return-void

    .line 271
    :cond_1
    iget-object v5, p0, Lc8/AEb;->eventTypeSamplings:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/zEb;

    .line 272
    .local v4, "root":Lc8/zEb;
    if-eqz v4, :cond_0

    .line 275
    invoke-virtual {v4, p2}, Lc8/zEb;->getOrBulidNext(Ljava/lang/String;)Lc8/zEb;

    move-result-object v2

    .line 276
    .local v2, "module":Lc8/zEb;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p3

    if-ge v1, v5, :cond_0

    .line 278
    aget-object v5, p3, v1

    invoke-virtual {v2, v5}, Lc8/zEb;->isContains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 279
    aget-object v5, p3, v1

    invoke-virtual {v2, v5}, Lc8/zEb;->getNext(Ljava/lang/String;)Lc8/zEb;

    move-result-object v3

    .line 280
    .local v3, "point":Lc8/zEb;
    invoke-virtual {v3}, Lc8/zEb;->enableOffline()V

    .line 276
    .end local v3    # "point":Lc8/zEb;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Lc8/zEb;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/zEb;

    .line 284
    .restart local v3    # "point":Lc8/zEb;
    iput-object p2, v3, Lc8/zEb;->module:Ljava/lang/String;

    .line 285
    aget-object v5, p3, v1

    iput-object v5, v3, Lc8/zEb;->monitorPoint:Ljava/lang/String;

    .line 286
    invoke-virtual {v3}, Lc8/zEb;->enableOffline()V

    .line 287
    aget-object v5, p3, v1

    invoke-virtual {v2, v5, v3}, Lc8/zEb;->add(Ljava/lang/String;Lc8/zEb;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 288
    .end local v3    # "point":Lc8/zEb;
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_1
.end method

.method public getOrangeGroupnames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lc8/AEb;->namespaces:[Ljava/lang/String;

    return-object v0
.end method

.method public getSamplingSeed()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lc8/AEb;->samplingSeed:I

    return v0
.end method

.method public isAlarmSampled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z
    .locals 7
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "isSuccess"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 94
    .local p4, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lc8/AEb;->eventTypeSamplings:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/zEb;

    .line 95
    .local v6, "eventTypeSample":Lc8/zEb;
    if-eqz v6, :cond_0

    instance-of v0, v6, Lc8/DEb;

    if-eqz v0, :cond_0

    move-object v0, v6

    .line 96
    check-cast v0, Lc8/DEb;

    iget v1, p0, Lc8/AEb;->samplingSeed:I

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lc8/DEb;->isSampled(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z

    move-result v0

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDetail(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "page"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 311
    iget-object v1, p0, Lc8/AEb;->eventTypeSamplings:Ljava/util/Map;

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/zEb;

    .line 312
    .local v0, "root":Lc8/zEb;
    if-nez v0, :cond_0

    .line 313
    const/4 v1, 0x0

    .line 315
    .end local v0    # "root":Lc8/zEb;
    :goto_0
    return v1

    .restart local v0    # "root":Lc8/zEb;
    :cond_0
    check-cast v0, Lc8/GEb;

    .end local v0    # "root":Lc8/zEb;
    invoke-virtual {v0, p1, p2}, Lc8/GEb;->isDetail(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isOffline(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Lcom/alibaba/appmonitor/event/EventType;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-direct {p0, p1, p2, p3}, Lc8/AEb;->isSelfMonitorEvent(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    const/4 v1, 0x1

    .line 304
    :goto_0
    return v1

    .line 300
    :cond_0
    iget-object v1, p0, Lc8/AEb;->eventTypeSamplings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/zEb;

    .line 301
    .local v0, "eventTypeSample":Lc8/zEb;
    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {v0, p2, p3}, Lc8/zEb;->isOffline(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 304
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSampled(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 4
    .param p1, "eventType"    # Lcom/alibaba/appmonitor/event/EventType;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/appmonitor/event/EventType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p4, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 81
    iget-object v2, p0, Lc8/AEb;->eventTypeSamplings:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/zEb;

    .line 82
    .local v0, "eventTypeSample":Lc8/zEb;
    if-eqz v0, :cond_0

    .line 83
    iget v1, p0, Lc8/AEb;->samplingSeed:I

    invoke-virtual {v0, v1, p2, p3, p4}, Lc8/zEb;->isSampled(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v1

    .line 87
    :goto_0
    return v1

    .line 85
    :cond_0
    const-string/jumbo v2, "eventTypeSample  ==null"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onNonOrangeConfigurationArrive(Ljava/lang/String;)V
    .locals 0
    .param p1, "aGroupname"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-super {p0, p1}, Lc8/Gzb;->onNonOrangeConfigurationArrive(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public onOrangeConfigurationArrive(Ljava/lang/String;Ljava/util/Map;)V
    .locals 22
    .param p1, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p2, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v18, ""

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "namespace"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object p1, v19, v20

    const/16 v20, 0x2

    const-string/jumbo v21, "config:"

    aput-object v21, v19, v20

    const/16 v20, 0x3

    aput-object p2, v19, v20

    invoke-static/range {v18 .. v19}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    invoke-static/range {p1 .. p1}, Lc8/aCb;->isBlank(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    if-nez p2, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v16, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/analytics/core/db/Entity;>;"
    invoke-static/range {p1 .. p1}, Lcom/alibaba/appmonitor/event/EventType;->getEventTypeByNameSpace(Ljava/lang/String;)Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v5

    .line 201
    .local v5, "eventType":Lcom/alibaba/appmonitor/event/EventType;
    invoke-virtual {v5}, Lcom/alibaba/appmonitor/event/EventType;->getCls()Ljava/lang/Class;

    move-result-object v3

    .line 204
    .local v3, "cls":Ljava/lang/Class;
    :try_start_0
    const-string/jumbo v18, "event_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 205
    const-string/jumbo v18, "event_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 206
    .local v17, "value":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 207
    .local v8, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lc8/AEb;->parseConfigEntity(Ljava/lang/Class;Lcom/alibaba/fastjson/JSONObject;)Lc8/zEb;

    move-result-object v15

    .line 208
    .local v15, "rootConifg":Lc8/zEb;
    const-string/jumbo v18, "event_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .end local v8    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v17    # "value":Ljava/lang/String;
    :goto_1
    const-string/jumbo v18, "event_type"

    move-object/from16 v0, v18

    iput-object v0, v15, Lc8/zEb;->module:Ljava/lang/String;

    .line 225
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 226
    .local v10, "moduleKey":Ljava/lang/String;
    const/4 v11, 0x0

    .line 228
    .local v11, "monduleObject":Lcom/alibaba/fastjson/JSONObject;
    :try_start_1
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v11

    .line 232
    :goto_3
    if-eqz v11, :cond_2

    .line 234
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11}, Lc8/AEb;->parseConfigEntity(Ljava/lang/Class;Lcom/alibaba/fastjson/JSONObject;)Lc8/zEb;

    move-result-object v9

    .line 235
    .local v9, "moduleConifg":Lc8/zEb;
    iput-object v10, v9, Lc8/zEb;->module:Ljava/lang/String;

    .line 236
    const-string/jumbo v18, "mps"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v14

    .line 237
    .local v14, "pointObjects":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v14, :cond_5

    .line 238
    invoke-virtual {v14}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 239
    .local v12, "monitorPointKey":Ljava/lang/String;
    invoke-virtual {v14, v12}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v1}, Lc8/AEb;->parseConfigEntity(Ljava/lang/Class;Lcom/alibaba/fastjson/JSONObject;)Lc8/zEb;

    move-result-object v13

    .line 240
    .local v13, "pointConifg":Lc8/zEb;
    iput-object v10, v13, Lc8/zEb;->module:Ljava/lang/String;

    .line 241
    iput-object v12, v13, Lc8/zEb;->monitorPoint:Ljava/lang/String;

    .line 242
    invoke-virtual {v9, v12, v13}, Lc8/zEb;->add(Ljava/lang/String;Lc8/zEb;)V

    .line 243
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 248
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "moduleConifg":Lc8/zEb;
    .end local v12    # "monitorPointKey":Ljava/lang/String;
    .end local v13    # "pointConifg":Lc8/zEb;
    .end local v14    # "pointObjects":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v4

    .line 249
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 259
    .end local v4    # "e":Ljava/lang/Throwable;
    .end local v10    # "moduleKey":Ljava/lang/String;
    .end local v11    # "monduleObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v15    # "rootConifg":Lc8/zEb;
    :catch_1
    move-exception v4

    .line 260
    .restart local v4    # "e":Ljava/lang/Throwable;
    const-string/jumbo v18, ""

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "parse config error"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v4, v19, v20

    invoke-static/range {v18 .. v19}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 211
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_3
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lc8/zEb;

    .line 212
    .restart local v15    # "rootConifg":Lc8/zEb;
    instance-of v0, v15, Lc8/DEb;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 213
    move-object v0, v15

    check-cast v0, Lc8/DEb;

    move-object v2, v0

    .line 214
    .local v2, "c":Lc8/DEb;
    invoke-virtual {v5}, Lcom/alibaba/appmonitor/event/EventType;->getDefaultSampling()I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lc8/DEb;->successSampling:I

    .line 215
    invoke-virtual {v5}, Lcom/alibaba/appmonitor/event/EventType;->getDefaultSampling()I

    move-result v18

    move/from16 v0, v18

    iput v0, v2, Lc8/DEb;->failSampling:I

    goto/16 :goto_1

    .end local v2    # "c":Lc8/DEb;
    .end local v15    # "rootConifg":Lc8/zEb;
    :catch_2
    move-exception v18

    goto/16 :goto_0

    .line 217
    .restart local v15    # "rootConifg":Lc8/zEb;
    :cond_4
    invoke-virtual {v5}, Lcom/alibaba/appmonitor/event/EventType;->getDefaultSampling()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lc8/zEb;->setSampling(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 229
    .restart local v10    # "moduleKey":Ljava/lang/String;
    .restart local v11    # "monduleObject":Lcom/alibaba/fastjson/JSONObject;
    :catch_3
    move-exception v4

    .line 230
    .restart local v4    # "e":Ljava/lang/Throwable;
    const/16 v18, 0x0

    const/16 v19, 0x0

    :try_start_5
    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v4, v1}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    .line 246
    .end local v4    # "e":Ljava/lang/Throwable;
    .restart local v9    # "moduleConifg":Lc8/zEb;
    .restart local v14    # "pointObjects":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    :try_start_6
    invoke-virtual {v15, v10, v9}, Lc8/zEb;->add(Ljava/lang/String;Lc8/zEb;)V

    .line 247
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    .line 255
    .end local v9    # "moduleConifg":Lc8/zEb;
    .end local v10    # "moduleKey":Ljava/lang/String;
    .end local v11    # "monduleObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "pointObjects":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    :try_start_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/AEb;->eventTypeSamplings:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v18

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lc8/Wzb;->clear(Ljava/lang/Class;)V

    .line 258
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lc8/Wzb;->insert(Ljava/util/List;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0
.end method

.method public returnOrangeConfigurationNameList()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 180
    sget-object v0, Lc8/AEb;->namespaces:[Ljava/lang/String;

    return-object v0
.end method

.method public setEventTypeSampling(Lcom/alibaba/appmonitor/event/EventType;I)V
    .locals 3
    .param p1, "eventType"    # Lcom/alibaba/appmonitor/event/EventType;
    .param p2, "sampling"    # I

    .prologue
    .line 110
    iget-object v1, p0, Lc8/AEb;->eventTypeSamplings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/zEb;

    .line 111
    .local v0, "eventTypeSample":Lc8/zEb;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p2}, Lc8/zEb;->setSampling(I)V

    .line 114
    :cond_0
    const-string/jumbo v1, "setSampling end"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public updateSamplingSeed()V
    .locals 4

    .prologue
    .line 105
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 106
    .local v0, "rand":Ljava/util/Random;
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lc8/AEb;->samplingSeed:I

    .line 107
    return-void
.end method
