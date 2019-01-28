.class public Lc8/ch;
.super Landroid/transition/Transition;
.source "TransitionKitKat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitionWrapper"
.end annotation


# instance fields
.field private mTransition:Lc8/Zg;


# direct methods
.method public constructor <init>(Lc8/Zg;)V
    .locals 0
    .param p1, "transition"    # Lc8/Zg;

    .prologue
    .line 304
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 305
    iput-object p1, p0, Lc8/ch;->mTransition:Lc8/Zg;

    .line 306
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 315
    iget-object v0, p0, Lc8/ch;->mTransition:Lc8/Zg;

    invoke-static {v0, p1}, Lc8/dh;->wrapCaptureEndValues(Lc8/Zg;Landroid/transition/TransitionValues;)V

    .line 316
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 310
    iget-object v0, p0, Lc8/ch;->mTransition:Lc8/Zg;

    invoke-static {v0, p1}, Lc8/dh;->wrapCaptureStartValues(Lc8/Zg;Landroid/transition/TransitionValues;)V

    .line 311
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 322
    iget-object v0, p0, Lc8/ch;->mTransition:Lc8/Zg;

    invoke-static {p2}, Lc8/dh;->convertToSupport(Landroid/transition/TransitionValues;)Lc8/Ch;

    move-result-object v1

    .line 323
    invoke-static {p3}, Lc8/dh;->convertToSupport(Landroid/transition/TransitionValues;)Lc8/Ch;

    move-result-object v2

    .line 322
    invoke-interface {v0, p1, v1, v2}, Lc8/Zg;->createAnimator(Landroid/view/ViewGroup;Lc8/Ch;Lc8/Ch;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
