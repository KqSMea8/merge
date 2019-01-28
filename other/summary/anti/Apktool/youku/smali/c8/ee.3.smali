.class public Lc8/ee;
.super Lc8/ec;
.source "NavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/NavigationView$SavedState;,
        Lc8/ce;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I

.field private static final PRESENTER_NAVIGATION_VIEW_ID:I = 0x1


# instance fields
.field mListener:Lc8/ce;

.field private mMaxWidth:I

.field private final mMenu:Lc8/Lb;

.field private mMenuInflater:Landroid/view/MenuInflater;

.field private final mPresenter:Lc8/Zb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Lc8/ee;->CHECKED_STATE_SET:[I

    .line 83
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lc8/ee;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/ee;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/ee;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v8, 0x0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lc8/ec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    new-instance v6, Lc8/Zb;

    invoke-direct {v6}, Lc8/Zb;-><init>()V

    iput-object v6, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    .line 106
    invoke-static {p1}, Lc8/Ue;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 109
    new-instance v6, Lc8/Lb;

    invoke-direct {v6, p1}, Lc8/Lb;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lc8/ee;->mMenu:Lc8/Lb;

    .line 112
    sget-object v6, Lcom/youku/phone/R$styleable;->NavigationView:[I

    sget v7, Lcom/youku/phone/R$style;->Widget_Design_NavigationView:I

    invoke-static {p1, p2, v6, p3, v7}, Lc8/cx;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lc8/cx;

    move-result-object v0

    .line 116
    .local v0, "a":Lc8/cx;
    sget v6, Lcom/youku/phone/R$styleable;->NavigationView_android_background:I

    .line 117
    invoke-virtual {v0, v6}, Lc8/cx;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 116
    invoke-static {p0, v6}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 118
    sget v6, Lcom/youku/phone/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v0, v6}, Lc8/cx;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 119
    sget v6, Lcom/youku/phone/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v0, v6, v8}, Lc8/cx;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    invoke-static {p0, v6}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 122
    :cond_0
    sget v6, Lcom/youku/phone/R$styleable;->NavigationView_android_fitsSystemWindows:I

    .line 123
    invoke-virtual {v0, v6, v8}, Lc8/cx;->getBoolean(IZ)Z

    move-result v6

    .line 122
    invoke-static {p0, v6}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 125
    sget v6, Lcom/youku/phone/R$styleable;->NavigationView_android_maxWidth:I

    invoke-virtual {v0, v6, v8}, Lc8/cx;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lc8/ee;->mMaxWidth:I

    .line 128
    sget v6, Lcom/youku/phone/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v0, v6}, Lc8/cx;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 129
    sget v6, Lcom/youku/phone/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v0, v6}, Lc8/cx;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 134
    .local v2, "itemIconTint":Landroid/content/res/ColorStateList;
    :goto_0
    const/4 v5, 0x0

    .line 135
    .local v5, "textAppearanceSet":Z
    const/4 v4, 0x0

    .line 136
    .local v4, "textAppearance":I
    sget v6, Lcom/youku/phone/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v0, v6}, Lc8/cx;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 137
    sget v6, Lcom/youku/phone/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v0, v6, v8}, Lc8/cx;->getResourceId(II)I

    move-result v4

    .line 138
    const/4 v5, 0x1

    .line 141
    :cond_1
    const/4 v3, 0x0

    .line 142
    .local v3, "itemTextColor":Landroid/content/res/ColorStateList;
    sget v6, Lcom/youku/phone/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v0, v6}, Lc8/cx;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 143
    sget v6, Lcom/youku/phone/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v0, v6}, Lc8/cx;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 146
    :cond_2
    if-nez v5, :cond_3

    if-nez v3, :cond_3

    .line 148
    const v6, 0x1010036

    invoke-direct {p0, v6}, Lc8/ee;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 151
    :cond_3
    sget v6, Lcom/youku/phone/R$styleable;->NavigationView_itemBackground:I

    invoke-virtual {v0, v6}, Lc8/cx;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 153
    .local v1, "itemBackground":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lc8/ee;->mMenu:Lc8/Lb;

    new-instance v7, Lc8/be;

    invoke-direct {v7, p0}, Lc8/be;-><init>(Lc8/ee;)V

    invoke-virtual {v6, v7}, Lc8/Lb;->setCallback(Lc8/Pq;)V

    .line 162
    iget-object v6, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lc8/Zb;->setId(I)V

    .line 163
    iget-object v6, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    iget-object v7, p0, Lc8/ee;->mMenu:Lc8/Lb;

    invoke-virtual {v6, p1, v7}, Lc8/Zb;->initForMenu(Landroid/content/Context;Lc8/Rq;)V

    .line 164
    iget-object v6, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    invoke-virtual {v6, v2}, Lc8/Zb;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 165
    if-eqz v5, :cond_4

    .line 166
    iget-object v6, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    invoke-virtual {v6, v4}, Lc8/Zb;->setItemTextAppearance(I)V

    .line 168
    :cond_4
    iget-object v6, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    invoke-virtual {v6, v3}, Lc8/Zb;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 169
    iget-object v6, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    invoke-virtual {v6, v1}, Lc8/Zb;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v6, p0, Lc8/ee;->mMenu:Lc8/Lb;

    iget-object v7, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    invoke-virtual {v6, v7}, Lc8/Lb;->addMenuPresenter(Lc8/hr;)V

    .line 171
    iget-object v6, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    invoke-virtual {v6, p0}, Lc8/Zb;->getMenuView(Landroid/view/ViewGroup;)Lc8/jr;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0, v6}, Lc8/ee;->addView(Landroid/view/View;)V

    .line 173
    sget v6, Lcom/youku/phone/R$styleable;->NavigationView_menu:I

    invoke-virtual {v0, v6}, Lc8/cx;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 174
    sget v6, Lcom/youku/phone/R$styleable;->NavigationView_menu:I

    invoke-virtual {v0, v6, v8}, Lc8/cx;->getResourceId(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lc8/ee;->inflateMenu(I)V

    .line 177
    :cond_5
    sget v6, Lcom/youku/phone/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v0, v6}, Lc8/cx;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 178
    sget v6, Lcom/youku/phone/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v0, v6, v8}, Lc8/cx;->getResourceId(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lc8/ee;->inflateHeaderView(I)Landroid/view/View;

    .line 181
    :cond_6
    invoke-virtual {v0}, Lc8/cx;->recycle()V

    .line 182
    return-void

    .line 131
    .end local v1    # "itemBackground":Landroid/graphics/drawable/Drawable;
    .end local v2    # "itemIconTint":Landroid/content/res/ColorStateList;
    .end local v3    # "itemTextColor":Landroid/content/res/ColorStateList;
    .end local v4    # "textAppearance":I
    .end local v5    # "textAppearanceSet":Z
    :cond_7
    const v6, 0x1010038

    invoke-direct {p0, v6}, Lc8/ee;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .restart local v2    # "itemIconTint":Landroid/content/res/ColorStateList;
    goto/16 :goto_0
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

    .line 418
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 419
    .local v3, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lc8/ee;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, p1, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-object v4

    .line 423
    :cond_1
    invoke-virtual {p0}, Lc8/ee;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    .line 422
    invoke-static {v5, v6}, Lc8/kp;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 424
    .local v0, "baseColor":Landroid/content/res/ColorStateList;
    invoke-virtual {p0}, Lc8/ee;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Lcom/youku/phone/R$attr;->colorPrimary:I

    invoke-virtual {v5, v6, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 428
    iget v1, v3, Landroid/util/TypedValue;->data:I

    .line 429
    .local v1, "colorPrimary":I
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 430
    .local v2, "defaultColor":I
    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v7, [[I

    sget-object v6, Lc8/ee;->DISABLED_STATE_SET:[I

    aput-object v6, v5, v9

    sget-object v6, Lc8/ee;->CHECKED_STATE_SET:[I

    aput-object v6, v5, v8

    sget-object v6, Lc8/ee;->EMPTY_STATE_SET:[I

    aput-object v6, v5, v10

    new-array v6, v7, [I

    sget-object v7, Lc8/ee;->DISABLED_STATE_SET:[I

    .line 435
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
    .line 411
    iget-object v0, p0, Lc8/ee;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 412
    new-instance v0, Lc8/tq;

    invoke-virtual {p0}, Lc8/ee;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/tq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/ee;->mMenuInflater:Landroid/view/MenuInflater;

    .line 414
    :cond_0
    iget-object v0, p0, Lc8/ee;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 278
    iget-object v0, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    invoke-virtual {v0, p1}, Lc8/Zb;->addHeaderView(Landroid/view/View;)V

    .line 279
    return-void
.end method

.method public getHeaderCount()I
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    invoke-virtual {v0}, Lc8/Zb;->getHeaderCount()I

    move-result v0

    return v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    invoke-virtual {v0, p1}, Lc8/Zb;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    invoke-virtual {v0}, Lc8/Zb;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    invoke-virtual {v0}, Lc8/Zb;->getItemTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    invoke-virtual {v0}, Lc8/Zb;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lc8/ee;->mMenu:Lc8/Lb;

    return-object v0
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .locals 1
    .param p1, "res"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 269
    iget-object v0, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    invoke-virtual {v0, p1}, Lc8/Zb;->inflateHeaderView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public inflateMenu(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 249
    iget-object v0, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/Zb;->setUpdateSuspended(Z)V

    .line 250
    invoke-direct {p0}, Lc8/ee;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lc8/ee;->mMenu:Lc8/Lb;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 251
    iget-object v0, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    invoke-virtual {v0, v2}, Lc8/Zb;->setUpdateSuspended(Z)V

    .line 252
    iget-object v0, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    invoke-virtual {v0, v2}, Lc8/Zb;->updateMenuView(Z)V

    .line 253
    return-void
.end method

.method protected onInsetsChanged(Landroid/support/v4/view/WindowInsetsCompat;)V
    .locals 1
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    invoke-virtual {v0, p1}, Lc8/Zb;->dispatchApplyWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)V

    .line 239
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 216
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 229
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Lc8/ec;->onMeasure(II)V

    .line 230
    return-void

    .line 222
    :sswitch_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lc8/ee;->mMaxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 221
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 223
    goto :goto_0

    .line 225
    :sswitch_2
    iget v0, p0, Lc8/ee;->mMaxWidth:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 216
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "savedState"    # Landroid/os/Parcelable;

    .prologue
    .line 195
    instance-of v1, p1, Landroid/support/design/widget/NavigationView$SavedState;

    if-nez v1, :cond_0

    .line 196
    invoke-super {p0, p1}, Lc8/ec;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 202
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 199
    check-cast v0, Landroid/support/design/widget/NavigationView$SavedState;

    .line 200
    .local v0, "state":Landroid/support/design/widget/NavigationView$SavedState;
    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lc8/ec;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 201
    iget-object v1, p0, Lc8/ee;->mMenu:Lc8/Lb;

    iget-object v2, v0, Landroid/support/design/widget/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lc8/Lb;->restorePresenterStates(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 186
    invoke-super {p0}, Lc8/ec;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 187
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/design/widget/NavigationView$SavedState;

    invoke-direct {v0, v1}, Landroid/support/design/widget/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 188
    .local v0, "state":Landroid/support/design/widget/NavigationView$SavedState;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Landroid/support/design/widget/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    .line 189
    iget-object v2, p0, Lc8/ee;->mMenu:Lc8/Lb;

    iget-object v3, v0, Landroid/support/design/widget/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lc8/Lb;->savePresenterStates(Landroid/os/Bundle;)V

    .line 190
    return-object v0
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 287
    iget-object v0, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    invoke-virtual {v0, p1}, Lc8/Zb;->removeHeaderView(Landroid/view/View;)V

    .line 288
    return-void
.end method

.method public setCheckedItem(I)V
    .locals 2
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 395
    iget-object v1, p0, Lc8/ee;->mMenu:Lc8/Lb;

    invoke-virtual {v1, p1}, Lc8/Lb;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 396
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 397
    iget-object v1, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    check-cast v0, Lc8/Vq;

    .end local v0    # "item":Landroid/view/MenuItem;
    invoke-virtual {v1, v0}, Lc8/Zb;->setCheckedItem(Lc8/Vq;)V

    .line 399
    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "itemBackground"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 386
    iget-object v0, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    invoke-virtual {v0, p1}, Lc8/Zb;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 387
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 376
    invoke-virtual {p0}, Lc8/ee;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/ee;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 377
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 330
    iget-object v0, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    invoke-virtual {v0, p1}, Lc8/Zb;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 331
    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 407
    iget-object v0, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    invoke-virtual {v0, p1}, Lc8/Zb;->setItemTextAppearance(I)V

    .line 408
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 353
    iget-object v0, p0, Lc8/ee;->mPresenter:Lc8/Zb;

    invoke-virtual {v0, p1}, Lc8/Zb;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 354
    return-void
.end method

.method public setNavigationItemSelectedListener(Lc8/ce;)V
    .locals 0
    .param p1, "listener"    # Lc8/ce;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 211
    iput-object p1, p0, Lc8/ee;->mListener:Lc8/ce;

    .line 212
    return-void
.end method
