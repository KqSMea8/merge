.class public Lc8/NLj;
.super Ljava/lang/Object;
.source "YoukuActivityLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static LAST_ACTIVITY:Ljava/lang/String;

.field private static PROCESS_ID:Ljava/lang/String;

.field private static SAVE_ACTIVITY:Ljava/lang/String;

.field private static SAVE_TIME:Ljava/lang/String;


# instance fields
.field public count:I

.field private lastActivityName:Ljava/lang/String;

.field private mLastClearMemoryCache:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "SAVE_ACTIVITY"

    sput-object v0, Lc8/NLj;->SAVE_ACTIVITY:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "LAST_ACTIVITY"

    sput-object v0, Lc8/NLj;->LAST_ACTIVITY:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "PID"

    sput-object v0, Lc8/NLj;->PROCESS_ID:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "SAVE_TIME"

    sput-object v0, Lc8/NLj;->SAVE_TIME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lc8/NLj;->count:I

    return-void
.end method

.method private ignoreAutoPageAppear(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 257
    const-string/jumbo v1, "HomePageActivity"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const/4 v0, 0x1

    .line 265
    .local v0, "bIgnore":Z
    :goto_0
    return v0

    .line 259
    .end local v0    # "bIgnore":Z
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.yunos.tvhelper."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    const/4 v0, 0x1

    .restart local v0    # "bIgnore":Z
    goto :goto_0

    .line 262
    .end local v0    # "bIgnore":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "bIgnore":Z
    goto :goto_0
.end method

.method public static isEnterForeground()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lc8/OLj;->enterForeground:Z

    return v0
.end method

.method private onMiPushActive(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 221
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 222
    invoke-static {p1}, Lc8/Hzk;->checkXiaomiDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "payload"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "payload":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 225
    invoke-static {v5}, Lc8/cin;->postMIFeedback(Ljava/lang/String;)V

    .line 226
    const-string/jumbo v0, ""

    const-string/jumbo v1, "xmospush"

    const-string/jumbo v2, "xiaomi"

    const-string/jumbo v3, "XIAOMI_SYS"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lc8/cin;->sendPushClickUTFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v5    # "payload":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setExtrasClassLoader(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 209
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 212
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 213
    return-void
.end method

.method private tryToClearMemoryCache(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 237
    .local v4, "now":J
    iget-wide v8, p0, Lc8/NLj;->mLastClearMemoryCache:J

    sub-long v8, v4, v8

    const-wide/16 v10, 0x7530

    cmp-long v7, v8, v10

    if-gez v7, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    .line 242
    .local v6, "rt":Ljava/lang/Runtime;
    invoke-virtual {v6}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-double v0, v8

    .line 243
    .local v0, "allocatedMemory":D
    invoke-virtual {v6}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v8

    long-to-double v2, v8

    .line 244
    .local v2, "maxMemory":D
    div-double v8, v0, v2

    const-wide v10, 0x3fe6666666666666L    # 0.7

    cmpg-double v7, v8, v10

    if-ltz v7, :cond_0

    .line 248
    const-string/jumbo v7, "ClearMemoryCache"

    const-string/jumbo v8, "start"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iput-wide v4, p0, Lc8/NLj;->mLastClearMemoryCache:J

    .line 250
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v7

    invoke-virtual {v7}, Lc8/ixf;->clearAll()V

    .line 251
    const-string/jumbo v7, "ClearMemoryCache"

    const-string/jumbo v8, "end"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCrashParams(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/OLj;->activityName:Ljava/lang/String;

    .line 58
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v0

    const-string/jumbo v1, "_controller"

    sget-object v2, Lc8/OLj;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/XSb;->addNativeHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lc8/NLj;->uploadUncaughtLog(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 69
    invoke-direct {p0, p1}, Lc8/NLj;->setExtrasClassLoader(Landroid/app/Activity;)V

    .line 71
    invoke-direct {p0, p1}, Lc8/NLj;->updateCrashParams(Landroid/app/Activity;)V

    .line 73
    invoke-direct {p0, p1}, Lc8/NLj;->onMiPushActive(Landroid/app/Activity;)V

    .line 75
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lc8/KPg;->update(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 201
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lc8/NLj;->ignoreAutoPageAppear(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->pageDisAppear(Ljava/lang/Object;)V

    .line 170
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/NLj;->tryToClearMemoryCache(Landroid/content/Context;)V

    .line 171
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 155
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/NLj;->lastActivityName:Ljava/lang/String;

    .line 158
    :cond_0
    invoke-direct {p0, p1}, Lc8/NLj;->ignoreAutoPageAppear(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTTracker;->pageAppear(Ljava/lang/Object;)V

    .line 161
    :cond_1
    invoke-direct {p0, p1}, Lc8/NLj;->updateCrashParams(Landroid/app/Activity;)V

    .line 162
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lc8/KLj;

    invoke-virtual {v0}, Lc8/KLj;->cancelExit()V

    .line 163
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 193
    sget-object v0, Lc8/NLj;->SAVE_ACTIVITY:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-object v0, Lc8/NLj;->LAST_ACTIVITY:Ljava/lang/String;

    iget-object v1, p0, Lc8/NLj;->lastActivityName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object v0, Lc8/NLj;->PROCESS_ID:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    sget-object v0, Lc8/NLj;->SAVE_TIME:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 197
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x1

    .line 120
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 121
    sget v1, Lc8/OLj;->startedActivityCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lc8/OLj;->startedActivityCount:I

    .line 122
    sget v1, Lc8/OLj;->startedActivityCount:I

    if-ne v2, v1, :cond_3

    move v1, v2

    :goto_0
    sput-boolean v1, Lc8/OLj;->enterForeground:Z

    .line 125
    :cond_0
    iget v1, p0, Lc8/NLj;->count:I

    if-nez v1, :cond_1

    .line 127
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/ctf;->enterForeground()V

    .line 129
    new-instance v1, Lc8/MLj;

    invoke-direct {v1, p0}, Lc8/MLj;-><init>(Lc8/NLj;)V

    invoke-static {v1}, Lc8/Vcf;->execute(Ljava/lang/Runnable;)V

    .line 136
    sput-boolean v2, Lc8/uZo;->isForeGround:Z

    .line 138
    :cond_1
    iget v1, p0, Lc8/NLj;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/NLj;->count:I

    .line 140
    sget-boolean v1, Lc8/OLj;->enterForeground:Z

    if-eqz v1, :cond_2

    sget-wide v2, Lc8/OLj;->sEnterBackgroundTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/youku/phone/ActivityWelcome;

    if-nez v1, :cond_2

    .line 143
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    sget-object v1, Lc8/OLj;->activityName:Ljava/lang/String;

    const/16 v2, 0x4e1f

    const-string/jumbo v3, "background_wakeup"

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lc8/OLj;->sEnterBackgroundTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 147
    .local v0, "uTOriginalCustomHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 150
    .end local v0    # "uTOriginalCustomHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    :cond_2
    return-void

    .line 122
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 176
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    sget v0, Lc8/OLj;->startedActivityCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lc8/OLj;->startedActivityCount:I

    .line 178
    sget v0, Lc8/OLj;->startedActivityCount:I

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lc8/OLj;->goBackground:Z

    .line 181
    :cond_0
    iget v0, p0, Lc8/NLj;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc8/NLj;->count:I

    .line 182
    iget v0, p0, Lc8/NLj;->count:I

    if-nez v0, :cond_1

    .line 183
    sput-boolean v1, Lc8/uZo;->isForeGround:Z

    .line 186
    :cond_1
    sget-boolean v0, Lc8/OLj;->goBackground:Z

    if-eqz v0, :cond_2

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lc8/OLj;->sEnterBackgroundTime:J

    .line 189
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 178
    goto :goto_0
.end method

.method public uploadUncaughtLog(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    if-eqz p2, :cond_0

    .line 80
    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Oy;->getActivityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "c_clazz":Ljava/lang/String;
    sget-object v0, Lc8/NLj;->SAVE_ACTIVITY:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 83
    .local v11, "s_clazz":Ljava/lang/String;
    sget-object v0, Lc8/NLj;->LAST_ACTIVITY:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "l_clazz":Ljava/lang/String;
    sget-object v0, Lc8/NLj;->PROCESS_ID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 85
    .local v3, "d_pid":I
    sget-object v0, Lc8/NLj;->SAVE_TIME:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 86
    .local v6, "s_time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 87
    .local v8, "c_time":J
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 88
    .local v2, "c_pid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " current_pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " died_pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 90
    .local v10, "info":Ljava/lang/String;
    invoke-static {v11, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {v11, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eq v3, v2, :cond_0

    .line 94
    const-string/jumbo v0, "YOUKU_UNCAUGHT_CRASH"

    const-string/jumbo v1, "BEFORE_IN_UI"

    invoke-static {v0, v1, v10}, Lc8/MWc;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lc8/LLj;

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lc8/LLj;-><init>(Lc8/NLj;IILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lc8/Vcf;->execute(Ljava/lang/Runnable;I)V

    .line 115
    .end local v2    # "c_pid":I
    .end local v3    # "d_pid":I
    .end local v4    # "c_clazz":Ljava/lang/String;
    .end local v5    # "l_clazz":Ljava/lang/String;
    .end local v6    # "s_time":J
    .end local v8    # "c_time":J
    .end local v10    # "info":Ljava/lang/String;
    .end local v11    # "s_clazz":Ljava/lang/String;
    :cond_0
    return-void
.end method
