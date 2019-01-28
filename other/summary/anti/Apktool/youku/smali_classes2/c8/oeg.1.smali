.class public Lc8/oeg;
.super Landroid/support/v4/view/ViewPager;
.source "WXCircleViewPager.java"

# interfaces
.implements Lc8/Ueg;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field private final SCROLL_TO_NEXT:I

.field private intervalTime:J

.field private isAutoScroll:Z

.field private mAutoScrollHandler:Landroid/os/Handler;

.field private mScroller:Lc8/yeg;

.field private mState:I

.field private needLoop:Z

.field private scrollable:Z

.field private wxGesture:Lc8/Teg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 67
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 44
    iput v2, p0, Lc8/oeg;->SCROLL_TO_NEXT:I

    .line 47
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lc8/oeg;->intervalTime:J

    .line 49
    iput-boolean v2, p0, Lc8/oeg;->needLoop:Z

    .line 50
    iput-boolean v2, p0, Lc8/oeg;->scrollable:Z

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lc8/oeg;->mState:I

    .line 52
    new-instance v0, Lc8/meg;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc8/meg;-><init>(Lc8/oeg;Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/oeg;->mAutoScrollHandler:Landroid/os/Handler;

    .line 68
    invoke-direct {p0}, Lc8/oeg;->init()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput v2, p0, Lc8/oeg;->SCROLL_TO_NEXT:I

    .line 47
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lc8/oeg;->intervalTime:J

    .line 49
    iput-boolean v2, p0, Lc8/oeg;->needLoop:Z

    .line 50
    iput-boolean v2, p0, Lc8/oeg;->scrollable:Z

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lc8/oeg;->mState:I

    .line 52
    new-instance v0, Lc8/meg;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc8/meg;-><init>(Lc8/oeg;Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/oeg;->mAutoScrollHandler:Landroid/os/Handler;

    .line 129
    invoke-direct {p0}, Lc8/oeg;->init()V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lc8/oeg;)V
    .locals 0
    .param p0, "x0"    # Lc8/oeg;

    .prologue
    .line 42
    invoke-direct {p0}, Lc8/oeg;->showNextItem()V

    return-void
.end method

.method static synthetic access$100(Lc8/oeg;)J
    .locals 2
    .param p0, "x0"    # Lc8/oeg;

    .prologue
    .line 42
    iget-wide v0, p0, Lc8/oeg;->intervalTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lc8/oeg;I)I
    .locals 0
    .param p0, "x0"    # Lc8/oeg;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lc8/oeg;->mState:I

    return p1
.end method

.method static synthetic access$301(Lc8/oeg;)I
    .locals 1
    .param p0, "x0"    # Lc8/oeg;

    .prologue
    .line 42
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lc8/oeg;)Z
    .locals 1
    .param p0, "x0"    # Lc8/oeg;

    .prologue
    .line 42
    iget-boolean v0, p0, Lc8/oeg;->needLoop:Z

    return v0
.end method

.method static synthetic access$500(Lc8/oeg;IZ)V
    .locals 0
    .param p0, "x0"    # Lc8/oeg;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lc8/oeg;->superSetCurrentItem(IZ)V

    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lc8/oeg;->setOverScrollMode(I)V

    .line 74
    new-instance v0, Lc8/neg;

    invoke-direct {v0, p0}, Lc8/neg;-><init>(Lc8/oeg;)V

    invoke-virtual {p0, v0}, Lc8/oeg;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 100
    invoke-direct {p0}, Lc8/oeg;->postInitViewPager()V

    .line 101
    return-void
.end method

.method private postInitViewPager()V
    .locals 6

    .prologue
    .line 108
    invoke-virtual {p0}, Lc8/oeg;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    :goto_0
    return-void

    .line 112
    :cond_0
    :try_start_0
    const-class v3, Landroid/support/v4/view/ViewPager;

    const-string/jumbo v4, "mScroller"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 113
    .local v2, "scroller":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 114
    const-class v3, Landroid/support/v4/view/ViewPager;

    const-string/jumbo v4, "sInterpolator"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 116
    .local v1, "interpolator":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 118
    new-instance v4, Lc8/yeg;

    invoke-virtual {p0}, Lc8/oeg;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Interpolator;

    invoke-direct {v4, v5, v3}, Lc8/yeg;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v4, p0, Lc8/oeg;->mScroller:Lc8/yeg;

    .line 120
    iget-object v3, p0, Lc8/oeg;->mScroller:Lc8/yeg;

    invoke-static {v2, p0, v3}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    .end local v1    # "interpolator":Ljava/lang/reflect/Field;
    .end local v2    # "scroller":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[CircleViewPager] postInitViewPager: "

    invoke-static {v3, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setRealCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 258
    invoke-virtual {p0}, Lc8/oeg;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lc8/leg;

    invoke-virtual {v0}, Lc8/leg;->getFirst()I

    move-result v0

    add-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lc8/oeg;->superSetCurrentItem(IZ)V

    .line 259
    return-void
.end method

.method private showNextItem()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 299
    iget-boolean v0, p0, Lc8/oeg;->needLoop:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/oeg;->superGetCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Lc8/oeg;->getRealCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 307
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-virtual {p0}, Lc8/oeg;->getRealCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lc8/oeg;->superGetCurrentItem()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lc8/oeg;->superSetCurrentItem(IZ)V

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {p0}, Lc8/oeg;->superGetCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2}, Lc8/oeg;->superSetCurrentItem(IZ)V

    goto :goto_0
