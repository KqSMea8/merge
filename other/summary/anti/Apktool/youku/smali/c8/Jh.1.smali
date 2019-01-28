.class public Lc8/Jh;
.super Lc8/Qh;
.source "VisibilityIcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Kh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisibilityWrapper"
.end annotation


# instance fields
.field private mVisibility:Lc8/Mh;


# direct methods
.method constructor <init>(Lc8/Mh;)V
    .locals 0
    .param p1, "visibility"    # Lc8/Mh;

    .prologue
    .line 61
    invoke-direct {p0}, Lc8/Qh;-><init>()V

    .line 62
    iput-object p1, p0, Lc8/Jh;->mVisibility:Lc8/Mh;

    .line 63
    return-void
.end method


# virtual methods
.method public captureEndValues(Lc8/Ch;)V
    .locals 1
    .param p1, "transitionValues"    # Lc8/Ch;

    .prologue
    .line 72
    iget-object v0, p0, Lc8/Jh;->mVisibility:Lc8/Mh;

    invoke-interface {v0, p1}, Lc8/Mh;->captureEndValues(Lc8/Ch;)V

    .line 73
    return-void
.end method

.method public captureStartValues(Lc8/Ch;)V
    .locals 1
    .param p1, "transitionValues"    # Lc8/Ch;

    .prologue
    .line 67
    iget-object v0, p0, Lc8/Jh;->mVisibility:Lc8/Mh;

    invoke-interface {v0, p1}, Lc8/Mh;->captureStartValues(Lc8/Ch;)V

    .line 68
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lc8/Ch;Lc8/Ch;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Lc8/Ch;
    .param p3, "endValues"    # Lc8/Ch;

    .prologue
    .line 78
    iget-object v0, p0, Lc8/Jh;->mVisibility:Lc8/Mh;

    invoke-interface {v0, p1, p2, p3}, Lc8/Mh;->createAnimator(Landroid/view/ViewGroup;Lc8/Ch;Lc8/Ch;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public isVisible(Lc8/Ch;)Z
    .locals 1
    .param p1, "values"    # Lc8/Ch;

    .prologue
    .line 83
    iget-object v0, p0, Lc8/Jh;->mVisibility:Lc8/Mh;

    invoke-interface {v0, p1}, Lc8/Mh;->isVisible(Lc8/Ch;)Z

    move-result v0

    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Lc8/Ch;ILc8/Ch;I)Landroid/animation/Animator;
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Lc8/Ch;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Lc8/Ch;
    .param p5, "endVisibility"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lc8/Jh;->mVisibility:Lc8/Mh;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lc8/Mh;->onAppear(Landroid/view/ViewGroup;Lc8/Ch;ILc8/Ch;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Lc8/Ch;ILc8/Ch;I)Landroid/animation/Animator;
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Lc8/Ch;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Lc8/Ch;
    .param p5, "endVisibility"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lc8/Jh;->mVisibility:Lc8/Mh;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lc8/Mh;->onDisappear(Landroid/view/ViewGroup;Lc8/Ch;ILc8/Ch;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
