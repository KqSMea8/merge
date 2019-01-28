.class public Lc8/udo;
.super Landroid/widget/TextView;
.source "CircularProgressView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/tdo;
    }
.end annotation


# static fields
.field private static final INDETERMINANT_MIN_SWEEP:F = 15.0f


# instance fields
.field private actionStatus:I

.field private actualProgress:F

.field private animDuration:I

.field private animSteps:I

.field private animSwoopDuration:I

.field private animSyncDuration:I

.field private autostartAnimation:Z

.field private bounds:Landroid/graphics/RectF;

.field private circleInfo:Lc8/tdo;

.field private color:I

.field private currentProgress:F

.field private fullBounds:Landroid/graphics/RectF;

.field private fullPaint:Landroid/graphics/Paint;

.field private indeterminateAnimator:Landroid/animation/AnimatorSet;

.field private indeterminateRotateOffset:F

.field private indeterminateSweep:F

.field private initialStartAngle:F

.field private isIndeterminate:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/wdo;",
            ">;"
        }
    .end annotation
.end field

.field private maxProgress:F

.field private outBounds:Landroid/graphics/RectF;

.field private outPaint:Landroid/graphics/Paint;

.field private outThickness:I

.field private paint:Landroid/graphics/Paint;

.field private pressedAlpha:I

.field private pressedColor:I

.field private progressAnimator:Landroid/animation/ValueAnimator;

.field private size:I

.field private startAngle:F

.field private startAngleRotate:Landroid/animation/ValueAnimator;