.end method

.method private superSetCurrentItem(IZ)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "smooth"    # Z

    .prologue
    .line 263
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lc8/oeg;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {p0}, Lc8/oeg;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 268
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public destory()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lc8/oeg;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 245
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 240
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 231
    :pswitch_0
    iget-object v0, p0, Lc8/oeg;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 235
    :pswitch_1
    invoke-virtual {p0}, Lc8/oeg;->isAutoScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lc8/oeg;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-wide v2, p0, Lc8/oeg;->intervalTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCirclePageAdapter()Lc8/leg;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lc8/oeg;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lc8/leg;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lc8/oeg;->getRealCurrentItem()I

    move-result v0

    return v0
.end method

.method public getIntervalTime()J
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Lc8/oeg;->intervalTime:J

    return-wide v0
.end method

.method public getRealCount()I
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lc8/oeg;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lc8/leg;

    invoke-virtual {v0}, Lc8/leg;->getRealCount()I

    move-result v0

    return v0
.end method

.method public getRealCurrentItem()I
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 254
    .local v0, "i":I
    invoke-virtual {p0}, Lc8/oeg;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lc8/leg;

    invoke-virtual {v1, v0}, Lc8/leg;->getRealPosition(I)I

    move-result v1

    return v1
.end method

.method public isAutoScroll()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lc8/oeg;->isAutoScroll:Z

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lc8/oeg;->scrollable:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 280
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lc8/oeg;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {p0}, Lc8/oeg;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 285
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 143
    iget-boolean v1, p0, Lc8/oeg;->scrollable:Z

    if-nez v1, :cond_1

    .line 144
    const/4 v0, 0x1

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 147
    .local v0, "result":Z
    iget-object v1, p0, Lc8/oeg;->wxGesture:Lc8/Teg;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lc8/oeg;->wxGesture:Lc8/Teg;

    invoke-virtual {v1, p0, p1}, Lc8/Teg;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public pauseAutoScroll()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lc8/oeg;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method public registerGestureListener(Lc8/Teg;)V
    .locals 0
    .param p1, "wxGesture"    # Lc8/Teg;

    .prologue
    .line 249
    iput-object p1, p0, Lc8/oeg;->wxGesture:Lc8/Teg;

    .line 250
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 155
    iget-boolean v0, p0, Lc8/oeg;->scrollable:Z

    if-nez v0, :cond_0

    iget v0, p0, Lc8/oeg;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 156
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 158
    :cond_1
    return-void
.end method

.method public setCircle(Z)V
    .locals 0
    .param p1, "circle"    # Z

    .prologue
    .line 223
    iput-boolean p1, p0, Lc8/oeg;->needLoop:Z

    .line 224
    return-void
.end method

.method public setCirclePageAdapter(Lc8/leg;)V
    .locals 0
    .param p1, "circlePageAdapter"    # Lc8/leg;

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lc8/oeg;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 202
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 0
    .param p1, "item"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lc8/oeg;->setRealCurrentItem(I)V

    .line 188
    return-void
.end method

.method public setIntervalTime(J)V
    .locals 1
    .param p1, "intervalTime"    # J

    .prologue
    .line 219
    iput-wide p1, p0, Lc8/oeg;->intervalTime:J

    .line 220
    return-void
.end method

.method public setScrollable(Z)V
    .locals 0
    .param p1, "scrollable"    # Z

    .prologue
    .line 295
    iput-boolean p1, p0, Lc8/oeg;->scrollable:Z

    .line 296
    return-void
.end method

.method public startAutoScroll()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 164
    iput-boolean v4, p0, Lc8/oeg;->isAutoScroll:Z

    .line 165
    iget-object v0, p0, Lc8/oeg;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lc8/oeg;->mAutoScrollHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lc8/oeg;->intervalTime:J

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 167
    return-void
.end method

.method public stopAutoScroll()V
    .locals 2

    .prologue
    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/oeg;->isAutoScroll:Z

    .line 178
    iget-object v0, p0, Lc8/oeg;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 179
    return-void
.end method

.method public superGetCurrentItem()I
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method
