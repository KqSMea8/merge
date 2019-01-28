.class public Lc8/Wh;
.super Ljava/lang/Object;
.source "GingerbreadAnimatorCompatProvider.java"

# interfaces
.implements Landroid/support/v4/animation/ValueAnimatorCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Xh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GingerbreadFloatValueAnimator"
.end annotation


# instance fields
.field private mDuration:J

.field private mEnded:Z

.field private mFraction:F

.field mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/animation/AnimatorListenerCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mLoopRunnable:Ljava/lang/Runnable;

.field private mStartTime:J

.field private mStarted:Z

.field mTarget:Landroid/view/View;

.field mUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/animation/AnimatorUpdateListenerCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Wh;->mListeners:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Wh;->mUpdateListeners:Ljava/util/List;

    .line 48
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lc8/Wh;->mDuration:J

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lc8/Wh;->mFraction:F

    .line 51
    iput-boolean v2, p0, Lc8/Wh;->mStarted:Z

    .line 52
    iput-boolean v2, p0, Lc8/Wh;->mEnded:Z

    .line 57
    new-instance v0, Lc8/Vh;

    invoke-direct {v0, p0}, Lc8/Vh;-><init>(Lc8/Wh;)V

    iput-object v0, p0, Lc8/Wh;->mLoopRunnable:Ljava/lang/Runnable;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lc8/Wh;)J
    .locals 2
    .param p0, "x0"    # Lc8/Wh;

    .prologue
    .line 41
    invoke-direct {p0}, Lc8/Wh;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lc8/Wh;)J
    .locals 2
    .param p0, "x0"    # Lc8/Wh;

    .prologue
    .line 41
    iget-wide v0, p0, Lc8/Wh;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lc8/Wh;)J
    .locals 2
    .param p0, "x0"    # Lc8/Wh;

    .prologue
    .line 41
    iget-wide v0, p0, Lc8/Wh;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$300(Lc8/Wh;)F
    .locals 1
    .param p0, "x0"    # Lc8/Wh;

    .prologue
    .line 41
    iget v0, p0, Lc8/Wh;->mFraction:F

    return v0
.end method

.method static synthetic access$302(Lc8/Wh;F)F
    .locals 0
    .param p0, "x0"    # Lc8/Wh;
    .param p1, "x1"    # F

    .prologue
    .line 41
    iput p1, p0, Lc8/Wh;->mFraction:F

    return p1
.end method

.method static synthetic access$400(Lc8/Wh;)V
    .locals 0
    .param p0, "x0"    # Lc8/Wh;

    .prologue
    .line 41
    invoke-direct {p0}, Lc8/Wh;->notifyUpdateListeners()V

    return-void
.end method

.method static synthetic access$500(Lc8/Wh;)V
    .locals 0
    .param p0, "x0"    # Lc8/Wh;

    .prologue
    .line 41
    invoke-direct {p0}, Lc8/Wh;->dispatchEnd()V

    return-void
.end method

.method static synthetic access$600(Lc8/Wh;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lc8/Wh;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/Wh;->mLoopRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private dispatchCancel()V
    .locals 2

    .prologue
    .line 127
    iget-object v1, p0, Lc8/Wh;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 128
    iget-object v1, p0, Lc8/Wh;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/animation/AnimatorListenerCompat;

    invoke-interface {v1, p0}, Landroid/support/v4/animation/AnimatorListenerCompat;->onAnimationCancel(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 127
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method private dispatchEnd()V
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Lc8/Wh;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 122
    iget-object v1, p0, Lc8/Wh;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/animation/AnimatorListenerCompat;

    invoke-interface {v1, p0}, Landroid/support/v4/animation/AnimatorListenerCompat;->onAnimationEnd(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 121
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method private dispatchStart()V
    .locals 2

    .prologue
    .line 115
    iget-object v1, p0, Lc8/Wh;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 116
    iget-object v1, p0, Lc8/Wh;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/animation/AnimatorListenerCompat;

    invoke-interface {v1, p0}, Landroid/support/v4/animation/AnimatorListenerCompat;->onAnimationStart(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 115
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method private getTime()J
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lc8/Wh;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyUpdateListeners()V
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lc8/Wh;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 77
    iget-object v1, p0, Lc8/Wh;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/animation/AnimatorUpdateListenerCompat;

    invoke-interface {v1, p0}, Landroid/support/v4/animation/AnimatorUpdateListenerCompat;->onAnimationUpdate(Landroid/support/v4/animation/ValueAnimatorCompat;)V

    .line 76
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Landroid/support/v4/animation/AnimatorListenerCompat;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/animation/AnimatorListenerCompat;

    .prologue
    .line 88
    iget-object v0, p0, Lc8/Wh;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public addUpdateListener(Landroid/support/v4/animation/AnimatorUpdateListenerCompat;)V
    .locals 1
    .param p1, "animatorUpdateListener"    # Landroid/support/v4/animation/AnimatorUpdateListenerCompat;

    .prologue
    .line 146
    iget-object v0, p0, Lc8/Wh;->mUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lc8/Wh;->mEnded:Z

    if-eqz v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Wh;->mEnded:Z

    .line 138
    iget-boolean v0, p0, Lc8/Wh;->mStarted:Z

    if-eqz v0, :cond_1

    .line 139
    invoke-direct {p0}, Lc8/Wh;->dispatchCancel()V

    .line 141
    :cond_1
    invoke-direct {p0}, Lc8/Wh;->dispatchEnd()V

    goto :goto_0
.end method

.method public getAnimatedFraction()F
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lc8/Wh;->mFraction:F

    return v0
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 93
    iget-boolean v0, p0, Lc8/Wh;->mStarted:Z

    if-nez v0, :cond_0

    .line 94
    iput-wide p1, p0, Lc8/Wh;->mDuration:J

    .line 96
    :cond_0
    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 83
    iput-object p1, p0, Lc8/Wh;->mTarget:Landroid/view/View;

    .line 84
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 100
    iget-boolean v0, p0, Lc8/Wh;->mStarted:Z

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Wh;->mStarted:Z

    .line 104
    invoke-direct {p0}, Lc8/Wh;->dispatchStart()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lc8/Wh;->mFraction:F

    .line 106
    invoke-direct {p0}, Lc8/Wh;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/Wh;->mStartTime:J

    .line 107
    iget-object v0, p0, Lc8/Wh;->mTarget:Landroid/view/View;

    iget-object v1, p0, Lc8/Wh;->mLoopRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
