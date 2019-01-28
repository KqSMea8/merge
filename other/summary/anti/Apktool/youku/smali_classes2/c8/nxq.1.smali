.class public Lc8/nxq;
.super Ljava/lang/Object;
.source "SchedulerWhen.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qxq;->createWorker()Lc8/Zlq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Inq",
        "<",
        "Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;",
        "Lc8/Plq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qxq;

.field final synthetic val$actualWorker:Lc8/Zlq;


# direct methods
.method constructor <init>(Lc8/qxq;Lc8/Zlq;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lc8/nxq;->this$0:Lc8/qxq;

    iput-object p2, p0, Lc8/nxq;->val$actualWorker:Lc8/Zlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;)Lc8/Plq;
    .locals 1
    .param p1, "action"    # Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;

    .prologue
    .line 146
    new-instance v0, Lc8/mxq;

    invoke-direct {v0, p0, p1}, Lc8/mxq;-><init>(Lc8/nxq;Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;)V

    invoke-static {v0}, Lc8/Plq;->create(Lc8/Llq;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 143
    check-cast p1, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/nxq;->call(Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;)Lc8/Plq;

    move-result-object v0

    return-object v0
.end method
