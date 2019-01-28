.class public Lc8/Zbp;
.super Landroid/widget/Gallery;
.source "YoukuScrollerGallery.java"


# instance fields
.field private final MSG_SLIDE:I

.field private final PERIOD:J

.field handler:Landroid/os/Handler;

.field private isAutoSlideMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 25
    const v0, 0x1872c

    iput v0, p0, Lc8/Zbp;->MSG_SLIDE:I

    .line 26
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lc8/Zbp;->PERIOD:J

    .line 31
    new-instance v0, Lc8/Ybp;

    invoke-direct {v0, p0}, Lc8/Ybp;-><init>(Lc8/Zbp;)V

    iput-object v0, p0, Lc8/Zbp;->handler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const v0, 0x1872c

    iput v0, p0, Lc8/Zbp;->MSG_SLIDE:I

    .line 26
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lc8/Zbp;->PERIOD:J

    .line 31
    new-instance v0, Lc8/Ybp;

    invoke-direct {v0, p0}, Lc8/Ybp;-><init>(Lc8/Zbp;)V

    iput-object v0, p0, Lc8/Zbp;->handler:Landroid/os/Handler;

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Zbp;->setSoundEffectsEnabled(Z)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const v0, 0x1872c

    iput v0, p0, Lc8/Zbp;->MSG_SLIDE:I

    .line 26
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lc8/Zbp;->PERIOD:J

    .line 31
    new-instance v0, Lc8/Ybp;

    invoke-direct {v0, p0}, Lc8/Ybp;-><init>(Lc8/Zbp;)V

    iput-object v0, p0, Lc8/Zbp;->handler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method private isScrollingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)I
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 100
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 101
    :cond_0
    const/4 v0, -0x1

    .line 103
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cancelAutoSlide()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lc8/Zbp;->handler:Landroid/os/Handler;

    const v1, 0x1872c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 133
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 64
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/Gallery;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 67
    :pswitch_1
    invoke-virtual {p0}, Lc8/Zbp;->cancelAutoSlide()V

    goto :goto_0

    .line 73
    :pswitch_2
    invoke-virtual {p0}, Lc8/Zbp;->startAutoSlide()V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public isAutoSlideMode()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lc8/Zbp;->isAutoSlideMode:Z

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Lc8/Zbp;->isScrollingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)I

    move-result v0

    .line 87
    .local v0, "i":I
    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lc8/Zbp;->scrollToLeft()V

    .line 94
    :goto_0
    return v1

    .line 90
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 91
    invoke-virtual {p0}, Lc8/Zbp;->scrollToRight()V

    goto :goto_0

    .line 94
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onWindowVisibilityChanged(I)V

    .line 117
    if-nez p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lc8/Zbp;->startAutoSlide()V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Lc8/Zbp;->cancelAutoSlide()V

    goto :goto_0
.end method

.method public scrollToLeft()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-virtual {p0}, Lc8/Zbp;->cancelAutoSlide()V

    .line 108
    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lc8/Zbp;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 109
    const/16 v0, 0x15

    invoke-super {p0, v0, v2}, Landroid/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 110
    invoke-virtual {p0}, Lc8/Zbp;->startAutoSlide()V

    .line 111
    return-void
.end method

.method public scrollToRight()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-virtual {p0}, Lc8/Zbp;->cancelAutoSlide()V

    .line 126
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lc8/Zbp;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 127
    const/16 v0, 0x16

    invoke-super {p0, v0, v2}, Landroid/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 128
    invoke-virtual {p0}, Lc8/Zbp;->startAutoSlide()V

    .line 129
    return-void
.end method

.method public startAutoSlide()V
    .locals 4

    .prologue
    .line 142
    invoke-virtual {p0}, Lc8/Zbp;->cancelAutoSlide()V

    .line 143
    iget-object v0, p0, Lc8/Zbp;->handler:Landroid/os/Handler;

    const v1, 0x1872c

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 144
    return-void
.end method
