.class public Lc8/fw;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ew;,
        Lc8/cw;,
        Lc8/bw;,
        Lc8/dw;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static final sAlphaInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I

.field mMaxTabWidth:I

.field private mSelectedTabIndex:I

.field mStackedTabMaxWidth:I

.field private mTabClickListener:Lc8/cw;

.field mTabLayout:Lc8/ru;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field protected final mVisAnimListener:Lc8/ew;

.field protected mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lc8/fw;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v1, Lc8/ew;

    invoke-direct {v1, p0}, Lc8/ew;-><init>(Lc8/fw;)V

    iput-object v1, p0, Lc8/fw;->mVisAnimListener:Lc8/ew;

    .line 84
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lc8/fw;->setHorizontalScrollBarEnabled(Z)V

    .line 86
    invoke-static {p1}, Lc8/jq;->get(Landroid/content/Context;)Lc8/jq;

    move-result-object v0

    .line 87
    .local v0, "abp":Lc8/jq;
    invoke-virtual {v0}, Lc8/jq;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lc8/fw;->setContentHeight(I)V

    .line 88
    invoke-virtual {v0}, Lc8/jq;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lc8/fw;->mStackedTabMaxWidth:I

    .line 90
    invoke-direct {p0}, Lc8/fw;->createTabLayout()Lc8/ru;

    move-result-object v1

    iput-object v1, p0, Lc8/fw;->mTabLayout:Lc8/ru;

    .line 91
    iget-object v1, p0, Lc8/fw;->mTabLayout:Lc8/ru;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lc8/fw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    return-void
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .locals 4

    .prologue
    .line 214
    new-instance v0, Lc8/Ss;

    invoke-virtual {p0}, Lc8/fw;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/youku/phone/R$attr;->actionDropDownStyle:I

    invoke-direct {v0, v1, v2, v3}, Lc8/Ss;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 216
    .local v0, "spinner":Landroid/widget/Spinner;
    new-instance v1, Lc8/pu;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lc8/pu;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 220
    return-object v0
.end method

.method private createTabLayout()Lc8/ru;
    .locals 4

    .prologue
    .line 204
    new-instance v0, Lc8/ru;

    invoke-virtual {p0}, Lc8/fw;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/youku/phone/R$attr;->actionBarTabBarStyle:I

    invoke-direct {v0, v1, v2, v3}, Lc8/ru;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 206
    .local v0, "tabLayout":Lc8/ru;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/ru;->setMeasureWithLargestChildEnabled(Z)V

    .line 207
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lc8/ru;->setGravity(I)V

    .line 208
    new-instance v1, Lc8/pu;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lc8/pu;-><init>(II)V

    invoke-virtual {v0, v1}, Lc8/ru;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    return-object v0
.end method

.method private isCollapsed()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lc8/fw;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/fw;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performCollapse()V
    .locals 4

    .prologue
    .line 154
    invoke-direct {p0}, Lc8/fw;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lc8/fw;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 157
    invoke-direct {p0}, Lc8/fw;->createSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lc8/fw;->mTabSpinner:Landroid/widget/Spinner;

    .line 159
    :cond_1
    iget-object v0, p0, Lc8/fw;->mTabLayout:Lc8/ru;

    invoke-virtual {p0, v0}, Lc8/fw;->removeView(Landroid/view/View;)V

    .line 160
    iget-object v0, p0, Lc8/fw;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lc8/fw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v0, p0, Lc8/fw;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 163
    iget-object v0, p0, Lc8/fw;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Lc8/bw;

    invoke-direct {v1, p0}, Lc8/bw;-><init>(Lc8/fw;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 165
    :cond_2
    iget-object v0, p0, Lc8/fw;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lc8/fw;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lc8/fw;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/fw;->mTabSelector:Ljava/lang/Runnable;

    .line 169
    :cond_3
    iget-object v0, p0, Lc8/fw;->mTabSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lc8/fw;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private performExpand()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 173
    invoke-direct {p0}, Lc8/fw;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return v4

    .line 175
    :cond_0
    iget-object v0, p0, Lc8/fw;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lc8/fw;->removeView(Landroid/view/View;)V

    .line 176
    iget-object v0, p0, Lc8/fw;->mTabLayout:Lc8/ru;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lc8/fw;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v0, p0, Lc8/fw;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lc8/fw;->setTabSelected(I)V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Lc8/kn;IZ)V
    .locals 6
    .param p1, "tab"    # Lc8/kn;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    const/4 v5, 0x0

    .line 325
    invoke-virtual {p0, p1, v5}, Lc8/fw;->createTabView(Lc8/kn;Z)Lc8/dw;

    move-result-object v0

    .line 326
    .local v0, "tabView":Lc8/dw;
    iget-object v1, p0, Lc8/fw;->mTabLayout:Lc8/ru;

    new-instance v2, Lc8/pu;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Lc8/pu;-><init>(IIF)V

    invoke-virtual {v1, v0, p2, v2}, Lc8/ru;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 328
    iget-object v1, p0, Lc8/fw;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lc8/fw;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lc8/bw;

    invoke-virtual {v1}, Lc8/bw;->notifyDataSetChanged()V

    .line 331
    :cond_0
    if-eqz p3, :cond_1

    .line 332
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/dw;->setSelected(Z)V

    .line 334
    :cond_1
    iget-boolean v1, p0, Lc8/fw;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 335
    invoke-virtual {p0}, Lc8/fw;->requestLayout()V

    .line 337
    :cond_2
    return-void
