.class public Lc8/Rub;
.super Ljava/lang/Object;
.source "PrefetchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bvb;->doPrefetchWithDelay(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/bvb;

.field final synthetic val$calledWhenIdle:Z

.field final synthetic val$ignoreParams:Ljava/util/List;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/bvb;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/bvb;

    .prologue
    .line 169
    iput-object p1, p0, Lc8/Rub;->this$0:Lc8/bvb;

    iput-boolean p2, p0, Lc8/Rub;->val$calledWhenIdle:Z

    iput-object p3, p0, Lc8/Rub;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lc8/Rub;->val$ignoreParams:Ljava/util/List;

    iput-object p5, p0, Lc8/Rub;->val$instanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lc8/Rub;->val$calledWhenIdle:Z

    if-eqz v0, :cond_1

    .line 173
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lc8/Pub;

    invoke-direct {v1, p0}, Lc8/Pub;-><init>(Lc8/Rub;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lc8/Rub;->this$0:Lc8/bvb;

    invoke-static {v0}, Lc8/bvb;->access$000(Lc8/bvb;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lc8/Rub;->this$0:Lc8/bvb;

    invoke-static {v0}, Lc8/bvb;->access$000(Lc8/bvb;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lc8/Qub;

    invoke-direct {v1, p0}, Lc8/Qub;-><init>(Lc8/Rub;)V

    invoke-static {v1}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
