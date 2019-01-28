.class public abstract Lc8/Nc;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Hc;,
        Lc8/Mc;,
        Lc8/Kc;,
        Lc8/Lc;,
        Lc8/Jc;,
        Lc8/Ic;,
        Lc8/Gc;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lc8/Nc",
        "<TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final ANIMATION_DURATION:I = 0xfa

.field static final ANIMATION_FADE_DURATION:I = 0xb4

.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field static final MSG_DISMISS:I = 0x1

.field static final MSG_SHOW:I

.field static final sHandler:Landroid/os/Handler;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Gc",
            "<TB;>;>;"
        }
    .end annotation
.end field

.field private final mContentViewCallback:Lc8/Ic;

.field private final mContext:Landroid/content/Context;

.field private mDuration:I

.field final mManagerCallback:Lc8/me;

.field private final mTargetParent:Landroid/view/ViewGroup;

.field final mView:Lc8/Mc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lc8/vc;

    invoke-direct {v2}, Lc8/vc;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lc8/Nc;->sHandler:Landroid/os/Handler;

    .line 186
    return-void
.end method

.method protected constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lc8/Ic;)V
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "content"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "contentViewCallback"    # Lc8/Ic;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lc8/Nc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    const/4 v4, 0x1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    new-instance v1, Lc8/xc;

    invoke-direct {v1, p0}, Lc8/xc;-><init>(Lc8/Nc;)V

    iput-object v1, p0, Lc8/Nc;->mManagerCallback:Lc8/me;

    .line 224
    if-nez p1, :cond_0

    .line 225
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Transient bottom bar must have non-null parent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_0
    if-nez p2, :cond_1

    .line 228
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Transient bottom bar must have non-null content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_1
    if-nez p3, :cond_2

    .line 231
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Transient bottom bar must have non-null callback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :cond_2
    iput-object p1, p0, Lc8/Nc;->mTargetParent:Landroid/view/ViewGroup;

    .line 235
    iput-object p3, p0, Lc8/Nc;->mContentViewCallback:Lc8/Ic;

    .line 236
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lc8/Nc;->mContext:Landroid/content/Context;

    .line 238
    iget-object v1, p0, Lc8/Nc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lc8/Ue;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 240
    iget-object v1, p0, Lc8/Nc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 244
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/youku/phone/R$layout;->design_layout_snackbar:I

    iget-object v2, p0, Lc8/Nc;->mTargetParent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/Mc;

    iput-object v1, p0, Lc8/Nc;->mView:Lc8/Mc;

    .line 246
    iget-object v1, p0, Lc8/Nc;->mView:Lc8/Mc;

    invoke-virtual {v1, p2}, Lc8/Mc;->addView(Landroid/view/View;)V

    .line 248
    iget-object v1, p0, Lc8/Nc;->mView:Lc8/Mc;

    invoke-static {v1, v4}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 250
    iget-object v1, p0, Lc8/Nc;->mView:Lc8/Mc;

    invoke-static {v1, v4}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 254
    iget-object v1, p0, Lc8/Nc;->mView:Lc8/Mc;

    invoke-static {v1, v4}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 255
    iget-object v1, p0, Lc8/Nc;->mView:Lc8/Mc;

    new-instance v2, Lc8/wc;

    invoke-direct {v2, p0}, Lc8/wc;-><init>(Lc8/Nc;)V

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 268
    iget-object v1, p0, Lc8/Nc;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "accessibility"

    .line 269
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lc8/Nc;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 270
    return-void
.end method

.method static synthetic access$000(Lc8/Nc;)Lc8/Ic;
    .locals 1
    .param p0, "x0"    # Lc8/Nc;

    .prologue
    .line 59
    iget-object v0, p0, Lc8/Nc;->mContentViewCallback:Lc8/Ic;

    return-object v0
.end method

