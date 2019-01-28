.class public final Lc8/to;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/vo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PanelFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field background:I

.field createdPanelView:Landroid/view/View;

.field decorView:Landroid/view/ViewGroup;

.field featureId:I

.field frozenActionViewState:Landroid/os/Bundle;

.field frozenMenuState:Landroid/os/Bundle;

.field gravity:I

.field isHandled:Z

.field isOpen:Z

.field isPrepared:Z

.field listMenuPresenter:Lc8/Nq;

.field listPresenterContext:Landroid/content/Context;

.field menu:Lc8/Rq;

.field public qwertyMode:Z

.field refreshDecorView:Z

.field refreshMenuContent:Z

.field shownPanelView:Landroid/view/View;

.field wasLastOpen:Z

.field windowAnimations:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 1953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1954
    iput p1, p0, Lc8/to;->featureId:I

    .line 1956
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/to;->refreshDecorView:Z

    .line 1957
    return-void
.end method


# virtual methods
.method applyFrozenState()V
    .locals 2

    .prologue
    .line 2059
    iget-object v0, p0, Lc8/to;->menu:Lc8/Rq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/to;->frozenMenuState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2060
    iget-object v0, p0, Lc8/to;->menu:Lc8/Rq;

    iget-object v1, p0, Lc8/to;->frozenMenuState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lc8/Rq;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 2061
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/to;->frozenMenuState:Landroid/os/Bundle;

    .line 2063
    :cond_0
    return-void
.end method

.method public clearMenuPresenters()V
    .locals 2

    .prologue
    .line 1970
    iget-object v0, p0, Lc8/to;->menu:Lc8/Rq;

    if-eqz v0, :cond_0

    .line 1971
    iget-object v0, p0, Lc8/to;->menu:Lc8/Rq;

    iget-object v1, p0, Lc8/to;->listMenuPresenter:Lc8/Nq;

    invoke-virtual {v0, v1}, Lc8/Rq;->removeMenuPresenter(Lc8/hr;)V

    .line 1973
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/to;->listMenuPresenter:Lc8/Nq;

    .line 1974
    return-void
.end method

.method getListMenuView(Lc8/gr;)Lc8/jr;
    .locals 4
    .param p1, "cb"    # Lc8/gr;

    .prologue
    .line 2021
    iget-object v1, p0, Lc8/to;->menu:Lc8/Rq;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 2032
    :goto_0
    return-object v0

    .line 2023
    :cond_0
    iget-object v1, p0, Lc8/to;->listMenuPresenter:Lc8/Nq;

    if-nez v1, :cond_1

    .line 2024
    new-instance v1, Lc8/Nq;

    iget-object v2, p0, Lc8/to;->listPresenterContext:Landroid/content/Context;

    sget v3, Lcom/youku/phone/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v1, v2, v3}, Lc8/Nq;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lc8/to;->listMenuPresenter:Lc8/Nq;

    .line 2026
    iget-object v1, p0, Lc8/to;->listMenuPresenter:Lc8/Nq;

    invoke-virtual {v1, p1}, Lc8/Nq;->setCallback(Lc8/gr;)V

    .line 2027
    iget-object v1, p0, Lc8/to;->menu:Lc8/Rq;

    iget-object v2, p0, Lc8/to;->listMenuPresenter:Lc8/Nq;

    invoke-virtual {v1, v2}, Lc8/Rq;->addMenuPresenter(Lc8/hr;)V

    .line 2030
    :cond_1
    iget-object v1, p0, Lc8/to;->listMenuPresenter:Lc8/Nq;

    iget-object v2, p0, Lc8/to;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lc8/Nq;->getMenuView(Landroid/view/ViewGroup;)Lc8/jr;

    move-result-object v0

    .line 2032
    .local v0, "result":Lc8/jr;
    goto :goto_0
.end method

