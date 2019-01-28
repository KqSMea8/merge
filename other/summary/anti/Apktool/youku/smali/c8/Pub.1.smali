.class public Lc8/Pub;
.super Ljava/lang/Object;
.source "PrefetchManager.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Rub;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Rub;


# direct methods
.method constructor <init>(Lc8/Rub;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Rub;

    .prologue
    .line 173
    iput-object p1, p0, Lc8/Pub;->this$1:Lc8/Rub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lc8/Pub;->this$1:Lc8/Rub;

    iget-object v0, v0, Lc8/Rub;->this$0:Lc8/bvb;

    invoke-static {v0}, Lc8/bvb;->access$000(Lc8/bvb;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lc8/Pub;->this$1:Lc8/Rub;

    iget-object v0, v0, Lc8/Rub;->this$0:Lc8/bvb;

    invoke-static {v0}, Lc8/bvb;->access$000(Lc8/bvb;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lc8/Oub;

    invoke-direct {v1, p0}, Lc8/Oub;-><init>(Lc8/Pub;)V

    invoke-static {v1}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 184
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
