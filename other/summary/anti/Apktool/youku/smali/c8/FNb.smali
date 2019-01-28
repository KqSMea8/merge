.class public final Lc8/FNb;
.super Ljava/lang/Object;
.source "Kaleidoscope.java"


# static fields
.field private static kaleidoscope:Lc8/FNb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static getInstance()Lc8/FNb;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lc8/FNb;->kaleidoscope:Lc8/FNb;

    if-nez v0, :cond_0

    .line 27
    const-class v1, Lc8/FNb;

    monitor-enter v1

    .line 28
    :try_start_0
    new-instance v0, Lc8/FNb;

    invoke-direct {v0}, Lc8/FNb;-><init>()V

    sput-object v0, Lc8/FNb;->kaleidoscope:Lc8/FNb;

    .line 29
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_0
    sget-object v0, Lc8/FNb;->kaleidoscope:Lc8/FNb;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getView(Landroid/content/Context;Landroid/os/Handler;Lcom/alibaba/kaleidoscope/dto/KaleidoscopeBundle;)Lc8/SNb;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "bundle"    # Lcom/alibaba/kaleidoscope/dto/KaleidoscopeBundle;

    .prologue
    .line 38
    iget-object v0, p3, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeBundle;->moduleTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeBundle;->moduleTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    const-string/jumbo v0, "globe"

    iput-object v0, p3, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeBundle;->moduleTag:Ljava/lang/String;

    .line 42
    :cond_0
    iget-object v0, p3, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeBundle;->cacheGroup:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeBundle;->cacheGroup:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    const-string/jumbo v0, "globe"

    iput-object v0, p3, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeBundle;->moduleTag:Ljava/lang/String;

    .line 46
    :cond_1
    iget-object v1, p3, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeBundle;->moduleTag:Ljava/lang/String;

    iget-object v2, p3, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeBundle;->cacheGroup:Ljava/lang/String;

    iget-object v3, p3, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeBundle;->typeCode:Ljava/lang/String;

    iget-object v6, p3, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeBundle;->configJsonString:Ljava/lang/String;

    iget-object v7, p3, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeBundle;->dataJsonString:Ljava/util/HashMap;

    iget-object v8, p3, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeBundle;->userInfoString:Ljava/util/HashMap;

    iget-object v9, p3, Lcom/alibaba/kaleidoscope/dto/KaleidoscopeBundle;->onLoadListener:Lc8/TNb;

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v9}, Lc8/FNb;->getView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lc8/TNb;)Lc8/SNb;

    move-result-object v0

    return-object v0
.end method

.method public getView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lc8/TNb;)Lc8/SNb;
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cacheGroup"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "typeCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "configJsonString"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/HashMap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/HashMap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "onLoadListener"    # Lc8/TNb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/TNb;",
            ")",
            "Lc8/SNb;"
        }
    .end annotation

    .prologue
    .line 65
    .local p7, "dataJsonString":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p8, "userInfoString":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    invoke-static {}, Lc8/HNb;->getInstance()Lc8/HNb;

    move-result-object v1

    invoke-virtual {v1, p3, p2}, Lc8/HNb;->isCached(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    invoke-static {}, Lc8/HNb;->getInstance()Lc8/HNb;

    move-result-object v1

    invoke-virtual {v1, p3, p2}, Lc8/HNb;->get(Ljava/lang/String;Ljava/lang/String;)Lc8/SNb;

    move-result-object v0

    .line 68
    .local v0, "kaleidoscopeView":Lc8/SNb;
    invoke-virtual {v0}, Lc8/SNb;->removeAllViews()V

    .line 69
    invoke-virtual {v0, p4, p6, p7}, Lc8/SNb;->bindData(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 71
    .end local v0    # "kaleidoscopeView":Lc8/SNb;
    :cond_1
    new-instance v0, Lc8/SNb;

    invoke-direct {v0, p4}, Lc8/SNb;-><init>(Landroid/content/Context;)V

    .line 72
    .restart local v0    # "kaleidoscopeView":Lc8/SNb;
    invoke-virtual {v0, p5}, Lc8/SNb;->setHandler(Landroid/os/Handler;)V

    .line 73
    invoke-virtual {v0, p1}, Lc8/SNb;->setModuleName(Ljava/lang/String;)V

    .line 74
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 75
    invoke-virtual {v0, p2}, Lc8/SNb;->setCacheGroup(Ljava/lang/String;)V

    .line 77
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 78
    invoke-virtual {v0, p3}, Lc8/SNb;->setTypeCode(Ljava/lang/String;)V

    .line 80
    :cond_3
    if-eqz p8, :cond_4

    invoke-virtual {p8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 81
    invoke-virtual {v0, p8}, Lc8/SNb;->setUserInfoString(Ljava/util/HashMap;)V

    .line 84
    :cond_4
    if-eqz p9, :cond_5

    .line 85
    invoke-virtual {v0, p9}, Lc8/SNb;->setOnLoadListener(Lc8/TNb;)V

    .line 88
    :cond_5
    invoke-virtual {v0, p4, p6}, Lc8/SNb;->creatView(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    if-eqz p7, :cond_0

    .line 91
    invoke-virtual {v0, p4, p6, p7}, Lc8/SNb;->bindData(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public refreshView(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/util/HashMap;Lc8/SNb;)Lc8/SNb;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "configJsonString"    # Ljava/lang/String;
    .param p5, "kaleidoscopeView"    # Lc8/SNb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/SNb;",
            ")",
            "Lc8/SNb;"
        }
    .end annotation

    .prologue
    .line 114
    .local p4, "dataJsonString":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "globe"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lc8/FNb;->refreshView(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/util/HashMap;Lc8/SNb;)Lc8/SNb;

    move-result-object v0

    return-object v0
.end method

.method public refreshView(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/util/HashMap;Lc8/SNb;)Lc8/SNb;
    .locals 0
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "configJsonString"    # Ljava/lang/String;
    .param p6, "kaleidoscopeView"    # Lc8/SNb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/SNb;",
            ")",
            "Lc8/SNb;"
        }
    .end annotation

    .prologue
    .line 107
    .local p5, "dataJsonString":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p6, p3}, Lc8/SNb;->setHandler(Landroid/os/Handler;)V

    .line 108
    invoke-virtual {p6, p2, p4, p5}, Lc8/SNb;->bindData(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 109
    return-object p6
.end method
