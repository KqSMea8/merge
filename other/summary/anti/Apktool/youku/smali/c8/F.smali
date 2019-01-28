.class public abstract Lc8/F;
.super Ljava/lang/Object;
.source "DynamicAnimation.java"

# interfaces
.implements Lc8/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/D;,
        Lc8/C;,
        Lc8/E;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc8/F",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lc8/k;"
    }
.end annotation


# static fields
.field public static final ALPHA:Lc8/E;

.field public static final ROTATION:Lc8/E;

.field public static final ROTATION_X:Lc8/E;

.field public static final ROTATION_Y:Lc8/E;

.field public static final SCALE_X:Lc8/E;

.field public static final SCALE_Y:Lc8/E;

.field public static final SCROLL_X:Lc8/E;

.field public static final SCROLL_Y:Lc8/E;

.field public static final TRANSLATION_X:Lc8/E;

.field public static final TRANSLATION_Y:Lc8/E;

.field public static final TRANSLATION_Z:Lc8/E;

.field private static final UNSET:F = 3.4028235E38f

.field public static final X:Lc8/E;

.field public static final Y:Lc8/E;

.field public static final Z:Lc8/E;


# instance fields
.field private final mEndListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/C;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFrameTime:J

.field mMaxValue:F

.field mMinValue:F

.field mRunning:Z

.field mStartValueIsSet:Z

.field final mTarget:Landroid/view/View;

.field private final mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/D;",
            ">;"
        }
    .end annotation
.end field

.field mValue:F

.field mVelocity:F

.field final mViewProperty:Lc8/E;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lc8/t;

    const-string/jumbo v1, "translationX"

    invoke-direct {v0, v1}, Lc8/t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/F;->TRANSLATION_X:Lc8/E;

    .line 74
    new-instance v0, Lc8/u;

    const-string/jumbo v1, "translationY"

    invoke-direct {v0, v1}, Lc8/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/F;->TRANSLATION_Y:Lc8/E;

    .line 89
    new-instance v0, Lc8/v;

    const-string/jumbo v1, "translationZ"

    invoke-direct {v0, v1}, Lc8/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/F;->TRANSLATION_Z:Lc8/E;

    .line 110
    new-instance v0, Lc8/w;

    const-string/jumbo v1, "scaleX"

    invoke-direct {v0, v1}, Lc8/w;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/F;->SCALE_X:Lc8/E;

    .line 125
    new-instance v0, Lc8/x;

    const-string/jumbo v1, "scaleY"

    invoke-direct {v0, v1}, Lc8/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/F;->SCALE_Y:Lc8/E;

    .line 140
    new-instance v0, Lc8/y;

    const-string/jumbo v1, "rotation"

    invoke-direct {v0, v1}, Lc8/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/F;->ROTATION:Lc8/E;

    .line 155
    new-instance v0, Lc8/z;

    const-string/jumbo v1, "rotationX"

    invoke-direct {v0, v1}, Lc8/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/F;->ROTATION_X:Lc8/E;

    .line 170
    new-instance v0, Lc8/A;

    const-string/jumbo v1, "rotationY"

    invoke-direct {v0, v1}, Lc8/A;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/F;->ROTATION_Y:Lc8/E;

    .line 185
    new-instance v0, Lc8/B;

    const-string/jumbo v1, "x"

    invoke-direct {v0, v1}, Lc8/B;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/F;->X:Lc8/E;

    .line 200
    new-instance v0, Lc8/o;

    const-string/jumbo v1, "y"

    invoke-direct {v0, v1}, Lc8/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/F;->Y:Lc8/E;

    .line 215
    new-instance v0, Lc8/p;

    const-string/jumbo v1, "z"

    invoke-direct {v0, v1}, Lc8/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/F;->Z:Lc8/E;

    .line 236
    new-instance v0, Lc8/q;

    const-string/jumbo v1, "alpha"

    invoke-direct {v0, v1}, Lc8/q;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/F;->ALPHA:Lc8/E;

    .line 252
    new-instance v0, Lc8/r;

    const-string/jumbo v1, "scrollX"

    invoke-direct {v0, v1}, Lc8/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/F;->SCROLL_X:Lc8/E;

    .line 267
    new-instance v0, Lc8/s;

    const-string/jumbo v1, "scrollY"

    invoke-direct {v0, v1}, Lc8/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/F;->SCROLL_Y:Lc8/E;

    return-void
