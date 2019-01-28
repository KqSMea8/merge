.class public Lc8/ONb;
.super Ljava/lang/Object;
.source "KaleidoscopeUnifiedCenter.java"


# static fields
.field private static instance:Lc8/ONb;


# instance fields
.field private mapDowngradeTimeout:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mapObserve:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/PNb;",
            ">;>;"
        }
    .end annotation
.end field

.field private mapRenderTimeout:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mapSingletonObserve:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/TNb;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/ONb;->mapObserve:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/ONb;->mapSingletonObserve:Ljava/util/HashMap;

    .line 47
    return-void
.end method

.method public static getInstance()Lc8/ONb;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lc8/ONb;->instance:Lc8/ONb;

    if-nez v0, :cond_0

    .line 37
    const-class v1, Lc8/ONb;

    monitor-enter v1

    .line 38
    :try_start_0
    new-instance v0, Lc8/ONb;

    invoke-direct {v0}, Lc8/ONb;-><init>()V

    sput-object v0, Lc8/ONb;->instance:Lc8/ONb;

    .line 39
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_0
    sget-object v0, Lc8/ONb;->instance:Lc8/ONb;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getDowngradeTimeoOut(Ljava/lang/String;)I
    .locals 1
    .param p1, "module"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lc8/ONb;->mapDowngradeTimeout:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lc8/ONb;->mapDowngradeTimeout:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInject(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "module"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/TNb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    const-string/jumbo p1, "globe"

    .line 78
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v1, "kaleidoscopeUnifieds":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/kaleidoscope/view/OnLoadListener;>;"
    iget-object v2, p0, Lc8/ONb;->mapSingletonObserve:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Lc8/ONb;->mapSingletonObserve:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    :cond_1
    iget-object v2, p0, Lc8/ONb;->mapObserve:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    iget-object v2, p0, Lc8/ONb;->mapObserve:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/PNb;

    .line 87
    .local v0, "factory":Lc8/PNb;
    invoke-virtual {v0}, Lc8/PNb;->newInstance()Lc8/TNb;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    .end local v0    # "factory":Lc8/PNb;
    :cond_2
    return-object v1
.end method

.method public getRenderTimeoOut(Ljava/lang/String;)I
    .locals 1
    .param p1, "module"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lc8/ONb;->mapRenderTimeout:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lc8/ONb;->mapRenderTimeout:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDowngradeTimeOut(ILjava/lang/String;)V
    .locals 2
    .param p1, "downgradeTimeOut"    # I
    .param p2, "module"    # Ljava/lang/String;

    .prologue
    .line 110
    if-nez p2, :cond_0

    .line 111
    const-string/jumbo p2, "globe"

    .line 113
    :cond_0
    iget-object v0, p0, Lc8/ONb;->mapDowngradeTimeout:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public setInject(Lc8/PNb;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "inject"    # Lc8/PNb;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "singleton"    # Z

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 51
    const-string/jumbo p2, "globe"

    .line 53
    :cond_0
    if-nez p3, :cond_2

    .line 54
    iget-object v3, p0, Lc8/ONb;->mapObserve:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lc8/ONb;->mapObserve:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 55
    iget-object v3, p0, Lc8/ONb;->mapObserve:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :goto_0
    return-void

    .line 57
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v1, "kaleidoscopeUnifieds":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/kaleidoscope/unified/OnLoadListenerFactory;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v3, p0, Lc8/ONb;->mapObserve:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    .end local v1    # "kaleidoscopeUnifieds":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/kaleidoscope/unified/OnLoadListenerFactory;>;"
    :cond_2
    invoke-virtual {p1}, Lc8/PNb;->newInstance()Lc8/TNb;

    move-result-object v0

    .line 63
    .local v0, "instance":Lc8/TNb;
    iget-object v3, p0, Lc8/ONb;->mapSingletonObserve:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lc8/ONb;->mapSingletonObserve:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 64
    iget-object v3, p0, Lc8/ONb;->mapSingletonObserve:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v2, "kaleidoscopeUnifieds":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/kaleidoscope/view/OnLoadListener;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v3, p0, Lc8/ONb;->mapSingletonObserve:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setRenderTimeOut(ILjava/lang/String;)V
    .locals 2
    .param p1, "renderTimeOut"    # I
    .param p2, "module"    # Ljava/lang/String;

    .prologue
    .line 95
    if-nez p2, :cond_0

    .line 96
    const-string/jumbo p2, "globe"

    .line 98
    :cond_0
    iget-object v0, p0, Lc8/ONb;->mapRenderTimeout:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method
