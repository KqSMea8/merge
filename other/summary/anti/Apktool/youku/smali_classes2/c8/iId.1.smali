.class public Lc8/iId;
.super Ljava/lang/Object;
.source "PriorityThreadFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jId;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jId;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lc8/jId;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jId;

    .prologue
    .line 39
    iput-object p1, p0, Lc8/iId;->this$0:Lc8/jId;

    iput-object p2, p0, Lc8/iId;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lc8/iId;->this$0:Lc8/jId;

    invoke-static {v0}, Lc8/jId;->access$000(Lc8/jId;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    iget-object v0, p0, Lc8/iId;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 48
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
