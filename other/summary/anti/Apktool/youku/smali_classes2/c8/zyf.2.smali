.class public abstract Lc8/zyf;
.super Ljava/lang/Object;
.source "RequestContext.java"


# static fields
.field private static final sAtomicId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mCancelListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lc8/yyf;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mCancelled:Z

.field private volatile mCancelledInMultiplex:Z

.field private final mEnableGenericTypeCheck:Z

.field private final mId:I

.field private mMultiplexCancelListener:Lc8/xyf;

.field private volatile mMultiplexPipeline:I

.field private mProducerListener:Lc8/vyf;

.field private mSchedulePriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lc8/zyf;->sAtomicId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc8/zyf;-><init>(Z)V

    .line 36
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "enableGenericTypeCheck"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x2

    iput v0, p0, Lc8/zyf;->mSchedulePriority:I

    .line 25
    sget-object v1, Lc8/zyf;->sAtomicId:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lc8/zyf;->sAtomicId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_0

    .line 27
    sget-object v0, Lc8/zyf;->sAtomicId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 29
    :cond_0
    sget-object v0, Lc8/zyf;->sAtomicId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lc8/zyf;->mId:I

    .line 30
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iput-boolean p1, p0, Lc8/zyf;->mEnableGenericTypeCheck:Z

    .line 32
    return-void

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private callCancelListeners()V
    .locals 6

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "copies":Ljava/util/Set;, "Ljava/util/Set<Lcom/taobao/rxm/request/RequestCancelListener;>;"
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v4, p0, Lc8/zyf;->mCancelListeners:Ljava/util/Set;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/zyf;->mCancelListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v3

    .local v3, "size":I
    if-lez v3, :cond_0

    .line 88
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v0    # "copies":Ljava/util/Set;, "Ljava/util/Set<Lcom/taobao/rxm/request/RequestCancelListener;>;"
    .local v1, "copies":Ljava/util/Set;, "Ljava/util/Set<Lcom/taobao/rxm/request/RequestCancelListener;>;"
    :try_start_1
    iget-object v4, p0, Lc8/zyf;->mCancelListeners:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 91
    .end local v1    # "copies":Ljava/util/Set;, "Ljava/util/Set<Lcom/taobao/rxm/request/RequestCancelListener;>;"
    .end local v3    # "size":I
    .restart local v0    # "copies":Ljava/util/Set;, "Ljava/util/Set<Lcom/taobao/rxm/request/RequestCancelListener;>;"
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/yyf;

    .line 95
    .local v2, "listener":Lc8/yyf;
    invoke-interface {v2, p0}, Lc8/yyf;->onCancel(Lc8/zyf;)V

    goto :goto_0

    .line 91
    .end local v2    # "listener":Lc8/yyf;
    :catchall_0
    move-exception v4

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 97
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 99
    :cond_2
    return-void

    .line 91
    .end local v0    # "copies":Ljava/util/Set;, "Ljava/util/Set<Lcom/taobao/rxm/request/RequestCancelListener;>;"
    .restart local v1    # "copies":Ljava/util/Set;, "Ljava/util/Set<Lcom/taobao/rxm/request/RequestCancelListener;>;"
    .restart local v3    # "size":I
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "copies":Ljava/util/Set;, "Ljava/util/Set<Lcom/taobao/rxm/request/RequestCancelListener;>;"
    .restart local v0    # "copies":Ljava/util/Set;, "Ljava/util/Set<Lcom/taobao/rxm/request/RequestCancelListener;>;"
    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 56
    iput-boolean v1, p0, Lc8/zyf;->mCancelledInMultiplex:Z

    .line 57
    iget-object v0, p0, Lc8/zyf;->mMultiplexCancelListener:Lc8/xyf;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lc8/zyf;->mMultiplexCancelListener:Lc8/xyf;

    invoke-interface {v0, p0}, Lc8/xyf;->onCancelRequest(Lc8/zyf;)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lc8/zyf;->isMultiplexPipeline()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    invoke-virtual {p0, v1}, Lc8/zyf;->cancelInMultiplex(Z)V

    .line 64
    :cond_1
    return-void
