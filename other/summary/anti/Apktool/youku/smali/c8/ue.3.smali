.class public Lc8/ue;
.super Ljava/lang/Object;
.source "SwipeDismissBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettleRunnable"
.end annotation


# instance fields
.field private final mDismiss:Z

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lc8/ve;


# direct methods
.method constructor <init>(Lc8/ve;Landroid/view/View;Z)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "dismiss"    # Z

    .prologue
    .line 371
    .local p0, "this":Lc8/ue;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>.SettleRunnable;"
    iput-object p1, p0, Lc8/ue;->this$0:Lc8/ve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p2, p0, Lc8/ue;->mView:Landroid/view/View;

    .line 373
    iput-boolean p3, p0, Lc8/ue;->mDismiss:Z

    .line 374
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 378
    .local p0, "this":Lc8/ue;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>.SettleRunnable;"
    iget-object v0, p0, Lc8/ue;->this$0:Lc8/ve;

    iget-object v0, v0, Lc8/ve;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/ue;->this$0:Lc8/ve;

    iget-object v0, v0, Lc8/ve;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lc8/ue;->mView:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-boolean v0, p0, Lc8/ue;->mDismiss:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ue;->this$0:Lc8/ve;

    iget-object v0, v0, Lc8/ve;->mListener:Lc8/te;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lc8/ue;->this$0:Lc8/ve;

    iget-object v0, v0, Lc8/ve;->mListener:Lc8/te;

    iget-object v1, p0, Lc8/ue;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Lc8/te;->onDismiss(Landroid/view/View;)V

    goto :goto_0
.end method