.end method

.method public addTab(Lc8/kn;Z)V
    .locals 6
    .param p1, "tab"    # Lc8/kn;
    .param p2, "setSelected"    # Z

    .prologue
    const/4 v5, 0x0

    .line 310
    invoke-virtual {p0, p1, v5}, Lc8/fw;->createTabView(Lc8/kn;Z)Lc8/dw;

    move-result-object v0

    .line 311
    .local v0, "tabView":Lc8/dw;
    iget-object v1, p0, Lc8/fw;->mTabLayout:Lc8/ru;

    new-instance v2, Lc8/pu;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Lc8/pu;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Lc8/ru;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object v1, p0, Lc8/fw;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lc8/fw;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lc8/bw;

    invoke-virtual {v1}, Lc8/bw;->notifyDataSetChanged()V

    .line 316
    :cond_0
    if-eqz p2, :cond_1

    .line 317
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/dw;->setSelected(Z)V

    .line 319
    :cond_1
    iget-boolean v1, p0, Lc8/fw;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 320
    invoke-virtual {p0}, Lc8/fw;->requestLayout()V

    .line 322
    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 260
    iget-object v1, p0, Lc8/fw;->mTabLayout:Lc8/ru;

    invoke-virtual {v1, p1}, Lc8/ru;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 261
    .local v0, "tabView":Landroid/view/View;
    iget-object v1, p0, Lc8/fw;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lc8/fw;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lc8/fw;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 264
    :cond_0
    new-instance v1, Lc8/aw;

    invoke-direct {v1, p0, v0}, Lc8/aw;-><init>(Lc8/fw;Landroid/view/View;)V

    iput-object v1, p0, Lc8/fw;->mTabSelector:Ljava/lang/Runnable;

    .line 272
    iget-object v1, p0, Lc8/fw;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lc8/fw;->post(Ljava/lang/Runnable;)Z

    .line 273
    return-void
.end method

.method public animateToVisibility(I)V
    .locals 6
    .param p1, "visibility"    # I

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v2, 0x0

    .line 235
    iget-object v1, p0, Lc8/fw;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lc8/fw;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 238
    :cond_0
    if-nez p1, :cond_2

    .line 239
    invoke-virtual {p0}, Lc8/fw;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 243
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 244
    .local v0, "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 246
    sget-object v1, Lc8/fw;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 247
    iget-object v1, p0, Lc8/fw;->mVisAnimListener:Lc8/ew;

    invoke-virtual {v1, v0, p1}, Lc8/ew;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Lc8/ew;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 248
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 257
    :goto_0
    return-void

    .line 250
    .end local v0    # "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 251
    .restart local v0    # "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 253
    sget-object v1, Lc8/fw;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 254
    iget-object v1, p0, Lc8/fw;->mVisAnimListener:Lc8/ew;

    invoke-virtual {v1, v0, p1}, Lc8/ew;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Lc8/ew;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 255
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0
.end method