.field private thickness:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 38
    iput v1, p0, Lc8/udo;->size:I

    .line 43
    const/16 v0, 0x33

    iput v0, p0, Lc8/udo;->pressedAlpha:I

    .line 216
    const/4 v0, -0x1

    iput v0, p0, Lc8/udo;->actionStatus:I

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/udo;->init(Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v1, p0, Lc8/udo;->size:I

    .line 43
    const/16 v0, 0x33

    iput v0, p0, Lc8/udo;->pressedAlpha:I

    .line 216
    const/4 v0, -0x1

    iput v0, p0, Lc8/udo;->actionStatus:I

    .line 65
    invoke-virtual {p0, p2, v1}, Lc8/udo;->init(Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lc8/udo;->size:I

    .line 43
    const/16 v0, 0x33

    iput v0, p0, Lc8/udo;->pressedAlpha:I

    .line 216
    const/4 v0, -0x1

    iput v0, p0, Lc8/udo;->actionStatus:I

    .line 70
    invoke-virtual {p0, p2, p3}, Lc8/udo;->init(Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method static synthetic access$002(Lc8/udo;F)F
    .locals 0
    .param p0, "x0"    # Lc8/udo;
    .param p1, "x1"    # F

    .prologue
    .line 33
    iput p1, p0, Lc8/udo;->actualProgress:F

    return p1
.end method

.method static synthetic access$100(Lc8/udo;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/udo;

    .prologue
    .line 33
    iget-object v0, p0, Lc8/udo;->listeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lc8/udo;)F
    .locals 1
    .param p0, "x0"    # Lc8/udo;

    .prologue
    .line 33
    iget v0, p0, Lc8/udo;->currentProgress:F

    return v0
.end method

.method static synthetic access$300(Lc8/udo;)F
    .locals 1
    .param p0, "x0"    # Lc8/udo;

    .prologue
    .line 33
    iget v0, p0, Lc8/udo;->startAngle:F

    return v0
.end method

.method static synthetic access$302(Lc8/udo;F)F
    .locals 0
    .param p0, "x0"    # Lc8/udo;
    .param p1, "x1"    # F

    .prologue
    .line 33
    iput p1, p0, Lc8/udo;->startAngle:F

    return p1
.end method

.method static synthetic access$402(Lc8/udo;F)F
    .locals 0
    .param p0, "x0"    # Lc8/udo;
    .param p1, "x1"    # F

    .prologue
    .line 33
    iput p1, p0, Lc8/udo;->indeterminateSweep:F

    return p1
.end method

.method static synthetic access$502(Lc8/udo;F)F
    .locals 0
    .param p0, "x0"    # Lc8/udo;
    .param p1, "x1"    # F

    .prologue
    .line 33
    iput p1, p0, Lc8/udo;->indeterminateRotateOffset:F

    return p1
.end method

.method private createIndeterminateAnimator(F)Landroid/animation/AnimatorSet;
    .locals 11
    .param p1, "step"    # F

    .prologue
    .line 517
    const/high16 v7, 0x43b40000    # 360.0f

    iget v8, p0, Lc8/udo;->animSteps:I

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget v8, p0, Lc8/udo;->animSteps:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x41700000    # 15.0f

    add-float v2, v7, v8

    .line 518
    .local v2, "maxSweep":F
    const/high16 v7, -0x3d4c0000    # -90.0f

    const/high16 v8, 0x41700000    # 15.0f

    sub-float v8, v2, v8

    mul-float/2addr v8, p1

    add-float v6, v7, v8

    .line 521
    .local v6, "start":F
    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x41700000    # 15.0f

    aput v9, v7, v8

    const/4 v8, 0x1

    aput v2, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 522
    .local v1, "frontEndExtend":Landroid/animation/ValueAnimator;
    iget v7, p0, Lc8/udo;->animDuration:I

    iget v8, p0, Lc8/udo;->animSteps:I

    div-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-long v8, v7

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 523
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 524
    new-instance v7, Lc8/pdo;

    invoke-direct {v7, p0}, Lc8/pdo;-><init>(Lc8/udo;)V

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 533
    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x44340000    # 720.0f

    mul-float/2addr v9, p1

    iget v10, p0, Lc8/udo;->animSteps:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    aput v9, v7, v8

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v9, p1

    const/high16 v10, 0x44340000    # 720.0f

    mul-float/2addr v9, v10

    iget v10, p0, Lc8/udo;->animSteps:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    aput v9, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 534
    .local v3, "rotateAnimator1":Landroid/animation/ValueAnimator;
    iget v7, p0, Lc8/udo;->animDuration:I

    iget v8, p0, Lc8/udo;->animSteps:I

    div-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-long v8, v7

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 535
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 536
    new-instance v7, Lc8/qdo;

    invoke-direct {v7, p0}, Lc8/qdo;-><init>(Lc8/udo;)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 546
    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v6, v7, v8

    const/4 v8, 0x1

    add-float v9, v6, v2

    const/high16 v10, 0x41700000    # 15.0f

    sub-float/2addr v9, v10

    aput v9, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 547
    .local v0, "backEndRetract":Landroid/animation/ValueAnimator;
    iget v7, p0, Lc8/udo;->animDuration:I

    iget v8, p0, Lc8/udo;->animSteps:I

    div-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-long v8, v7

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 548
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 549
    new-instance v7, Lc8/rdo;

    invoke-direct {v7, p0, v2, v6}, Lc8/rdo;-><init>(Lc8/udo;FF)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 559
    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v9, p1

    const/high16 v10, 0x44340000    # 720.0f

    mul-float/2addr v9, v10

    iget v10, p0, Lc8/udo;->animSteps:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    aput v9, v7, v8

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v9, p1

    const/high16 v10, 0x44340000    # 720.0f

    mul-float/2addr v9, v10

    iget v10, p0, Lc8/udo;->animSteps:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    aput v9, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 560
    .local v4, "rotateAnimator2":Landroid/animation/ValueAnimator;
    iget v7, p0, Lc8/udo;->animDuration:I

    iget v8, p0, Lc8/udo;->animSteps:I

    div-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-long v8, v7

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 561
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 562
    new-instance v7, Lc8/sdo;

    invoke-direct {v7, p0}, Lc8/sdo;-><init>(Lc8/udo;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 569
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 570
    .local v5, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 571
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 572
    return-object v5
.end method

.method private initAttributes(Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 90
    invoke-virtual {p0}, Lc8/udo;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/youku/phone/R$styleable;->CircularProgressView:[I

    invoke-virtual {v4, p1, v5, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lc8/udo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 96
    .local v2, "resources":Landroid/content/res/Resources;
    sget v4, Lcom/youku/phone/R$styleable;->CircularProgressView_cpv_progress:I

    sget v5, Lcom/youku/phone/R$integer;->cpv_default_progress:I

    .line 97
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    .line 96
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lc8/udo;->currentProgress:F

    .line 98
    sget v4, Lcom/youku/phone/R$styleable;->CircularProgressView_cpv_maxProgress:I

    sget v5, Lcom/youku/phone/R$integer;->cpv_default_max_progress:I

    .line 99
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    .line 98
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lc8/udo;->maxProgress:F

    .line 100
    sget v4, Lcom/youku/phone/R$styleable;->CircularProgressView_cpv_thickness:I

    sget v5, Lcom/youku/phone/R$dimen;->cpv_default_thickness:I

    .line 101
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 100
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lc8/udo;->thickness:I

    .line 102
    sget v4, Lcom/youku/phone/R$dimen;->cpv_default_outthickness:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lc8/udo;->outThickness:I

    .line 103
    iget v4, p0, Lc8/udo;->thickness:I

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v8, :cond_0

    .line 104
    iget v4, p0, Lc8/udo;->thickness:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lc8/udo;->thickness:I

    .line 106
    :cond_0
    iget v4, p0, Lc8/udo;->outThickness:I

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v8, :cond_1

    .line 107
    iget v4, p0, Lc8/udo;->outThickness:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lc8/udo;->outThickness:I

    .line 109
    :cond_1
    sget v4, Lcom/youku/phone/R$styleable;->CircularProgressView_cpv_indeterminate:I

    sget v5, Lcom/youku/phone/R$bool;->cpv_default_is_indeterminate:I

    .line 110
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 109
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lc8/udo;->isIndeterminate:Z

    .line 111
    sget v4, Lcom/youku/phone/R$styleable;->CircularProgressView_cpv_animAutostart:I

    sget v5, Lcom/youku/phone/R$bool;->cpv_default_anim_autostart:I

    .line 112
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 111
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lc8/udo;->autostartAnimation:Z

    .line 113
    sget v4, Lcom/youku/phone/R$styleable;->CircularProgressView_cpv_startAngle:I

    sget v5, Lcom/youku/phone/R$integer;->cpv_default_start_angle:I

    .line 114
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    .line 113
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lc8/udo;->initialStartAngle:F

    .line 115
    iget v4, p0, Lc8/udo;->initialStartAngle:F

    iput v4, p0, Lc8/udo;->startAngle:F

    .line 117
    invoke-virtual {p0}, Lc8/udo;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "colorAccent"

    const-string/jumbo v6, "attr"

    invoke-virtual {p0}, Lc8/udo;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 120
    .local v1, "accentColor":I
    sget v4, Lcom/youku/phone/R$styleable;->CircularProgressView_cpv_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 121
    sget v4, Lcom/youku/phone/R$styleable;->CircularProgressView_cpv_color:I

    sget v5, Lcom/youku/phone/R$color;->cpv_default_color:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lc8/udo;->color:I

    .line 138
    :goto_0
    sget v4, Lcom/youku/phone/R$styleable;->CircularProgressView_cpv_animDuration:I

    sget v5, Lcom/youku/phone/R$integer;->cpv_default_anim_duration:I

    .line 139
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 138
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lc8/udo;->animDuration:I

    .line 140
    sget v4, Lcom/youku/phone/R$styleable;->CircularProgressView_cpv_animSwoopDuration:I

    sget v5, Lcom/youku/phone/R$integer;->cpv_default_anim_swoop_duration:I

    .line 141
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 140
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lc8/udo;->animSwoopDuration:I

    .line 142
    sget v4, Lcom/youku/phone/R$styleable;->CircularProgressView_cpv_animSyncDuration:I

    sget v5, Lcom/youku/phone/R$integer;->cpv_default_anim_sync_duration:I

    .line 143
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 142
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lc8/udo;->animSyncDuration:I

    .line 144
    sget v4, Lcom/youku/phone/R$styleable;->CircularProgressView_cpv_animSteps:I

    sget v5, Lcom/youku/phone/R$integer;->cpv_default_anim_steps:I

    .line 145
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 144
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lc8/udo;->animSteps:I

    .line 146
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lc8/udo;->setGravity(I)V

    .line 148
    return-void

    .line 124
    :cond_2
    if-eqz v1, :cond_3

    .line 125
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 126
    .local v3, "t":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lc8/udo;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v1, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 127
    iget v4, v3, Landroid/util/TypedValue;->data:I

    iput v4, p0, Lc8/udo;->color:I

    goto :goto_0

    .line 130
    .end local v3    # "t":Landroid/util/TypedValue;
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_4

    .line 131
    invoke-virtual {p0}, Lc8/udo;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v5, v8, [I

    const v6, 0x1010435

    aput v6, v5, v9

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 132
    .local v3, "t":Landroid/content/res/TypedArray;
    sget v4, Lcom/youku/phone/R$color;->cpv_default_color:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v9, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lc8/udo;->color:I

    goto :goto_0

    .line 135
    .end local v3    # "t":Landroid/content/res/TypedArray;
    :cond_4
    sget v4, Lcom/youku/phone/R$color;->cpv_default_color:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lc8/udo;->color:I

    goto/16 :goto_0
.end method

.method private updateBounds()V
    .locals 8

    .prologue
    .line 170
    invoke-virtual {p0}, Lc8/udo;->getPaddingLeft()I

    move-result v0

    .line 171
    .local v0, "paddingLeft":I
    invoke-virtual {p0}, Lc8/udo;->getPaddingTop()I

    move-result v1

    .line 172
    .local v1, "paddingTop":I
    iget-object v2, p0, Lc8/udo;->bounds:Landroid/graphics/RectF;

    iget v3, p0, Lc8/udo;->thickness:I

    add-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Lc8/udo;->thickness:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Lc8/udo;->size:I

    sub-int/2addr v5, v0

    iget v6, p0, Lc8/udo;->thickness:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lc8/udo;->size:I

    sub-int/2addr v6, v1

    iget v7, p0, Lc8/udo;->thickness:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 173
    iget-object v2, p0, Lc8/udo;->outBounds:Landroid/graphics/RectF;

    iget v3, p0, Lc8/udo;->outThickness:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, p0, Lc8/udo;->outThickness:I

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget v5, p0, Lc8/udo;->size:I

    sub-int/2addr v5, v0

    iget v6, p0, Lc8/udo;->outThickness:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    iget v6, p0, Lc8/udo;->size:I

    sub-int/2addr v6, v1

    iget v7, p0, Lc8/udo;->outThickness:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 174
    iget-object v2, p0, Lc8/udo;->fullBounds:Landroid/graphics/RectF;

    iget v3, p0, Lc8/udo;->outThickness:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, p0, Lc8/udo;->outThickness:I

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget v5, p0, Lc8/udo;->size:I

    sub-int/2addr v5, v0

    iget v6, p0, Lc8/udo;->outThickness:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    iget v6, p0, Lc8/udo;->size:I

    sub-int/2addr v6, v1

    iget v7, p0, Lc8/udo;->outThickness:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 175
    iget-object v2, p0, Lc8/udo;->circleInfo:Lc8/tdo;

    iget v3, p0, Lc8/udo;->size:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lc8/tdo;->setX(F)V

    .line 176
    iget-object v2, p0, Lc8/udo;->circleInfo:Lc8/tdo;

    iget v3, p0, Lc8/udo;->size:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lc8/tdo;->setY(F)V

    .line 177
    iget-object v2, p0, Lc8/udo;->circleInfo:Lc8/tdo;

    iget v3, p0, Lc8/udo;->size:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lc8/tdo;->setRadius(F)V

    .line 178
    iget-object v2, p0, Lc8/udo;->fullPaint:Landroid/graphics/Paint;

    iget v3, p0, Lc8/udo;->size:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 179
    return-void
.end method

.method private updatePaint()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lc8/udo;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lc8/udo;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    iget-object v0, p0, Lc8/udo;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    iget-object v0, p0, Lc8/udo;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lc8/udo;->thickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 187
    iget-object v0, p0, Lc8/udo;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 189
    iget-object v0, p0, Lc8/udo;->outPaint:Landroid/graphics/Paint;

    iget v1, p0, Lc8/udo;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object v0, p0, Lc8/udo;->outPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 191
    iget-object v0, p0, Lc8/udo;->outPaint:Landroid/graphics/Paint;

    iget v1, p0, Lc8/udo;->outThickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 192
    iget-object v0, p0, Lc8/udo;->outPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 194
    iget-object v0, p0, Lc8/udo;->fullPaint:Landroid/graphics/Paint;

    iget v1, p0, Lc8/udo;->color:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    iget v2, p0, Lc8/udo;->pressedAlpha:I

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    return-void
.end method


# virtual methods
.method public addListener(Lc8/wdo;)V
    .locals 1
    .param p1, "listener"    # Lc8/wdo;

    .prologue
    .line 390
    if-eqz p1, :cond_0

    .line 391
    iget-object v0, p0, Lc8/udo;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_0
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lc8/udo;->color:I

    return v0
.end method

.method public getMaxProgress()F
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lc8/udo;->maxProgress:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lc8/udo;->currentProgress:F

    return v0
.end method

.method public getThickness()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lc8/udo;->thickness:I

    return v0
.end method

.method protected init(Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/udo;->listeners:Ljava/util/List;

    .line 76
    invoke-direct {p0, p1, p2}, Lc8/udo;->initAttributes(Landroid/util/AttributeSet;I)V

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lc8/udo;->paint:Landroid/graphics/Paint;

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lc8/udo;->outPaint:Landroid/graphics/Paint;

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lc8/udo;->fullPaint:Landroid/graphics/Paint;

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/udo;->outBounds:Landroid/graphics/RectF;

    .line 82
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/udo;->bounds:Landroid/graphics/RectF;

    .line 83
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc8/udo;->fullBounds:Landroid/graphics/RectF;

    .line 84
    new-instance v0, Lc8/tdo;

    invoke-direct {v0}, Lc8/tdo;-><init>()V

    iput-object v0, p0, Lc8/udo;->circleInfo:Lc8/tdo;

    .line 86
    invoke-direct {p0}, Lc8/udo;->updatePaint()V

    .line 87
    return-void
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lc8/udo;->isIndeterminate:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 577
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 578
    iget-boolean v0, p0, Lc8/udo;->autostartAnimation:Z

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {p0}, Lc8/udo;->startAnimation()V

    .line 581
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 585
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 586
    invoke-virtual {p0}, Lc8/udo;->stopAnimation()V

    .line 587
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    .line 199
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 201
    invoke-virtual {p0}, Lc8/udo;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lc8/udo;->currentProgress:F

    iget v1, p0, Lc8/udo;->maxProgress:F

    div-float/2addr v0, v1

    mul-float v6, v0, v3

    .line 202
    .local v6, "sweepAngle":F
    :goto_0
    iget-boolean v0, p0, Lc8/udo;->isIndeterminate:Z

    if-nez v0, :cond_3

    .line 203
    iget-object v1, p0, Lc8/udo;->outBounds:Landroid/graphics/RectF;

    iget-object v5, p0, Lc8/udo;->outPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 204
    cmpl-float v0, v6, v2

    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lc8/udo;->bounds:Landroid/graphics/RectF;

    iget v2, p0, Lc8/udo;->startAngle:F

    iget-object v5, p0, Lc8/udo;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 208
    :cond_0
    iget v0, p0, Lc8/udo;->actionStatus:I

    if-nez v0, :cond_1

    .line 209
    iget-object v0, p0, Lc8/udo;->circleInfo:Lc8/tdo;

    invoke-virtual {v0}, Lc8/tdo;->getX()F

    move-result v0

    iget-object v1, p0, Lc8/udo;->circleInfo:Lc8/tdo;

    invoke-virtual {v1}, Lc8/tdo;->getY()F

    move-result v1

    iget-object v2, p0, Lc8/udo;->circleInfo:Lc8/tdo;

    invoke-virtual {v2}, Lc8/tdo;->getRadius()F

    move-result v2

    iget-object v3, p0, Lc8/udo;->fullPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 214
    :cond_1
    :goto_1
    return-void

    .line 201
    .end local v6    # "sweepAngle":F
    :cond_2
    iget v0, p0, Lc8/udo;->actualProgress:F

    iget v1, p0, Lc8/udo;->maxProgress:F

    div-float/2addr v0, v1

    mul-float v6, v0, v3

    goto :goto_0

    .line 212
    .restart local v6    # "sweepAngle":F
    :cond_3
    iget-object v1, p0, Lc8/udo;->bounds:Landroid/graphics/RectF;

    iget v0, p0, Lc8/udo;->startAngle:F

    iget v2, p0, Lc8/udo;->indeterminateRotateOffset:F

    add-float/2addr v2, v0

    iget v3, p0, Lc8/udo;->indeterminateSweep:F

    iget-object v5, p0, Lc8/udo;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 153
    invoke-virtual {p0}, Lc8/udo;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lc8/udo;->getPaddingRight()I

    move-result v5

    add-int v2, v4, v5

    .line 154
    .local v2, "xPad":I
    invoke-virtual {p0}, Lc8/udo;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lc8/udo;->getPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 155
    .local v3, "yPad":I
    invoke-virtual {p0}, Lc8/udo;->getMeasuredWidth()I

    move-result v4

    sub-int v1, v4, v2

    .line 156
    .local v1, "width":I
    invoke-virtual {p0}, Lc8/udo;->getMeasuredHeight()I

    move-result v4

    sub-int v0, v4, v3

    .line 157
    .local v0, "height":I
    if-ge v1, v0, :cond_0

    .end local v1    # "width":I
    :goto_0
    iput v1, p0, Lc8/udo;->size:I

    .line 160
    return-void

    .restart local v1    # "width":I
    :cond_0
    move v1, v0

    .line 157
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 165
    if-ge p1, p2, :cond_0

    .end local p1    # "w":I
    :goto_0
    iput p1, p0, Lc8/udo;->size:I

    .line 166
    invoke-direct {p0}, Lc8/udo;->updateBounds()V

    .line 167
    return-void

    .restart local p1    # "w":I
    :cond_0
    move p1, p2

    .line 165
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 220
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "event.getAction(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iput v1, p0, Lc8/udo;->actionStatus:I

    .line 223
    invoke-virtual {p0}, Lc8/udo;->postInvalidate()V

    .line 224
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 230
    :goto_0
    return v0

    .line 226
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 227
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iput v0, p0, Lc8/udo;->actionStatus:I

    .line 228
    invoke-virtual {p0}, Lc8/udo;->postInvalidate()V

    .line 230
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeListener(Lc8/wdo;)V
    .locals 1
    .param p1, "listener"    # Lc8/wdo;

    .prologue
    .line 401
    iget-object v0, p0, Lc8/udo;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 402
    return-void
.end method

.method public resetAnimation()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 417
    iget-object v5, p0, Lc8/udo;->startAngleRotate:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lc8/udo;->startAngleRotate:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 418
    iget-object v5, p0, Lc8/udo;->startAngleRotate:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 420
    :cond_0
    iget-object v5, p0, Lc8/udo;->progressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lc8/udo;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 421
    iget-object v5, p0, Lc8/udo;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 423
    :cond_1
    iget-object v5, p0, Lc8/udo;->indeterminateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lc8/udo;->indeterminateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 424
    iget-object v5, p0, Lc8/udo;->indeterminateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 428
    :cond_2
    iget-boolean v5, p0, Lc8/udo;->isIndeterminate:Z

    if-nez v5, :cond_4

    .line 430
    iget v5, p0, Lc8/udo;->initialStartAngle:F

    iput v5, p0, Lc8/udo;->startAngle:F

    .line 431
    new-array v5, v10, [F

    iget v6, p0, Lc8/udo;->startAngle:F

    aput v6, v5, v8

    iget v6, p0, Lc8/udo;->startAngle:F

    const/high16 v7, 0x43b40000    # 360.0f

    add-float/2addr v6, v7

    aput v6, v5, v9

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lc8/udo;->startAngleRotate:Landroid/animation/ValueAnimator;

    .line 432
    iget-object v5, p0, Lc8/udo;->startAngleRotate:Landroid/animation/ValueAnimator;

    iget v6, p0, Lc8/udo;->animSwoopDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 433
    iget-object v5, p0, Lc8/udo;->startAngleRotate:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 434
    iget-object v5, p0, Lc8/udo;->startAngleRotate:Landroid/animation/ValueAnimator;

    new-instance v6, Lc8/mdo;

    invoke-direct {v6, p0}, Lc8/mdo;-><init>(Lc8/udo;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 441
    iget-object v5, p0, Lc8/udo;->startAngleRotate:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 444
    const/4 v5, 0x0

    iput v5, p0, Lc8/udo;->actualProgress:F

    .line 445
    new-array v5, v10, [F

    iget v6, p0, Lc8/udo;->actualProgress:F

    aput v6, v5, v8

    iget v6, p0, Lc8/udo;->currentProgress:F

    aput v6, v5, v9

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lc8/udo;->progressAnimator:Landroid/animation/ValueAnimator;

    .line 446
    iget-object v5, p0, Lc8/udo;->progressAnimator:Landroid/animation/ValueAnimator;

    iget v6, p0, Lc8/udo;->animSyncDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 447
    iget-object v5, p0, Lc8/udo;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 448
    iget-object v5, p0, Lc8/udo;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lc8/ndo;

    invoke-direct {v6, p0}, Lc8/ndo;-><init>(Lc8/udo;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 455
    iget-object v5, p0, Lc8/udo;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 495
    :cond_3
    return-void

    .line 459
    :cond_4
    const/high16 v5, 0x41700000    # 15.0f

    iput v5, p0, Lc8/udo;->indeterminateSweep:F

    .line 461
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lc8/udo;->indeterminateAnimator:Landroid/animation/AnimatorSet;

    .line 462
    const/4 v4, 0x0

    .line 463
    .local v4, "prevSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    iget v5, p0, Lc8/udo;->animSteps:I

    if-ge v1, v5, :cond_6

    .line 464
    int-to-float v5, v1

    invoke-direct {p0, v5}, Lc8/udo;->createIndeterminateAnimator(F)Landroid/animation/AnimatorSet;

    move-result-object v3

    .line 465
    .local v3, "nextSet":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lc8/udo;->indeterminateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 466
    .local v0, "builder":Landroid/animation/AnimatorSet$Builder;
    if-eqz v4, :cond_5

    .line 467
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 469
    :cond_5
    move-object v4, v3

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    .end local v0    # "builder":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "nextSet":Landroid/animation/AnimatorSet;
    :cond_6
    iget-object v5, p0, Lc8/udo;->indeterminateAnimator:Landroid/animation/AnimatorSet;

    new-instance v6, Lc8/odo;

    invoke-direct {v6, p0}, Lc8/odo;-><init>(Lc8/udo;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 488
    iget-object v5, p0, Lc8/udo;->indeterminateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 489
    iget-object v5, p0, Lc8/udo;->listeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/wdo;

    .line 490
    .local v2, "listener":Lc8/wdo;
    invoke-interface {v2}, Lc8/wdo;->onAnimationReset()V

    goto :goto_1
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 296
    iput p1, p0, Lc8/udo;->color:I

    .line 297
    invoke-direct {p0}, Lc8/udo;->updatePaint()V

    .line 298
    invoke-virtual {p0}, Lc8/udo;->invalidate()V

    .line 299
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 5
    .param p1, "isIndeterminate"    # Z

    .prologue
    .line 249
    iget-boolean v1, p0, Lc8/udo;->isIndeterminate:Z

    .line 250
    .local v1, "old":Z
    iget-boolean v3, p0, Lc8/udo;->isIndeterminate:Z

    if-ne v3, p1, :cond_1

    const/4 v2, 0x1

    .line 251
    .local v2, "reset":Z
    :goto_0
    iput-boolean p1, p0, Lc8/udo;->isIndeterminate:Z

    .line 252
    if-eqz v2, :cond_0

    .line 253
    invoke-virtual {p0}, Lc8/udo;->resetAnimation()V

    .line 255
    :cond_0
    if-eq v1, p1, :cond_2

    .line 256
    iget-object v3, p0, Lc8/udo;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/wdo;

    .line 257
    .local v0, "listener":Lc8/wdo;
    invoke-interface {v0, p1}, Lc8/wdo;->onModeChanged(Z)V

    goto :goto_1

    .line 250
    .end local v0    # "listener":Lc8/wdo;
    .end local v2    # "reset":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 260
    .restart local v2    # "reset":Z
    :cond_2
    return-void
.end method

.method public setMaxProgress(F)V
    .locals 0
    .param p1, "maxProgress"    # F

    .prologue
    .line 316
    iput p1, p0, Lc8/udo;->maxProgress:F

    .line 317
    invoke-virtual {p0}, Lc8/udo;->invalidate()V

    .line 318
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 381
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lc8/udo;->setProgress(FZ)V

    .line 382
    return-void
.end method

.method public setProgress(FZ)V
    .locals 4
    .param p1, "progress"    # F
    .param p2, "animation"    # Z

    .prologue
    .line 328
    if-eqz p2, :cond_2

    .line 332
    iput p1, p0, Lc8/udo;->currentProgress:F

    .line 334
    iget-boolean v1, p0, Lc8/udo;->isIndeterminate:Z

    if-nez v1, :cond_1

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lc8/udo;->currentProgress:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/udo;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v1, p0, Lc8/udo;->progressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/udo;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lc8/udo;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 339
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lc8/udo;->actualProgress:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lc8/udo;->currentProgress:F

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lc8/udo;->progressAnimator:Landroid/animation/ValueAnimator;

    .line 340
    iget-object v1, p0, Lc8/udo;->progressAnimator:Landroid/animation/ValueAnimator;

    iget v2, p0, Lc8/udo;->animSyncDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 341
    iget-object v1, p0, Lc8/udo;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 342
    iget-object v1, p0, Lc8/udo;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lc8/kdo;

    invoke-direct {v2, p0}, Lc8/kdo;-><init>(Lc8/udo;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 349
    iget-object v1, p0, Lc8/udo;->progressAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lc8/ldo;

    invoke-direct {v2, p0}, Lc8/ldo;-><init>(Lc8/udo;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 358
    iget-object v1, p0, Lc8/udo;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 360
    :cond_1
    invoke-virtual {p0}, Lc8/udo;->invalidate()V

    .line 361
    iget-object v1, p0, Lc8/udo;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/wdo;

    .line 362
    .local v0, "listener":Lc8/wdo;
    iget v2, p0, Lc8/udo;->currentProgress:F

    invoke-interface {v0, v2}, Lc8/wdo;->onProgressUpdate(F)V

    goto :goto_0

    .line 365
    .end local v0    # "listener":Lc8/wdo;
    :cond_2
    iput p1, p0, Lc8/udo;->currentProgress:F

    .line 366
    iput p1, p0, Lc8/udo;->actualProgress:F

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lc8/udo;->currentProgress:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/udo;->setText(Ljava/lang/CharSequence;)V

    .line 370
    invoke-virtual {p0}, Lc8/udo;->invalidate()V

    .line 373
    :cond_3
    return-void
.end method

.method public setThickness(I)V
    .locals 0
    .param p1, "thickness"    # I

    .prologue
    .line 277
    iput p1, p0, Lc8/udo;->thickness:I

    .line 278
    invoke-direct {p0}, Lc8/udo;->updatePaint()V

    .line 279
    invoke-direct {p0}, Lc8/udo;->updateBounds()V

    .line 280
    invoke-virtual {p0}, Lc8/udo;->invalidate()V

    .line 281
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 591
    invoke-virtual {p0}, Lc8/udo;->getVisibility()I

    move-result v0

    .line 592
    .local v0, "currentVisibility":I
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 593
    if-eq p1, v0, :cond_0

    .line 594
    if-nez p1, :cond_1

    .line 595
    invoke-virtual {p0}, Lc8/udo;->resetAnimation()V

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 597
    :cond_2
    invoke-virtual {p0}, Lc8/udo;->stopAnimation()V

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 0

    .prologue
    .line 409
    invoke-virtual {p0}, Lc8/udo;->resetAnimation()V

    .line 410
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 501
    iget-object v0, p0, Lc8/udo;->startAngleRotate:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lc8/udo;->startAngleRotate:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 503
    iput-object v1, p0, Lc8/udo;->startAngleRotate:Landroid/animation/ValueAnimator;

    .line 505
    :cond_0
    iget-object v0, p0, Lc8/udo;->progressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lc8/udo;->progressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 507
    iput-object v1, p0, Lc8/udo;->progressAnimator:Landroid/animation/ValueAnimator;

    .line 509
    :cond_1
    iget-object v0, p0, Lc8/udo;->indeterminateAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, p0, Lc8/udo;->indeterminateAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 511
    iput-object v1, p0, Lc8/udo;->indeterminateAnimator:Landroid/animation/AnimatorSet;

    .line 513
    :cond_2
    return-void
.end method
