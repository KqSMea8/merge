.class public Lc8/Hmf;
.super Lc8/Jmf;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Imf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lc8/Imf;


# direct methods
.method constructor <init>(Lc8/Imf;Lc8/fmf;ZLc8/Dmf;)V
    .locals 1

    .prologue
    .line 32
    iput-object p1, p0, Lc8/Hmf;->a:Lc8/Imf;

    .line 33
    invoke-direct {p0, p2, p3, p4}, Lc8/Jmf;-><init>(Lc8/fmf;ZLc8/Dmf;)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Hmf;->d:Z

    .line 35
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lc8/Hmf;->a:Lc8/Imf;

    invoke-static {v0}, Lc8/Imf;->e(Lc8/Imf;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v1, p0, Lc8/Hmf;->a:Lc8/Imf;

    invoke-static {v1}, Lc8/Imf;->b(Lc8/Imf;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lc8/Hmf;->c:Lc8/Dmf;

    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lc8/Hmf;->c:Lc8/Dmf;

    iget-object v0, p0, Lc8/Hmf;->a:Lc8/Imf;

    invoke-static {v0}, Lc8/Imf;->d(Lc8/Imf;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lc8/Dmf;->onFinish(Z)V

    .line 77
    iget-object v0, p0, Lc8/Hmf;->a:Lc8/Imf;

    invoke-static {v0}, Lc8/Imf;->f(Lc8/Imf;)Lc8/kmf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lc8/Hmf;->a:Lc8/Imf;

    invoke-static {v0}, Lc8/Imf;->f(Lc8/Imf;)Lc8/kmf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/kmf;->stop()V

    .line 82
    :cond_0
    return-void

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCompleted(ZJ)V
    .locals 4

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Lc8/Jmf;->onCompleted(ZJ)V

    .line 61
    iget-object v0, p0, Lc8/Hmf;->a:Lc8/Imf;

    iget-object v1, p0, Lc8/Hmf;->b:Lc8/fmf;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lc8/Imf;->a(Lc8/Imf;Lc8/fmf;J)V

    .line 62
    invoke-direct {p0}, Lc8/Hmf;->a()V

    .line 63
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lc8/Jmf;->onError(ILjava/lang/String;)V

    .line 68
    iget-object v0, p0, Lc8/Hmf;->a:Lc8/Imf;

    iget-object v1, p0, Lc8/Hmf;->b:Lc8/fmf;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lc8/Imf;->a(Lc8/Imf;Lc8/fmf;J)V

    .line 69
    iget-object v0, p0, Lc8/Hmf;->a:Lc8/Imf;

    invoke-static {v0}, Lc8/Imf;->d(Lc8/Imf;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70
    invoke-direct {p0}, Lc8/Hmf;->a()V

    .line 71
    return-void
.end method

.method public onProgress(JJ)V
    .locals 5

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3, p4}, Lc8/Jmf;->onProgress(JJ)V

    .line 40
    iget-object v0, p0, Lc8/Hmf;->a:Lc8/Imf;

    invoke-static {v0}, Lc8/Imf;->a(Lc8/Imf;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lc8/Hmf;->a:Lc8/Imf;

    invoke-static {v0}, Lc8/Imf;->b(Lc8/Imf;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, p1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fmf;

    .line 44
    iget-object v1, p0, Lc8/Hmf;->b:Lc8/fmf;

    if-eq v1, v0, :cond_3

    .line 45
    invoke-virtual {v0}, Lc8/fmf;->getResponse()Lc8/smf;

    move-result-object v0

    iget-wide v0, v0, Lc8/smf;->e:J

    add-long/2addr v0, v2

    :goto_1
    move-wide v2, v0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lc8/Hmf;->c:Lc8/Dmf;

    if-eqz v0, :cond_1

    .line 49
    const-wide/16 v0, 0x64

    mul-long/2addr v0, v2

    iget-object v2, p0, Lc8/Hmf;->a:Lc8/Imf;

    invoke-static {v2}, Lc8/Imf;->c(Lc8/Imf;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 50
    iget-object v1, p0, Lc8/Hmf;->c:Lc8/Dmf;

    invoke-interface {v1, v0}, Lc8/Dmf;->onDownloadProgress(I)V

    .line 52
    :cond_1
    monitor-exit p0

    .line 56
    :goto_2
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 54
    :cond_2
    iget-object v0, p0, Lc8/Hmf;->a:Lc8/Imf;

    iget-object v1, p0, Lc8/Hmf;->b:Lc8/fmf;

    invoke-static {v0, v1, p3, p4}, Lc8/Imf;->a(Lc8/Imf;Lc8/fmf;J)V

    goto :goto_2

    :cond_3
    move-wide v0, v2

    goto :goto_1
.end method
