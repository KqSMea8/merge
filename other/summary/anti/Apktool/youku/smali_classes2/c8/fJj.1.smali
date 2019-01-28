.class public Lc8/fJj;
.super Ljava/lang/Thread;
.source "YKThreadPoolExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/gJj;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/gJj;


# direct methods
.method constructor <init>(Lc8/gJj;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/gJj;
    .param p2, "x0"    # Ljava/lang/Runnable;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lc8/fJj;->this$0:Lc8/gJj;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lc8/fJj;->this$0:Lc8/gJj;

    invoke-static {v0}, Lc8/gJj;->access$000(Lc8/gJj;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 49
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 50
    return-void
.end method
