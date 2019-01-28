.class public Lc8/axq;
.super Ljava/lang/Object;
.source "ExecutorScheduler.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bxq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/bxq;

.field final synthetic val$action:Lc8/hnq;

.field final synthetic val$mas:Lc8/UBq;

.field final synthetic val$removeMas:Lc8/Pmq;


# direct methods
.method constructor <init>(Lc8/bxq;Lc8/UBq;Lc8/hnq;Lc8/Pmq;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lc8/axq;->this$0:Lc8/bxq;

    iput-object p2, p0, Lc8/axq;->val$mas:Lc8/UBq;

    iput-object p3, p0, Lc8/axq;->val$action:Lc8/hnq;

    iput-object p4, p0, Lc8/axq;->val$removeMas:Lc8/Pmq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 136
    iget-object v1, p0, Lc8/axq;->val$mas:Lc8/UBq;

    invoke-virtual {v1}, Lc8/UBq;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v1, p0, Lc8/axq;->this$0:Lc8/bxq;

    iget-object v2, p0, Lc8/axq;->val$action:Lc8/hnq;

    invoke-virtual {v1, v2}, Lc8/bxq;->schedule(Lc8/hnq;)Lc8/Pmq;

    move-result-object v0

    .line 141
    .local v0, "s2":Lc8/Pmq;
    iget-object v1, p0, Lc8/axq;->val$mas:Lc8/UBq;

    invoke-virtual {v1, v0}, Lc8/UBq;->set(Lc8/Pmq;)V

    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lrx/internal/schedulers/ScheduledAction;

    if-ne v1, v2, :cond_0

    .line 146
    check-cast v0, Lrx/internal/schedulers/ScheduledAction;

    .end local v0    # "s2":Lc8/Pmq;
    iget-object v1, p0, Lc8/axq;->val$removeMas:Lc8/Pmq;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->add(Lc8/Pmq;)V

    goto :goto_0
.end method