.method createTabView(Lc8/kn;Z)Lc8/dw;
    .locals 4
    .param p1, "tab"    # Lc8/kn;
    .param p2, "forAdapter"    # Z

    .prologue
    .line 293
    new-instance v0, Lc8/dw;

    invoke-virtual {p0}, Lc8/fw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lc8/dw;-><init>(Lc8/fw;Landroid/content/Context;Lc8/kn;Z)V

    .line 294
    .local v0, "tabView":Lc8/dw;
    if-eqz p2, :cond_0

    .line 295
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/dw;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lc8/fw;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lc8/dw;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    :goto_0
    return-object v0

    .line 299
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/dw;->setFocusable(Z)V

    .line 301
    iget-object v1, p0, Lc8/fw;->mTabClickListener:Lc8/cw;

    if-nez v1, :cond_1

    .line 302
    new-instance v1, Lc8/cw;

    invoke-direct {v1, p0}, Lc8/cw;-><init>(Lc8/fw;)V

    iput-object v1, p0, Lc8/fw;->mTabClickListener:Lc8/cw;

    .line 304
    :cond_1
    iget-object v1, p0, Lc8/fw;->mTabClickListener:Lc8/cw;

    invoke-virtual {v0, v1}, Lc8/dw;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 278
    iget-object v0, p0, Lc8/fw;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lc8/fw;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lc8/fw;->post(Ljava/lang/Runnable;)Z

    .line 282
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 227
    invoke-virtual {p0}, Lc8/fw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc8/jq;->get(Landroid/content/Context;)Lc8/jq;

    move-result-object v0

    .line 230
    .local v0, "abp":Lc8/jq;
    invoke-virtual {v0}, Lc8/jq;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lc8/fw;->setContentHeight(I)V

    .line 231
    invoke-virtual {v0}, Lc8/jq;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lc8/fw;->mStackedTabMaxWidth:I

    .line 232
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 287
    iget-object v0, p0, Lc8/fw;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lc8/fw;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lc8/fw;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 290
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lc8/dw;

    .line 372
    .local v0, "tabView":Lc8/dw;
    invoke-virtual {v0}, Lc8/dw;->getTab()Lc8/kn;

    move-result-object v1

    invoke-virtual {v1}, Lc8/kn;->select()V

    .line 373
    return-void
.end method

