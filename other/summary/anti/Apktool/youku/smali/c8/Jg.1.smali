.class public Lc8/Jg;
.super Lc8/Kg;
.source "SceneIcs.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Lc8/N;
    value = 0xe
.end annotation


# instance fields
.field mScene:Lc8/Mg;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/Kg;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lc8/Jg;->mScene:Lc8/Mg;

    invoke-virtual {v0}, Lc8/Mg;->enter()V

    .line 43
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lc8/Jg;->mScene:Lc8/Mg;

    invoke-virtual {v0}, Lc8/Mg;->exit()V

    .line 48
    return-void
.end method

.method public getSceneRoot()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lc8/Jg;->mScene:Lc8/Mg;

    invoke-virtual {v0}, Lc8/Mg;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 32
    new-instance v0, Lc8/Mg;

    invoke-direct {v0, p1}, Lc8/Mg;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lc8/Jg;->mScene:Lc8/Mg;

    .line 33
    return-void
.end method

.method public init(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layout"    # Landroid/view/View;

    .prologue
    .line 37
    new-instance v0, Lc8/Mg;

    invoke-direct {v0, p1, p2}, Lc8/Mg;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object v0, p0, Lc8/Jg;->mScene:Lc8/Mg;

    .line 38
    return-void
.end method

.method public setEnterAction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 58
    iget-object v0, p0, Lc8/Jg;->mScene:Lc8/Mg;

    invoke-virtual {v0, p1}, Lc8/Mg;->setEnterAction(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 63
    iget-object v0, p0, Lc8/Jg;->mScene:Lc8/Mg;

    invoke-virtual {v0, p1}, Lc8/Mg;->setExitAction(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method
