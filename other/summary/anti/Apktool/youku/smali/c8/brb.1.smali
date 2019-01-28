.class public Lc8/brb;
.super Ljava/lang/Object;
.source "ActionSheet.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/erb;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/erb;


# direct methods
.method constructor <init>(Lc8/erb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/erb;

    .prologue
    .line 173
    iput-object p1, p0, Lc8/brb;->this$0:Lc8/erb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 181
    iget-object v0, p0, Lc8/brb;->this$0:Lc8/erb;

    invoke-static {v0}, Lc8/erb;->access$300(Lc8/erb;)Lc8/grb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/brb;->this$0:Lc8/erb;

    invoke-static {v0}, Lc8/erb;->access$300(Lc8/erb;)Lc8/grb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/grb;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lc8/brb;->this$0:Lc8/erb;

    invoke-static {v0}, Lc8/erb;->access$300(Lc8/erb;)Lc8/grb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/grb;->dismiss()V

    .line 183
    invoke-static {}, Lc8/erb;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 185
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 190
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 177
    return-void
.end method
