.class public Lc8/zEb;
.super Lc8/Xzb;
.source "AMConifg.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected module:Ljava/lang/String;
    .annotation runtime Lc8/dAb;
        value = "module"
    .end annotation
.end field

.field protected monitorPoint:Ljava/lang/String;
    .annotation runtime Lc8/dAb;
        value = "mp"
    .end annotation
.end field

.field protected offline:Ljava/lang/String;
    .annotation runtime Lc8/dAb;
        value = "offline"
    .end annotation
.end field

.field private relationMap:Ljava/util/HashMap;
    .annotation runtime Lc8/eAb;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/zEb;",
            ">;"
        }
    .end annotation
.end field

.field private sampling:I
    .annotation runtime Lc8/dAb;
        value = "cp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lc8/Xzb;-><init>()V

    return-void
.end method

.method private checkSelfOffline()Z
    .locals 2

    .prologue
    .line 130
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lc8/zEb;->offline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isOffline(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 119
    :cond_0
    invoke-direct {p0}, Lc8/zEb;->checkSelfOffline()Z

    move-result v1

    .line 125
    :goto_0
    return v1

    .line 121
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    .local v0, "nextkey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lc8/zEb;->isContains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    iget-object v1, p0, Lc8/zEb;->relationMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/zEb;

    invoke-direct {v1, p1}, Lc8/zEb;->isOffline(Ljava/util/ArrayList;)Z

    move-result v1

    goto :goto_0

    .line 125
    :cond_2
    invoke-direct {p0}, Lc8/zEb;->checkSelfOffline()Z

    move-result v1

    goto :goto_0
.end method

.method private sampling(ILjava/util/ArrayList;)Z
    .locals 2
    .param p1, "samplingSeed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 39
    :cond_0
    invoke-virtual {p0, p1}, Lc8/zEb;->checkSelfSampling(I)Z

    move-result v1

    .line 45
    :goto_0
    return v1

    .line 41
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    .local v0, "nextkey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lc8/zEb;->isContains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    iget-object v1, p0, Lc8/zEb;->relationMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/zEb;

    invoke-direct {v1, p1, p2}, Lc8/zEb;->sampling(ILjava/util/ArrayList;)Z

    move-result v1

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0, p1}, Lc8/zEb;->checkSelfSampling(I)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;Lc8/zEb;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "config"    # Lc8/zEb;

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/zEb;->relationMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lc8/zEb;->relationMap:Ljava/util/HashMap;

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Lc8/zEb;->isContains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    iget-object v1, p0, Lc8/zEb;->relationMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/zEb;

    .line 60
    .local v0, "temp":Lc8/zEb;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lc8/zEb;->relationMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lc8/zEb;->relationMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p2, Lc8/zEb;->relationMap:Ljava/util/HashMap;

    iget-object v2, v0, Lc8/zEb;->relationMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 64
    :cond_1
    const-string/jumbo v1, "config object order errror"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "config:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .end local v0    # "temp":Lc8/zEb;
    :cond_2
    iget-object v1, p0, Lc8/zEb;->relationMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected checkSelfSampling(I)Z
    .locals 6
    .param p1, "samplingSeed"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    const-string/jumbo v2, "sampling"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "module"

    aput-object v4, v3, v1

    iget-object v4, p0, Lc8/zEb;->module:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v4, 0x2

    const-string/jumbo v5, "monitorPoint"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lc8/zEb;->monitorPoint:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "samplingSeed"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "sampling"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    iget v5, p0, Lc8/zEb;->sampling:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget v2, p0, Lc8/zEb;->sampling:I

    if-ge p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public enableOffline()V
    .locals 1

    .prologue
    .line 134
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lc8/zEb;->offline:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public enableOffline(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lc8/zEb;->offline:Ljava/lang/String;

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/zEb;->offline:Ljava/lang/String;

    goto :goto_0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lc8/zEb;->module:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getNext(Ljava/lang/String;)Lc8/zEb;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/zEb;->relationMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/zEb;->relationMap:Ljava/util/HashMap;

    .line 99
    :cond_0
    iget-object v0, p0, Lc8/zEb;->relationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/zEb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOrBulidNext(Ljava/lang/String;)Lc8/zEb;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lc8/zEb;->getNext(Ljava/lang/String;)Lc8/zEb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 82
    .local v1, "config":Lc8/zEb;
    if-nez v1, :cond_0

    .line 84
    :try_start_1
    invoke-virtual {p0}, Lc8/zEb;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lc8/zEb;

    move-object v1, v0

    .line 85
    iput-object p1, v1, Lc8/zEb;->module:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :cond_0
    :goto_0
    :try_start_2
    iget-object v3, p0, Lc8/zEb;->relationMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    monitor-exit p0

    return-object v1

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 81
    .end local v1    # "config":Lc8/zEb;
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected declared-synchronized isContains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/zEb;->relationMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lc8/zEb;->relationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOffline(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .local v0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-direct {p0, v0}, Lc8/zEb;->isOffline(Ljava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method public isSampled(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .param p1, "samplingSeed"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    .line 31
    .local p4, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .local v0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-direct {p0, p1, v0}, Lc8/zEb;->sampling(ILjava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method public setSampling(I)V
    .locals 0
    .param p1, "sampling"    # I

    .prologue
    .line 107
    iput p1, p0, Lc8/zEb;->sampling:I

    .line 108
    return-void
.end method
