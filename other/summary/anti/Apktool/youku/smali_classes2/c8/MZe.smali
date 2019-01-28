.class public Lc8/MZe;
.super Ljava/lang/Object;
.source "ApplicationCompat.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final mCompat:Lc8/OZe;


# direct methods
.method constructor <init>(Lc8/OZe;)V
    .locals 0
    .param p1, "compat"    # Lc8/OZe;

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lc8/MZe;->mCompat:Lc8/OZe;

    .line 213
    return-void
.end method

.method private static timeingCallbackMethod(Lc8/OZe;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 8
    .param p0, "callback"    # Lc8/OZe;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "method"    # Ljava/lang/String;

    .prologue
    const-wide/32 v6, 0xf4240

    .line 220
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 221
    .local v2, "time":J
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    .line 222
    .local v0, "cputime":J
    const-string/jumbo v4, "onActivityCreated"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 223
    invoke-interface {p0, p1, p2}, Lc8/OZe;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 237
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v4

    sub-long/2addr v4, v0

    div-long v0, v4, v6

    .line 238
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    div-long v2, v4, v6

    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LifeTiming - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms (cpu) / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms (real)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    return-void

    .line 224
    :cond_1
    const-string/jumbo v4, "onActivityStarted"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 225
    invoke-interface {p0, p1}, Lc8/OZe;->onActivityStarted(Landroid/app/Activity;)V

    goto :goto_0

    .line 226
    :cond_2
    const-string/jumbo v4, "onActivityResumed"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 227
    invoke-interface {p0, p1}, Lc8/OZe;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_0

    .line 228
    :cond_3
    const-string/jumbo v4, "onActivityPaused"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 229
    invoke-interface {p0, p1}, Lc8/OZe;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_0

    .line 230
    :cond_4
    const-string/jumbo v4, "onActivityStopped"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 231
    invoke-interface {p0, p1}, Lc8/OZe;->onActivityStopped(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 232
    :cond_5
    const-string/jumbo v4, "onActivityDestroyed"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 233
    invoke-interface {p0, p1}, Lc8/OZe;->onActivityDestroyed(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 234
    :cond_6
    const-string/jumbo v4, "onActivitySaveInstanceState"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    invoke-interface {p0, p1, p2}, Lc8/OZe;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Lc8/jFp;
        .end annotation
    .end param

    .prologue
    .line 206
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 208
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 207
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lc8/MZe;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lc8/MZe;->mCompat:Lc8/OZe;

    check-cast p1, Lc8/MZe;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lc8/MZe;->mCompat:Lc8/OZe;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lc8/MZe;->mCompat:Lc8/OZe;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lc8/jFp;
        .end annotation
    .end param

    .prologue
    .line 154
    invoke-static {}, Lc8/Def;->isDebug()Z

    move-result v0

    .line 155
    .local v0, "debug":Z
    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lc8/MZe;->mCompat:Lc8/OZe;

    const-string/jumbo v2, "onActivityCreated"

    invoke-static {v1, p1, p2, v2}, Lc8/MZe;->timeingCallbackMethod(Lc8/OZe;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v1, p0, Lc8/MZe;->mCompat:Lc8/OZe;

    invoke-interface {v1, p1, p2}, Lc8/OZe;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 196
    invoke-static {}, Lc8/Def;->isDebug()Z

    move-result v0

    .line 197
    .local v0, "debug":Z
    if-eqz v0, :cond_0

    .line 198
    iget-object v1, p0, Lc8/MZe;->mCompat:Lc8/OZe;

    const/4 v2, 0x0

    const-string/jumbo v3, "onActivityDestroyed"

    invoke-static {v1, p1, v2, v3}, Lc8/MZe;->timeingCallbackMethod(Lc8/OZe;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v1, p0, Lc8/MZe;->mCompat:Lc8/OZe;

    invoke-interface {v1, p1}, Lc8/OZe;->onActivityDestroyed(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 175
    invoke-static {}, Lc8/Def;->isDebug()Z

    move-result v0

    .line 176
    .local v0, "debug":Z
    if-eqz v0, :cond_0

    .line 177
    iget-object v1, p0, Lc8/MZe;->mCompat:Lc8/OZe;

    const/4 v2, 0x0

    const-string/jumbo v3, "onActivityPaused"

    invoke-static {v1, p1, v2, v3}, Lc8/MZe;->timeingCallbackMethod(Lc8/OZe;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lc8/MZe;->mCompat:Lc8/OZe;

    invoke-interface {v1, p1}, Lc8/OZe;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 168
    invoke-static {}, Lc8/Def;->isDebug()Z

    move-result v0

    .line 169
    .local v0, "debug":Z
    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lc8/MZe;->mCompat:Lc8/OZe;

    const/4 v2, 0x0

    const-string/jumbo v3, "onActivityResumed"

    invoke-static {v1, p1, v2, v3}, Lc8/MZe;->timeingCallbackMethod(Lc8/OZe;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v1, p0, Lc8/MZe;->mCompat:Lc8/OZe;

    invoke-interface {v1, p1}, Lc8/OZe;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 189
    invoke-static {}, Lc8/Def;->isDebug()Z

    move-result v0

    .line 190
    .local v0, "debug":Z
    if-eqz v0, :cond_0

    .line 191
    iget-object v1, p0, Lc8/MZe;->mCompat:Lc8/OZe;

    const-string/jumbo v2, "onActivitySaveInstanceState"

    invoke-static {v1, p1, p2, v2}, Lc8/MZe;->timeingCallbackMethod(Lc8/OZe;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v1, p0, Lc8/MZe;->mCompat:Lc8/OZe;

    invoke-interface {v1, p1, p2}, Lc8/OZe;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 161
    invoke-static {}, Lc8/Def;->isDebug()Z

    move-result v0

    .line 162
    .local v0, "debug":Z
    if-eqz v0, :cond_0

    .line 163
    iget-object v1, p0, Lc8/MZe;->mCompat:Lc8/OZe;

    const/4 v2, 0x0

    const-string/jumbo v3, "onActivityStarted"

    invoke-static {v1, p1, v2, v3}, Lc8/MZe;->timeingCallbackMethod(Lc8/OZe;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v1, p0, Lc8/MZe;->mCompat:Lc8/OZe;

    invoke-interface {v1, p1}, Lc8/OZe;->onActivityStarted(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 182
    invoke-static {}, Lc8/Def;->isDebug()Z

    move-result v0

    .line 183
    .local v0, "debug":Z
    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lc8/MZe;->mCompat:Lc8/OZe;

    const/4 v2, 0x0

    const-string/jumbo v3, "onActivityStopped"

    invoke-static {v1, p1, v2, v3}, Lc8/MZe;->timeingCallbackMethod(Lc8/OZe;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v1, p0, Lc8/MZe;->mCompat:Lc8/OZe;

    invoke-interface {v1, p1}, Lc8/OZe;->onActivityStopped(Landroid/app/Activity;)V

    goto :goto_0
.end method
