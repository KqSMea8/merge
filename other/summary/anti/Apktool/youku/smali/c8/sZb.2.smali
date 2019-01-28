.class public Lc8/sZb;
.super Ljava/lang/Object;
.source "StandOutWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/uZb;->close(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/uZb;

.field final synthetic val$id:I

.field final synthetic val$window:Lc8/IZb;


# direct methods
.method constructor <init>(Lc8/uZb;Lc8/IZb;I)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lc8/sZb;->this$0:Lc8/uZb;

    iput-object p2, p0, Lc8/sZb;->val$window:Lc8/IZb;

    iput p3, p0, Lc8/sZb;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x0

    .line 729
    iget-object v0, p0, Lc8/sZb;->this$0:Lc8/uZb;

    iget-object v0, v0, Lc8/uZb;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lc8/sZb;->val$window:Lc8/IZb;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 730
    iget-object v0, p0, Lc8/sZb;->val$window:Lc8/IZb;

    iput v3, v0, Lc8/IZb;->visibility:I

    .line 733
    sget-object v0, Lc8/uZb;->sWindowCache:Lc8/JZb;

    iget v1, p0, Lc8/sZb;->val$id:I

    iget-object v2, p0, Lc8/sZb;->this$0:Lc8/uZb;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/JZb;->removeCache(ILjava/lang/Class;)V

    .line 736
    iget-object v0, p0, Lc8/sZb;->this$0:Lc8/uZb;

    invoke-virtual {v0}, Lc8/uZb;->getExistingIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 741
    iget-object v0, p0, Lc8/sZb;->this$0:Lc8/uZb;

    invoke-static {v0, v3}, Lc8/uZb;->access$002(Lc8/uZb;Z)Z

    .line 742
    iget-object v0, p0, Lc8/sZb;->this$0:Lc8/uZb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/uZb;->stopForeground(Z)V

    .line 743
    iget-object v0, p0, Lc8/sZb;->this$0:Lc8/uZb;

    invoke-virtual {v0}, Lc8/uZb;->stopSelf()V

    .line 745
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 724
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 720
    return-void
.end method