.method public hasPanelItems()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1960
    iget-object v2, p0, Lc8/to;->shownPanelView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1963
    :cond_0
    :goto_0
    return v0

    .line 1961
    :cond_1
    iget-object v2, p0, Lc8/to;->createdPanelView:Landroid/view/View;

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1963
    :cond_2
    iget-object v2, p0, Lc8/to;->listMenuPresenter:Lc8/Nq;

    invoke-virtual {v2}, Lc8/Nq;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v2, 0x0

    .line 2049
    move-object v0, p1

    check-cast v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;

    .line 2050
    .local v0, "savedState":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
    iget v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->featureId:I

    iput v1, p0, Lc8/to;->featureId:I

    .line 2051
    iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->isOpen:Z

    iput-boolean v1, p0, Lc8/to;->wasLastOpen:Z

    .line 2052
    iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    iput-object v1, p0, Lc8/to;->frozenMenuState:Landroid/os/Bundle;

    .line 2054
    iput-object v2, p0, Lc8/to;->shownPanelView:Landroid/view/View;

    .line 2055
    iput-object v2, p0, Lc8/to;->decorView:Landroid/view/ViewGroup;

    .line 2056
    return-void
.end method

.method onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 2036
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;

    invoke-direct {v0}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;-><init>()V

    .line 2037
    .local v0, "savedState":Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
    iget v1, p0, Lc8/to;->featureId:I

    iput v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->featureId:I

    .line 2038
    iget-boolean v1, p0, Lc8/to;->isOpen:Z

    iput-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->isOpen:Z

    .line 2040
    iget-object v1, p0, Lc8/to;->menu:Lc8/Rq;

    if-eqz v1, :cond_0

    .line 2041
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 2042
    iget-object v1, p0, Lc8/to;->menu:Lc8/Rq;

    iget-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lc8/Rq;->savePresenterStates(Landroid/os/Bundle;)V

    .line 2045
    :cond_0
    return-object v0
.end method

.method setMenu(Lc8/Rq;)V
    .locals 2
    .param p1, "menu"    # Lc8/Rq;

    .prologue
    .line 2009
    iget-object v0, p0, Lc8/to;->menu:Lc8/Rq;

    if-ne p1, v0, :cond_1

    .line 2018
    :cond_0
    :goto_0
    return-void

    .line 2011
    :cond_1
    iget-object v0, p0, Lc8/to;->menu:Lc8/Rq;

    if-eqz v0, :cond_2

    .line 2012
    iget-object v0, p0, Lc8/to;->menu:Lc8/Rq;

    iget-object v1, p0, Lc8/to;->listMenuPresenter:Lc8/Nq;

    invoke-virtual {v0, v1}, Lc8/Rq;->removeMenuPresenter(Lc8/hr;)V

    .line 2014
    :cond_2
    iput-object p1, p0, Lc8/to;->menu:Lc8/Rq;

    .line 2015
    if-eqz p1, :cond_0

    .line 2016
    iget-object v0, p0, Lc8/to;->listMenuPresenter:Lc8/Nq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/to;->listMenuPresenter:Lc8/Nq;

    invoke-virtual {p1, v0}, Lc8/Rq;->addMenuPresenter(Lc8/hr;)V

    goto :goto_0
.end method

.method setStyle(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1977
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1978
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1979
    .local v3, "widgetTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1982
    sget v4, Lcom/youku/phone/R$attr;->actionBarPopupTheme:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1983
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_0

    .line 1984
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1988
    :cond_0
    sget v4, Lcom/youku/phone/R$attr;->panelMenuListTheme:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1989
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_1

    .line 1990
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1995
    :goto_0
    new-instance v1, Lc8/nq;

    invoke-direct {v1, p1, v6}, Lc8/nq;-><init>(Landroid/content/Context;I)V

    .line 1996
    .end local p1    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1998
    iput-object v1, p0, Lc8/to;->listPresenterContext:Landroid/content/Context;

    .line 2000
    sget-object v4, Lcom/youku/phone/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v1, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2001
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/youku/phone/R$styleable;->AppCompatTheme_panelBackground:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lc8/to;->background:I

    .line 2003
    sget v4, Lcom/youku/phone/R$styleable;->AppCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lc8/to;->windowAnimations:I

    .line 2005
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2006
    return-void

    .line 1992
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "context":Landroid/content/Context;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    sget v4, Lcom/youku/phone/R$style;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method
