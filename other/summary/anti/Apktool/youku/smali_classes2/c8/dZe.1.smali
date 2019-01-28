.class public Lc8/dZe;
.super Ljava/lang/Thread;
.source "ConcurrenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/gZe;->scheduleNewTask(Lc8/lZe;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/gZe;

.field final synthetic val$dbTask:Lc8/lZe;


# direct methods
.method constructor <init>(Lc8/gZe;Ljava/lang/String;Lc8/lZe;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lc8/dZe;->this$0:Lc8/gZe;

    iput-object p3, p0, Lc8/dZe;->val$dbTask:Lc8/lZe;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 127
    iget-object v0, p0, Lc8/dZe;->val$dbTask:Lc8/lZe;

    iget-object v0, v0, Lc8/lZe;->execCallback:Lc8/sZe;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lc8/dZe;->val$dbTask:Lc8/lZe;

    iget-object v0, v0, Lc8/lZe;->execCallback:Lc8/sZe;

    new-instance v1, Lc8/UYe;

    new-instance v2, Lc8/RYe;

    const/16 v3, -0xb

    const-string/jumbo v4, "The nested transaction is not supported"

    invoke-direct {v2, v3, v4}, Lc8/RYe;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2}, Lc8/UYe;-><init>(Lc8/RYe;)V

    invoke-interface {v0, v1}, Lc8/sZe;->onExecDone(Lc8/UYe;)V

    .line 131
    :cond_0
    return-void
.end method
