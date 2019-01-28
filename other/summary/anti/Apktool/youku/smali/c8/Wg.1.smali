.class public Lc8/Wg;
.super Lc8/uh;
.source "TransitionIcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Xg;
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
    .line 215
    invoke-direct {p0}, Lc8/uh;-><init>()V

    .line 216
    iput-object p1, p0, Lc8/Wg;->mTransition:Lc8/Zg;

    .line 217
    return-void
.end method


# virtual methods
.method public captureEndValues(Lc8/Ch;)V
    .locals 1
    .param p1, "transitionValues"    # Lc8/Ch;

    .prologue
    .line 226
    iget-object v0, p0, Lc8/Wg;->mTransition:Lc8/Zg;

    invoke-interface {v0, p1}, Lc8/Zg;->captureEndValues(Lc8/Ch;)V

    .line 227
    return-void
.end method

.method public captureStartValues(Lc8/Ch;)V
    .locals 1
    .param p1, "transitionValues"    # Lc8/Ch;

    .prologue
    .line 221
    iget-object v0, p0, Lc8/Wg;->mTransition:Lc8/Zg;

    invoke-interface {v0, p1}, Lc8/Zg;->captureStartValues(Lc8/Ch;)V

    .line 222
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lc8/Ch;Lc8/Ch;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Lc8/Ch;
    .param p3, "endValues"    # Lc8/Ch;

    .prologue
    .line 232
    iget-object v0, p0, Lc8/Wg;->mTransition:Lc8/Zg;

    invoke-interface {v0, p1, p2, p3}, Lc8/Zg;->createAnimator(Landroid/view/ViewGroup;Lc8/Ch;Lc8/Ch;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
