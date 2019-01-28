.class public final Lc8/Hc;
.super Lc8/ve;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/ve",
        "<",
        "Lc8/Mc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Nc;


# direct methods
.method constructor <init>(Lc8/Nc;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Nc;

    .prologue
    .line 682
    .local p0, "this":Lc8/Hc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>.Behavior;"
    iput-object p1, p0, Lc8/Hc;->this$0:Lc8/Nc;

    invoke-direct {p0}, Lc8/ve;-><init>()V

    return-void
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 685
    .local p0, "this":Lc8/Hc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>.Behavior;"
    instance-of v0, p1, Lc8/Mc;

    return v0
.end method

.method public bridge synthetic onInterceptTouchEvent(Lc8/yd;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 682
    .local p0, "this":Lc8/Hc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>.Behavior;"
    check-cast p2, Lc8/Mc;

    invoke-virtual {p0, p1, p2, p3}, Lc8/Hc;->onInterceptTouchEvent(Lc8/yd;Lc8/Mc;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Lc8/yd;Lc8/Mc;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "parent"    # Lc8/yd;
    .param p2, "child"    # Lc8/Mc;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 691
    .local p0, "this":Lc8/Hc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>.Behavior;"
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 705
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lc8/ve;->onInterceptTouchEvent(Lc8/yd;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 695
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 696
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 695
    invoke-virtual {p1, p2, v0, v1}, Lc8/yd;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    invoke-static {}, Lc8/oe;->getInstance()Lc8/oe;

    move-result-object v0

    iget-object v1, p0, Lc8/Hc;->this$0:Lc8/Nc;

    iget-object v1, v1, Lc8/Nc;->mManagerCallback:Lc8/me;

    invoke-virtual {v0, v1}, Lc8/oe;->pauseTimeout(Lc8/me;)V

    goto :goto_0

    .line 702
    :pswitch_2
    invoke-static {}, Lc8/oe;->getInstance()Lc8/oe;

    move-result-object v0

    iget-object v1, p0, Lc8/Hc;->this$0:Lc8/Nc;

    iget-object v1, v1, Lc8/Nc;->mManagerCallback:Lc8/me;

    invoke-virtual {v0, v1}, Lc8/oe;->restoreTimeoutIfPaused(Lc8/me;)V

    goto :goto_0

    .line 691
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
