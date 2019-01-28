.class public Lc8/ISb;
.super Ljava/lang/Object;
.source "CatcherManager.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KSb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UncaughtExceptionCatcher"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private count:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile enable:Z

.field mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field mIgnoreList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lc8/ATb;",
            ">;"
        }
    .end annotation
.end field

.field mLinsterList:Lcom/alibaba/motu/crashreporter/CatcherManager$UncaughtExceptionLinsterAdapterCopyOnWriteArrayList;

.field final synthetic this$0:Lc8/KSb;


# direct methods
.method constructor <init>(Lc8/KSb;)V
    .locals 2

    .prologue
    .line 160
    iput-object p1, p0, Lc8/ISb;->this$0:Lc8/KSb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lc8/ISb;->mIgnoreList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 164
    new-instance v0, Lcom/alibaba/motu/crashreporter/CatcherManager$UncaughtExceptionLinsterAdapterCopyOnWriteArrayList;

    iget-object v1, p0, Lc8/ISb;->this$0:Lc8/KSb;

    invoke-direct {v0, v1}, Lcom/alibaba/motu/crashreporter/CatcherManager$UncaughtExceptionLinsterAdapterCopyOnWriteArrayList;-><init>(Lc8/KSb;)V

    iput-object v0, p0, Lc8/ISb;->mLinsterList:Lcom/alibaba/motu/crashreporter/CatcherManager$UncaughtExceptionLinsterAdapterCopyOnWriteArrayList;

    .line 168
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc8/ISb;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private onUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    .locals 10
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "ignore"    # Z

    .prologue
    .line 213
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 214
    .local v2, "extraInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p3, :cond_0

    .line 215
    const-string/jumbo v7, "REPORT_IGNORE"

    const-string/jumbo v8, "true"

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_0
    :try_start_0
    instance-of v7, p2, Ljava/lang/OutOfMemoryError;

    if-eqz v7, :cond_4

    .line 220
    iget-object v7, p0, Lc8/ISb;->this$0:Lc8/KSb;

    iget-object v7, v7, Lc8/KSb;->mConfiguration:Lc8/LSb;

    const-string/jumbo v8, "Configuration.enableDumpHprof"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lc8/LSb;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 239
    :cond_1
    iget-object v7, p0, Lc8/ISb;->context:Landroid/content/Context;

    invoke-static {v7}, Lc8/vTb;->getContextFirstInstallTime(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v3

    .line 240
    .local v3, "firstInstallTime":Ljava/lang/Long;
    if-eqz v3, :cond_2

    .line 241
    const-string/jumbo v7, "FIRST_INSTALL_TIME"

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_2
    iget-object v7, p0, Lc8/ISb;->context:Landroid/content/Context;

    invoke-static {v7}, Lc8/vTb;->getContextLastUpdateTime(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v5

    .line 244
    .local v5, "lastUpdateTime":Ljava/lang/Long;
    if-eqz v5, :cond_3

    .line 245
    const-string/jumbo v7, "LAST_UPDATE_TIME"

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 250
    .end local v3    # "firstInstallTime":Ljava/lang/Long;
    .end local v5    # "lastUpdateTime":Ljava/lang/Long;
    :cond_3
    :goto_0
    iget-object v7, p0, Lc8/ISb;->this$0:Lc8/KSb;

    iget-object v7, v7, Lc8/KSb;->mReportBuilder:Lc8/iTb;

    invoke-virtual {v7, p2, p1, v2}, Lc8/iTb;->buildUncaughtExceptionReport(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/util/Map;)Lc8/NSb;

    move-result-object v0

    .line 251
    .local v0, "crashReport":Lc8/NSb;
    iget-object v7, p0, Lc8/ISb;->this$0:Lc8/KSb;

    iget-object v7, v7, Lc8/KSb;->mSendManager:Lc8/qTb;

    invoke-virtual {v7, v0}, Lc8/qTb;->sendReport(Lc8/NSb;)V

    .line 252
    return-void

    .line 227
    .end local v0    # "crashReport":Lc8/NSb;
    :cond_4
    :try_start_1
    iget-object v7, p0, Lc8/ISb;->this$0:Lc8/KSb;

    iget-object v7, v7, Lc8/KSb;->mConfiguration:Lc8/LSb;

    const-string/jumbo v8, "Configuration.enableExternalLinster"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lc8/LSb;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 228
    iget-object v7, p0, Lc8/ISb;->mLinsterList:Lcom/alibaba/motu/crashreporter/CatcherManager$UncaughtExceptionLinsterAdapterCopyOnWriteArrayList;

    invoke-virtual {v7}, Lcom/alibaba/motu/crashreporter/CatcherManager$UncaughtExceptionLinsterAdapterCopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/JSb;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 230
    .local v6, "linster":Lc8/JSb;
    :try_start_2
    invoke-interface {v6, p1, p2}, Lc8/JSb;->onUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v7, "call linster onUncaughtException"

    invoke-static {v7, v1}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 247
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "linster":Lc8/JSb;
    :catch_1
    move-exception v1

    .line 248
    .restart local v1    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "externalData"

    invoke-static {v7, v1}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public addIgnore(Lc8/ATb;)Z
    .locals 1
    .param p1, "ignore"    # Lc8/ATb;

    .prologue
    .line 193
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lc8/ATb;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/OTb;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lc8/ISb;->mIgnoreList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 196
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addLinster(Lc8/JSb;)Z
    .locals 1
    .param p1, "linster"    # Lc8/JSb;

    .prologue
    .line 200
    if-eqz p1, :cond_0

    .line 201
    iget-object v0, p0, Lc8/ISb;->mLinsterList:Lcom/alibaba/motu/crashreporter/CatcherManager$UncaughtExceptionLinsterAdapterCopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Lcom/alibaba/motu/crashreporter/CatcherManager$UncaughtExceptionLinsterAdapterCopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lc8/ISb;->enable:Z

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lc8/ISb;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lc8/ISb;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 189
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/ISb;->enable:Z

    goto :goto_0
.end method

.method public enable(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    if-eqz p1, :cond_0

    .line 172
    iput-object p1, p0, Lc8/ISb;->context:Landroid/content/Context;

    .line 174
    :cond_0
    iget-boolean v0, p0, Lc8/ISb;->enable:Z

    if-eqz v0, :cond_1

    .line 182
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lc8/ISb;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 177
    const-string/jumbo v0, "com.android.internal.osRuntimeInit$UncaughtHandler"

    iget-object v1, p0, Lc8/ISb;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/ISb;->enable:Z

    goto :goto_0
.end method

.method public getAllLinster()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/JSb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lc8/ISb;->mLinsterList:Lcom/alibaba/motu/crashreporter/CatcherManager$UncaughtExceptionLinsterAdapterCopyOnWriteArrayList;

    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 13
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 259
    .local v6, "start":J
    :try_start_0
    const-string/jumbo v9, "catch uncaught exception:%s on thread:%s."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 262
    invoke-static {p1}, Lc8/vTb;->isMainThread(Ljava/lang/Thread;)Ljava/lang/Boolean;

    move-result-object v5

    .line 263
    .local v5, "isMainThread":Ljava/lang/Boolean;
    iget-object v9, p0, Lc8/ISb;->this$0:Lc8/KSb;

    iget-object v9, v9, Lc8/KSb;->mConfiguration:Lc8/LSb;

    const-string/jumbo v10, "Configuration.enableUncaughtExceptionIgnore"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lc8/LSb;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_2

    .line 265
    iget-object v9, p0, Lc8/ISb;->mIgnoreList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/ATb;

    .line 266
    .local v4, "ignore":Lc8/ATb;
    invoke-interface {v4, p1, p2}, Lc8/ATb;->uncaughtExceptionIgnore(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 268
    const/4 v9, 0x1

    invoke-direct {p0, p1, p2, v9}, Lc8/ISb;->onUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 294
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "ignore":Lc8/ATb;
    .end local v5    # "isMainThread":Ljava/lang/Boolean;
    :cond_1
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v9, "ignore uncaught exception."

    invoke-static {v9, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v9, 0x1

    iget-object v10, p0, Lc8/ISb;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v10

    if-ne v9, v10, :cond_3

    .line 280
    const/4 v9, 0x0

    invoke-direct {p0, p1, p2, v9}, Lc8/ISb;->onUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 288
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 289
    .local v2, "end":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "catch uncaught exception complete elapsed time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v2, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 291
    iget-object v9, p0, Lc8/ISb;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v9, :cond_1

    .line 292
    iget-object v9, p0, Lc8/ISb;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v9, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 282
    .end local v2    # "end":J
    :cond_3
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uncaught exception count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lc8/ISb;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lc8/USb;->i(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 284
    :catch_1
    move-exception v8

    .line 285
    .local v8, "tw":Ljava/lang/Throwable;
    const-string/jumbo v9, "uncaught exception."

    invoke-static {v9, v8}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
