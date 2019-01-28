.class public Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;
.super Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;
.source "SchedulerWhen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qxq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImmediateAction"
.end annotation


# instance fields
.field private final action:Lc8/hnq;


# direct methods
.method public constructor <init>(Lc8/hnq;)V
    .locals 0
    .param p1, "action"    # Lc8/hnq;

    .prologue
    .line 275
    invoke-direct {p0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;-><init>()V

    .line 276
    iput-object p1, p0, Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;->action:Lc8/hnq;

    .line 277
    return-void
.end method


# virtual methods
.method protected callActual(Lc8/Zlq;)Lc8/Pmq;
    .locals 1
    .param p1, "actualWorker"    # Lc8/Zlq;

    .prologue
    .line 281
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;->action:Lc8/hnq;

    invoke-virtual {p1, v0}, Lc8/Zlq;->schedule(Lc8/hnq;)Lc8/Pmq;

    move-result-object v0

    return-object v0
.end method
