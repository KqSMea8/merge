.class public Lc8/ydo;
.super Landroid/support/v4/widget/SwipeRefreshLayout;
.source "CompatSwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/xdo;
    }
.end annotation


# instance fields
.field private mCompat:Lc8/xdo;

.field private mPrevX:F

.field private mTouchSlop:I

.field private orgPosX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0, p1}, Lc8/ydo;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Lc8/ydo;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lc8/ydo;->mTouchSlop:I

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/youku/phone/R$color;->plugin_fragment_swipe_color1:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/youku/phone/R$color;->plugin_fragment_swipe_color2:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/youku/phone/R$color;->plugin_fragment_swipe_color3:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/youku/phone/R$color;->plugin_fragment_swipe_color4:I

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lc8/ydo;->setColorSchemeResources([I)V

    .line 46
    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lc8/ydo;->mCompat:Lc8/xdo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ydo;->mCompat:Lc8/xdo;

    invoke-interface {v0}, Lc8/xdo;->canChildScrollUp()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 79
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 65
    :pswitch_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lc8/ydo;->mPrevX:F

    goto :goto_0

    .line 68
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 69
    .local v0, "eventX":F
    iget v2, p0, Lc8/ydo;->mPrevX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 71
    .local v1, "xDiff":F
    iget v2, p0, Lc8/ydo;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 72
    const/4 v2, 0x0

    goto :goto_1

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public varargs setRingColor([I)V
    .locals 0
    .param p1, "colorResIds"    # [I

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lc8/ydo;->setColorSchemeResources([I)V

    .line 36
    return-void
.end method

.method public setScrollCompat(Lc8/xdo;)V
    .locals 0
    .param p1, "compat"    # Lc8/xdo;

    .prologue
    .line 39
    iput-object p1, p0, Lc8/ydo;->mCompat:Lc8/xdo;

    .line 40
    return-void
.end method
