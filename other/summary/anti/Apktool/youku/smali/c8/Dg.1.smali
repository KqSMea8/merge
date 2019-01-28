.class public Lc8/Dg;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FadePort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Fg;->onDisappear(Landroid/view/ViewGroup;Lc8/Ch;ILc8/Ch;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Fg;

.field final synthetic val$finalOverlayView:Landroid/view/View;

.field final synthetic val$finalSceneRoot:Landroid/view/ViewGroup;

.field final synthetic val$finalView:Landroid/view/View;

.field final synthetic val$finalViewToKeep:Landroid/view/View;

.field final synthetic val$finalVisibility:I


# direct methods
.method constructor <init>(Lc8/Fg;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Fg;

    .prologue
    .line 262
    iput-object p1, p0, Lc8/Dg;->this$0:Lc8/Fg;

    iput-object p2, p0, Lc8/Dg;->val$finalView:Landroid/view/View;

    iput-object p3, p0, Lc8/Dg;->val$finalViewToKeep:Landroid/view/View;

    iput p4, p0, Lc8/Dg;->val$finalVisibility:I

    iput-object p5, p0, Lc8/Dg;->val$finalOverlayView:Landroid/view/View;

    iput-object p6, p0, Lc8/Dg;->val$finalSceneRoot:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 265
    iget-object v0, p0, Lc8/Dg;->val$finalView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 267
    iget-object v0, p0, Lc8/Dg;->val$finalViewToKeep:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lc8/Dg;->val$finalViewToKeep:Landroid/view/View;

    iget v1, p0, Lc8/Dg;->val$finalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    :cond_0
    iget-object v0, p0, Lc8/Dg;->val$finalOverlayView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lc8/Dg;->val$finalSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0}, Lc8/Eh;->createFrom(Landroid/view/ViewGroup;)Lc8/Eh;

    move-result-object v0

    iget-object v1, p0, Lc8/Dg;->val$finalOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lc8/Eh;->remove(Landroid/view/View;)V

    .line 274
    :cond_1
    return-void
.end method
