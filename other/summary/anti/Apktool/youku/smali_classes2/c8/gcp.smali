.class public Lc8/gcp;
.super Landroid/widget/EditText;
.source "YoukuSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchEditText"
.end annotation


# instance fields
.field private mSearchView:Lc8/hcp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 590
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 591
    return-void
.end method

.method static synthetic access$700(Lc8/gcp;Lc8/hcp;)V
    .locals 0
    .param p0, "x0"    # Lc8/gcp;
    .param p1, "x1"    # Lc8/hcp;

    .prologue
    .line 585
    invoke-direct {p0, p1}, Lc8/gcp;->setSearchView(Lc8/hcp;)V

    return-void
.end method

.method private setSearchView(Lc8/hcp;)V
    .locals 0
    .param p1, "searchView"    # Lc8/hcp;

    .prologue
    .line 594
    iput-object p1, p0, Lc8/gcp;->mSearchView:Lc8/hcp;

    .line 595
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 641
    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 642
    iget-object v0, p0, Lc8/gcp;->mSearchView:Lc8/hcp;

    iget-object v1, p0, Lc8/gcp;->mSearchView:Lc8/hcp;

    invoke-static {v1}, Lc8/hcp;->access$300(Lc8/hcp;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/hcp;->onClick(Landroid/view/View;)V

    .line 645
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 614
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 617
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 618
    invoke-virtual {p0}, Lc8/gcp;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 619
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 635
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v1

    .line 623
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 624
    invoke-virtual {p0}, Lc8/gcp;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 625
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    .line 626
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 628
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 629
    iget-object v2, p0, Lc8/gcp;->mSearchView:Lc8/hcp;

    invoke-virtual {v2}, Lc8/hcp;->clearFocus()V

    .line 630
    iget-object v2, p0, Lc8/gcp;->mSearchView:Lc8/hcp;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc8/hcp;->setImeVisibility(Z)V

    goto :goto_0

    .line 635
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 650
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 652
    .local v0, "flag":Z
    invoke-virtual {p0}, Lc8/gcp;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 653
    const/4 v0, 0x0

    .line 657
    :cond_0
    invoke-virtual {p0}, Lc8/gcp;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 658
    invoke-virtual {p0}, Lc8/gcp;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lc8/gcp;->setSelection(I)V

    .line 661
    :cond_1
    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 603
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 605
    if-eqz p1, :cond_0

    iget-object v0, p0, Lc8/gcp;->mSearchView:Lc8/hcp;

    invoke-virtual {v0}, Lc8/hcp;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/gcp;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/gcp;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/gcp;->mSearchView:Lc8/hcp;

    .line 606
    invoke-static {v0}, Lc8/hcp;->access$1000(Lc8/hcp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lc8/gcp;->mSearchView:Lc8/hcp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/hcp;->setImeVisibility(Z)V

    .line 608
    iget-object v0, p0, Lc8/gcp;->mSearchView:Lc8/hcp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/hcp;->setChangedWhenWindowFocus(Z)V

    .line 610
    :cond_0
    return-void
.end method
