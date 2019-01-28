.class public final Lc8/lBq;
.super Lc8/Zlq;
.source "TestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nBq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InnerTestScheduler"
.end annotation


# instance fields
.field private final s:Lc8/RBq;

.field final synthetic this$0:Lc8/nBq;


# direct methods
.method constructor <init>(Lc8/nBq;)V
    .locals 1

    .prologue
    .line 133
    iput-object p1, p0, Lc8/lBq;->this$0:Lc8/nBq;

    invoke-direct {p0}, Lc8/Zlq;-><init>()V

    .line 135
    new-instance v0, Lc8/RBq;

    invoke-direct {v0}, Lc8/RBq;-><init>()V

    iput-object v0, p0, Lc8/lBq;->s:Lc8/RBq;

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lc8/lBq;->s:Lc8/RBq;

    invoke-virtual {v0}, Lc8/RBq;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public now()J
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lc8/lBq;->this$0:Lc8/nBq;

    invoke-virtual {v0}, Lc8/nBq;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method public schedule(Lc8/hnq;)Lc8/Pmq;
    .locals 4
    .param p1, "action"    # Lc8/hnq;

    .prologue
    .line 163
    new-instance v0, Lc8/mBq;

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v2, v3, p1}, Lc8/mBq;-><init>(Lc8/Zlq;JLc8/hnq;)V

    .line 164
    .local v0, "timedAction":Lc8/mBq;
    iget-object v1, p0, Lc8/lBq;->this$0:Lc8/nBq;

    iget-object v1, v1, Lc8/nBq;->queue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v1, Lc8/kBq;

    invoke-direct {v1, p0, v0}, Lc8/kBq;-><init>(Lc8/lBq;Lc8/mBq;)V

    invoke-static {v1}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v1

    return-object v1
.end method

.method public schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;
    .locals 6
    .param p1, "action"    # Lc8/hnq;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 149
    new-instance v0, Lc8/mBq;

    iget-object v1, p0, Lc8/lBq;->this$0:Lc8/nBq;

    iget-wide v2, v1, Lc8/nBq;->time:J

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {v0, p0, v2, v3, p1}, Lc8/mBq;-><init>(Lc8/Zlq;JLc8/hnq;)V

    .line 150
    .local v0, "timedAction":Lc8/mBq;
    iget-object v1, p0, Lc8/lBq;->this$0:Lc8/nBq;

    iget-object v1, v1, Lc8/nBq;->queue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v1, Lc8/jBq;

    invoke-direct {v1, p0, v0}, Lc8/jBq;-><init>(Lc8/lBq;Lc8/mBq;)V

    invoke-static {v1}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v1

    return-object v1
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lc8/lBq;->s:Lc8/RBq;

    invoke-virtual {v0}, Lc8/RBq;->unsubscribe()V

    .line 140
    return-void
.end method
