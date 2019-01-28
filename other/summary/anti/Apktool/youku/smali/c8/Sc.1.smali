.class public Lc8/Sc;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BottomNavigationView$SavedState;,
        Lc8/Pc;,
        Lc8/Qc;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I

.field private static final MENU_PRESENTER_ID:I = 0x1


# instance fields
.field private final mMenu:Lc8/Rq;

.field private mMenuInflater:Landroid/view/MenuInflater;

.field private final mMenuView:Lc8/Hb;

.field private final mPresenter:Lc8/Jb;

.field private mReselectedListener:Lc8/Pc;

.field private mSelectedListener:Lc8/Qc;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Lc8/Sc;->CHECKED_STATE_SET:[I

    .line 99
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lc8/Sc;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Sc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/Sc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v7, 0x1010038

    const/4 v4, -0x2

    const/4 v6, 0x0

    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    new-instance v3, Lc8/Jb;

    invoke-direct {v3}, Lc8/Jb;-><init>()V

    iput-object v3, p0, Lc8/Sc;->mPresenter:Lc8/Jb;

    .line 122
    invoke-static {p1}, Lc8/Ue;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 125
    new-instance v3, Lc8/Fb;

    invoke-direct {v3, p1}, Lc8/Fb;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lc8/Sc;->mMenu:Lc8/Rq;

    .line 127
    new-instance v3, Lc8/Hb;

    invoke-direct {v3, p1}, Lc8/Hb;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lc8/Sc;->mMenuView:Lc8/Hb;

    .line 128
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 131
    iget-object v3, p0, Lc8/Sc;->mMenuView:Lc8/Hb;

    invoke-virtual {v3, v2}, Lc8/Hb;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v3, p0, Lc8/Sc;->mPresenter:Lc8/Jb;

    iget-object v4, p0, Lc8/Sc;->mMenuView:Lc8/Hb;

    invoke-virtual {v3, v4}, Lc8/Jb;->setBottomNavigationMenuView(Lc8/Hb;)V

    .line 134
    iget-object v3, p0, Lc8/Sc;->mPresenter:Lc8/Jb;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lc8/Jb;->setId(I)V

    .line 135
    iget-object v3, p0, Lc8/Sc;->mMenuView:Lc8/Hb;

    iget-object v4, p0, Lc8/Sc;->mPresenter:Lc8/Jb;

    invoke-virtual {v3, v4}, Lc8/Hb;->setPresenter(Lc8/Jb;)V

    .line 136
    iget-object v3, p0, Lc8/Sc;->mMenu:Lc8/Rq;

    iget-object v4, p0, Lc8/Sc;->mPresenter:Lc8/Jb;

    invoke-virtual {v3, v4}, Lc8/Rq;->addMenuPresenter(Lc8/hr;)V

    .line 137
    iget-object v3, p0, Lc8/Sc;->mPresenter:Lc8/Jb;

    invoke-virtual {p0}, Lc8/Sc;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lc8/Sc;->mMenu:Lc8/Rq;

    invoke-virtual {v3, v4, v5}, Lc8/Jb;->initForMenu(Landroid/content/Context;Lc8/Rq;)V

    .line 140
    sget-object v3, Lcom/youku/phone/R$styleable;->BottomNavigationView:[I

    sget v4, Lcom/youku/phone/R$style;->Widget_Design_BottomNavigationView:I

    invoke-static {p1, p2, v3, p3, v4}, Lc8/cx;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lc8/cx;

    move-result-object v0

    .line 144
    .local v0, "a":Lc8/cx;
    sget v3, Lcom/youku/phone/R$styleable;->BottomNavigationView_itemIconTint:I

    invoke-virtual {v0, v3}, Lc8/cx;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 145
    iget-object v3, p0, Lc8/Sc;->mMenuView:Lc8/Hb;

    sget v4, Lcom/youku/phone/R$styleable;->BottomNavigationView_itemIconTint:I

    .line 146
    invoke-virtual {v0, v4}, Lc8/cx;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 145
    invoke-virtual {v3, v4}, Lc8/Hb;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 151
    :goto_0
    sget v3, Lcom/youku/phone/R$styleable;->BottomNavigationView_itemTextColor:I

    invoke-virtual {v0, v3}, Lc8/cx;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 152
    iget-object v3, p0, Lc8/Sc;->mMenuView:Lc8/Hb;

    sget v4, Lcom/youku/phone/R$styleable;->BottomNavigationView_itemTextColor:I

    .line 153
    invoke-virtual {v0, v4}, Lc8/cx;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 152
    invoke-virtual {v3, v4}, Lc8/Hb;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 158
    :goto_1
    sget v3, Lcom/youku/phone/R$styleable;->BottomNavigationView_elevation:I

    invoke-virtual {v0, v3}, Lc8/cx;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    sget v3, Lcom/youku/phone/R$styleable;->BottomNavigationView_elevation:I

    invoke-virtual {v0, v3, v6}, Lc8/cx;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 163
    :cond_0
    sget v3, Lcom/youku/phone/R$styleable;->BottomNavigationView_itemBackground:I

    invoke-virtual {v0, v3, v6}, Lc8/cx;->getResourceId(II)I

    move-result v1

    .line 164
    .local v1, "itemBackground":I
    iget-object v3, p0, Lc8/Sc;->mMenuView:Lc8/Hb;

    invoke-virtual {v3, v1}, Lc8/Hb;->setItemBackgroundRes(I)V

    .line 166
    sget v3, Lcom/youku/phone/R$styleable;->BottomNavigationView_menu:I

    invoke-virtual {v0, v3}, Lc8/cx;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    sget v3, Lcom/youku/phone/R$styleable;->BottomNavigationView_menu:I

    invoke-virtual {v0, v3, v6}, Lc8/cx;->getResourceId(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lc8/Sc;->inflateMenu(I)V

    .line 169
    :cond_1
    invoke-virtual {v0}, Lc8/cx;->recycle()V

    .line 171
    iget-object v3, p0, Lc8/Sc;->mMenuView:Lc8/Hb;

    invoke-virtual {p0, v3, v2}, Lc8/Sc;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_2

    .line 173
    invoke-direct {p0, p1}, Lc8/Sc;->addCompatibilityTopDivider(Landroid/content/Context;)V

    .line 176
    :cond_2
    iget-object v3, p0, Lc8/Sc;->mMenu:Lc8/Rq;

    new-instance v4, Lc8/Oc;

    invoke-direct {v4, p0}, Lc8/Oc;-><init>(Lc8/Sc;)V

    invoke-virtual {v3, v4}, Lc8/Rq;->setCallback(Lc8/Pq;)V

    .line 190
    return-void

    .line 148
    .end local v1    # "itemBackground":I
    :cond_3
    iget-object v3, p0, Lc8/Sc;->mMenuView:Lc8/Hb;

    .line 149
    invoke-direct {p0, v7}, Lc8/Sc;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 148
    invoke-virtual {v3, v4}, Lc8/Hb;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 155
    :cond_4
    iget-object v3, p0, Lc8/Sc;->mMenuView:Lc8/Hb;

    .line 156
    invoke-direct {p0, v7}, Lc8/Sc;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 155
    invoke-virtual {v3, v4}, Lc8/Hb;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lc8/Sc;)Lc8/Pc;
    .locals 1
    .param p0, "x0"    # Lc8/Sc;

    .prologue
    .line 96
    iget-object v0, p0, Lc8/Sc;->mReselectedListener:Lc8/Pc;

    return-object v0
.end method

.method static synthetic access$100(Lc8/Sc;)Lc8/Qc;
    .locals 1
    .param p0, "x0"    # Lc8/Sc;

    .prologue
    .line 96
    iget-object v0, p0, Lc8/Sc;->mSelectedListener:Lc8/Qc;

    return-object v0
.end method

.method private addCompatibilityTopDivider(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 378
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 379
    .local v0, "divider":Landroid/view/View;
    sget v2, Lcom/youku/phone/R$color;->design_bottom_navigation_shadow_color:I

    .line 380
    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 379
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 381
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    .line 383
    invoke-virtual {p0}, Lc8/Sc;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/youku/phone/R$dimen;->design_bottom_navigation_shadow_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 385
    .local v1, "dividerParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    invoke-virtual {p0, v0}, Lc8/Sc;->addView(Landroid/view/View;)V

    .line 387
    return-void
.end method

.method private createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 11
    .param p1, "baseColorThemeAttr"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 397
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 398
    .local v3, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lc8/Sc;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, p1, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-object v4

    .line 402
    :cond_1
    invoke-virtual {p0}, Lc8/Sc;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    .line 401
    invoke-static {v5, v6}, Lc8/kp;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 403
    .local v0, "baseColor":Landroid/content/res/ColorStateList;
    invoke-virtual {p0}, Lc8/Sc;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Lcom/youku/phone/R$attr;->colorPrimary:I

    invoke-virtual {v5, v6, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 407
    iget v1, v3, Landroid/util/TypedValue;->data:I

    .line 408
    .local v1, "colorPrimary":I
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 409
    .local v2, "defaultColor":I
    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v7, [[I

    sget-object v6, Lc8/Sc;->DISABLED_STATE_SET:[I

    aput-object v6, v5, v9

    sget-object v6, Lc8/Sc;->CHECKED_STATE_SET:[I

    aput-object v6, v5, v8

    sget-object v6, Lc8/Sc;->EMPTY_STATE_SET:[I

    aput-object v6, v5, v10

    new-array v6, v7, [I

    sget-object v7, Lc8/Sc;->DISABLED_STATE_SET:[I

    .line 414
    invoke-virtual {v0, v7, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    aput v7, v6, v9

    aput v1, v6, v8

    aput v2, v6, v10

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto :goto_0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lc8/Sc;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Lc8/tq;

    invoke-virtual {p0}, Lc8/Sc;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/tq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Sc;->mMenuInflater:Landroid/view/MenuInflater;

    .line 393
    :cond_0
    iget-object v0, p0, Lc8/Sc;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public getItemBackgroundResource()I
    .locals 1
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lc8/Sc;->mMenuView:Lc8/Hb;

    invoke-virtual {v0}, Lc8/Hb;->getItemBackgroundRes()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lc8/Sc;->mMenuView:Lc8/Hb;

    invoke-virtual {v0}, Lc8/Hb;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lc8/Sc;->mMenuView:Lc8/Hb;

    invoke-virtual {v0}, Lc8/Hb;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getMaxItemCount()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x5

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lc8/Sc;->mMenu:Lc8/Rq;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lc8/Sc;->mMenuView:Lc8/Hb;

    invoke-virtual {v0}, Lc8/Hb;->getSelectedItemId()I

    move-result v0

    return v0
.end method

.method public inflateMenu(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    const/4 v2, 0x1

    .line 235
    iget-object v0, p0, Lc8/Sc;->mPresenter:Lc8/Jb;

    invoke-virtual {v0, v2}, Lc8/Jb;->setUpdateSuspended(Z)V

    .line 236
    invoke-direct {p0}, Lc8/Sc;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lc8/Sc;->mMenu:Lc8/Rq;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 237
    iget-object v0, p0, Lc8/Sc;->mPresenter:Lc8/Jb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/Jb;->setUpdateSuspended(Z)V

    .line 238
    iget-object v0, p0, Lc8/Sc;->mPresenter:Lc8/Jb;

    invoke-virtual {v0, v2}, Lc8/Jb;->updateMenuView(Z)V

    .line 239
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 431
    instance-of v1, p1, Landroid/support/design/widget/BottomNavigationView$SavedState;

    if-nez v1, :cond_0

    .line 432
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 438
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 435
    check-cast v0, Landroid/support/design/widget/BottomNavigationView$SavedState;

    .line 436
    .local v0, "savedState":Landroid/support/design/widget/BottomNavigationView$SavedState;
    invoke-virtual {v0}, Landroid/support/design/widget/BottomNavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 437
    iget-object v1, p0, Lc8/Sc;->mMenu:Lc8/Rq;

    iget-object v2, v0, Landroid/support/design/widget/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lc8/Rq;->restorePresenterStates(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 422
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 423
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/design/widget/BottomNavigationView$SavedState;

    invoke-direct {v0, v1}, Landroid/support/design/widget/BottomNavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 424
    .local v0, "savedState":Landroid/support/design/widget/BottomNavigationView$SavedState;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Landroid/support/design/widget/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    .line 425
    iget-object v2, p0, Lc8/Sc;->mMenu:Lc8/Rq;

    iget-object v3, v0, Landroid/support/design/widget/BottomNavigationView$SavedState;->menuPresenterState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lc8/Rq;->savePresenterStates(Landroid/os/Bundle;)V

    .line 426
    return-object v0
.end method

.method public setItemBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 318
    iget-object v0, p0, Lc8/Sc;->mMenuView:Lc8/Hb;

    invoke-virtual {v0, p1}, Lc8/Hb;->setItemBackgroundRes(I)V

    .line 319
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 268
    iget-object v0, p0, Lc8/Sc;->mMenuView:Lc8/Hb;

    invoke-virtual {v0, p1}, Lc8/Hb;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 269
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 295
    iget-object v0, p0, Lc8/Sc;->mMenuView:Lc8/Hb;

    invoke-virtual {v0, p1}, Lc8/Hb;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 296
    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lc8/Pc;)V
    .locals 0
    .param p1, "listener"    # Lc8/Pc;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 216
    iput-object p1, p0, Lc8/Sc;->mReselectedListener:Lc8/Pc;

    .line 217
    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lc8/Qc;)V
    .locals 0
    .param p1, "listener"    # Lc8/Qc;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 203
    iput-object p1, p0, Lc8/Sc;->mSelectedListener:Lc8/Qc;

    .line 204
    return-void
.end method

.method public setSelectedItemId(I)V
    .locals 4
    .param p1, "itemId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 339
    iget-object v1, p0, Lc8/Sc;->mMenu:Lc8/Rq;

    invoke-virtual {v1, p1}, Lc8/Rq;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 340
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 341
    iget-object v1, p0, Lc8/Sc;->mMenu:Lc8/Rq;

    iget-object v2, p0, Lc8/Sc;->mPresenter:Lc8/Jb;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lc8/Rq;->performItemAction(Landroid/view/MenuItem;Lc8/hr;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 345
    :cond_0
    return-void
.end method
