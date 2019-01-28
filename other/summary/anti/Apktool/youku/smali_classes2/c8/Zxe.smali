.class public Lc8/Zxe;
.super Ljava/lang/Object;
.source "WBAgentHandler.java"


# static fields
.field private static MAX_CACHE_SIZE:I

.field private static mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lc8/Qxe;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lc8/Zxe;

.field private static mLogTimer:Ljava/util/Timer;

.field private static mPages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Qxe;",
            ">;"
        }
    .end annotation
.end field

.field private static mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x5

    sput v0, Lc8/Zxe;->MAX_CACHE_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/Zxe;->mPages:Ljava/util/Map;

    .line 51
    const-string/jumbo v0, "WBAgent"

    const-string/jumbo v1, "init handler"

    invoke-static {v0, v1}, Lc8/qye;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lc8/Zxe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/Zxe;

    .prologue
    .line 29
    invoke-direct {p0}, Lc8/Zxe;->getLogsInMemory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkAppStatus(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lc8/Zxe;->isBackground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    sget-object v1, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    .line 238
    :try_start_0
    sget-object v0, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v0}, Lc8/Zxe;->saveActivePages(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 239
    sget-object v0, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 240
    monitor-exit v1

    .line 242
    :cond_0
    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkNewSession(Landroid/content/Context;J)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "curTime"    # J

    .prologue
    .line 285
    invoke-static {p1, p2, p3}, Lc8/Qxe;->isNewSession(Landroid/content/Context;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    new-instance v1, Lc8/Qxe;

    invoke-direct {v1, p1}, Lc8/Qxe;-><init>(Landroid/content/Context;)V

    .line 287
    .local v1, "old_session":Lc8/Qxe;
    sget-object v2, Lcom/sina/weibo/sdk/statistic/LogType;->SESSION_END:Lcom/sina/weibo/sdk/statistic/LogType;

    invoke-virtual {v1, v2}, Lc8/Qxe;->setType(Lcom/sina/weibo/sdk/statistic/LogType;)V

    .line 289
    new-instance v0, Lc8/Qxe;

    invoke-direct {v0, p1, p2, p3}, Lc8/Qxe;-><init>(Landroid/content/Context;J)V

    .line 290
    .local v0, "new_session":Lc8/Qxe;
    sget-object v2, Lcom/sina/weibo/sdk/statistic/LogType;->SESSION_START:Lcom/sina/weibo/sdk/statistic/LogType;

    invoke-virtual {v0, v2}, Lc8/Qxe;->setType(Lcom/sina/weibo/sdk/statistic/LogType;)V

    .line 291
    sget-object v3, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v3

    .line 292
    :try_start_0
    invoke-virtual {v1}, Lc8/Qxe;->getEndTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    .line 293
    sget-object v2, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    :goto_0
    sget-object v2, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    const-string/jumbo v2, "WBAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "last session--- starttime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 300
    invoke-virtual {v1}, Lc8/Qxe;->getStartTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,endtime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 301
    invoke-virtual {v1}, Lc8/Qxe;->getEndTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-static {v2, v3}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string/jumbo v2, "WBAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "is a new session--- starttime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 303
    invoke-virtual {v0}, Lc8/Qxe;->getStartTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-static {v2, v3}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .end local v0    # "new_session":Lc8/Qxe;
    .end local v1    # "old_session":Lc8/Qxe;
    :goto_1
    return-void

    .line 295
    .restart local v0    # "new_session":Lc8/Qxe;
    .restart local v1    # "old_session":Lc8/Qxe;
    :cond_0
    :try_start_1
    const-string/jumbo v2, "WBAgent"

    const-string/jumbo v4, "is a new install"

    invoke-static {v2, v4}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 305
    .end local v0    # "new_session":Lc8/Qxe;
    .end local v1    # "old_session":Lc8/Qxe;
    :cond_1
    const-string/jumbo v2, "WBAgent"

    const-string/jumbo v3, "is not a new session"

    invoke-static {v2, v3}, Lc8/qye;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private closeTimer()V
    .locals 1

    .prologue
    .line 371
    sget-object v0, Lc8/Zxe;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 372
    sget-object v0, Lc8/Zxe;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 373
    const/4 v0, 0x0

    sput-object v0, Lc8/Zxe;->mTimer:Ljava/util/Timer;

    .line 375
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/Zxe;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lc8/Zxe;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/Zxe;->mInstance:Lc8/Zxe;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lc8/Zxe;

    invoke-direct {v0}, Lc8/Zxe;-><init>()V

    sput-object v0, Lc8/Zxe;->mInstance:Lc8/Zxe;

    .line 42
    :cond_0
    sget-object v0, Lc8/Zxe;->mInstance:Lc8/Zxe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getLogsInMemory()Ljava/lang/String;
    .locals 3

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, ""

    .line 333
    .local v0, "memorylogs":Ljava/lang/String;
    sget-object v1, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 334
    sget-object v2, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 335
    :try_start_1
    sget-object v1, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1}, Lc8/Nxe;->getPageLogs(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 336
    sget-object v1, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 337
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    :cond_0
    monitor-exit p0

    return-object v0

    .line 337
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 332
    .end local v0    # "memorylogs":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private isBackground(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 246
    const-string/jumbo v4, "activity"

    .line 247
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 249
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 250
    .local v2, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 251
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 252
    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x190

    if-ne v4, v5, :cond_2

    .line 253
    const-string/jumbo v3, "WBAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u540e\u53f0:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/qye;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v3, 0x1

    .line 261
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    :goto_0
    return v3

    .line 256
    .restart local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    const-string/jumbo v4, "WBAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u524d\u53f0:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/qye;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isFirstStartBoolean(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 427
    const-string/jumbo v3, "third_app_is_first_tag"

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 428
    .local v2, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "third_app_is_first_key"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 429
    .local v1, "firstFlag":Z
    if-eqz v1, :cond_0

    .line 430
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 431
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "third_app_is_first_key"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 432
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 434
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return v1
.end method

.method private declared-synchronized saveActivePages(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lc8/Qxe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "pages":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sina/weibo/sdk/statistic/PageLog;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lc8/Nxe;->getPageLogs(Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "content":Ljava/lang/String;
    new-instance v1, Lc8/Vxe;

    invoke-direct {v1, p0, v0}, Lc8/Vxe;-><init>(Lc8/Zxe;Ljava/lang/String;)V

    invoke-static {v1}, Lc8/Txe;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    .line 315
    .end local v0    # "content":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private timerTask(Landroid/content/Context;JJ)Ljava/util/Timer;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delay"    # J
    .param p4, "peirod"    # J

    .prologue
    .line 349
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 350
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lc8/Wxe;

    invoke-direct {v1, p0, p1}, Lc8/Wxe;-><init>(Lc8/Zxe;Landroid/content/Context;)V

    .line 357
    .local v1, "task":Ljava/util/TimerTask;
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_0

    .line 359
    invoke-virtual {v0, v1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 364
    :goto_0
    return-object v0

    :cond_0
    move-wide v2, p2

    move-wide v4, p4

    .line 362
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p3, "extend":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lc8/Lxe;

    invoke-direct {v0, p1, p2, p3}, Lc8/Lxe;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 184
    .local v0, "eventLog":Lc8/Lxe;
    sget-object v1, Lcom/sina/weibo/sdk/statistic/LogType;->EVENT:Lcom/sina/weibo/sdk/statistic/LogType;

    invoke-virtual {v0, v1}, Lc8/Lxe;->setType(Lcom/sina/weibo/sdk/statistic/LogType;)V

    .line 185
    sget-object v2, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    .line 186
    :try_start_0
    sget-object v1, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    if-nez p3, :cond_1

    .line 189
    const-string/jumbo v1, "WBAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "event--- page:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,event name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_0
    sget-object v1, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    sget v2, Lc8/Zxe;->MAX_CACHE_SIZE:I

    if-lt v1, v2, :cond_0

    .line 198
    sget-object v2, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    .line 199
    :try_start_1
    sget-object v1, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v1}, Lc8/Zxe;->saveActivePages(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 200
    sget-object v1, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 201
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 203
    :cond_0
    return-void

    .line 187
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 192
    :cond_1
    const-string/jumbo v1, "WBAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "event--- page:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,event name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,extend:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 194
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-static {v1, v2}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public onKillProcess()V
    .locals 2

    .prologue
    .line 268
    const-string/jumbo v0, "WBAgent"

    const-string/jumbo v1, "save applogs and close timer and shutdown thread executor"

    invoke-static {v0, v1}, Lc8/qye;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    sget-object v1, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    .line 271
    :try_start_0
    sget-object v0, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v0}, Lc8/Zxe;->saveActivePages(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 272
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    const/4 v0, 0x0

    sput-object v0, Lc8/Zxe;->mInstance:Lc8/Zxe;

    .line 274
    invoke-direct {p0}, Lc8/Zxe;->closeTimer()V

    .line 275
    invoke-static {}, Lc8/Txe;->shutDownExecutor()V

    .line 276
    return-void

    .line 272
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPageEnd(Ljava/lang/String;)V
    .locals 8
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x3e8

    .line 80
    sget-boolean v1, Lc8/Rxe;->ACTIVITY_DURATION_OPEN:Z

    if-nez v1, :cond_0

    .line 81
    sget-object v1, Lc8/Zxe;->mPages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    sget-object v1, Lc8/Zxe;->mPages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Qxe;

    .line 83
    .local v0, "pageLog":Lc8/Qxe;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 84
    invoke-virtual {v0}, Lc8/Qxe;->getStartTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 83
    invoke-virtual {v0, v2, v3}, Lc8/Qxe;->setDuration(J)V

    .line 85
    sget-object v2, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    .line 86
    :try_start_0
    sget-object v1, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    sget-object v2, Lc8/Zxe;->mPages:Ljava/util/Map;

    monitor-enter v2

    .line 89
    :try_start_1
    sget-object v1, Lc8/Zxe;->mPages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    const-string/jumbo v1, "WBAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lc8/Qxe;->getStartTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 92
    invoke-virtual {v0}, Lc8/Qxe;->getDuration()J

    move-result-wide v4

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v1, v2}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v0    # "pageLog":Lc8/Qxe;
    :goto_0
    sget-object v1, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    sget v2, Lc8/Zxe;->MAX_CACHE_SIZE:I

    if-lt v1, v2, :cond_0

    .line 99
    sget-object v2, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    .line 100
    :try_start_2
    sget-object v1, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v1}, Lc8/Zxe;->saveActivePages(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 101
    sget-object v1, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 102
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 105
    :cond_0
    return-void

    .line 87
    .restart local v0    # "pageLog":Lc8/Qxe;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 90
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 94
    .end local v0    # "pageLog":Lc8/Qxe;
    :cond_1
    const-string/jumbo v1, "WBAgent"

    const-string/jumbo v2, "please call onPageStart before onPageEnd"

    invoke-static {v1, v2}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public onPageStart(Ljava/lang/String;)V
    .locals 8
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-boolean v1, Lc8/Rxe;->ACTIVITY_DURATION_OPEN:Z

    if-nez v1, :cond_0

    .line 62
    new-instance v0, Lc8/Qxe;

    invoke-direct {v0, p1}, Lc8/Qxe;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "pageLog":Lc8/Qxe;
    sget-object v1, Lcom/sina/weibo/sdk/statistic/LogType;->FRAGMENT:Lcom/sina/weibo/sdk/statistic/LogType;

    invoke-virtual {v0, v1}, Lc8/Qxe;->setType(Lcom/sina/weibo/sdk/statistic/LogType;)V

    .line 64
    sget-object v2, Lc8/Zxe;->mPages:Ljava/util/Map;

    monitor-enter v2

    .line 65
    :try_start_0
    sget-object v1, Lc8/Zxe;->mPages:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    const-string/jumbo v1, "WBAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lc8/Qxe;->getStartTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .end local v0    # "pageLog":Lc8/Qxe;
    :cond_0
    return-void

    .line 66
    .restart local v0    # "pageLog":Lc8/Qxe;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x3e8

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 142
    .local v0, "curTime":J
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "pageName":Ljava/lang/String;
    const-string/jumbo v4, "WBAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update last page endtime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-long v6, v0, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/qye;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p1, v4, v5, v6}, Lc8/Qxe;->updateSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 148
    sget-boolean v4, Lc8/Rxe;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v4, :cond_0

    .line 149
    sget-object v4, Lc8/Zxe;->mPages:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    sget-object v4, Lc8/Zxe;->mPages:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Qxe;

    .line 151
    .local v2, "pageLog":Lc8/Qxe;
    invoke-virtual {v2}, Lc8/Qxe;->getStartTime()J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Lc8/Qxe;->setDuration(J)V

    .line 152
    sget-object v5, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v5

    .line 153
    :try_start_0
    sget-object v4, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    sget-object v5, Lc8/Zxe;->mPages:Ljava/util/Map;

    monitor-enter v5

    .line 156
    :try_start_1
    sget-object v4, Lc8/Zxe;->mPages:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    const-string/jumbo v4, "WBAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lc8/Qxe;->getStartTime()J

    move-result-wide v6

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 159
    invoke-virtual {v2}, Lc8/Qxe;->getDuration()J

    move-result-wide v6

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 158
    invoke-static {v4, v5}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .end local v2    # "pageLog":Lc8/Qxe;
    :goto_0
    sget-object v4, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    sget v5, Lc8/Zxe;->MAX_CACHE_SIZE:I

    if-lt v4, v5, :cond_0

    .line 165
    sget-object v5, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v5

    .line 166
    :try_start_2
    sget-object v4, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v4}, Lc8/Zxe;->saveActivePages(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 167
    sget-object v4, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 168
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 171
    :cond_0
    invoke-direct {p0, p1}, Lc8/Zxe;->checkAppStatus(Landroid/content/Context;)V

    .line 172
    return-void

    .line 154
    .restart local v2    # "pageLog":Lc8/Qxe;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 157
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 161
    .end local v2    # "pageLog":Lc8/Qxe;
    :cond_1
    const-string/jumbo v4, "WBAgent"

    const-string/jumbo v5, "please call onResume before onPause"

    invoke-static {v4, v5}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-static {}, Lc8/Pxe;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Pxe;->setPackageName(Ljava/lang/String;)V

    .line 116
    :cond_0
    sget-object v0, Lc8/Zxe;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 117
    const-wide/16 v2, 0x1f4

    invoke-static {}, Lc8/Rxe;->getUploadInterval()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lc8/Zxe;->timerTask(Landroid/content/Context;JJ)Ljava/util/Timer;

    move-result-object v0

    sput-object v0, Lc8/Zxe;->mTimer:Ljava/util/Timer;

    .line 119
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 120
    .local v6, "curTime":J
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    .line 122
    .local v9, "pageName":Ljava/lang/String;
    invoke-direct {p0, p1, v6, v7}, Lc8/Zxe;->checkNewSession(Landroid/content/Context;J)V

    .line 125
    sget-boolean v0, Lc8/Rxe;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_2

    .line 126
    new-instance v8, Lc8/Qxe;

    invoke-direct {v8, v9, v6, v7}, Lc8/Qxe;-><init>(Ljava/lang/String;J)V

    .line 127
    .local v8, "pageLog":Lc8/Qxe;
    sget-object v0, Lcom/sina/weibo/sdk/statistic/LogType;->ACTIVITY:Lcom/sina/weibo/sdk/statistic/LogType;

    invoke-virtual {v8, v0}, Lc8/Qxe;->setType(Lcom/sina/weibo/sdk/statistic/LogType;)V

    .line 128
    sget-object v1, Lc8/Zxe;->mPages:Ljava/util/Map;

    monitor-enter v1

    .line 129
    :try_start_0
    sget-object v0, Lc8/Zxe;->mPages:Ljava/util/Map;

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .end local v8    # "pageLog":Lc8/Qxe;
    :cond_2
    const-string/jumbo v0, "WBAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, v6, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/qye;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void

    .line 130
    .restart local v8    # "pageLog":Lc8/Qxe;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onStop(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lc8/Zxe;->checkAppStatus(Landroid/content/Context;)V

    .line 233
    return-void
.end method

.method public registerApptoAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p3, "extend":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Lc8/Jxe;

    invoke-direct {v2}, Lc8/Jxe;-><init>()V

    .line 385
    .local v2, "eventLog":Lc8/Jxe;
    sget-object v4, Lcom/sina/weibo/sdk/statistic/LogType;->APP_AD_START:Lcom/sina/weibo/sdk/statistic/LogType;

    invoke-virtual {v2, v4}, Lc8/Jxe;->setType(Lcom/sina/weibo/sdk/statistic/LogType;)V

    .line 386
    invoke-static {p1}, Lc8/Zxe;->isFirstStartBoolean(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 387
    const-string/jumbo v4, "1"

    invoke-virtual {v2, v4}, Lc8/Jxe;->setmEvent_id(Ljava/lang/String;)V

    .line 389
    :cond_0
    invoke-static {p1}, Lc8/mye;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/rye;->hexdigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lc8/Jxe;->setmImei(Ljava/lang/String;)V

    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lc8/Jxe;->setmStart_time(J)V

    .line 391
    invoke-virtual {v2, p3}, Lc8/Jxe;->setmExtend(Ljava/util/Map;)V

    .line 394
    invoke-static {p1, p2}, Lc8/Aye;->getAid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "aid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 396
    new-instance v3, Lc8/Xxe;

    invoke-direct {v3, p0, p1, p2, v2}, Lc8/Xxe;-><init>(Lc8/Zxe;Landroid/content/Context;Ljava/lang/String;Lc8/Jxe;)V

    .line 404
    .local v3, "task":Ljava/util/TimerTask;
    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    .line 405
    sput-object v4, Lc8/Zxe;->mLogTimer:Ljava/util/Timer;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v3, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 413
    .end local v0    # "aid":Ljava/lang/String;
    .end local v2    # "eventLog":Lc8/Jxe;
    .end local v3    # "task":Ljava/util/TimerTask;
    :goto_0
    return-void

    .line 407
    .restart local v0    # "aid":Ljava/lang/String;
    .restart local v2    # "eventLog":Lc8/Jxe;
    :cond_1
    invoke-virtual {v2, v0}, Lc8/Jxe;->setmAid(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0, p1, v2}, Lc8/Zxe;->uploadAdlog(Landroid/content/Context;Lc8/Jxe;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 410
    .end local v0    # "aid":Ljava/lang/String;
    .end local v2    # "eventLog":Lc8/Jxe;
    :catch_0
    move-exception v1

    .line 411
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public uploadAdlog(Landroid/content/Context;Lc8/Jxe;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventLog"    # Lc8/Jxe;

    .prologue
    .line 416
    sget-object v0, Lc8/Zxe;->mActivePages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    new-instance v0, Lc8/Yxe;

    invoke-direct {v0, p0, p1}, Lc8/Yxe;-><init>(Lc8/Zxe;Landroid/content/Context;)V

    invoke-static {v0}, Lc8/Txe;->execute(Ljava/lang/Runnable;)V

    .line 423
    return-void
.end method

.method public uploadAppLogs(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x7530

    const-wide/16 v4, 0x0

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lc8/Pxe;->getTime(Landroid/content/Context;)J

    move-result-wide v2

    sub-long v6, v0, v2

    .line 214
    .local v6, "duration":J
    invoke-static {p1}, Lc8/Pxe;->getTime(Landroid/content/Context;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    cmp-long v0, v6, v8

    if-gez v0, :cond_0

    .line 215
    sub-long v2, v8, v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lc8/Zxe;->timerTask(Landroid/content/Context;JJ)Ljava/util/Timer;

    .line 224
    :goto_0
    return-void

    .line 217
    :cond_0
    new-instance v0, Lc8/Uxe;

    invoke-direct {v0, p0, p1}, Lc8/Uxe;-><init>(Lc8/Zxe;Landroid/content/Context;)V

    invoke-static {v0}, Lc8/Txe;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
