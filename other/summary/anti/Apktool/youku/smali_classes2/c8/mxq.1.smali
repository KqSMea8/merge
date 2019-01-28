.class public Lc8/mxq;
.super Ljava/lang/Object;
.source "SchedulerWhen.java"

# interfaces
.implements Lc8/Llq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nxq;->call(Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;)Lc8/Plq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/nxq;

.field final synthetic val$action:Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;


# direct methods
.method constructor <init>(Lc8/nxq;Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lc8/mxq;->this$1:Lc8/nxq;

    iput-object p2, p0, Lc8/mxq;->val$action:Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 2
    .param p1, "actionCompletable"    # Lc8/Nlq;

    .prologue
    .line 149
    iget-object v0, p0, Lc8/mxq;->val$action:Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;

    invoke-interface {p1, v0}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 150
    iget-object v0, p0, Lc8/mxq;->val$action:Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;

    iget-object v1, p0, Lc8/mxq;->this$1:Lc8/nxq;

    iget-object v1, v1, Lc8/nxq;->val$actualWorker:Lc8/Zlq;

    invoke-static {v0, v1}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->access$000(Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;Lc8/Zlq;)V

    .line 151
    invoke-interface {p1}, Lc8/Nlq;->onCompleted()V

    .line 152
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 146
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/mxq;->call(Lc8/Nlq;)V

    return-void
.end method
