.class public Lc8/Ebp;
.super Landroid/widget/StackView;
.source "YoukuHomePageStackView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final MSG_SLIDE:I = 0x9896ee

.field private static final PERIOD:I = 0x1388

.field public static final TAG:Ljava/lang/String; = "LXF"


# instance fields
.field dispatchDownXDistance:F

.field dispatchDownYDistance:F

.field dispatchUpXDistance:F

.field dispatchUpYDistance:F

.field private handler:Landroid/os/Handler;

.field private isAutoSlideMode:Z

.field private task:Ljava/util/TimerTask;

.field private timer:Ljava/util/Timer;

.field private viewPagerFragment:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v0, p0, Lc8/Ebp;->dispatchDownXDistance:F

    .line 22
    iput v0, p0, Lc8/Ebp;->dispatchUpXDistance:F

    .line 23
    iput v0, p0, Lc8/Ebp;->dispatchDownYDistance:F

    .line 24
    iput v0, p0, Lc8/Ebp;->dispatchUpYDistance:F

    .line 30
    new-instance v0, Lc8/Dbp;

    invoke-direct {v0, p0}, Lc8/Dbp;-><init>(Lc8/Ebp;)V

    iput-object v0, p0, Lc8/Ebp;->handler:Landroid/os/Handler;

    .line 51
    return-void
.end method


# virtual methods
.method public cancleTask()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lc8/Ebp;->handler:Landroid/os/Handler;

    const v1, 0x9896ee

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x42c80000    # 100.0f

    const/high16 v7, 0x41f00000    # 30.0f

    const/4 v4, 0x0

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 107
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 146
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/StackView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_1
    return v4

    .line 111
    :pswitch_1
    invoke-virtual {p0}, Lc8/Ebp;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Lc8/Ebp;->viewPagerFragment:Landroid/support/v4/view/ViewPager;

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lc8/Ebp;->dispatchDownXDistance:F

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lc8/Ebp;->dispatchDownYDistance:F

    .line 114
    invoke-virtual {p0}, Lc8/Ebp;->cancleTask()V

    .line 115
    invoke-virtual {p0}, Lc8/Ebp;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 121
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lc8/Ebp;->dispatchUpXDistance:F

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lc8/Ebp;->dispatchUpYDistance:F

    .line 123
    iget v5, p0, Lc8/Ebp;->dispatchUpXDistance:F

    iget v6, p0, Lc8/Ebp;->dispatchDownXDistance:F

    sub-float v1, v5, v6

    .line 124
    .local v1, "distanceMoveOne":F
    iget v5, p0, Lc8/Ebp;->dispatchDownXDistance:F

    iget v6, p0, Lc8/Ebp;->dispatchUpXDistance:F

    sub-float v2, v5, v6

    .line 125
    .local v2, "distanceMoveTwo":F
    iget v5, p0, Lc8/Ebp;->dispatchUpYDistance:F

    iget v6, p0, Lc8/Ebp;->dispatchDownYDistance:F

    sub-float v3, v5, v6

    .line 129
    .local v3, "distanceMoveY":F
    invoke-virtual {p0}, Lc8/Ebp;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 130
    invoke-virtual {p0}, Lc8/Ebp;->startAutoSlide()V

    .line 131
    cmpl-float v5, v1, v8

    if-lez v5, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v7

    if-gez v5, :cond_1

    .line 133
    iget-object v5, p0, Lc8/Ebp;->viewPagerFragment:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v9}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_1

    .line 136
    :cond_1
    cmpl-float v5, v2, v8

    if-lez v5, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v7

    if-gez v5, :cond_0

    .line 138
    iget-object v5, p0, Lc8/Ebp;->viewPagerFragment:Landroid/support/v4/view/ViewPager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_1

    .line 143
    .end local v1    # "distanceMoveOne":F
    .end local v2    # "distanceMoveTwo":F
    .end local v3    # "distanceMoveY":F
    :pswitch_3
    invoke-virtual {p0}, Lc8/Ebp;->startAutoSlide()V

    goto/16 :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/widget/StackView;->onWindowVisibilityChanged(I)V

    .line 57
    if-nez p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lc8/Ebp;->startAutoSlide()V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lc8/Ebp;->cancleTask()V

    goto :goto_0
.end method

.method public removeAllView()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lc8/Ebp;->removeAllViews()V

    .line 101
    return-void
.end method

.method public startAutoSlide()V
    .locals 4

    .prologue
    .line 65
    invoke-virtual {p0}, Lc8/Ebp;->cancleTask()V

    .line 66
    iget-object v0, p0, Lc8/Ebp;->handler:Landroid/os/Handler;

    const v1, 0x9896ee

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 83
    return-void
.end method
