.class public Lc8/odo;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/udo;->resetAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/udo;

.field wasCancelled:Z


# direct methods
.method constructor <init>(Lc8/udo;)V
    .locals 1
    .param p1, "this$0"    # Lc8/udo;

    .prologue
    .line 473
    iput-object p1, p0, Lc8/odo;->this$0:Lc8/udo;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/odo;->wasCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/odo;->wasCancelled:Z

    .line 479
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 483
    iget-boolean v0, p0, Lc8/odo;->wasCancelled:Z

    if-nez v0, :cond_0

    .line 484
    iget-object v0, p0, Lc8/odo;->this$0:Lc8/udo;

    invoke-virtual {v0}, Lc8/udo;->resetAnimation()V

    .line 486
    :cond_0
    return-void
.end method
