.class public Lc8/jh;
.super Ljava/lang/Object;
.source "TransitionManagerPort.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/kh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiListener"
.end annotation


# instance fields
.field mSceneRoot:Landroid/view/ViewGroup;

.field mTransition:Lc8/uh;


# direct methods
.method constructor <init>(Lc8/uh;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "transition"    # Lc8/uh;
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-object p1, p0, Lc8/jh;->mTransition:Lc8/uh;

    .line 389
    iput-object p2, p0, Lc8/jh;->mSceneRoot:Landroid/view/ViewGroup;

    .line 390
    return-void
.end method

.method private removeListeners()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lc8/jh;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 394
    iget-object v0, p0, Lc8/jh;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 395
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .prologue
    .line 417
    invoke-direct {p0}, Lc8/jh;->removeListeners()V

    .line 418
    sget-object v4, Lc8/kh;->sPendingTransitions:Ljava/util/ArrayList;

    iget-object v5, p0, Lc8/jh;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 421
    invoke-static {}, Lc8/kh;->getRunningTransitions()Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    .line 422
    .local v3, "runningTransitions":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;>;"
    iget-object v4, p0, Lc8/jh;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 423
    .local v0, "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;"
    const/4 v1, 0x0

    .line 424
    .local v1, "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;"
    if-nez v0, :cond_1

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .restart local v0    # "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;"
    iget-object v4, p0, Lc8/jh;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :cond_0
    :goto_0
    iget-object v4, p0, Lc8/jh;->mTransition:Lc8/uh;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v4, p0, Lc8/jh;->mTransition:Lc8/uh;

    new-instance v5, Lc8/ih;

    invoke-direct {v5, p0, v3}, Lc8/ih;-><init>(Lc8/jh;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {v4, v5}, Lc8/uh;->addListener(Lc8/sh;)Lc8/uh;

    .line 439
    iget-object v4, p0, Lc8/jh;->mTransition:Lc8/uh;

    iget-object v5, p0, Lc8/jh;->mSceneRoot:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lc8/uh;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 440
    if-eqz v1, :cond_2

    .line 441
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/uh;

    .line 442
    .local v2, "runningTransition":Lc8/uh;
    iget-object v5, p0, Lc8/jh;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Lc8/uh;->resume(Landroid/view/View;)V

    goto :goto_1

    .line 427
    .end local v2    # "runningTransition":Lc8/uh;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 428
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;"
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v1    # "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;"
    goto :goto_0

    .line 445
    :cond_2
    iget-object v4, p0, Lc8/jh;->mTransition:Lc8/uh;

    iget-object v5, p0, Lc8/jh;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Lc8/uh;->playTransition(Landroid/view/ViewGroup;)V

    .line 447
    const/4 v4, 0x1

    return v4
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 399
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 403
    invoke-direct {p0}, Lc8/jh;->removeListeners()V

    .line 405
    sget-object v2, Lc8/kh;->sPendingTransitions:Ljava/util/ArrayList;

    iget-object v3, p0, Lc8/jh;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 406
    invoke-static {}, Lc8/kh;->getRunningTransitions()Landroid/support/v4/util/ArrayMap;

    move-result-object v2

    iget-object v3, p0, Lc8/jh;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 407
    .local v1, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionPort;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 408
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/uh;

    .line 409
    .local v0, "runningTransition":Lc8/uh;
    iget-object v3, p0, Lc8/jh;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Lc8/uh;->resume(Landroid/view/View;)V

    goto :goto_0

    .line 412
    .end local v0    # "runningTransition":Lc8/uh;
    :cond_0
    iget-object v2, p0, Lc8/jh;->mTransition:Lc8/uh;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lc8/uh;->clearValues(Z)V

    .line 413
    return-void
.end method
