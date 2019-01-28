.class public Lc8/rZb;
.super Ljava/lang/Object;
.source "StandOutWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/uZb;->hide(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/uZb;

.field final synthetic val$window:Lc8/IZb;


# direct methods
.method constructor <init>(Lc8/uZb;Lc8/IZb;)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lc8/rZb;->this$0:Lc8/uZb;

    iput-object p2, p0, Lc8/rZb;->val$window:Lc8/IZb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 655
    iget-object v0, p0, Lc8/rZb;->this$0:Lc8/uZb;

    iget-object v0, v0, Lc8/uZb;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lc8/rZb;->val$window:Lc8/IZb;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 656
    iget-object v0, p0, Lc8/rZb;->val$window:Lc8/IZb;

    const/4 v1, 0x0

    iput v1, v0, Lc8/IZb;->visibility:I

    .line 657
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 650
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 646
    return-void
.end method