.method public onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 97
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 98
    .local v5, "widthMode":I
    if-ne v5, v10, :cond_2

    move v2, v6

    .line 99
    .local v2, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v2}, Lc8/fw;->setFillViewport(Z)V

    .line 101
    iget-object v8, p0, Lc8/fw;->mTabLayout:Lc8/ru;

    invoke-virtual {v8}, Lc8/ru;->getChildCount()I

    move-result v1

    .line 102
    .local v1, "childCount":I
    if-le v1, v6, :cond_4

    if-eq v5, v10, :cond_0

    const/high16 v8, -0x80000000

    if-ne v5, v8, :cond_4

    .line 104
    :cond_0
    const/4 v8, 0x2

    if-le v1, v8, :cond_3

    .line 105
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3ecccccd    # 0.4f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lc8/fw;->mMaxTabWidth:I

    .line 109
    :goto_1
    iget v8, p0, Lc8/fw;->mMaxTabWidth:I

    iget v9, p0, Lc8/fw;->mStackedTabMaxWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lc8/fw;->mMaxTabWidth:I

    .line 114
    :goto_2
    iget v8, p0, Lc8/fw;->mContentHeight:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 116
    if-nez v2, :cond_5

    iget-boolean v8, p0, Lc8/fw;->mAllowCollapse:Z

    if-eqz v8, :cond_5

    move v0, v6

    .line 118
    .local v0, "canCollapse":Z
    :goto_3
    if-eqz v0, :cond_7

    .line 120
    iget-object v6, p0, Lc8/fw;->mTabLayout:Lc8/ru;

    invoke-virtual {v6, v7, p2}, Lc8/ru;->measure(II)V

    .line 121
    iget-object v6, p0, Lc8/fw;->mTabLayout:Lc8/ru;

    invoke-virtual {v6}, Lc8/ru;->getMeasuredWidth()I

    move-result v6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    if-le v6, v7, :cond_6

    .line 122
    invoke-direct {p0}, Lc8/fw;->performCollapse()V

    .line 130
    :goto_4
    invoke-virtual {p0}, Lc8/fw;->getMeasuredWidth()I

    move-result v4

    .line 131
    .local v4, "oldWidth":I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 132
    invoke-virtual {p0}, Lc8/fw;->getMeasuredWidth()I

    move-result v3

    .line 134
    .local v3, "newWidth":I
    if-eqz v2, :cond_1

    if-eq v4, v3, :cond_1

    .line 136
    iget v6, p0, Lc8/fw;->mSelectedTabIndex:I

    invoke-virtual {p0, v6}, Lc8/fw;->setTabSelected(I)V

    .line 138
    :cond_1
    return-void

    .end local v0    # "canCollapse":Z
    .end local v1    # "childCount":I
    .end local v2    # "lockedExpanded":Z
    .end local v3    # "newWidth":I
    .end local v4    # "oldWidth":I
    :cond_2
    move v2, v7

    .line 98
    goto :goto_0

    .line 107
    .restart local v1    # "childCount":I
    .restart local v2    # "lockedExpanded":Z
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lc8/fw;->mMaxTabWidth:I

    goto :goto_1

    .line 111
    :cond_4
    const/4 v8, -0x1

    iput v8, p0, Lc8/fw;->mMaxTabWidth:I

    goto :goto_2

    :cond_5
    move v0, v7

    .line 116
    goto :goto_3

    .line 124
    .restart local v0    # "canCollapse":Z
    :cond_6
    invoke-direct {p0}, Lc8/fw;->performExpand()Z

    goto :goto_4

    .line 127
    :cond_7
    invoke-direct {p0}, Lc8/fw;->performExpand()Z

    goto :goto_4
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lc8/fw;->mTabLayout:Lc8/ru;

    invoke-virtual {v0}, Lc8/ru;->removeAllViews()V

    .line 361
    iget-object v0, p0, Lc8/fw;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lc8/fw;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lc8/bw;

    invoke-virtual {v0}, Lc8/bw;->notifyDataSetChanged()V

    .line 364
    :cond_0
    iget-boolean v0, p0, Lc8/fw;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {p0}, Lc8/fw;->requestLayout()V

    .line 367
    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 350
    iget-object v0, p0, Lc8/fw;->mTabLayout:Lc8/ru;

    invoke-virtual {v0, p1}, Lc8/ru;->removeViewAt(I)V

    .line 351
    iget-object v0, p0, Lc8/fw;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lc8/fw;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lc8/bw;

    invoke-virtual {v0}, Lc8/bw;->notifyDataSetChanged()V

    .line 354
    :cond_0
    iget-boolean v0, p0, Lc8/fw;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {p0}, Lc8/fw;->requestLayout()V

    .line 357
    :cond_1
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0
    .param p1, "allowCollapse"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lc8/fw;->mAllowCollapse:Z

    .line 151
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "contentHeight"    # I

    .prologue
    .line 199
    iput p1, p0, Lc8/fw;->mContentHeight:I

    .line 200
    invoke-virtual {p0}, Lc8/fw;->requestLayout()V

    .line 201
    return-void
.end method

.method public setTabSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 183
    iput p1, p0, Lc8/fw;->mSelectedTabIndex:I

    .line 184
    iget-object v4, p0, Lc8/fw;->mTabLayout:Lc8/ru;

    invoke-virtual {v4}, Lc8/ru;->getChildCount()I

    move-result v3

    .line 185
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 186
    iget-object v4, p0, Lc8/fw;->mTabLayout:Lc8/ru;

    invoke-virtual {v4, v1}, Lc8/ru;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_1

    const/4 v2, 0x1

    .line 188
    .local v2, "isSelected":Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 189
    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {p0, p1}, Lc8/fw;->animateToTab(I)V

    .line 185
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v2    # "isSelected":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 193
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lc8/fw;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v4, :cond_3

    if-ltz p1, :cond_3

    .line 194
    iget-object v4, p0, Lc8/fw;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 196
    :cond_3
    return-void
.end method

.method public updateTab(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lc8/fw;->mTabLayout:Lc8/ru;

    invoke-virtual {v0, p1}, Lc8/ru;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/dw;

    invoke-virtual {v0}, Lc8/dw;->update()V

    .line 341
    iget-object v0, p0, Lc8/fw;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lc8/fw;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lc8/bw;

    invoke-virtual {v0}, Lc8/bw;->notifyDataSetChanged()V

    .line 344
    :cond_0
    iget-boolean v0, p0, Lc8/fw;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {p0}, Lc8/fw;->requestLayout()V

    .line 347
    :cond_1
    return-void
.end method
