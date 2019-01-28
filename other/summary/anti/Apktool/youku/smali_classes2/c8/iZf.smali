.class public Lc8/iZf;
.super Ljava/lang/Object;
.source "ExecutableRenderAction.java"

# interfaces
.implements Lc8/fYf;
.implements Lc8/rYf;


# instance fields
.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lc8/iZf;->mRunnable:Ljava/lang/Runnable;

    .line 32
    return-void
.end method


# virtual methods
.method public executeDom(Lc8/gYf;)V
    .locals 1
    .param p1, "context"    # Lc8/gYf;

    .prologue
    .line 36
    invoke-interface {p1}, Lc8/gYf;->isDestory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-interface {p1, p0}, Lc8/gYf;->postRenderTask(Lc8/rYf;)V

    goto :goto_0
.end method

.method public executeRender(Lc8/sYf;)V
    .locals 1
    .param p1, "context"    # Lc8/sYf;

    .prologue
    .line 44
    iget-object v0, p0, Lc8/iZf;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lc8/iZf;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 47
    :cond_0
    return-void
.end method
