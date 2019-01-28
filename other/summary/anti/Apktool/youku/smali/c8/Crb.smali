.class public Lc8/Crb;
.super Lc8/Erb;
.source "AnimationFrame.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Erb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChoreographerAnimationFrameImpl"
.end annotation


# instance fields
.field private callback:Lc8/Brb;

.field private choreographer:Landroid/view/Choreographer;

.field private isRunning:Z


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Lc8/Erb;-><init>()V

    .line 48
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lc8/Crb;->choreographer:Landroid/view/Choreographer;

    .line 49
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lc8/Crb;->choreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lc8/Crb;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 56
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Crb;->isRunning:Z

    .line 57
    return-void
.end method

.method public doFrame(J)V
    .locals 1
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 76
    iget-object v0, p0, Lc8/Crb;->callback:Lc8/Brb;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lc8/Crb;->callback:Lc8/Brb;

    invoke-interface {v0}, Lc8/Brb;->doFrame()V

    .line 79
    :cond_0
    iget-object v0, p0, Lc8/Crb;->choreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lc8/Crb;->isRunning:Z

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lc8/Crb;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 82
    :cond_1
    return-void
.end method

.method requestAnimationFrame(Lc8/Brb;)V
    .locals 1
    .param p1, "callback"    # Lc8/Brb;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    iput-object p1, p0, Lc8/Crb;->callback:Lc8/Brb;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Crb;->isRunning:Z

    .line 69
    iget-object v0, p0, Lc8/Crb;->choreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lc8/Crb;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 72
    :cond_0
    return-void
.end method

.method terminate()V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lc8/Crb;->clear()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Crb;->choreographer:Landroid/view/Choreographer;

    .line 63
    return-void
.end method
