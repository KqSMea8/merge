.class public Lc8/UA;
.super Ljava/lang/Object;
.source "BundleLock.java"


# static fields
.field static bundleIdentifierMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReentrantReadWriteLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/UA;->bundleIdentifierMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ReadLock(Ljava/lang/String;)Z
    .locals 5
    .param p0, "bundle"    # Ljava/lang/String;

    .prologue
    .line 255
    sget-object v2, Lc8/UA;->bundleIdentifierMap:Ljava/util/Map;

    monitor-enter v2

    .line 256
    :try_start_0
    sget-object v1, Lc8/UA;->bundleIdentifierMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 257
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    if-nez v0, :cond_0

    .line 258
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 259
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    sget-object v1, Lc8/UA;->bundleIdentifierMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    const-wide/16 v2, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 266
    :goto_0
    return v1

    .line 261
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 266
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static ReadUnLock(Ljava/lang/String;)V
    .locals 3
    .param p0, "bundle"    # Ljava/lang/String;

    .prologue
    .line 272
    sget-object v2, Lc8/UA;->bundleIdentifierMap:Ljava/util/Map;

    monitor-enter v2

    .line 273
    :try_start_0
    sget-object v1, Lc8/UA;->bundleIdentifierMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 274
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    if-nez v0, :cond_0

    .line 275
    monitor-exit v2

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 277
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static WriteLock(Ljava/lang/String;)V
    .locals 3
    .param p0, "bundle"    # Ljava/lang/String;

    .prologue
    .line 232
    sget-object v2, Lc8/UA;->bundleIdentifierMap:Ljava/util/Map;

    monitor-enter v2

    .line 233
    :try_start_0
    sget-object v1, Lc8/UA;->bundleIdentifierMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 234
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 236
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    sget-object v1, Lc8/UA;->bundleIdentifierMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 240
    return-void

    .line 238
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static WriteUnLock(Ljava/lang/String;)V
    .locals 3
    .param p0, "bundle"    # Ljava/lang/String;

    .prologue
    .line 244
    sget-object v2, Lc8/UA;->bundleIdentifierMap:Ljava/util/Map;

    monitor-enter v2

    .line 245
    :try_start_0
    sget-object v1, Lc8/UA;->bundleIdentifierMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 246
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    if-nez v0, :cond_0

    .line 247
    monitor-exit v2

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 249
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
