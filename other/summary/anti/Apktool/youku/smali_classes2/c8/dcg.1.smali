.class public Lc8/dcg;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WXSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/gcg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlingGestureListener"
.end annotation


# static fields
.field private static final SWIPE_MAX_OFF_PATH:I

.field private static final SWIPE_MIN_DISTANCE:I

.field private static final SWIPE_THRESHOLD_VELOCITY:I


# instance fields
.field private pagerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/oeg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 525
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lc8/Jgg;->dip2px(F)I

    move-result v0

    sput v0, Lc8/dcg;->SWIPE_MIN_DISTANCE:I

    .line 526
    const/high16 v0, 0x437a0000    # 250.0f

    invoke-static {v0}, Lc8/Jgg;->dip2px(F)I

    move-result v0

    sput v0, Lc8/dcg;->SWIPE_MAX_OFF_PATH:I

    .line 527
    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {v0}, Lc8/Jgg;->dip2px(F)I

    move-result v0

    sput v0, Lc8/dcg;->SWIPE_THRESHOLD_VELOCITY:I

    return-void
.end method

.method constructor <init>(Lc8/oeg;)V
    .locals 1
    .param p1, "pager"    # Lc8/oeg;

    .prologue
    .line 530
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 531
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/dcg;->pagerRef:Ljava/lang/ref/WeakReference;

    .line 532
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 536
    iget-object v3, p0, Lc8/dcg;->pagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/oeg;

    .line 537
    .local v0, "mViewPager":Lc8/oeg;
    if-nez v0, :cond_1

    .line 562
    :cond_0
    :goto_0
    return v1

    .line 542
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lc8/dcg;->SWIPE_MAX_OFF_PATH:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 546
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    sget v4, Lc8/dcg;->SWIPE_MIN_DISTANCE:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lc8/dcg;->SWIPE_THRESHOLD_VELOCITY:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    invoke-virtual {v0}, Lc8/oeg;->superGetCurrentItem()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 550
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lc8/oeg;->setCurrentItem(IZ)V

    move v1, v2

    .line 551
    goto :goto_0

    .line 552
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    sget v4, Lc8/dcg;->SWIPE_MIN_DISTANCE:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lc8/dcg;->SWIPE_THRESHOLD_VELOCITY:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    invoke-virtual {v0}, Lc8/oeg;->superGetCurrentItem()I

    move-result v3

    if-nez v3, :cond_0

    .line 556
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lc8/oeg;->setCurrentItem(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 557
    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method
