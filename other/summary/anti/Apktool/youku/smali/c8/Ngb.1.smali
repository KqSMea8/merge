.class public Lc8/Ngb;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# static fields
.field private static cachedMessageMetas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lc8/Mgb;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultMessageLoadLock:Ljava/lang/Object;

.field private static final defaultMessageNotFoundMessage:Lc8/Mgb;

.field private static final defaultUnknownErrorMessage:Lc8/Mgb;

.field private static lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static messageNotFoundMessage:Lc8/Mgb;

.field private static unknownErrorMessage:Lc8/Mgb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/Ngb;->cachedMessageMetas:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lc8/Ngb;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/Ngb;->defaultMessageLoadLock:Ljava/lang/Object;

    .line 30
    new-instance v0, Lc8/Mgb;

    invoke-direct {v0}, Lc8/Mgb;-><init>()V

    .line 31
    sput-object v0, Lc8/Ngb;->defaultMessageNotFoundMessage:Lc8/Mgb;

    const/4 v1, 0x1

    iput v1, v0, Lc8/Mgb;->code:I

    .line 32
    sget-object v0, Lc8/Ngb;->defaultMessageNotFoundMessage:Lc8/Mgb;

    const-string/jumbo v1, "\u672a\u5728\u6d88\u606f\u6587\u4ef6\u4e2d\u627e\u5230 id \u4e3a {0} \u7684\u6d88\u606f"

    iput-object v1, v0, Lc8/Mgb;->message:Ljava/lang/String;

    .line 33
    sget-object v0, Lc8/Ngb;->defaultMessageNotFoundMessage:Lc8/Mgb;

    const-string/jumbo v1, "\u8bf7\u68c0\u67e5\u6240\u4f9d\u8d56\u7684 SDK \u9879\u76ee\uff0c\u6216\u82e5\u662f\u624b\u52a8\u62f7\u8d1d SDK \u81f3\u5f53\u524d\u5f00\u53d1\u5e94\u7528\u6240\u5728\u9879\u76ee\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6f0f\u62f7\u6587\u4ef6 res/values \u4e0b\u6587\u4ef6"

    iput-object v1, v0, Lc8/Mgb;->action:Ljava/lang/String;

    .line 34
    sget-object v0, Lc8/Ngb;->defaultMessageNotFoundMessage:Lc8/Mgb;

    const-string/jumbo v1, "E"

    iput-object v1, v0, Lc8/Mgb;->type:Ljava/lang/String;

    .line 36
    new-instance v0, Lc8/Mgb;

    invoke-direct {v0}, Lc8/Mgb;-><init>()V

    .line 37
    sput-object v0, Lc8/Ngb;->defaultUnknownErrorMessage:Lc8/Mgb;

    const/4 v1, 0x2

    iput v1, v0, Lc8/Mgb;->code:I

    .line 38
    sget-object v0, Lc8/Ngb;->defaultUnknownErrorMessage:Lc8/Mgb;

    const-string/jumbo v1, "\u68c0\u7d22\u6d88\u606f\u65f6\u53d1\u751f\u5982\u4e0b\u9519\u8bef {0}"

    iput-object v1, v0, Lc8/Mgb;->message:Ljava/lang/String;

    .line 39
    sget-object v0, Lc8/Ngb;->defaultUnknownErrorMessage:Lc8/Mgb;

    const-string/jumbo v1, "\u8bf7\u68c0\u67e5\u6240\u4f9d\u8d56\u7684 SDK \u9879\u76ee\uff0c\u6216\u82e5\u662f\u624b\u52a8\u62f7\u8d1d SDK \u81f3\u5f53\u524d\u5f00\u53d1\u5e94\u7528\u6240\u5728\u9879\u76ee\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6f0f\u62f7\u6587\u4ef6 res/values \u4e0b\u6587\u4ef6"

    iput-object v1, v0, Lc8/Mgb;->action:Ljava/lang/String;

    .line 40
    sget-object v0, Lc8/Ngb;->defaultUnknownErrorMessage:Lc8/Mgb;

    const-string/jumbo v1, "E"

    iput-object v1, v0, Lc8/Mgb;->type:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs createMessage(I[Ljava/lang/Object;)Lc8/Mgb;
    .locals 5
    .param p0, "code"    # I
    .param p1, "messageObjects"    # [Ljava/lang/Object;

    .prologue
    .line 45
    :try_start_0
    sget-object v3, Lc8/Ngb;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 46
    sget-object v3, Lc8/Ngb;->cachedMessageMetas:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Mgb;

    .line 48
    .local v1, "message":Lc8/Mgb;
    if-nez v1, :cond_1

    .line 49
    sget-object v3, Lc8/Ngb;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 50
    sget-object v3, Lc8/Ngb;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    invoke-static {p0}, Lc8/Ngb;->loadMessage(I)Lc8/Mgb;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    sget-object v3, Lc8/Ngb;->cachedMessageMetas:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    sget-object v3, Lc8/Ngb;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :try_start_2
    sget-object v3, Lc8/Ngb;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 63
    :cond_1
    if-nez v1, :cond_2

    .line 64
    :try_start_3
    invoke-static {p0}, Lc8/Ngb;->createMessageNotFoundMessage(I)Lc8/Mgb;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 74
    .end local v1    # "message":Lc8/Mgb;
    :try_start_4
    sget-object v3, Lc8/Ngb;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 77
    :goto_0
    return-object v1

    .line 58
    .restart local v1    # "message":Lc8/Mgb;
    :catchall_0
    move-exception v3

    sget-object v4, Lc8/Ngb;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 76
    .end local v1    # "message":Lc8/Mgb;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/Ngb;->createUnknownErrorMessage(Ljava/lang/String;)Lc8/Mgb;

    move-result-object v1

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "message":Lc8/Mgb;
    :cond_2
    :try_start_5
    array-length v3, p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v3, :cond_3

    .line 74
    :try_start_6
    sget-object v3, Lc8/Ngb;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 70
    :cond_3
    :try_start_7
    invoke-virtual {v1}, Lc8/Mgb;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Mgb;

    .line 71
    .local v2, "retMessage":Lc8/Mgb;
    iget-object v3, v1, Lc8/Mgb;->message:Ljava/lang/String;

    invoke-static {v3, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/Mgb;->message:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 74
    :try_start_8
    sget-object v3, Lc8/Ngb;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v1, v2

    goto :goto_0

    .end local v2    # "retMessage":Lc8/Mgb;
    :catchall_1
    move-exception v3

    sget-object v4, Lc8/Ngb;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method private static createMessageNotFoundMessage(I)Lc8/Mgb;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 136
    sget-object v1, Lc8/Ngb;->messageNotFoundMessage:Lc8/Mgb;

    if-nez v1, :cond_1

    .line 137
    sget-object v2, Lc8/Ngb;->defaultMessageLoadLock:Ljava/lang/Object;

    monitor-enter v2

    .line 138
    :try_start_0
    sget-object v1, Lc8/Ngb;->messageNotFoundMessage:Lc8/Mgb;

    if-nez v1, :cond_0

    .line 140
    const/4 v1, 0x1

    invoke-static {v1}, Lc8/Ngb;->loadMessage(I)Lc8/Mgb;

    move-result-object v1

    .line 141
    sput-object v1, Lc8/Ngb;->messageNotFoundMessage:Lc8/Mgb;

    if-nez v1, :cond_0

    .line 142
    sget-object v1, Lc8/Ngb;->defaultMessageNotFoundMessage:Lc8/Mgb;

    sput-object v1, Lc8/Ngb;->messageNotFoundMessage:Lc8/Mgb;

    .line 145
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_1
    :try_start_1
    sget-object v1, Lc8/Ngb;->messageNotFoundMessage:Lc8/Mgb;

    invoke-virtual {v1}, Lc8/Mgb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Mgb;

    .line 149
    .local v0, "retMessage":Lc8/Mgb;
    iget-object v1, v0, Lc8/Mgb;->message:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/Mgb;->message:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    .end local v0    # "retMessage":Lc8/Mgb;
    :goto_0
    return-object v0

    .line 145
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 153
    :catch_0
    move-exception v1

    sget-object v0, Lc8/Ngb;->messageNotFoundMessage:Lc8/Mgb;

    goto :goto_0
.end method

.method private static createUnknownErrorMessage(Ljava/lang/String;)Lc8/Mgb;
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 114
    sget-object v1, Lc8/Ngb;->unknownErrorMessage:Lc8/Mgb;

    if-nez v1, :cond_1

    .line 115
    sget-object v2, Lc8/Ngb;->defaultMessageLoadLock:Ljava/lang/Object;

    monitor-enter v2

    .line 116
    :try_start_0
    sget-object v1, Lc8/Ngb;->unknownErrorMessage:Lc8/Mgb;

    if-nez v1, :cond_0

    .line 118
    const/4 v1, 0x2

    invoke-static {v1}, Lc8/Ngb;->loadMessage(I)Lc8/Mgb;

    move-result-object v1

    .line 119
    sput-object v1, Lc8/Ngb;->unknownErrorMessage:Lc8/Mgb;

    if-nez v1, :cond_0

    .line 120
    sget-object v1, Lc8/Ngb;->defaultUnknownErrorMessage:Lc8/Mgb;

    sput-object v1, Lc8/Ngb;->unknownErrorMessage:Lc8/Mgb;

    .line 123
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_1
    :try_start_1
    sget-object v1, Lc8/Ngb;->unknownErrorMessage:Lc8/Mgb;

    invoke-virtual {v1}, Lc8/Mgb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Mgb;

    .line 127
    .local v0, "retMessage":Lc8/Mgb;
    iget-object v1, v0, Lc8/Mgb;->message:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/Mgb;->message:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    .end local v0    # "retMessage":Lc8/Mgb;
    :goto_0
    return-object v0

    .line 123
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 131
    :catch_0
    move-exception v1

    sget-object v0, Lc8/Ngb;->unknownErrorMessage:Lc8/Mgb;

    goto :goto_0
.end method

.method public static varargs getMessageContent(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "code"    # I
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 83
    :try_start_0
    sget-object v2, Lc8/Ngb;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 84
    sget-object v2, Lc8/Ngb;->cachedMessageMetas:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Mgb;

    .line 86
    .local v1, "message":Lc8/Mgb;
    if-nez v1, :cond_1

    .line 87
    sget-object v2, Lc8/Ngb;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 88
    sget-object v2, Lc8/Ngb;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :try_start_1
    invoke-static {p0}, Lc8/Ngb;->loadMessage(I)Lc8/Mgb;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_0

    .line 92
    sget-object v2, Lc8/Ngb;->cachedMessageMetas:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    sget-object v2, Lc8/Ngb;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    sget-object v2, Lc8/Ngb;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 101
    :cond_1
    if-nez v1, :cond_2

    .line 102
    :try_start_3
    invoke-static {p0}, Lc8/Ngb;->createMessageNotFoundMessage(I)Lc8/Mgb;

    move-result-object v2

    iget-object v2, v2, Lc8/Mgb;->message:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 106
    :try_start_4
    sget-object v3, Lc8/Ngb;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 109
    .end local v1    # "message":Lc8/Mgb;
    :goto_0
    return-object v2

    .line 96
    .restart local v1    # "message":Lc8/Mgb;
    :catchall_0
    move-exception v2

    sget-object v3, Lc8/Ngb;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 108
    .end local v1    # "message":Lc8/Mgb;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/Ngb;->createUnknownErrorMessage(Ljava/lang/String;)Lc8/Mgb;

    move-result-object v2

    iget-object v2, v2, Lc8/Mgb;->message:Ljava/lang/String;

    goto :goto_0

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "message":Lc8/Mgb;
    :cond_2
    :try_start_5
    iget-object v2, v1, Lc8/Mgb;->message:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v2

    .line 106
    :try_start_6
    sget-object v3, Lc8/Ngb;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_1
    move-exception v2

    sget-object v3, Lc8/Ngb;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method private static loadMessage(I)Lc8/Mgb;
    .locals 10
    .param p0, "code"    # I

    .prologue
    const/4 v5, 0x0

    .line 160
    :try_start_0
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "string"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "auth_sdk_message_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_message"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lc8/Yhb;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 162
    .local v3, "messageIdentifier":I
    if-nez v3, :cond_0

    move-object v2, v5

    .line 192
    .end local v3    # "messageIdentifier":I
    :goto_0
    return-object v2

    .line 166
    .restart local v3    # "messageIdentifier":I
    :cond_0
    new-instance v2, Lc8/Mgb;

    invoke-direct {v2}, Lc8/Mgb;-><init>()V

    .line 167
    .local v2, "message":Lc8/Mgb;
    iput p0, v2, Lc8/Mgb;->code:I

    .line 168
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "auth_sdk_message_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_message"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/Yhb;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lc8/Mgb;->message:Ljava/lang/String;

    .line 171
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "string"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "auth_sdk_message_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_action"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lc8/Yhb;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 173
    .local v0, "actionIdentifier":I
    if-eqz v0, :cond_1

    .line 174
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "auth_sdk_message_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_action"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/Yhb;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lc8/Mgb;->action:Ljava/lang/String;

    .line 180
    :goto_1
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "string"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "auth_sdk_message_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lc8/Yhb;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 182
    .local v4, "typeIdentifier":I
    if-eqz v4, :cond_2

    .line 183
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "auth_sdk_message_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/Yhb;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lc8/Mgb;->type:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 189
    .end local v0    # "actionIdentifier":I
    .end local v2    # "message":Lc8/Mgb;
    .end local v3    # "messageIdentifier":I
    .end local v4    # "typeIdentifier":I
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "kernel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Fail to get message of the code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", the error message is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 191
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 190
    invoke-static {v6, v7}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 192
    goto/16 :goto_0

    .line 177
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "actionIdentifier":I
    .restart local v2    # "message":Lc8/Mgb;
    .restart local v3    # "messageIdentifier":I
    :cond_1
    :try_start_1
    const-string/jumbo v6, ""

    iput-object v6, v2, Lc8/Mgb;->action:Ljava/lang/String;

    goto/16 :goto_1

    .line 186
    .restart local v4    # "typeIdentifier":I
    :cond_2
    const-string/jumbo v6, "I"

    iput-object v6, v2, Lc8/Mgb;->type:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
