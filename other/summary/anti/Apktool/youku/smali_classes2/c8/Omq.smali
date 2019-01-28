.class public abstract Lc8/Omq;
.super Ljava/lang/Object;
.source "Subscriber.java"

# interfaces
.implements Lc8/Pmq;
.implements Lc8/Wlq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Wlq",
        "<TT;>;",
        "Lc8/Pmq;"
    }
.end annotation


# static fields
.field private static final NOT_SET:J = -0x8000000000000000L


# instance fields
.field private producer:Lc8/Xlq;

.field private requested:J

.field private final subscriber:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<*>;"
        }
    .end annotation
.end field

.field private final subscriptions:Lc8/wyq;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 46
    .local p0, "this":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lc8/Omq;-><init>(Lc8/Omq;Z)V

    .line 47
    return-void
.end method

.method protected constructor <init>(Lc8/Omq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lc8/Omq;-><init>(Lc8/Omq;Z)V

    .line 59
    return-void
.end method

.method protected constructor <init>(Lc8/Omq;Z)V
    .locals 2
    .param p2, "shareSubscriptions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lc8/Omq;->requested:J

    .line 80
    iput-object p1, p0, Lc8/Omq;->subscriber:Lc8/Omq;

    .line 81
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lc8/Omq;->subscriptions:Lc8/wyq;

    :goto_0
    iput-object v0, p0, Lc8/Omq;->subscriptions:Lc8/wyq;

    .line 82
    return-void

    .line 81
    :cond_0
    new-instance v0, Lc8/wyq;

    invoke-direct {v0}, Lc8/wyq;-><init>()V

    goto :goto_0
.end method

.method private addToRequested(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .line 161
    .local p0, "this":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    iget-wide v2, p0, Lc8/Omq;->requested:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 162
    iput-wide p1, p0, Lc8/Omq;->requested:J

    .line 172
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-wide v2, p0, Lc8/Omq;->requested:J

    add-long v0, v2, p1

    .line 166
    .local v0, "total":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 167
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lc8/Omq;->requested:J

    goto :goto_0

    .line 169
    :cond_1
    iput-wide v0, p0, Lc8/Omq;->requested:J

    goto :goto_0
.end method


# virtual methods
.method public final add(Lc8/Pmq;)V
    .locals 1
    .param p1, "s"    # Lc8/Pmq;

    .prologue
    .line 93
    .local p0, "this":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    iget-object v0, p0, Lc8/Omq;->subscriptions:Lc8/wyq;

    invoke-virtual {v0, p1}, Lc8/wyq;->add(Lc8/Pmq;)V

    .line 94
    return-void
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    iget-object v0, p0, Lc8/Omq;->subscriptions:Lc8/wyq;

    invoke-virtual {v0}, Lc8/wyq;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 118
    .local p0, "this":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    return-void
.end method

.method protected final request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .line 141
    .local p0, "this":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 142
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "number requested cannot be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_0
    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v1, p0, Lc8/Omq;->producer:Lc8/Xlq;

    if-eqz v1, :cond_1

    .line 150
    iget-object v0, p0, Lc8/Omq;->producer:Lc8/Xlq;

    .line 155
    .local v0, "producerToRequestFrom":Lc8/Xlq;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-interface {v0, p1, p2}, Lc8/Xlq;->request(J)V

    .line 158
    .end local v0    # "producerToRequestFrom":Lc8/Xlq;
    :goto_0
    return-void

    .line 152
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lc8/Omq;->addToRequested(J)V

    .line 153
    monitor-exit p0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 6
    .param p1, "p"    # Lc8/Xlq;

    .prologue
    .local p0, "this":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    const-wide/high16 v4, -0x8000000000000000L

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "passToSubscriber":Z
    monitor-enter p0

    .line 193
    :try_start_0
    iget-wide v2, p0, Lc8/Omq;->requested:J

    .line 194
    .local v2, "toRequest":J
    iput-object p1, p0, Lc8/Omq;->producer:Lc8/Xlq;

    .line 195
    iget-object v1, p0, Lc8/Omq;->subscriber:Lc8/Omq;

    if-eqz v1, :cond_0

    .line 197
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 202
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    if-eqz v0, :cond_1

    .line 205
    iget-object v1, p0, Lc8/Omq;->subscriber:Lc8/Omq;

    iget-object v4, p0, Lc8/Omq;->producer:Lc8/Xlq;

    invoke-virtual {v1, v4}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 214
    :goto_0
    return-void

    .line 202
    .end local v2    # "toRequest":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 208
    .restart local v2    # "toRequest":J
    :cond_1
    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 209
    iget-object v1, p0, Lc8/Omq;->producer:Lc8/Xlq;

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface {v1, v4, v5}, Lc8/Xlq;->request(J)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v1, p0, Lc8/Omq;->producer:Lc8/Xlq;

    invoke-interface {v1, v2, v3}, Lc8/Xlq;->request(J)V

    goto :goto_0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    iget-object v0, p0, Lc8/Omq;->subscriptions:Lc8/wyq;

    invoke-virtual {v0}, Lc8/wyq;->unsubscribe()V

    .line 99
    return-void
.end method
