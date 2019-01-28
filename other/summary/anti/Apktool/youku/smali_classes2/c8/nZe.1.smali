.class public Lc8/nZe;
.super Ljava/lang/Object;
.source "DbWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/pZe;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/pZe;

.field final synthetic val$finalResult:Lc8/UYe;


# direct methods
.method constructor <init>(Lc8/pZe;Lc8/UYe;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lc8/nZe;->this$0:Lc8/pZe;

    iput-object p2, p0, Lc8/nZe;->val$finalResult:Lc8/UYe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 95
    iget-object v0, p0, Lc8/nZe;->this$0:Lc8/pZe;

    invoke-static {v0}, Lc8/pZe;->access$100(Lc8/pZe;)Lc8/lZe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/lZe;->isExt()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/nZe;->this$0:Lc8/pZe;

    invoke-static {v0}, Lc8/pZe;->access$100(Lc8/pZe;)Lc8/lZe;

    move-result-object v0

    iget-object v0, v0, Lc8/lZe;->execExtCallback:Lc8/tZe;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lc8/nZe;->this$0:Lc8/pZe;

    invoke-static {v0}, Lc8/pZe;->access$100(Lc8/pZe;)Lc8/lZe;

    move-result-object v0

    iget-object v1, v0, Lc8/lZe;->execExtCallback:Lc8/tZe;

    iget-object v0, p0, Lc8/nZe;->val$finalResult:Lc8/UYe;

    check-cast v0, Lc8/TYe;

    invoke-interface {v1, v0}, Lc8/tZe;->onExecDone(Lc8/TYe;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lc8/nZe;->this$0:Lc8/pZe;

    invoke-static {v0}, Lc8/pZe;->access$100(Lc8/pZe;)Lc8/lZe;

    move-result-object v0

    iget-object v0, v0, Lc8/lZe;->execCallback:Lc8/sZe;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lc8/nZe;->this$0:Lc8/pZe;

    invoke-static {v0}, Lc8/pZe;->access$100(Lc8/pZe;)Lc8/lZe;

    move-result-object v0

    iget-object v0, v0, Lc8/lZe;->execCallback:Lc8/sZe;

    iget-object v1, p0, Lc8/nZe;->val$finalResult:Lc8/UYe;

    invoke-interface {v0, v1}, Lc8/sZe;->onExecDone(Lc8/UYe;)V

    goto :goto_0
.end method
