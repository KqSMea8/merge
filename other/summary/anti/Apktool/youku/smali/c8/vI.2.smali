.class public Lc8/vI;
.super Ljava/lang/Object;
.source "WVUIModel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xI;->showNotiView(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xI;


# direct methods
.method constructor <init>(Lc8/xI;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lc8/vI;->this$0:Lc8/xI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 280
    iget-object v1, p0, Lc8/vI;->this$0:Lc8/xI;

    invoke-static {v1}, Lc8/xI;->access$000(Lc8/xI;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lc8/vI;->this$0:Lc8/xI;

    invoke-static {v1}, Lc8/xI;->access$000(Lc8/xI;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 282
    .local v0, "oldParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 283
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "oldParent":Landroid/view/ViewParent;
    iget-object v1, p0, Lc8/vI;->this$0:Lc8/xI;

    invoke-static {v1}, Lc8/xI;->access$000(Lc8/xI;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 285
    :cond_0
    iget-object v1, p0, Lc8/vI;->this$0:Lc8/xI;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/xI;->access$002(Lc8/xI;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 287
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 269
    iget-object v1, p0, Lc8/vI;->this$0:Lc8/xI;

    invoke-static {v1}, Lc8/xI;->access$000(Lc8/xI;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Lc8/vI;->this$0:Lc8/xI;

    invoke-static {v1}, Lc8/xI;->access$000(Lc8/xI;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 271
    .local v0, "oldParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 272
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "oldParent":Landroid/view/ViewParent;
    iget-object v1, p0, Lc8/vI;->this$0:Lc8/xI;

    invoke-static {v1}, Lc8/xI;->access$000(Lc8/xI;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 274
    :cond_0
    iget-object v1, p0, Lc8/vI;->this$0:Lc8/xI;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/xI;->access$002(Lc8/xI;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 276
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 292
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 265
    return-void
.end method
