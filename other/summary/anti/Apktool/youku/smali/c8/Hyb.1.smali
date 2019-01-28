.class public Lc8/Hyb;
.super Ljava/lang/Object;
.source "WXUIModel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jyb;->showNotiView(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Jyb;


# direct methods
.method constructor <init>(Lc8/Jyb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Jyb;

    .prologue
    .line 250
    iput-object p1, p0, Lc8/Hyb;->this$0:Lc8/Jyb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 266
    iget-object v1, p0, Lc8/Hyb;->this$0:Lc8/Jyb;

    invoke-static {v1}, Lc8/Jyb;->access$000(Lc8/Jyb;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lc8/Hyb;->this$0:Lc8/Jyb;

    invoke-static {v1}, Lc8/Jyb;->access$000(Lc8/Jyb;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 268
    .local v0, "oldParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 269
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "oldParent":Landroid/view/ViewParent;
    iget-object v1, p0, Lc8/Hyb;->this$0:Lc8/Jyb;

    invoke-static {v1}, Lc8/Jyb;->access$000(Lc8/Jyb;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 271
    :cond_0
    iget-object v1, p0, Lc8/Hyb;->this$0:Lc8/Jyb;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/Jyb;->access$002(Lc8/Jyb;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 273
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 256
    iget-object v1, p0, Lc8/Hyb;->this$0:Lc8/Jyb;

    invoke-static {v1}, Lc8/Jyb;->access$000(Lc8/Jyb;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lc8/Hyb;->this$0:Lc8/Jyb;

    invoke-static {v1}, Lc8/Jyb;->access$000(Lc8/Jyb;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 258
    .local v0, "oldParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 259
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "oldParent":Landroid/view/ViewParent;
    iget-object v1, p0, Lc8/Hyb;->this$0:Lc8/Jyb;

    invoke-static {v1}, Lc8/Jyb;->access$000(Lc8/Jyb;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 261
    :cond_0
    iget-object v1, p0, Lc8/Hyb;->this$0:Lc8/Jyb;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/Jyb;->access$002(Lc8/Jyb;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 263
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 275
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 252
    return-void
.end method
