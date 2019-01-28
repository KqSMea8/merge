.class public Lc8/gbf;
.super Lc8/KZe;
.source "PanguActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/fbf;
    }
.end annotation


# instance fields
.field private final mIndividualActivityLifecycleCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/fbf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lc8/KZe;-><init>()V

    .line 91
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lc8/gbf;->mIndividualActivityLifecycleCallbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getPanguApplication()Lc8/kbf;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lc8/gbf;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lc8/kbf;

    .line 88
    .local v0, "application":Lc8/kbf;
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lc8/jFp;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-super {p0, p1}, Lc8/KZe;->onCreate(Landroid/os/Bundle;)V

    .line 38
    iget-object v2, p0, Lc8/gbf;->mIndividualActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    iget-object v2, p0, Lc8/gbf;->mIndividualActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fbf;

    .line 40
    .local v0, "callbacks":Lc8/fbf;
    invoke-interface {v0, p0}, Lc8/fbf;->onCreated(Landroid/app/Activity;)V

    goto :goto_0

    .line 41
    .end local v0    # "callbacks":Lc8/fbf;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 72
    iget-object v2, p0, Lc8/gbf;->mIndividualActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    iget-object v2, p0, Lc8/gbf;->mIndividualActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fbf;

    .line 74
    .local v0, "callbacks":Lc8/fbf;
    invoke-interface {v0, p0}, Lc8/fbf;->onDestroyed(Landroid/app/Activity;)V

    goto :goto_0

    .line 75
    .end local v0    # "callbacks":Lc8/fbf;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-super {p0}, Lc8/KZe;->onDestroy()V

    .line 76
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 58
    iget-object v2, p0, Lc8/gbf;->mIndividualActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    iget-object v2, p0, Lc8/gbf;->mIndividualActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fbf;

    .line 60
    .local v0, "callbacks":Lc8/fbf;
    invoke-interface {v0, p0}, Lc8/fbf;->onPaused(Landroid/app/Activity;)V

    goto :goto_0

    .line 61
    .end local v0    # "callbacks":Lc8/fbf;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-super {p0}, Lc8/KZe;->onPause()V

    .line 62
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 51
    invoke-super {p0}, Lc8/KZe;->onResume()V

    .line 52
    iget-object v2, p0, Lc8/gbf;->mIndividualActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    iget-object v2, p0, Lc8/gbf;->mIndividualActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fbf;

    .line 54
    .local v0, "callbacks":Lc8/fbf;
    invoke-interface {v0, p0}, Lc8/fbf;->onResumed(Landroid/app/Activity;)V

    goto :goto_0

    .line 55
    .end local v0    # "callbacks":Lc8/fbf;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 44
    invoke-super {p0}, Lc8/KZe;->onStart()V

    .line 45
    iget-object v2, p0, Lc8/gbf;->mIndividualActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    iget-object v2, p0, Lc8/gbf;->mIndividualActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fbf;

    .line 47
    .local v0, "callbacks":Lc8/fbf;
    invoke-interface {v0, p0}, Lc8/fbf;->onStarted(Landroid/app/Activity;)V

    goto :goto_0

    .line 48
    .end local v0    # "callbacks":Lc8/fbf;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 65
    iget-object v2, p0, Lc8/gbf;->mIndividualActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    iget-object v2, p0, Lc8/gbf;->mIndividualActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fbf;

    .line 67
    .local v0, "callbacks":Lc8/fbf;
    invoke-interface {v0, p0}, Lc8/fbf;->onStopped(Landroid/app/Activity;)V

    goto :goto_0

    .line 68
    .end local v0    # "callbacks":Lc8/fbf;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-super {p0}, Lc8/KZe;->onStop()V

    .line 69
    return-void
.end method

.method public registerIndividualActivityLifecycleCallback(Lc8/fbf;)V
    .locals 1
    .param p1, "callback"    # Lc8/fbf;

    .prologue
    .line 79
    iget-object v0, p0, Lc8/gbf;->mIndividualActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public unregisterIndividualActivityLifecycleCallback(Lc8/fbf;)V
    .locals 1
    .param p1, "callback"    # Lc8/fbf;

    .prologue
    .line 83
    iget-object v0, p0, Lc8/gbf;->mIndividualActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method
