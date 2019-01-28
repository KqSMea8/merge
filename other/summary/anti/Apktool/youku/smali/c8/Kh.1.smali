.class public Lc8/Kh;
.super Lc8/Xg;
.source "VisibilityIcs.java"

# interfaces
.implements Lc8/Lh;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Lc8/N;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Jh;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/Xg;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public init(Lc8/Zg;Ljava/lang/Object;)V
    .locals 1
    .param p1, "external"    # Lc8/Zg;
    .param p2, "internal"    # Ljava/lang/Object;

    .prologue
    .line 30
    iput-object p1, p0, Lc8/Kh;->mExternalTransition:Lc8/Zg;

    .line 31
    if-nez p2, :cond_0

    .line 32
    new-instance v0, Lc8/Jh;

    check-cast p1, Lc8/Mh;

    .end local p1    # "external":Lc8/Zg;
    invoke-direct {v0, p1}, Lc8/Jh;-><init>(Lc8/Mh;)V

    iput-object v0, p0, Lc8/Kh;->mTransition:Lc8/uh;

    .line 36
    .end local p2    # "internal":Ljava/lang/Object;
    :goto_0
    return-void

    .line 34
    .restart local p1    # "external":Lc8/Zg;
    .restart local p2    # "internal":Ljava/lang/Object;
    :cond_0
    check-cast p2, Lc8/Qh;

    .end local p2    # "internal":Ljava/lang/Object;
    iput-object p2, p0, Lc8/Kh;->mTransition:Lc8/uh;

    goto :goto_0
.end method

.method public isVisible(Lc8/Ch;)Z
    .locals 1
    .param p1, "values"    # Lc8/Ch;

    .prologue
    .line 40
    iget-object v0, p0, Lc8/Kh;->mTransition:Lc8/uh;

    check-cast v0, Lc8/Qh;

    invoke-virtual {v0, p1}, Lc8/Qh;->isVisible(Lc8/Ch;)Z

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
    .line 46
    iget-object v0, p0, Lc8/Kh;->mTransition:Lc8/uh;

    check-cast v0, Lc8/Qh;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lc8/Qh;->onAppear(Landroid/view/ViewGroup;Lc8/Ch;ILc8/Ch;I)Landroid/animation/Animator;

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
    .line 53
    iget-object v0, p0, Lc8/Kh;->mTransition:Lc8/uh;

    check-cast v0, Lc8/Qh;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lc8/Qh;->onDisappear(Landroid/view/ViewGroup;Lc8/Ch;ILc8/Ch;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
