.class public Lc8/eWp;
.super Lc8/wWp;
.source "ForwardingTimeout.java"


# instance fields
.field private delegate:Lc8/wWp;


# direct methods
.method public constructor <init>(Lc8/wWp;)V
    .locals 2
    .param p1, "delegate"    # Lc8/wWp;

    .prologue
    .line 25
    invoke-direct {p0}, Lc8/wWp;-><init>()V

    .line 26
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iput-object p1, p0, Lc8/eWp;->delegate:Lc8/wWp;

    .line 28
    return-void
.end method


# virtual methods
.method public clearDeadline()Lc8/wWp;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc8/eWp;->delegate:Lc8/wWp;

    invoke-virtual {v0}, Lc8/wWp;->clearDeadline()Lc8/wWp;

    move-result-object v0

    return-object v0
.end method

.method public clearTimeout()Lc8/wWp;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lc8/eWp;->delegate:Lc8/wWp;

    invoke-virtual {v0}, Lc8/wWp;->clearTimeout()Lc8/wWp;

    move-result-object v0

    return-object v0
.end method

.method public deadlineNanoTime()J
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lc8/eWp;->delegate:Lc8/wWp;

    invoke-virtual {v0}, Lc8/wWp;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public deadlineNanoTime(J)Lc8/wWp;
    .locals 1
    .param p1, "deadlineNanoTime"    # J

    .prologue
    .line 58
    iget-object v0, p0, Lc8/eWp;->delegate:Lc8/wWp;

    invoke-virtual {v0, p1, p2}, Lc8/wWp;->deadlineNanoTime(J)Lc8/wWp;

    move-result-object v0

    return-object v0
.end method

.method public final delegate()Lc8/wWp;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lc8/eWp;->delegate:Lc8/wWp;

    return-object v0
.end method

.method public hasDeadline()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lc8/eWp;->delegate:Lc8/wWp;

    invoke-virtual {v0}, Lc8/wWp;->hasDeadline()Z

    move-result v0

    return v0
.end method

.method public final setDelegate(Lc8/wWp;)Lc8/eWp;
    .locals 2
    .param p1, "delegate"    # Lc8/wWp;

    .prologue
    .line 36
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lc8/eWp;->delegate:Lc8/wWp;

    .line 38
    return-object p0
.end method

.method public throwIfReached()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lc8/eWp;->delegate:Lc8/wWp;

    invoke-virtual {v0}, Lc8/wWp;->throwIfReached()V

    .line 71
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lc8/wWp;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 42
    iget-object v0, p0, Lc8/eWp;->delegate:Lc8/wWp;

    invoke-virtual {v0, p1, p2, p3}, Lc8/wWp;->timeout(JLjava/util/concurrent/TimeUnit;)Lc8/wWp;

    move-result-object v0

    return-object v0
.end method

.method public timeoutNanos()J
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lc8/eWp;->delegate:Lc8/wWp;

    invoke-virtual {v0}, Lc8/wWp;->timeoutNanos()J

    move-result-wide v0

    return-wide v0
.end method
