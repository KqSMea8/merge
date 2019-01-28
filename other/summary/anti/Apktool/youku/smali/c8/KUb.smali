.class public Lc8/KUb;
.super Ljava/lang/Object;
.source "MainLooperHandler.java"


# instance fields
.field private final ACTIVITY_PATH:Ljava/lang/String;

.field private activityPath:Ljava/lang/String;

.field private applicationIdleMonitor:Lc8/EUb;

.field private mainLooperMonitor:Lc8/QUb;

.field private stackHashValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/IUb;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "watchConfig"    # Lc8/IUb;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lc8/KUb;->mainLooperMonitor:Lc8/QUb;

    .line 30
    iput-object v1, p0, Lc8/KUb;->applicationIdleMonitor:Lc8/EUb;

    .line 31
    iput-object v1, p0, Lc8/KUb;->stackHashValue:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "_controller_path"

    iput-object v0, p0, Lc8/KUb;->ACTIVITY_PATH:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lc8/KUb;->activityPath:Ljava/lang/String;

    .line 41
    iget-boolean v0, p2, Lc8/IUb;->isBetaVersion:Z

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lc8/IUb;->isCloseMainLooperSampling:Z

    if-eqz v0, :cond_2

    .line 43
    :cond_0
    new-instance v0, Lc8/QUb;

    iget-object v1, p2, Lc8/IUb;->enabeMainLooperTimeoutInterval:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p1}, Lc8/QUb;-><init>(JLandroid/content/Context;)V

    iput-object v0, p0, Lc8/KUb;->mainLooperMonitor:Lc8/QUb;

    .line 44
    iget-boolean v0, p2, Lc8/IUb;->enableWatchMainThreadOnly:Z

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lc8/KUb;->mainLooperMonitor:Lc8/QUb;

    invoke-virtual {v0}, Lc8/QUb;->setReportMainThreadOnly()Lc8/QUb;

    .line 47
    :cond_1
    iget-object v0, p0, Lc8/KUb;->mainLooperMonitor:Lc8/QUb;

    iget-boolean v1, p2, Lc8/IUb;->isBetaVersion:Z

    iput-boolean v1, v0, Lc8/QUb;->_isBetaVersion:Z

    .line 48
    iget-object v0, p0, Lc8/KUb;->mainLooperMonitor:Lc8/QUb;

    iget-boolean v1, p2, Lc8/IUb;->isCloseMainLooperSampling:Z

    iput-boolean v1, v0, Lc8/QUb;->_isCloseSampling:Z

    .line 49
    new-instance v0, Lc8/EUb;

    iget-object v1, p0, Lc8/KUb;->mainLooperMonitor:Lc8/QUb;

    invoke-direct {v0, p1, v1}, Lc8/EUb;-><init>(Landroid/content/Context;Lc8/QUb;)V

    iput-object v0, p0, Lc8/KUb;->applicationIdleMonitor:Lc8/EUb;

    .line 50
    iget-object v0, p0, Lc8/KUb;->mainLooperMonitor:Lc8/QUb;

    iget-object v1, p0, Lc8/KUb;->applicationIdleMonitor:Lc8/EUb;

    iput-object v1, v0, Lc8/QUb;->_applicationIdleMonitor:Lc8/EUb;

    .line 52
    iget-object v0, p0, Lc8/KUb;->mainLooperMonitor:Lc8/QUb;

    new-instance v1, Lc8/JUb;

    invoke-direct {v1, p0, p1}, Lc8/JUb;-><init>(Lc8/KUb;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lc8/QUb;->setMainLooperListener(Lc8/PUb;)Lc8/QUb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/QUb;->start()V

    .line 126
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lc8/KUb;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/KUb;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/KUb;->stackHashValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lc8/KUb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/KUb;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lc8/KUb;->stackHashValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lc8/KUb;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/KUb;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lc8/KUb;->callBackListener(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lc8/KUb;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/KUb;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/KUb;->activityPath:Ljava/lang/String;

    return-object v0
.end method

.method private callBackListener(Ljava/util/List;)Ljava/lang/String;
    .locals 12
    .param p1, "listener"    # Ljava/util/List;

    .prologue
    .line 133
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v9, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 138
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 139
    .local v6, "o":Ljava/lang/Object;
    instance-of v10, v6, Lc8/GUb;

    if-eqz v10, :cond_3

    .line 140
    move-object v0, v6

    check-cast v0, Lc8/GUb;

    move-object v5, v0

    .line 141
    .local v5, "listenerObject":Lc8/GUb;
    const/4 v10, 0x0

    invoke-interface {v5, v10}, Lc8/GUb;->onWatch(Ljava/util/Map;)V

    .line 143
    invoke-interface {v5}, Lc8/GUb;->onCatch()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 144
    .local v8, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v8, :cond_3

    .line 147
    :try_start_1
    const-string/jumbo v10, "_controller_path"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 148
    .local v7, "result":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 149
    iput-object v7, p0, Lc8/KUb;->activityPath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    .end local v7    # "result":Ljava/lang/String;
    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 156
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 157
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 158
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string/jumbo v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 167
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "listenerObject":Lc8/GUb;
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/Exception;
    sget-object v10, Lc8/IUb;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "call back listener err"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 151
    .restart local v5    # "listenerObject":Lc8/GUb;
    .restart local v6    # "o":Ljava/lang/Object;
    .restart local v8    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    .line 152
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 136
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "listenerObject":Lc8/GUb;
    .end local v8    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
