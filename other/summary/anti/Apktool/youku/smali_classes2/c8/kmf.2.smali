.class public Lc8/kmf;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/imf;,
        Lc8/jmf;
    }
.end annotation


# static fields
.field private static final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static obj:Ljava/lang/Object;


# instance fields
.field private a:Lc8/bmf;

.field private b:I

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lc8/fmf;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lc8/fmf;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/ExecutorService;

.field private final j:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final k:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lc8/fmf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lc8/kmf;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lc8/kmf;->g:Ljava/util/Set;

    .line 66
    const-string/jumbo v0, "com.taobao.downloader.adapter.TBDownloadAdapter"

    const-string/jumbo v1, "init"

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/Pmf;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lc8/kmf;-><init>(Landroid/content/Context;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v1, p0, Lc8/kmf;->b:I

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/kmf;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc8/kmf;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/kmf;->f:Ljava/util/Set;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/kmf;->h:Ljava/util/Set;

    .line 47
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lc8/kmf;->k:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 85
    sget-object v0, Lc8/omf;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 86
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lc8/omf;->context:Landroid/content/Context;

    .line 88
    :cond_0
    sget-object v0, Lc8/omf;->context:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_2
    new-instance v0, Lc8/amf;

    invoke-direct {v0}, Lc8/amf;-><init>()V

    invoke-virtual {v0}, Lc8/amf;->build()Lc8/bmf;

    move-result-object v0

    iput-object v0, p0, Lc8/kmf;->a:Lc8/bmf;

    .line 93
    sget-object v0, Lc8/kmf;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lc8/kmf;->b:I

    .line 94
    new-instance v0, Lc8/jmf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TBLoader-Dispatch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/kmf;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc8/jmf;-><init>(Lc8/kmf;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lc8/kmf;->i:Ljava/util/concurrent/ExecutorService;

    .line 96
    if-lez p2, :cond_3

    const/16 v0, 0xa

    if-le p2, v0, :cond_4

    :cond_3
    const/4 v2, 0x3

    .line 97
    :goto_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lc8/jmf;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TBLoader-Network"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lc8/kmf;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, p0, v0}, Lc8/jmf;-><init>(Lc8/kmf;Ljava/lang/String;)V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lc8/kmf;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 98
    iget-object v0, p0, Lc8/kmf;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v2, 0xb4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 99
    iget-object v0, p0, Lc8/kmf;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 100
    return-void

    :cond_4
    move v2, p2

    .line 96
    goto :goto_1
.end method

.method static synthetic a(Lc8/kmf;)Ljava/util/concurrent/PriorityBlockingQueue;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lc8/kmf;->k:Ljava/util/concurrent/PriorityBlockingQueue;

    return-object v0
.end method

.method private a(Lc8/imf;)V
    .locals 4

    .prologue
    .line 342
    iget-object v1, p0, Lc8/kmf;->f:Ljava/util/Set;

    monitor-enter v1

    .line 343
    :try_start_0
    iget-object v0, p0, Lc8/kmf;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fmf;

    .line 344
    invoke-interface {p1, v0}, Lc8/imf;->apply(Lc8/fmf;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 345
    invoke-virtual {p0, v0}, Lc8/kmf;->cancel(Lc8/fmf;)V

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic b(Lc8/kmf;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lc8/kmf;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic c(Lc8/kmf;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    .line 7296
    iget v0, p0, Lc8/kmf;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 23
    return-object v0
.end method

.method static synthetic d(Lc8/kmf;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lc8/kmf;->b:I

    return v0
.end method


# virtual methods
.method a()V
    .locals 7

    .prologue
    .line 352
    iget-object v0, p0, Lc8/kmf;->a:Lc8/bmf;

    iget-boolean v0, v0, Lc8/bmf;->c:Z

    if-eqz v0, :cond_2

    .line 353
    iget-object v1, p0, Lc8/kmf;->h:Ljava/util/Set;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lc8/kmf;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 355
    const/4 v0, 0x1

    invoke-static {v0}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const-string/jumbo v0, "RequestQueue"

    const-string/jumbo v2, "autoResumeLimitReqs"

    .line 6296
    iget v3, p0, Lc8/kmf;->b:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 356
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "auto resume all (network limit) request.size"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lc8/kmf;->h:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lc8/Nmf;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lc8/kmf;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fmf;

    .line 359
    invoke-virtual {v0}, Lc8/fmf;->resume()V

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    :cond_2
    return-void
.end method

.method a(Lc8/fmf;)V
    .locals 7

    .prologue
    .line 275
    sget-object v1, Lc8/kmf;->g:Ljava/util/Set;

    monitor-enter v1

    .line 276
    :try_start_0
    sget-object v0, Lc8/kmf;->g:Ljava/util/Set;

    invoke-virtual {p1}, Lc8/fmf;->getUniqueKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 277
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    iget-object v1, p0, Lc8/kmf;->f:Ljava/util/Set;

    monitor-enter v1

    .line 279
    :try_start_1
    iget-object v0, p0, Lc8/kmf;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 280
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 282
    iget-object v0, p0, Lc8/kmf;->a:Lc8/bmf;

    iget-boolean v0, v0, Lc8/bmf;->c:Z

    if-eqz v0, :cond_2

    .line 283
    iget-object v1, p0, Lc8/kmf;->h:Ljava/util/Set;

    monitor-enter v1

    .line 284
    :try_start_2
    iget-object v0, p0, Lc8/kmf;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 285
    invoke-virtual {p1}, Lc8/fmf;->getStatus()Lcom/taobao/downloader/api/Request$Status;

    move-result-object v0

    sget-object v2, Lcom/taobao/downloader/api/Request$Status;->PAUSED:Lcom/taobao/downloader/api/Request$Status;

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lc8/fmf;->c:Z

    if-eqz v0, :cond_1

    .line 286
    const/4 v0, 0x2

    invoke-static {v0}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const-string/jumbo v0, "RequestQueue"

    const-string/jumbo v2, "finish"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "add to auto resume list util network become to wifi."

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lc8/Nmf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lc8/kmf;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 293
    :cond_2
    return-void

    .line 277
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 280
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 291
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public add(Lc8/fmf;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 187
    iget-object v0, p0, Lc8/kmf;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/kmf;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    :cond_0
    const-string/jumbo v3, "RequestQueue"

    const-string/jumbo v4, "add fail as queue already stop"

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "mDispatchExecutor"

    aput-object v6, v5, v2

    iget-object v2, p0, Lc8/kmf;->i:Ljava/util/concurrent/ExecutorService;

    .line 189
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    const-string/jumbo v1, "mNetworkExecutor"

    aput-object v1, v5, v8

    iget-object v1, p0, Lc8/kmf;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v9

    .line 188
    invoke-static {v3, v4, v0, v5}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    :cond_1
    :goto_1
    return-void

    .line 188
    :cond_2
    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lc8/fmf;->b()Z

    move-result v0

    if-nez v0, :cond_6

    .line 193
    :cond_4
    const-string/jumbo v3, "RequestQueue"

    const-string/jumbo v4, "add fail"

    if-nez p1, :cond_5

    const/4 v0, 0x0

    :goto_2
    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "reason"

    aput-object v6, v5, v2

    const-string/jumbo v2, "request url is null."

    aput-object v2, v5, v1

    invoke-static {v3, v4, v0, v5}, Lc8/Nmf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 196
    :cond_6
    iget-object v0, p1, Lc8/fmf;->listener:Lc8/vmf;

    if-nez v0, :cond_7

    .line 197
    new-instance v0, Lc8/qmf;

    invoke-direct {v0}, Lc8/qmf;-><init>()V

    iput-object v0, p1, Lc8/fmf;->listener:Lc8/vmf;

    .line 199
    :cond_7
    iget-object v0, p1, Lc8/fmf;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 200
    iget-object v0, p0, Lc8/kmf;->a:Lc8/bmf;

    iget-object v0, v0, Lc8/bmf;->d:Lc8/umf;

    iget-object v3, p1, Lc8/fmf;->url:Ljava/lang/String;

    invoke-interface {v0, v3}, Lc8/umf;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lc8/fmf;->name:Ljava/lang/String;

    .line 202
    :cond_8
    iget-object v0, p1, Lc8/fmf;->cachePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 203
    iget-object v0, p0, Lc8/kmf;->a:Lc8/bmf;

    iget-object v0, v0, Lc8/bmf;->a:Ljava/lang/String;

    iput-object v0, p1, Lc8/fmf;->cachePath:Ljava/lang/String;

    .line 205
    :cond_9
    iget-object v0, p1, Lc8/fmf;->network:Lcom/taobao/downloader/api/Request$Network;

    if-nez v0, :cond_a

    .line 206
    iget-object v0, p0, Lc8/kmf;->a:Lc8/bmf;

    iget-object v0, v0, Lc8/bmf;->b:Lcom/taobao/downloader/api/Request$Network;

    iput-object v0, p1, Lc8/fmf;->network:Lcom/taobao/downloader/api/Request$Network;

    .line 208
    :cond_a
    iget-object v0, p1, Lc8/fmf;->retryPolicy:Lc8/Amf;

    if-nez v0, :cond_b

    .line 209
    iget-object v0, p0, Lc8/kmf;->a:Lc8/bmf;

    iget-object v0, v0, Lc8/bmf;->e:Lc8/Amf;

    iput-object v0, p1, Lc8/fmf;->retryPolicy:Lc8/Amf;

    .line 211
    :cond_b
    iget-object v0, p1, Lc8/fmf;->netConnection:Ljava/lang/Class;

    if-nez v0, :cond_c

    .line 212
    iget-object v0, p0, Lc8/kmf;->a:Lc8/bmf;

    iget-object v0, v0, Lc8/bmf;->f:Ljava/lang/Class;

    iput-object v0, p1, Lc8/fmf;->netConnection:Ljava/lang/Class;

    .line 214
    :cond_c
    invoke-virtual {p1}, Lc8/fmf;->c()Z

    move-result v0

    if-nez v0, :cond_d

    .line 215
    const-string/jumbo v0, "param is illegal."

    .line 216
    iget-object v3, p1, Lc8/fmf;->listener:Lc8/vmf;

    const/16 v4, -0x14

    invoke-interface {v3, v4, v0}, Lc8/vmf;->onError(ILjava/lang/String;)V

    .line 217
    const-string/jumbo v3, "RequestQueue"

    const-string/jumbo v4, "add fail"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    const-string/jumbo v7, "reason"

    aput-object v7, v6, v2

    aput-object v0, v6, v1

    invoke-static {v3, v4, v5, v6}, Lc8/Nmf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 220
    :cond_d
    invoke-virtual {p1}, Lc8/fmf;->getStatus()Lcom/taobao/downloader/api/Request$Status;

    move-result-object v0

    sget-object v3, Lcom/taobao/downloader/api/Request$Status;->PAUSED:Lcom/taobao/downloader/api/Request$Status;

    if-ne v0, v3, :cond_e

    .line 221
    const-string/jumbo v0, "request is paused, please resume() first."

    .line 222
    iget-object v3, p1, Lc8/fmf;->listener:Lc8/vmf;

    const/16 v4, -0x15

    invoke-interface {v3, v4, v0}, Lc8/vmf;->onError(ILjava/lang/String;)V

    .line 223
    const-string/jumbo v3, "RequestQueue"

    const-string/jumbo v4, "add fail"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    const-string/jumbo v7, "reason"

    aput-object v7, v6, v2

    aput-object v0, v6, v1

    invoke-static {v3, v4, v5, v6}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 226
    :cond_e
    iget v0, p1, Lc8/fmf;->b:I

    if-eqz v0, :cond_f

    iget v0, p1, Lc8/fmf;->b:I

    iget v3, p0, Lc8/kmf;->b:I

    if-eq v0, v3, :cond_f

    .line 227
    const-string/jumbo v0, "request is already exist last queue."

    .line 228
    iget-object v3, p1, Lc8/fmf;->listener:Lc8/vmf;

    const/16 v4, -0x16

    invoke-interface {v3, v4, v0}, Lc8/vmf;->onError(ILjava/lang/String;)V

    .line 229
    const-string/jumbo v3, "RequestQueue"

    const-string/jumbo v4, "add fail"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "curQueueSeq"

    aput-object v7, v6, v2

    iget v2, p0, Lc8/kmf;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const-string/jumbo v1, "reason"

    aput-object v1, v6, v8

    aput-object v0, v6, v9

    invoke-static {v3, v4, v5, v6}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 232
    :cond_f
    iget v0, p1, Lc8/fmf;->b:I

    if-nez v0, :cond_10

    .line 233
    iget v0, p0, Lc8/kmf;->b:I

    iput v0, p1, Lc8/fmf;->b:I

    .line 235
    :cond_10
    iget v0, p1, Lc8/fmf;->a:I

    if-nez v0, :cond_11

    .line 5300
    iget-object v0, p0, Lc8/kmf;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 236
    iput v0, p1, Lc8/fmf;->a:I

    .line 238
    :cond_11
    iget-object v3, p0, Lc8/kmf;->f:Ljava/util/Set;

    monitor-enter v3

    .line 239
    :try_start_0
    iget-object v0, p0, Lc8/kmf;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 240
    const-string/jumbo v0, "exist another same request obj."

    .line 241
    iget-object v1, p1, Lc8/fmf;->listener:Lc8/vmf;

    const/16 v2, -0x17

    invoke-interface {v1, v2, v0}, Lc8/vmf;->onError(ILjava/lang/String;)V

    .line 242
    const-string/jumbo v1, "RequestQueue"

    const-string/jumbo v2, "add fail"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "reason"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v1, v2, v4, v5}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    monitor-exit v3

    goto/16 :goto_1

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 245
    :cond_12
    :try_start_1
    iget-object v0, p0, Lc8/kmf;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    invoke-virtual {p1, p0}, Lc8/fmf;->a(Lc8/kmf;)V

    .line 248
    invoke-virtual {p1}, Lc8/fmf;->a()V

    .line 249
    invoke-virtual {p1}, Lc8/fmf;->getResponse()Lc8/smf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/smf;->a()V

    .line 250
    invoke-static {v1}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 251
    const-string/jumbo v0, "RequestQueue"

    const-string/jumbo v3, "add"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const-string/jumbo v6, "request"

    aput-object v6, v5, v2

    aput-object p1, v5, v1

    invoke-static {v0, v3, v4, v5}, Lc8/Nmf;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :cond_13
    sget-object v3, Lc8/kmf;->g:Ljava/util/Set;

    monitor-enter v3

    .line 256
    :try_start_2
    sget-object v0, Lc8/kmf;->g:Ljava/util/Set;

    invoke-virtual {p1}, Lc8/fmf;->getUniqueKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 258
    const-string/jumbo v0, "exist another same (url+name+path) request."

    .line 259
    iget-object v2, p1, Lc8/fmf;->listener:Lc8/vmf;

    const/16 v4, -0x17

    invoke-interface {v2, v4, v0}, Lc8/vmf;->onError(ILjava/lang/String;)V

    .line 260
    const-string/jumbo v2, "RequestQueue"

    const-string/jumbo v4, "add fail"

    invoke-virtual {p1}, Lc8/fmf;->getSeq()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "reason"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-static {v2, v4, v5, v6}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 266
    :goto_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 267
    if-eqz v0, :cond_1

    .line 268
    iget-object v1, p0, Lc8/kmf;->f:Ljava/util/Set;

    monitor-enter v1

    .line 269
    :try_start_3
    iget-object v0, p0, Lc8/kmf;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 270
    monitor-exit v1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 263
    :cond_14
    :try_start_4
    sget-object v0, Lc8/kmf;->g:Ljava/util/Set;

    invoke-virtual {p1}, Lc8/fmf;->getUniqueKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v0, p0, Lc8/kmf;->k:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_3

    .line 266
    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public cancel(Lc8/fmf;)V
    .locals 2

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 322
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lc8/kmf;->a:Lc8/bmf;

    iget-boolean v0, v0, Lc8/bmf;->c:Z

    if-eqz v0, :cond_1

    .line 317
    iget-object v1, p0, Lc8/kmf;->h:Ljava/util/Set;

    monitor-enter v1

    .line 318
    :try_start_0
    iget-object v0, p0, Lc8/kmf;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 319
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :cond_1
    invoke-virtual {p1}, Lc8/fmf;->d()V

    goto :goto_0

    .line 319
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cancelAll(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 330
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 333
    :cond_0
    new-instance v0, Lc8/hmf;

    invoke-direct {v0, p0, p1}, Lc8/hmf;-><init>(Lc8/kmf;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lc8/kmf;->a(Lc8/imf;)V

    goto :goto_0
.end method

.method public setRueueConfig(Lc8/bmf;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 172
    if-eqz p1, :cond_1

    .line 173
    invoke-static {v6}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string/jumbo v0, "RequestQueue"

    const-string/jumbo v1, "setRueueConfig"

    .line 5296
    iget v2, p0, Lc8/kmf;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 174
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "queueConfig"

    aput-object v5, v3, v4

    aput-object p1, v3, v6

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :cond_0
    iput-object p1, p0, Lc8/kmf;->a:Lc8/bmf;

    .line 178
    :cond_1
    return-void
.end method

.method public start()V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 106
    iget-object v0, p0, Lc8/kmf;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/kmf;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    const-string/jumbo v0, "RequestQueue"

    const-string/jumbo v1, "start fail"

    .line 1296
    iget v2, p0, Lc8/kmf;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "reason"

    aput-object v4, v3, v5

    const-string/jumbo v4, "already stoped"

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lc8/kmf;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    invoke-static {v3}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    const-string/jumbo v0, "RequestQueue"

    const-string/jumbo v1, "start"

    .line 2296
    iget v2, p0, Lc8/kmf;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 112
    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "threadPoolSize"

    aput-object v4, v3, v5

    iget-object v4, p0, Lc8/kmf;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    :cond_2
    iget-object v0, p0, Lc8/kmf;->a:Lc8/bmf;

    iget-boolean v0, v0, Lc8/bmf;->c:Z

    if-eqz v0, :cond_3

    .line 115
    sget-object v0, Lc8/cmf;->requestQueueList:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_3
    iget-object v0, p0, Lc8/kmf;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lc8/gmf;

    invoke-direct {v1, p0}, Lc8/gmf;-><init>(Lc8/kmf;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 146
    :cond_4
    const-string/jumbo v0, "RequestQueue"

    const-string/jumbo v1, "start fail"

    .line 3296
    iget v2, p0, Lc8/kmf;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 146
    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "reason"

    aput-object v4, v3, v5

    const-string/jumbo v4, "already started"

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 6

    .prologue
    .line 154
    const-string/jumbo v0, "RequestQueue"

    const-string/jumbo v1, "stop"

    .line 4296
    iget v2, p0, Lc8/kmf;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 154
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "cann\'t start/add to queue again"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lc8/Nmf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lc8/kmf;->i:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lc8/kmf;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 158
    :cond_0
    iget-object v0, p0, Lc8/kmf;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lc8/kmf;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 161
    :cond_1
    iget-object v0, p0, Lc8/kmf;->a:Lc8/bmf;

    iget-boolean v0, v0, Lc8/bmf;->c:Z

    if-eqz v0, :cond_2

    .line 162
    sget-object v0, Lc8/cmf;->requestQueueList:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 164
    :cond_2
    return-void
.end method
