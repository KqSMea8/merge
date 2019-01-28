.class public Lc8/Gsb;
.super Lc8/Arb;
.source "ExpressionTimingHandler.java"

# interfaces
.implements Lc8/Brb;


# instance fields
.field private isFinish:Z

.field private mAnimationFrame:Lc8/Erb;

.field private mStartTime:J


# direct methods
.method constructor <init>(Lc8/nVf;)V
    .locals 2
    .param p1, "instance"    # Lc8/nVf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lc8/Arb;-><init>(Lc8/nVf;)V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/Gsb;->mStartTime:J

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Gsb;->isFinish:Z

    .line 32
    iget-object v0, p0, Lc8/Gsb;->mAnimationFrame:Lc8/Erb;

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lc8/Erb;->newInstance()Lc8/Erb;

    move-result-object v0

    iput-object v0, p0, Lc8/Gsb;->mAnimationFrame:Lc8/Erb;

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lc8/Gsb;->mAnimationFrame:Lc8/Erb;

    invoke-virtual {v0}, Lc8/Erb;->clear()V

    goto :goto_0
.end method

.method private fireEventByState(Ljava/lang/String;J)V
    .locals 4
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "t"    # J

    .prologue
    .line 125
    iget-object v1, p0, Lc8/Gsb;->mCallback:Lc8/EWf;

    if-eqz v1, :cond_0

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "state"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string/jumbo v1, "t"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lc8/Gsb;->mCallback:Lc8/EWf;

    invoke-interface {v1, v0}, Lc8/EWf;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 131
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const-string/jumbo v1, "ExpressionBinding"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ">>>>>>>>>>>fire event:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .end local v0    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private handleTimingCallback()V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 68
    iget-wide v4, p0, Lc8/Gsb;->mStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 69
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lc8/Gsb;->mStartTime:J

    .line 70
    const-wide/16 v0, 0x0

    .line 71
    .local v0, "deltaT":J
    const/4 v3, 0x0

    iput-boolean v3, p0, Lc8/Gsb;->isFinish:Z

    .line 78
    :goto_0
    :try_start_0
    iget-object v3, p0, Lc8/Gsb;->mScope:Ljava/util/Map;

    long-to-double v4, v0

    invoke-static {v3, v4, v5}, Lc8/otb;->applyTimingValuesToScope(Ljava/util/Map;D)V

    .line 80
    iget-boolean v3, p0, Lc8/Gsb;->isFinish:Z

    if-nez v3, :cond_0

    .line 81
    iget-object v3, p0, Lc8/Gsb;->mExpressionHoldersMap:Ljava/util/Map;

    iget-object v4, p0, Lc8/Gsb;->mScope:Ljava/util/Map;

    const-string/jumbo v5, "timing"

    invoke-virtual {p0, v3, v4, v5}, Lc8/Gsb;->consumeExpression(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-object v3, p0, Lc8/Gsb;->mExitExpressionPair:Lc8/ysb;

    iget-object v4, p0, Lc8/Gsb;->mScope:Ljava/util/Map;

    invoke-virtual {p0, v3, v4}, Lc8/Gsb;->evaluateExitExpression(Lc8/ysb;Ljava/util/Map;)Z

    move-result v3

    iput-boolean v3, p0, Lc8/Gsb;->isFinish:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_1
    return-void

    .line 73
    .end local v0    # "deltaT":J
    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lc8/Gsb;->mStartTime:J

    sub-long v0, v4, v6

    .restart local v0    # "deltaT":J
    goto :goto_0

    .line 84
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ExpressionBinding"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "runtime error\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public doFrame()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lc8/Gsb;->handleTimingCallback()V

    .line 140
    return-void
.end method

.method public onActivityPause()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public onActivityResume()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onBindExpression(Ljava/lang/String;Ljava/util/Map;Lc8/ysb;Ljava/util/List;Lc8/EWf;)V
    .locals 4
    .param p1, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "exitExpressionPair"    # Lc8/ysb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "callback"    # Lc8/EWf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/ysb;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "globalConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "expressionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-super/range {p0 .. p5}, Lc8/Arb;->onBindExpression(Ljava/lang/String;Ljava/util/Map;Lc8/ysb;Ljava/util/List;Lc8/EWf;)V

    .line 54
    iget-object v0, p0, Lc8/Gsb;->mAnimationFrame:Lc8/Erb;

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lc8/Erb;->newInstance()Lc8/Erb;

    move-result-object v0

    iput-object v0, p0, Lc8/Gsb;->mAnimationFrame:Lc8/Erb;

    .line 58
    :cond_0
    const-string/jumbo v0, "start"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lc8/Gsb;->fireEventByState(Ljava/lang/String;J)V

    .line 61
    iget-object v0, p0, Lc8/Gsb;->mAnimationFrame:Lc8/Erb;

    invoke-virtual {v0}, Lc8/Erb;->clear()V

    .line 62
    iget-object v0, p0, Lc8/Gsb;->mAnimationFrame:Lc8/Erb;

    invoke-virtual {v0, p0}, Lc8/Erb;->requestAnimationFrame(Lc8/Brb;)V

    .line 63
    return-void
.end method

.method public onCreate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lc8/Gsb;->clearExpressions()V

    .line 105
    iget-object v0, p0, Lc8/Gsb;->mAnimationFrame:Lc8/Erb;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lc8/Gsb;->mAnimationFrame:Lc8/Erb;

    invoke-virtual {v0}, Lc8/Erb;->terminate()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Gsb;->mAnimationFrame:Lc8/Erb;

    .line 109
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/Gsb;->mStartTime:J

    .line 110
    return-void
.end method

.method public onDisable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 91
    const-string/jumbo v0, "end"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lc8/Gsb;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lc8/Gsb;->fireEventByState(Ljava/lang/String;J)V

    .line 92
    invoke-virtual {p0}, Lc8/Gsb;->clearExpressions()V

    .line 93
    iget-object v0, p0, Lc8/Gsb;->mAnimationFrame:Lc8/Erb;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lc8/Gsb;->mAnimationFrame:Lc8/Erb;

    invoke-virtual {v0}, Lc8/Erb;->clear()V

    .line 96
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/Gsb;->mStartTime:J

    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method protected onExit(Ljava/util/Map;)V
    .locals 6
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "t"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 115
    .local v0, "t":D
    const-string/jumbo v2, "exit"

    double-to-long v4, v0

    invoke-direct {p0, v2, v4, v5}, Lc8/Gsb;->fireEventByState(Ljava/lang/String;J)V

    .line 118
    iget-object v2, p0, Lc8/Gsb;->mAnimationFrame:Lc8/Erb;

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lc8/Gsb;->mAnimationFrame:Lc8/Erb;

    invoke-virtual {v2}, Lc8/Erb;->clear()V

    .line 121
    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lc8/Gsb;->mStartTime:J

    .line 122
    return-void
.end method

.method public onStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    return-void
.end method
