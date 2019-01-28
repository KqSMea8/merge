.class public Lc8/Aof;
.super Ljava/lang/Object;
.source "AlibcPluginManager.java"


# static fields
.field private static plugins:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lc8/yof;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lc8/Aof;->plugins:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPlugin(Lc8/yof;)Z
    .locals 1
    .param p0, "plugin"    # Lc8/yof;

    .prologue
    .line 97
    sget-object v0, Lc8/Aof;->plugins:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static contains([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 10
    .param p0, "pluginRules"    # [Ljava/lang/String;
    .param p1, "routeRules"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 77
    if-eqz p0, :cond_3

    array-length v9, p0

    if-lez v9, :cond_3

    if-eqz p1, :cond_3

    array-length v9, p1

    if-lez v9, :cond_3

    .line 79
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, p0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v6, v0, v3

    .line 80
    .local v6, "pluginRule":Ljava/lang/String;
    const-string/jumbo v9, "*"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 93
    .end local v3    # "i$":I
    .end local v6    # "pluginRule":Ljava/lang/String;
    :cond_0
    :goto_1
    return v8

    .line 85
    .restart local v3    # "i$":I
    .restart local v6    # "pluginRule":Ljava/lang/String;
    :cond_1
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, p1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v5, :cond_2

    aget-object v7, v1, v2

    .line 86
    .local v7, "rule":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 79
    .end local v7    # "rule":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 93
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "pluginRule":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static executePlugin(Landroid/app/Activity;Lcom/taobao/flowcustoms/data/OpenParams;)Z
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "openParams"    # Lcom/taobao/flowcustoms/data/OpenParams;

    .prologue
    const/4 v7, 0x0

    .line 32
    invoke-virtual {p1}, Lcom/taobao/flowcustoms/data/OpenParams;->getPluginRules()Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, "pluginRule":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    if-nez p0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v7

    .line 37
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v2, "pluginList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/flowcustoms/plugin/AlibcBasePlugin;>;"
    const-string/jumbo v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 40
    .local v6, "rulesArray":[Ljava/lang/String;
    array-length v8, v6

    if-lez v8, :cond_3

    .line 42
    sget-object v8, Lc8/Aof;->plugins:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/yof;

    .line 43
    .local v1, "plugin":Lc8/yof;
    iget-object v4, v1, Lc8/yof;->pluginRules:[Ljava/lang/String;

    .line 44
    .local v4, "pluginRules":[Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-static {v4, v6}, Lc8/Aof;->contains([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 45
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 51
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "plugin":Lc8/yof;
    .end local v4    # "pluginRules":[Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 52
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 54
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/yof;

    .line 56
    .restart local v1    # "plugin":Lc8/yof;
    invoke-static {}, Lc8/Mnf;->getInstance()Lc8/Mnf;

    move-result-object v8

    iget-object v8, v8, Lc8/Mnf;->pluginList:Lc8/Inf;

    iget-object v9, v1, Lc8/yof;->pluginKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lc8/Inf;->inBlackList(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 57
    invoke-virtual {v1, p0, p1}, Lc8/yof;->execute(Landroid/app/Activity;Lcom/taobao/flowcustoms/data/OpenParams;)Z

    move-result v5

    .line 59
    .local v5, "result":Z
    if-eqz v5, :cond_4

    .line 60
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static getPlugin(Ljava/lang/String;)Lc8/yof;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 116
    :goto_0
    return-object v1

    .line 110
    :cond_0
    sget-object v3, Lc8/Aof;->plugins:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/yof;

    .line 111
    .local v1, "plugin":Lc8/yof;
    iget-object v3, v1, Lc8/yof;->pluginKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v1    # "plugin":Lc8/yof;
    :cond_2
    move-object v1, v2

    .line 116
    goto :goto_0
.end method

.method public static declared-synchronized removePlugin(Lc8/yof;)Z
    .locals 2
    .param p0, "plugin"    # Lc8/yof;

    .prologue
    .line 24
    const-class v1, Lc8/Aof;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    iget-object v0, p0, Lc8/yof;->pluginKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    :try_start_1
    sget-object v0, Lc8/Aof;->plugins:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
