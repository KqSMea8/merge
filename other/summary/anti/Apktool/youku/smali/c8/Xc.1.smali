.class public Lc8/Xc;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettleRunnable"
.end annotation


# instance fields
.field private final mTargetState:I

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lc8/Zc;


# direct methods
.method constructor <init>(Lc8/Zc;Landroid/view/View;I)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "targetState"    # I

    .prologue
    .line 747
    .local p0, "this":Lc8/Xc;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>.SettleRunnable;"
    iput-object p1, p0, Lc8/Xc;->this$0:Lc8/Zc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    iput-object p2, p0, Lc8/Xc;->mView:Landroid/view/View;

    .line 749
    iput p3, p0, Lc8/Xc;->mTargetState:I

    .line 750
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 754
    .local p0, "this":Lc8/Xc;, "Landroid/support/design/widget/BottomSheetBehavior<TV;>.SettleRunnable;"
    iget-object v0, p0, Lc8/Xc;->this$0:Lc8/Zc;

    iget-object v0, v0, Lc8/Zc;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Xc;->this$0:Lc8/Zc;

    iget-object v0, v0, Lc8/Zc;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lc8/Xc;->mView:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 759
    :goto_0
    return-void

    .line 757
    :cond_0
    iget-object v0, p0, Lc8/Xc;->this$0:Lc8/Zc;

    iget v1, p0, Lc8/Xc;->mTargetState:I

    invoke-virtual {v0, v1}, Lc8/Zc;->setStateInternal(I)V

    goto :goto_0
.end method
