.class public Lc8/Eap;
.super Landroid/widget/Gallery;
.source "StackGallery.java"


# static fields
.field private static final MSG_STACKGALLERY_MOVE:I = 0x1

.field private static final TIME_STACKGALLERY_MOVE:J = 0x1388L


# instance fields
.field private TAG:Ljava/lang/String;

.field private isNeedRefresh:Z

.field private mHandler:Landroid/os/Handler;

.field private mMotionEvent:Landroid/view/MotionEvent;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Eap;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Eap;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Eap;->isNeedRefresh:Z

    .line 162
    new-instance v0, Lc8/Dap;

    invoke-direct {v0, p0}, Lc8/Dap;-><init>(Lc8/Eap;)V

    iput-object v0, p0, Lc8/Eap;->mHandler:Landroid/os/Handler;

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Eap;->setSoundEffectsEnabled(Z)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Eap;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Eap;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Eap;->isNeedRefresh:Z

    .line 162
    new-instance v0, Lc8/Dap;

    invoke-direct {v0, p0}, Lc8/Dap;-><init>(Lc8/Eap;)V

    iput-object v0, p0, Lc8/Eap;->mHandler:Landroid/os/Handler;

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Eap;->setSoundEffectsEnabled(Z)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Eap;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Eap;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Eap;->isNeedRefresh:Z

    .line 162
    new-instance v0, Lc8/Dap;

    invoke-direct {v0, p0}, Lc8/Dap;-><init>(Lc8/Eap;)V

    iput-object v0, p0, Lc8/Eap;->mHandler:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method private isScrollingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)I
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 124
    :cond_0
    const/4 v0, -0x1

    .line 126
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
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/widget/Gallery;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public endMove()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lc8/Eap;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    return-void
.end method

.method public isNeedRefresh()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lc8/Eap;->isNeedRefresh:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/widget/Gallery;->onDetachedFromWindow()V

    .line 50
    invoke-virtual {p0}, Lc8/Eap;->endMove()V

    .line 51
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Lc8/Eap;->isScrollingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)I

    move-result v0

    .line 95
    .local v0, "i":I
    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lc8/Eap;->scrollToLeft()V

    .line 102
    :goto_0
    return v1

    .line 98
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 99
    invoke-virtual {p0}, Lc8/Eap;->scrollToRight()V

    goto :goto_0

    .line 102
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v3, 0x41a00000    # 20.0f

    .line 80
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 81
    .local v0, "flag":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 82
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lc8/Eap;->mMotionEvent:Landroid/view/MotionEvent;

    .line 83
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lc8/Eap;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lc8/Eap;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 86
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 74
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 58
    :pswitch_1
    iget-object v0, p0, Lc8/Eap;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lc8/Eap;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lc8/Eap;->endMove()V

    goto :goto_0

    .line 64
    :pswitch_2
    invoke-virtual {p0}, Lc8/Eap;->startMove()V

    goto :goto_0

    .line 69
    :pswitch_3
    invoke-virtual {p0}, Lc8/Eap;->startMove()V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onWindowVisibilityChanged(I)V

    .line 146
    if-nez p1, :cond_0

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Eap;->isNeedRefresh:Z

    .line 148
    invoke-virtual {p0}, Lc8/Eap;->startMove()V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lc8/Eap;->endMove()V

    goto :goto_0
.end method

.method public scrollToLeft()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-virtual {p0}, Lc8/Eap;->endMove()V

    .line 108
    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lc8/Eap;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 109
    const/16 v0, 0x15

    invoke-super {p0, v0, v2}, Landroid/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 110
    invoke-virtual {p0}, Lc8/Eap;->startMove()V

    .line 111
    return-void
.end method

.method public scrollToRight()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p0}, Lc8/Eap;->endMove()V

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lc8/Eap;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lc8/Eap;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 117
    const/16 v0, 0x16

    invoke-virtual {p0, v0, v2}, Lc8/Eap;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 119
    :cond_0
    invoke-virtual {p0}, Lc8/Eap;->startMove()V

    .line 120
    return-void
.end method

.method public setNeedRefresh(Z)V
    .locals 0
    .param p1, "isNeedRefresh"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lc8/Eap;->isNeedRefresh:Z

    .line 160
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .param p1, "mViewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 130
    iput-object p1, p0, Lc8/Eap;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 131
    return-void
.end method

.method public startMove()V
    .locals 4

    .prologue
    .line 138
    invoke-virtual {p0}, Lc8/Eap;->endMove()V

    .line 139
    iget-object v0, p0, Lc8/Eap;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 140
    return-void
.end method