.method private animateViewOut(I)V
    .locals 6
    .param p1, "event"    # I

    .prologue
    .local p0, "this":Lc8/Nc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    const-wide/16 v4, 0xfa

    .line 530
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 531
    iget-object v1, p0, Lc8/Nc;->mView:Lc8/Mc;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget-object v2, p0, Lc8/Nc;->mView:Lc8/Mc;

    .line 532
    invoke-virtual {v2}, Lc8/Mc;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    sget-object v2, Lc8/jc;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 533
    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 534
    invoke-virtual {v1, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    new-instance v2, Lc8/Ec;

    invoke-direct {v2, p0, p1}, Lc8/Ec;-><init>(Lc8/Nc;I)V

    .line 535
    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 545
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 565
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v1, p0, Lc8/Nc;->mView:Lc8/Mc;

    invoke-virtual {v1}, Lc8/Mc;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$anim;->design_snackbar_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 549
    .local v0, "anim":Landroid/view/animation/Animation;
    sget-object v1, Lc8/jc;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 550
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 551
    new-instance v1, Lc8/uc;

    invoke-direct {v1, p0, p1}, Lc8/uc;-><init>(Lc8/Nc;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 563
    iget-object v1, p0, Lc8/Nc;->mView:Lc8/Mc;

    invoke-virtual {v1, v0}, Lc8/Mc;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public addCallback(Lc8/Gc;)Lc8/Nc;
    .locals 1
    .param p1    # Lc8/Gc;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Gc",
            "<TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "this":Lc8/Nc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    .local p1, "callback":Lc8/Gc;, "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<TB;>;"
    if-nez p1, :cond_0

    .line 345
    :goto_0
    return-object p0

    .line 341
    :cond_0
    iget-object v0, p0, Lc8/Nc;->mCallbacks:Ljava/util/List;

    if-nez v0, :cond_1

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Nc;->mCallbacks:Ljava/util/List;

    .line 344
    :cond_1
    iget-object v0, p0, Lc8/Nc;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method animateViewIn()V
    .locals 6

    .prologue
    .local p0, "this":Lc8/Nc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    const-wide/16 v4, 0xfa

    .line 489
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 490
    iget-object v1, p0, Lc8/Nc;->mView:Lc8/Mc;

    iget-object v2, p0, Lc8/Nc;->mView:Lc8/Mc;

    invoke-virtual {v2}, Lc8/Mc;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 491
    iget-object v1, p0, Lc8/Nc;->mView:Lc8/Mc;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/4 v2, 0x0

    .line 492
    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    sget-object v2, Lc8/jc;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 493
    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 494
    invoke-virtual {v1, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    new-instance v2, Lc8/Cc;

    invoke-direct {v2, p0}, Lc8/Cc;-><init>(Lc8/Nc;)V

    .line 495
    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 507
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 527
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-object v1, p0, Lc8/Nc;->mView:Lc8/Mc;

    invoke-virtual {v1}, Lc8/Mc;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$anim;->design_snackbar_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 511
    .local v0, "anim":Landroid/view/animation/Animation;
    sget-object v1, Lc8/jc;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 512
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 513
    new-instance v1, Lc8/Dc;

    invoke-direct {v1, p0}, Lc8/Dc;-><init>(Lc8/Nc;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 525
    iget-object v1, p0, Lc8/Nc;->mView:Lc8/Mc;

    invoke-virtual {v1, v0}, Lc8/Mc;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 322
    .local p0, "this":Lc8/Nc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lc8/Nc;->dispatchDismiss(I)V

    .line 323
    return-void
.end method

.method dispatchDismiss(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 326
    .local p0, "this":Lc8/Nc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Lc8/oe;->getInstance()Lc8/oe;

    move-result-object v0

    iget-object v1, p0, Lc8/Nc;->mManagerCallback:Lc8/me;

    invoke-virtual {v0, v1, p1}, Lc8/oe;->dismiss(Lc8/me;I)V

    .line 327
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lc8/Nc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v0, p0, Lc8/Nc;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 292
    .local p0, "this":Lc8/Nc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget v0, p0, Lc8/Nc;->mDuration:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lc8/Nc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v0, p0, Lc8/Nc;->mView:Lc8/Mc;

    return-object v0
.end method

.method final hideView(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 568
    .local p0, "this":Lc8/Nc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-virtual {p0}, Lc8/Nc;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Nc;->mView:Lc8/Mc;

    invoke-virtual {v0}, Lc8/Mc;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 569
    invoke-direct {p0, p1}, Lc8/Nc;->animateViewOut(I)V

    .line 574
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-virtual {p0, p1}, Lc8/Nc;->onViewHidden(I)V

    goto :goto_0
.end method

.method public isShown()Z
    .locals 2

    .prologue
    .line 372
    .local p0, "this":Lc8/Nc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Lc8/oe;->getInstance()Lc8/oe;

    move-result-object v0

    iget-object v1, p0, Lc8/Nc;->mManagerCallback:Lc8/me;

    invoke-virtual {v0, v1}, Lc8/oe;->isCurrent(Lc8/me;)Z

    move-result v0

    return v0
.end method

.method public isShownOrQueued()Z
    .locals 2

    .prologue
    .line 380
    .local p0, "this":Lc8/Nc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Lc8/oe;->getInstance()Lc8/oe;

    move-result-object v0

    iget-object v1, p0, Lc8/Nc;->mManagerCallback:Lc8/me;

    invoke-virtual {v0, v1}, Lc8/oe;->isCurrentOrNext(Lc8/me;)Z

    move-result v0

    return v0
.end method

.method onViewHidden(I)V
    .locals 5
    .param p1, "event"    # I

    .prologue
    .line 590
    .local p0, "this":Lc8/Nc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Lc8/oe;->getInstance()Lc8/oe;

    move-result-object v3

    iget-object v4, p0, Lc8/Nc;->mManagerCallback:Lc8/me;

    invoke-virtual {v3, v4}, Lc8/oe;->onDismissed(Lc8/me;)V

    .line 591
    iget-object v3, p0, Lc8/Nc;->mCallbacks:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 594
    iget-object v3, p0, Lc8/Nc;->mCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 595
    .local v0, "callbackCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 596
    iget-object v3, p0, Lc8/Nc;->mCallbacks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Gc;

    invoke-virtual {v3, p0, p1}, Lc8/Gc;->onDismissed(Ljava/lang/Object;I)V

    .line 595
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 599
    .end local v0    # "callbackCount":I
    .end local v1    # "i":I
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_1

    .line 605
    iget-object v3, p0, Lc8/Nc;->mView:Lc8/Mc;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lc8/Mc;->setVisibility(I)V

    .line 608
    :cond_1
    iget-object v3, p0, Lc8/Nc;->mView:Lc8/Mc;

    invoke-virtual {v3}, Lc8/Mc;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 609
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 610
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "parent":Landroid/view/ViewParent;
    iget-object v3, p0, Lc8/Nc;->mView:Lc8/Mc;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 612
    :cond_2
    return-void
.end method

.method onViewShown()V
    .locals 4

    .prologue
    .line 577
    .local p0, "this":Lc8/Nc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Lc8/oe;->getInstance()Lc8/oe;

    move-result-object v2

    iget-object v3, p0, Lc8/Nc;->mManagerCallback:Lc8/me;

    invoke-virtual {v2, v3}, Lc8/oe;->onShown(Lc8/me;)V

    .line 578
    iget-object v2, p0, Lc8/Nc;->mCallbacks:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 581
    iget-object v2, p0, Lc8/Nc;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 582
    .local v0, "callbackCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 583
    iget-object v2, p0, Lc8/Nc;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Gc;

    invoke-virtual {v2, p0}, Lc8/Gc;->onShown(Ljava/lang/Object;)V

    .line 582
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 586
    .end local v0    # "callbackCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public removeCallback(Lc8/Gc;)Lc8/Nc;
    .locals 1
    .param p1    # Lc8/Gc;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Gc",
            "<TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lc8/Nc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    .local p1, "callback":Lc8/Gc;, "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<TB;>;"
    if-nez p1, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-object p0

    .line 360
    :cond_1
    iget-object v0, p0, Lc8/Nc;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lc8/Nc;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setDuration(I)Lc8/Nc;
    .locals 0
    .param p1, "duration"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lc8/Nc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iput p1, p0, Lc8/Nc;->mDuration:I

    .line 282
    return-object p0
.end method

.method shouldAnimate()Z
    .locals 1

    .prologue
    .line 618
    .local p0, "this":Lc8/Nc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v0, p0, Lc8/Nc;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 315
    .local p0, "this":Lc8/Nc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    invoke-static {}, Lc8/oe;->getInstance()Lc8/oe;

    move-result-object v0

    iget v1, p0, Lc8/Nc;->mDuration:I

    iget-object v2, p0, Lc8/Nc;->mManagerCallback:Lc8/me;

    invoke-virtual {v0, v1, v2}, Lc8/oe;->show(ILc8/me;)V

    .line 316
    return-void
.end method

.method final showView()V
    .locals 5

    .prologue
    .line 397
    .local p0, "this":Lc8/Nc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>;"
    iget-object v3, p0, Lc8/Nc;->mView:Lc8/Mc;

    invoke-virtual {v3}, Lc8/Mc;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 398
    iget-object v3, p0, Lc8/Nc;->mView:Lc8/Mc;

    invoke-virtual {v3}, Lc8/Mc;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 400
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v2, Lc8/ud;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 402
    check-cast v1, Lc8/ud;

    .line 404
    .local v1, "clp":Lc8/ud;
    new-instance v0, Lc8/Hc;

    invoke-direct {v0, p0}, Lc8/Hc;-><init>(Lc8/Nc;)V

    .line 405
    .local v0, "behavior":Lc8/Hc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>.Behavior;"
    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v3}, Lc8/Hc;->setStartAlphaSwipeDistance(F)V

    .line 406
    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v3}, Lc8/Hc;->setEndAlphaSwipeDistance(F)V

    .line 407
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lc8/Hc;->setSwipeDirection(I)V

    .line 408
    new-instance v3, Lc8/yc;

    invoke-direct {v3, p0}, Lc8/yc;-><init>(Lc8/Nc;)V

    invoke-virtual {v0, v3}, Lc8/Hc;->setListener(Lc8/te;)V

    .line 431
    invoke-virtual {v1, v0}, Lc8/ud;->setBehavior(Lc8/qd;)V

    .line 433
    const/16 v3, 0x50

    iput v3, v1, Lc8/ud;->insetEdge:I

    .line 436
    .end local v0    # "behavior":Lc8/Hc;, "Landroid/support/design/widget/BaseTransientBottomBar<TB;>.Behavior;"
    .end local v1    # "clp":Lc8/ud;
    :cond_0
    iget-object v3, p0, Lc8/Nc;->mTargetParent:Landroid/view/ViewGroup;

    iget-object v4, p0, Lc8/Nc;->mView:Lc8/Mc;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 439
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v3, p0, Lc8/Nc;->mView:Lc8/Mc;

    new-instance v4, Lc8/Ac;

    invoke-direct {v4, p0}, Lc8/Ac;-><init>(Lc8/Nc;)V

    invoke-virtual {v3, v4}, Lc8/Mc;->setOnAttachStateChangeListener(Lc8/Kc;)V

    .line 461
    iget-object v3, p0, Lc8/Nc;->mView:Lc8/Mc;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 462
    invoke-virtual {p0}, Lc8/Nc;->shouldAnimate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 464
    invoke-virtual {p0}, Lc8/Nc;->animateViewIn()V

    .line 486
    :goto_0
    return-void

    .line 467
    :cond_2
    invoke-virtual {p0}, Lc8/Nc;->onViewShown()V

    goto :goto_0

    .line 471
    :cond_3
    iget-object v3, p0, Lc8/Nc;->mView:Lc8/Mc;

    new-instance v4, Lc8/Bc;

    invoke-direct {v4, p0}, Lc8/Bc;-><init>(Lc8/Nc;)V

    invoke-virtual {v3, v4}, Lc8/Mc;->setOnLayoutChangeListener(Lc8/Lc;)V

    goto :goto_0
.end method
