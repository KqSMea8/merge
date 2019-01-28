.class public Lc8/fxq;
.super Lc8/Zlq;
.source "ImmediateScheduler.java"

# interfaces
.implements Lc8/Pmq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/gxq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InnerImmediateScheduler"
.end annotation


# instance fields
.field final innerSubscription:Lc8/RBq;

.field final synthetic this$0:Lc8/gxq;


# direct methods
.method private constructor <init>(Lc8/gxq;)V
    .locals 1

    .prologue
    .line 41
    iput-object p1, p0, Lc8/fxq;->this$0:Lc8/gxq;

    invoke-direct {p0}, Lc8/Zlq;-><init>()V

    .line 43
    new-instance v0, Lc8/RBq;

    invoke-direct {v0}, Lc8/RBq;-><init>()V

    iput-object v0, p0, Lc8/fxq;->innerSubscription:Lc8/RBq;

    return-void
.end method

.method synthetic constructor <init>(Lc8/gxq;Lc8/exq;)V
    .locals 0
    .param p1, "x0"    # Lc8/gxq;
    .param p2, "x1"    # Lc8/exq;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lc8/fxq;-><init>(Lc8/gxq;)V

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc8/fxq;->innerSubscription:Lc8/RBq;

    invoke-virtual {v0}, Lc8/RBq;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public schedule(Lc8/hnq;)Lc8/Pmq;
    .locals 1
    .param p1, "action"    # Lc8/hnq;

    .prologue
    .line 55
    invoke-interface {p1}, Lc8/hnq;->call()V

    .line 56
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;
    .locals 6
    .param p1, "action"    # Lc8/hnq;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 48
    iget-object v2, p0, Lc8/fxq;->this$0:Lc8/gxq;

    invoke-virtual {v2}, Lc8/gxq;->now()J

    move-result-wide v2

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long v0, v2, v4

    .line 50
    .local v0, "execTime":J
    new-instance v2, Lc8/rxq;

    invoke-direct {v2, p1, p0, v0, v1}, Lc8/rxq;-><init>(Lc8/hnq;Lc8/Zlq;J)V

    invoke-virtual {p0, v2}, Lc8/fxq;->schedule(Lc8/hnq;)Lc8/Pmq;

    move-result-object v2

    return-object v2
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lc8/fxq;->innerSubscription:Lc8/RBq;

    invoke-virtual {v0}, Lc8/RBq;->unsubscribe()V

    .line 62
    return-void
.end method
