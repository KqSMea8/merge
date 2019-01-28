.class public Lc8/ibf;
.super Ljava/lang/Object;
.source "PanguApplication.java"

# interfaces
.implements Lc8/OZe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/kbf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CrossActivityLifecycleCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/kbf;


# direct methods
.method constructor <init>(Lc8/kbf;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lc8/ibf;->this$0:Lc8/kbf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lc8/jFp;
        .end annotation
    .end param

    .prologue
    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CrossActivityLifecycleCallbacks internal:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/ibf;->this$0:Lc8/kbf;

    iget-object v5, v5, Lc8/kbf;->mCrossActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/ibf;->this$0:Lc8/kbf;

    iget-object v5, v5, Lc8/kbf;->mCrossActivityLifecycleCallbacks:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    iget-object v4, p0, Lc8/ibf;->this$0:Lc8/kbf;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v4, Lc8/kbf;->mWeakActivity:Ljava/lang/ref/WeakReference;

    .line 118
    iget-object v4, p0, Lc8/ibf;->this$0:Lc8/kbf;

    iget-object v4, v4, Lc8/kbf;->mCreationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lc8/ibf;->this$0:Lc8/kbf;

    iget-object v4, v4, Lc8/kbf;->mCrossActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 119
    iget-object v4, p0, Lc8/ibf;->this$0:Lc8/kbf;

    iget-object v4, v4, Lc8/kbf;->mCrossActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/hbf;

    .line 120
    .local v0, "callback":Lc8/hbf;
    invoke-static {}, Lc8/Def;->isDebug()Z

    move-result v1

    .line 121
    .local v1, "debug":Z
    if-eqz v1, :cond_0

    .line 123
    :try_start_0
    const-string/jumbo v4, "onCreated"

    invoke-static {v0, p1, v4}, Lc8/kbf;->timeingCallbackMethod(Lc8/hbf;Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "TaobaoInitializer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "onCreated exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 128
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-interface {v0, p1}, Lc8/hbf;->onCreated(Landroid/app/Activity;)V

    goto :goto_0

    .line 131
    .end local v0    # "callback":Lc8/hbf;
    .end local v1    # "debug":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 158
    iget-object v3, p0, Lc8/ibf;->this$0:Lc8/kbf;

    iget-object v3, v3, Lc8/kbf;->mCreationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lc8/ibf;->this$0:Lc8/kbf;

    iget-object v3, v3, Lc8/kbf;->mCrossActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 159
    iget-object v3, p0, Lc8/ibf;->this$0:Lc8/kbf;

    iget-object v3, v3, Lc8/kbf;->mCrossActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/hbf;

    .line 160
    .local v0, "callback":Lc8/hbf;
    invoke-static {}, Lc8/Def;->isDebug()Z

    move-result v1

    .line 161
    .local v1, "debug":Z
    if-eqz v1, :cond_0

    .line 162
    const-string/jumbo v3, "onDestroyed"

    invoke-static {v0, p1, v3}, Lc8/kbf;->timeingCallbackMethod(Lc8/hbf;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-interface {v0, p1}, Lc8/hbf;->onDestroyed(Landroid/app/Activity;)V

    goto :goto_0

    .line 167
    .end local v0    # "callback":Lc8/hbf;
    .end local v1    # "debug":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 170
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 169
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 134
    iget-object v3, p0, Lc8/ibf;->this$0:Lc8/kbf;

    iget-object v3, v3, Lc8/kbf;->mStartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lc8/ibf;->this$0:Lc8/kbf;

    iget-object v3, v3, Lc8/kbf;->mCrossActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 135
    iget-object v3, p0, Lc8/ibf;->this$0:Lc8/kbf;

    iget-object v3, v3, Lc8/kbf;->mCrossActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/hbf;

    .line 136
    .local v0, "callback":Lc8/hbf;
    invoke-static {}, Lc8/Def;->isDebug()Z

    move-result v1

    .line 137
    .local v1, "debug":Z
    if-eqz v1, :cond_0

    .line 138
    const-string/jumbo v3, "onStarted"

    invoke-static {v0, p1, v3}, Lc8/kbf;->timeingCallbackMethod(Lc8/hbf;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-interface {v0, p1}, Lc8/hbf;->onStarted(Landroid/app/Activity;)V

    goto :goto_0

    .line 143
    .end local v0    # "callback":Lc8/hbf;
    .end local v1    # "debug":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 146
    iget-object v3, p0, Lc8/ibf;->this$0:Lc8/kbf;

    iget-object v3, v3, Lc8/kbf;->mStartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lc8/ibf;->this$0:Lc8/kbf;

    iget-object v3, v3, Lc8/kbf;->mCrossActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 147
    iget-object v3, p0, Lc8/ibf;->this$0:Lc8/kbf;

    iget-object v3, v3, Lc8/kbf;->mCrossActivityLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/hbf;

    .line 148
    .local v0, "callback":Lc8/hbf;
    invoke-static {}, Lc8/Def;->isDebug()Z

    move-result v1

    .line 149
    .local v1, "debug":Z
    if-eqz v1, :cond_0

    .line 150
    const-string/jumbo v3, "onStopped"

    invoke-static {v0, p1, v3}, Lc8/kbf;->timeingCallbackMethod(Lc8/hbf;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {v0, p1}, Lc8/hbf;->onStopped(Landroid/app/Activity;)V

    goto :goto_0

    .line 155
    .end local v0    # "callback":Lc8/hbf;
    .end local v1    # "debug":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