.end method

.method public cancelInMultiplex(Z)V
    .locals 0
    .param p1, "cancelled"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lc8/zyf;->mCancelled:Z

    .line 77
    if-eqz p1, :cond_0

    .line 78
    invoke-direct {p0}, Lc8/zyf;->callCancelListeners()V

    .line 80
    :cond_0
    return-void
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lc8/zyf;->mId:I

    return v0
.end method

.method public abstract getMultiplexKey()Ljava/lang/String;
.end method

.method public getMultiplexPipeline()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lc8/zyf;->mMultiplexPipeline:I

    return v0
.end method

.method public getProducerListener()Lc8/vyf;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lc8/zyf;->mProducerListener:Lc8/vyf;

    return-object v0
.end method

.method public getSchedulePriority()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lc8/zyf;->mSchedulePriority:I

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lc8/zyf;->mCancelled:Z

    return v0
.end method

.method public isCancelledInMultiplex()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lc8/zyf;->mCancelledInMultiplex:Z

    return v0
.end method

.method public isMultiplexPipeline()Z
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lc8/zyf;->mMultiplexPipeline:I

    iget v1, p0, Lc8/zyf;->mId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerCancelListener(Lc8/yyf;)Z
    .locals 5
    .param p1, "cancelListener"    # Lc8/yyf;

    .prologue
    const/4 v3, 0x0

    .line 130
    iget-boolean v2, p0, Lc8/zyf;->mEnableGenericTypeCheck:Z

    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v1, v2, v3

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 133
    .local v1, "interfaceType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v0, v2, v3

    check-cast v0, Ljava/lang/Class;

    .line 134
    .local v0, "genericClazz":Ljava/lang/Class;
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "this["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] CANNOT be assigned to generic["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] of RequestCancelListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    .end local v0    # "genericClazz":Ljava/lang/Class;
    .end local v1    # "interfaceType":Ljava/lang/reflect/ParameterizedType;
    :cond_0
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v2, p0, Lc8/zyf;->mCancelListeners:Ljava/util/Set;

    if-nez v2, :cond_1

    .line 140
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lc8/zyf;->mCancelListeners:Ljava/util/Set;

    .line 142
    :cond_1
    iget-object v2, p0, Lc8/zyf;->mCancelListeners:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit p0

    return v2

    .line 143
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected declared-synchronized reset()V
    .locals 1

    .prologue
    .line 114
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lc8/zyf;->mMultiplexPipeline:I

    .line 115
    iget-object v0, p0, Lc8/zyf;->mCancelListeners:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lc8/zyf;->mCancelListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMultiplexCancelListener(Lc8/xyf;)V
    .locals 0
    .param p1, "cancelListener"    # Lc8/xyf;

    .prologue
    .line 126
    iput-object p1, p0, Lc8/zyf;->mMultiplexCancelListener:Lc8/xyf;

    .line 127
    return-void
.end method

.method public setMultiplexPipeline(I)V
    .locals 0
    .param p1, "multiplexPipelineId"    # I

    .prologue
    .line 122
    iput p1, p0, Lc8/zyf;->mMultiplexPipeline:I

    .line 123
    return-void
.end method

.method public setProducerListener(Lc8/vyf;)V
    .locals 0
    .param p1, "producerListener"    # Lc8/vyf;

    .prologue
    .line 155
    iput-object p1, p0, Lc8/zyf;->mProducerListener:Lc8/vyf;

    .line 156
    return-void
.end method

.method public setSchedulePriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 48
    iput p1, p0, Lc8/zyf;->mSchedulePriority:I

    .line 49
    return-void
.end method

.method public abstract syncFrom(Lc8/zyf;)V
.end method

.method public declared-synchronized unregisterCancelListener(Lc8/yyf;)Z
    .locals 1
    .param p1, "target"    # Lc8/yyf;

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/zyf;->mCancelListeners:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/zyf;->mCancelListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