.end method

.method constructor <init>(Landroid/view/View;Lc8/E;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "property"    # Lc8/E;

    .prologue
    .local p0, "this":Lc8/F;, "Landroid/support/animation/DynamicAnimation<TT;>;"
    const/4 v2, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    const/4 v0, 0x0

    iput v0, p0, Lc8/F;->mVelocity:F

    .line 286
    iput v1, p0, Lc8/F;->mValue:F

    .line 290
    iput-boolean v2, p0, Lc8/F;->mStartValueIsSet:Z

    .line 299
    iput-boolean v2, p0, Lc8/F;->mRunning:Z

    .line 302
    iput v1, p0, Lc8/F;->mMaxValue:F

    .line 303
    iget v0, p0, Lc8/F;->mMaxValue:F

    neg-float v0, v0

    iput v0, p0, Lc8/F;->mMinValue:F

    .line 306
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/F;->mLastFrameTime:J

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/F;->mEndListeners:Ljava/util/ArrayList;

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/F;->mUpdateListeners:Ljava/util/ArrayList;

    .line 321
    iput-object p1, p0, Lc8/F;->mTarget:Landroid/view/View;

    .line 322
    iput-object p2, p0, Lc8/F;->mViewProperty:Lc8/E;

    .line 323
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lc8/F;->isZSupported()Z

    move-result v0

    return v0
.end method

.method private endAnimationInternal(Z)V
    .locals 5
    .param p1, "canceled"    # Z

    .prologue
    .local p0, "this":Lc8/F;, "Landroid/support/animation/DynamicAnimation<TT;>;"
    const/4 v4, 0x0

    .line 579
    iput-boolean v4, p0, Lc8/F;->mRunning:Z

    .line 580
    invoke-static {}, Lc8/n;->getInstance()Lc8/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc8/n;->removeCallback(Lc8/k;)V

    .line 581
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lc8/F;->mLastFrameTime:J

    .line 582
    iput-boolean v4, p0, Lc8/F;->mStartValueIsSet:Z

    .line 583
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lc8/F;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 584
    iget-object v1, p0, Lc8/F;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lc8/F;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/C;

    iget v2, p0, Lc8/F;->mValue:F

    iget v3, p0, Lc8/F;->mVelocity:F

    invoke-interface {v1, p0, p1, v2, v3}, Lc8/C;->onAnimationEnd(Lc8/F;ZFF)V

    .line 583
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 588
    :cond_1
    iget-object v1, p0, Lc8/F;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {v1}, Lc8/F;->removeNullEntries(Ljava/util/ArrayList;)V

    .line 589
    return-void
.end method

.method private getPropertyValue()F
    .locals 2

    .prologue
    .line 615
    .local p0, "this":Lc8/F;, "Landroid/support/animation/DynamicAnimation<TT;>;"
    iget-object v0, p0, Lc8/F;->mViewProperty:Lc8/E;

    iget-object v1, p0, Lc8/F;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v1}, Lc8/E;->getValue(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method private static isZSupported()Z
    .locals 2

    .prologue
    .line 595
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "entry":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 465
    .local v0, "id":I
    if-ltz v0, :cond_0

    .line 466
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_0
    return-void
.end method

.method private static removeNullEntries(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 454
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 455
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 453
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 458
    :cond_1
    return-void
.end method

.method private startAnimationInternal()V
    .locals 4

    .prologue
    .line 519
    .local p0, "this":Lc8/F;, "Landroid/support/animation/DynamicAnimation<TT;>;"
    iget-boolean v0, p0, Lc8/F;->mRunning:Z

    if-nez v0, :cond_3

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/F;->mRunning:Z

    .line 521
    iget-boolean v0, p0, Lc8/F;->mStartValueIsSet:Z

    if-nez v0, :cond_0

    .line 522
    invoke-direct {p0}, Lc8/F;->getPropertyValue()F

    move-result v0

    iput v0, p0, Lc8/F;->mValue:F

    .line 525
    :cond_0
    iget v0, p0, Lc8/F;->mValue:F

    iget v1, p0, Lc8/F;->mMaxValue:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lc8/F;->mValue:F

    iget v1, p0, Lc8/F;->mMinValue:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 526
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Starting value need to be in between min value and max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_2
    invoke-static {}, Lc8/n;->getInstance()Lc8/n;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lc8/n;->addAnimationFrameCallback(Lc8/k;J)V

    .line 531
    :cond_3
    return-void
.end method


# virtual methods
.method public addEndListener(Lc8/C;)Lc8/F;
    .locals 1
    .param p1, "listener"    # Lc8/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/C;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "this":Lc8/F;, "Landroid/support/animation/DynamicAnimation<TT;>;"
    iget-object v0, p0, Lc8/F;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lc8/F;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_0
    return-object p0
.end method

.method public addUpdateListener(Lc8/D;)Lc8/F;
    .locals 2
    .param p1, "listener"    # Lc8/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/D;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "this":Lc8/F;, "Landroid/support/animation/DynamicAnimation<TT;>;"
    invoke-virtual {p0}, Lc8/F;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Error: Update listeners must be added beforethe animation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_0
    iget-object v0, p0, Lc8/F;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 433
    iget-object v0, p0, Lc8/F;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_1
    return-object p0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 497
    .local p0, "this":Lc8/F;, "Landroid/support/animation/DynamicAnimation<TT;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 498
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "Animations may only be canceled on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_0
    iget-boolean v0, p0, Lc8/F;->mRunning:Z

    if-eqz v0, :cond_1

    .line 501
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc8/F;->endAnimationInternal(Z)V

    .line 503
    :cond_1
    return-void
.end method

.method public doAnimationFrame(J)Z
    .locals 9
    .param p1, "frameTime"    # J

    .prologue
    .local p0, "this":Lc8/F;, "Landroid/support/animation/DynamicAnimation<TT;>;"
    const/4 v3, 0x0

    .line 544
    iget-wide v4, p0, Lc8/F;->mLastFrameTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 546
    iput-wide p1, p0, Lc8/F;->mLastFrameTime:J

    .line 547
    iget v4, p0, Lc8/F;->mValue:F

    invoke-virtual {p0, v4}, Lc8/F;->setPropertyValue(F)V

    move v2, v3

    .line 562
    :cond_0
    :goto_0
    return v2

    .line 550
    :cond_1
    iget-wide v4, p0, Lc8/F;->mLastFrameTime:J

    sub-long v0, p1, v4

    .line 551
    .local v0, "deltaT":J
    iput-wide p1, p0, Lc8/F;->mLastFrameTime:J

    .line 552
    invoke-virtual {p0, v0, v1}, Lc8/F;->updateValueAndVelocity(J)Z

    move-result v2

    .line 554
    .local v2, "finished":Z
    iget v4, p0, Lc8/F;->mValue:F

    iget v5, p0, Lc8/F;->mMaxValue:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lc8/F;->mValue:F

    .line 555
    iget v4, p0, Lc8/F;->mValue:F

    iget v5, p0, Lc8/F;->mMinValue:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lc8/F;->mValue:F

    .line 557
    iget v4, p0, Lc8/F;->mValue:F

    invoke-virtual {p0, v4}, Lc8/F;->setPropertyValue(F)V

    .line 559
    if-eqz v2, :cond_0

    .line 560
    invoke-direct {p0, v3}, Lc8/F;->endAnimationInternal(Z)V

    goto :goto_0
.end method

.method abstract getAcceleration(FF)F
.end method

.method abstract isAtEquilibrium(FF)Z
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 511
    .local p0, "this":Lc8/F;, "Landroid/support/animation/DynamicAnimation<TT;>;"
    iget-boolean v0, p0, Lc8/F;->mRunning:Z

    return v0
.end method

.method public removeEndListener(Lc8/C;)V
    .locals 1
    .param p1, "listener"    # Lc8/C;

    .prologue
    .line 410
    .local p0, "this":Lc8/F;, "Landroid/support/animation/DynamicAnimation<TT;>;"
    iget-object v0, p0, Lc8/F;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lc8/F;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 411
    return-void
.end method

.method public removeUpdateListener(Lc8/D;)V
    .locals 1
    .param p1, "listener"    # Lc8/D;

    .prologue
    .line 445
    .local p0, "this":Lc8/F;, "Landroid/support/animation/DynamicAnimation<TT;>;"
    iget-object v0, p0, Lc8/F;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lc8/F;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 446
    return-void
.end method

.method public setMaxValue(F)Lc8/F;
    .locals 0
    .param p1, "max"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "this":Lc8/F;, "Landroid/support/animation/DynamicAnimation<TT;>;"
    iput p1, p0, Lc8/F;->mMaxValue:F

    .line 374
    return-object p0
.end method

.method public setMinValue(F)Lc8/F;
    .locals 0
    .param p1, "min"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, "this":Lc8/F;, "Landroid/support/animation/DynamicAnimation<TT;>;"
    iput p1, p0, Lc8/F;->mMinValue:F

    .line 387
    return-object p0
.end method

.method setPropertyValue(F)V
    .locals 4
    .param p1, "value"    # F

    .prologue
    .line 602
    .local p0, "this":Lc8/F;, "Landroid/support/animation/DynamicAnimation<TT;>;"
    iget-object v1, p0, Lc8/F;->mViewProperty:Lc8/E;

    iget-object v2, p0, Lc8/F;->mTarget:Landroid/view/View;

    invoke-virtual {v1, v2, p1}, Lc8/E;->setValue(Landroid/view/View;F)V

    .line 603
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lc8/F;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 604
    iget-object v1, p0, Lc8/F;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lc8/F;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/D;

    iget v2, p0, Lc8/F;->mValue:F

    iget v3, p0, Lc8/F;->mVelocity:F

    invoke-interface {v1, p0, v2, v3}, Lc8/D;->onAnimationUpdate(Lc8/F;FF)V

    .line 603
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 608
    :cond_1
    iget-object v1, p0, Lc8/F;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {v1}, Lc8/F;->removeNullEntries(Ljava/util/ArrayList;)V

    .line 609
    return-void
.end method

.method public setStartValue(F)Lc8/F;
    .locals 1
    .param p1, "startValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "this":Lc8/F;, "Landroid/support/animation/DynamicAnimation<TT;>;"
    iput p1, p0, Lc8/F;->mValue:F

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/F;->mStartValueIsSet:Z

    .line 335
    return-object p0
.end method

.method public setStartVelocity(F)Lc8/F;
    .locals 0
    .param p1, "startVelocity"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lc8/F;, "Landroid/support/animation/DynamicAnimation<TT;>;"
    iput p1, p0, Lc8/F;->mVelocity:F

    .line 357
    return-object p0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 482
    .local p0, "this":Lc8/F;, "Landroid/support/animation/DynamicAnimation<TT;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 483
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "Animations may only be started on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    iget-boolean v0, p0, Lc8/F;->mRunning:Z

    if-nez v0, :cond_1

    .line 486
    invoke-direct {p0}, Lc8/F;->startAnimationInternal()V

    .line 488
    :cond_1
    return-void
.end method

.method abstract updateValueAndVelocity(J)Z
.end method
