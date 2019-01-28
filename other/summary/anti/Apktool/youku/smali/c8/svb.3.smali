.class public Lc8/svb;
.super Lc8/ZUf;
.source "WXPreRenderModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/rvb;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "WXPreRenderModule"


# instance fields
.field private final mCachedParams:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/rvb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lc8/ZUf;-><init>()V

    .line 29
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/svb;->mCachedParams:Landroid/support/v4/util/ArrayMap;

    .line 82
    return-void
.end method


# virtual methods
.method public addTask(Ljava/lang/String;Ljava/util/Map;Lc8/EWf;)V
    .locals 6
    .param p1, "targetUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "callback"    # Lc8/EWf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lc8/KVf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/svb;->mWXSDKInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/svb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 43
    :cond_0
    const-string/jumbo v0, "WXPreRenderModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add task failed. [url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",instance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/svb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lc8/svb;->mCachedParams:Landroid/support/v4/util/ArrayMap;

    new-instance v1, Lc8/rvb;

    invoke-direct {v1, p1, p2}, Lc8/rvb;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {}, Lc8/qvb;->getInstance()Lc8/qvb;

    move-result-object v0

    iget-object v1, p0, Lc8/svb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lc8/qvb;->addTaskInternal(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lc8/EWf;Z)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 5

    .prologue
    .line 54
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    const-string/jumbo v2, "WXPreRenderModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "module destroying. [cache params num:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/svb;->mCachedParams:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-static {}, Lc8/qvb;->getInstance()Lc8/qvb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/qvb;->getInternalCache()Lc8/lvb;

    move-result-object v0

    .line 58
    .local v0, "cache":Lc8/lvb;
    iget-object v2, p0, Lc8/svb;->mCachedParams:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 59
    iget-object v2, p0, Lc8/svb;->mCachedParams:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lc8/lvb;->remove(Ljava/lang/String;)Lc8/kvb;

    goto :goto_0

    .line 62
    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lc8/svb;->mCachedParams:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 64
    :cond_2
    return-void
.end method

.method public onActivityResume()V
    .locals 8

    .prologue
    .line 68
    invoke-super {p0}, Lc8/ZUf;->onActivityResume()V

    .line 69
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string/jumbo v0, "WXPreRenderModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "activity resuming. [cache params num : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lc8/svb;->mCachedParams:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lc8/svb;->mCachedParams:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lc8/svb;->mCachedParams:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 75
    iget-object v0, p0, Lc8/svb;->mCachedParams:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    .local v2, "url":Ljava/lang/String;
    iget-object v0, p0, Lc8/svb;->mCachedParams:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/rvb;

    .line 77
    .local v7, "params":Lc8/rvb;
    invoke-static {}, Lc8/qvb;->getInstance()Lc8/qvb;

    move-result-object v0

    iget-object v1, p0, Lc8/svb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, v7, Lc8/rvb;->options:Ljava/util/Map;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lc8/qvb;->addTaskInternal(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lc8/EWf;Z)V

    .line 74
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 80
    .end local v2    # "url":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "params":Lc8/rvb;
    :cond_1
    return-void
.end method
