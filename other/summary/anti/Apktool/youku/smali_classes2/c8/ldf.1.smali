.class public Lc8/ldf;
.super Ljava/lang/Object;
.source "EventCenterBuilder.java"


# static fields
.field private static final DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;


# instance fields
.field eventInheritance:Z

.field executorService:Ljava/util/concurrent/ExecutorService;

.field logNoSubscriberMessages:Z

.field logSubscriberExceptions:Z

.field sendNoSubscriberEvent:Z

.field sendSubscriberExceptionEvent:Z

.field throwSubscriberException:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lc8/ldf;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean v0, p0, Lc8/ldf;->logSubscriberExceptions:Z

    .line 10
    iput-boolean v0, p0, Lc8/ldf;->logNoSubscriberMessages:Z

    .line 11
    iput-boolean v0, p0, Lc8/ldf;->sendSubscriberExceptionEvent:Z

    .line 12
    iput-boolean v0, p0, Lc8/ldf;->sendNoSubscriberEvent:Z

    .line 14
    iput-boolean v0, p0, Lc8/ldf;->eventInheritance:Z

    .line 15
    sget-object v0, Lc8/ldf;->DEFAULT_EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lc8/ldf;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 18
    return-void
.end method


# virtual methods
.method public build()Lc8/kdf;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lc8/kdf;

    invoke-direct {v0, p0}, Lc8/kdf;-><init>(Lc8/ldf;)V

    return-object v0
.end method

.method public eventInheritance(Z)Lc8/ldf;
    .locals 0
    .param p1, "eventInheritance"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lc8/ldf;->eventInheritance:Z

    .line 47
    return-object p0
.end method

.method public executorService(Ljava/util/concurrent/ExecutorService;)Lc8/ldf;
    .locals 0
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 51
    iput-object p1, p0, Lc8/ldf;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 52
    return-object p0
.end method

.method public installDefaultEventBus()Lc8/kdf;
    .locals 3

    .prologue
    .line 56
    const-class v1, Lc8/kdf;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lc8/kdf;->defaultInstance:Lc8/kdf;

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/taobao/android/trade/event/EventCenterException;

    const-string/jumbo v2, "Default instance already exists. It may be onlyset once before it\'s used the first time to ensure consistent behavior."

    invoke-direct {v0, v2}, Lcom/taobao/android/trade/event/EventCenterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 61
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lc8/ldf;->build()Lc8/kdf;

    move-result-object v0

    .line 62
    sput-object v0, Lc8/kdf;->defaultInstance:Lc8/kdf;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public logNoSubscriberMessages(Z)Lc8/ldf;
    .locals 0
    .param p1, "logNoSubscriberMessages"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lc8/ldf;->logNoSubscriberMessages:Z

    .line 27
    return-object p0
.end method

.method public logSubscriberExceptions(Z)Lc8/ldf;
    .locals 0
    .param p1, "logSubscriberExceptions"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lc8/ldf;->logSubscriberExceptions:Z

    .line 22
    return-object p0
.end method

.method public sendNoSubscriberEvent(Z)Lc8/ldf;
    .locals 0
    .param p1, "sendNoSubscriberEvent"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lc8/ldf;->sendNoSubscriberEvent:Z

    .line 37
    return-object p0
.end method

.method public sendSubscriberExceptionEvent(Z)Lc8/ldf;
    .locals 0
    .param p1, "sendSubscriberExceptionEvent"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lc8/ldf;->sendSubscriberExceptionEvent:Z

    .line 32
    return-object p0
.end method

.method public throwSubscriberException(Z)Lc8/ldf;
    .locals 0
    .param p1, "throwSubscriberException"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lc8/ldf;->throwSubscriberException:Z

    .line 42
    return-object p0
.end method
