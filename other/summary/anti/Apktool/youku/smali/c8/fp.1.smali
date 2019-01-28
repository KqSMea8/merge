.class public Lc8/fp;
.super Lc8/mn;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lc8/Cr;


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ep;,
        Lc8/dp;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ALLOW_SHOW_HIDE_ANIMATIONS:Z

.field private static final FADE_IN_DURATION_MS:J = 0xc8L

.field private static final FADE_OUT_DURATION_MS:J = 0x64L

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WindowDecorActionBar"

.field private static final sHideInterpolator:Landroid/view/animation/Interpolator;

.field private static final sShowInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field mActionMode:Lc8/dp;

.field private mActivity:Landroid/app/Activity;

.field mContainerView:Lc8/wr;

.field mContentAnimations:Z

.field mContentView:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field mContextView:Lc8/yr;

.field private mCurWindowVisibility:I

.field mCurrentShowAnim:Lc8/vq;

.field mDecorToolbar:Lc8/lt;

.field mDeferredDestroyActionMode:Lc8/lq;

.field mDeferredModeDestroyCallback:Lc8/kq;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayHomeAsUpSet:Z

.field private mHasEmbeddedTabs:Z

.field mHiddenByApp:Z

.field mHiddenBySystem:Z

.field final mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field mHideOnContentScroll:Z

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/in;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field mOverlayLayout:Lc8/Er;

.field private mSavedTabPosition:I

.field private mSelectedTab:Lc8/ep;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private mShowingForMode:Z

.field mTabScrollView:Lc8/fw;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/ep;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field final mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    const-class v0, Lc8/fp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lc8/fp;->$assertionsDisabled:Z

    .line 82
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lc8/fp;->sHideInterpolator:Landroid/view/animation/Interpolator;

    .line 83
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lc8/fp;->sShowInterpolator:Landroid/view/animation/Interpolator;

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lc8/fp;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    return-void

    :cond_0
    move v0, v2

    .line 77
    goto :goto_0

    :cond_1
    move v1, v2

    .line 88
    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "overlayMode"    # Z

    .prologue
    const/4 v3, 0x1

    .line 172
    invoke-direct {p0}, Lc8/mn;-><init>()V

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lc8/fp;->mTabs:Ljava/util/ArrayList;

    .line 105
    const/4 v2, -0x1

    iput v2, p0, Lc8/fp;->mSavedTabPosition:I

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lc8/fp;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 125
    const/4 v2, 0x0

    iput v2, p0, Lc8/fp;->mCurWindowVisibility:I

    .line 127
    iput-boolean v3, p0, Lc8/fp;->mContentAnimations:Z

    .line 132
    iput-boolean v3, p0, Lc8/fp;->mNowShowing:Z

    .line 138
    new-instance v2, Lc8/ap;

    invoke-direct {v2, p0}, Lc8/ap;-><init>(Lc8/fp;)V

    iput-object v2, p0, Lc8/fp;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 155
    new-instance v2, Lc8/bp;

    invoke-direct {v2, p0}, Lc8/bp;-><init>(Lc8/fp;)V

    iput-object v2, p0, Lc8/fp;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 163
    new-instance v2, Lc8/cp;

    invoke-direct {v2, p0}, Lc8/cp;-><init>(Lc8/fp;)V

    iput-object v2, p0, Lc8/fp;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .line 173
    iput-object p1, p0, Lc8/fp;->mActivity:Landroid/app/Activity;

    .line 174
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 175
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 176
    .local v0, "decor":Landroid/view/View;
    invoke-direct {p0, v0}, Lc8/fp;->init(Landroid/view/View;)V

    .line 177
    if-nez p2, :cond_0

    .line 178
    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lc8/fp;->mContentView:Landroid/view/View;

    .line 180
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v1, 0x1

    .line 182
    invoke-direct {p0}, Lc8/mn;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/fp;->mTabs:Ljava/util/ArrayList;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lc8/fp;->mSavedTabPosition:I

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/fp;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lc8/fp;->mCurWindowVisibility:I

    .line 127
    iput-boolean v1, p0, Lc8/fp;->mContentAnimations:Z

    .line 132
    iput-boolean v1, p0, Lc8/fp;->mNowShowing:Z

    .line 138
    new-instance v0, Lc8/ap;

    invoke-direct {v0, p0}, Lc8/ap;-><init>(Lc8/fp;)V

    iput-object v0, p0, Lc8/fp;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 155
    new-instance v0, Lc8/bp;

    invoke-direct {v0, p0}, Lc8/bp;-><init>(Lc8/fp;)V

    iput-object v0, p0, Lc8/fp;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 163
    new-instance v0, Lc8/cp;

    invoke-direct {v0, p0}, Lc8/cp;-><init>(Lc8/fp;)V

    iput-object v0, p0, Lc8/fp;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .line 183
    iput-object p1, p0, Lc8/fp;->mDialog:Landroid/app/Dialog;

    .line 184
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/fp;->init(Landroid/view/View;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "layout"    # Landroid/view/View;
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 192
    invoke-direct {p0}, Lc8/mn;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/fp;->mTabs:Ljava/util/ArrayList;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lc8/fp;->mSavedTabPosition:I

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/fp;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lc8/fp;->mCurWindowVisibility:I

    .line 127
    iput-boolean v1, p0, Lc8/fp;->mContentAnimations:Z

    .line 132
    iput-boolean v1, p0, Lc8/fp;->mNowShowing:Z

    .line 138
    new-instance v0, Lc8/ap;

    invoke-direct {v0, p0}, Lc8/ap;-><init>(Lc8/fp;)V

    iput-object v0, p0, Lc8/fp;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 155
    new-instance v0, Lc8/bp;

    invoke-direct {v0, p0}, Lc8/bp;-><init>(Lc8/fp;)V

    iput-object v0, p0, Lc8/fp;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 163
    new-instance v0, Lc8/cp;

    invoke-direct {v0, p0}, Lc8/cp;-><init>(Lc8/fp;)V

    iput-object v0, p0, Lc8/fp;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .line 193
    sget-boolean v0, Lc8/fp;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 194
    :cond_0
    invoke-direct {p0, p1}, Lc8/fp;->init(Landroid/view/View;)V

    .line 195
    return-void
.end method

.method static checkShowingFlags(ZZZ)Z
    .locals 1
    .param p0, "hiddenByApp"    # Z
    .param p1, "hiddenBySystem"    # Z
    .param p2, "showingForMode"    # Z

    .prologue
    const/4 v0, 0x1

    .line 739
    if-eqz p2, :cond_1

    .line 744
    :cond_0
    :goto_0
    return v0

    .line 741
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 742
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanupTabs()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lc8/fp;->mSelectedTab:Lc8/ep;

    if-eqz v0, :cond_0

    .line 425
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/fp;->selectTab(Lc8/kn;)V

    .line 427
    :cond_0
    iget-object v0, p0, Lc8/fp;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 428
    iget-object v0, p0, Lc8/fp;->mTabScrollView:Lc8/fw;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lc8/fp;->mTabScrollView:Lc8/fw;

    invoke-virtual {v0}, Lc8/fw;->removeAllTabs()V

    .line 431
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lc8/fp;->mSavedTabPosition:I

    .line 432
    return-void
.end method

.method private configureTab(Lc8/kn;I)V
    .locals 6
    .param p1, "tab"    # Lc8/kn;
    .param p2, "position"    # I

    .prologue
    .line 526
    move-object v3, p1

    check-cast v3, Lc8/ep;

    .line 527
    .local v3, "tabi":Lc8/ep;
    invoke-virtual {v3}, Lc8/ep;->getCallback()Lc8/ln;

    move-result-object v0

    .line 529
    .local v0, "callback":Lc8/ln;
    if-nez v0, :cond_0

    .line 530
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Action Bar Tab must have a Callback"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 533
    :cond_0
    invoke-virtual {v3, p2}, Lc8/ep;->setPosition(I)V

    .line 534
    iget-object v4, p0, Lc8/fp;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 536
    iget-object v4, p0, Lc8/fp;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 537
    .local v1, "count":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 538
    iget-object v4, p0, Lc8/fp;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/ep;

    invoke-virtual {v4, v2}, Lc8/ep;->setPosition(I)V

    .line 537
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    :cond_1
    return-void
.end method

.method private ensureTabsExist()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 290
    iget-object v1, p0, Lc8/fp;->mTabScrollView:Lc8/fw;

    if-eqz v1, :cond_0

    .line 311
    :goto_0
    return-void

    .line 294
    :cond_0
    new-instance v0, Lc8/fw;

    iget-object v1, p0, Lc8/fp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/fw;-><init>(Landroid/content/Context;)V

    .line 296
    .local v0, "tabScroller":Lc8/fw;
    iget-boolean v1, p0, Lc8/fp;->mHasEmbeddedTabs:Z

    if-eqz v1, :cond_1

    .line 297
    invoke-virtual {v0, v3}, Lc8/fw;->setVisibility(I)V

    .line 298
    iget-object v1, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v1, v0}, Lc8/lt;->setEmbeddedTabView(Lc8/fw;)V

    .line 310
    :goto_1
    iput-object v0, p0, Lc8/fp;->mTabScrollView:Lc8/fw;

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {p0}, Lc8/fp;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 301
    invoke-virtual {v0, v3}, Lc8/fw;->setVisibility(I)V

    .line 302
    iget-object v1, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 308
    :cond_2
    :goto_2
    iget-object v1, p0, Lc8/fp;->mContainerView:Lc8/wr;

    invoke-virtual {v1, v0}, Lc8/wr;->setTabContainer(Lc8/fw;)V

    goto :goto_1

    .line 306
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lc8/fw;->setVisibility(I)V

    goto :goto_2
.end method

.method private getDecorToolbar(Landroid/view/View;)Lc8/lt;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 240
    instance-of v0, p1, Lc8/lt;

    if-eqz v0, :cond_0

    .line 241
    check-cast p1, Lc8/lt;

    .line 243
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-object p1

    .line 242
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Lc8/kx;

    if-eqz v0, :cond_1

    .line 243
    check-cast p1, Lc8/kx;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lc8/kx;->getWrapper()Lc8/lt;

    move-result-object p1

    goto :goto_0

    .line 245
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string/jumbo v0, "null"

    goto :goto_1
.end method

.method private hideForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 692
    iget-boolean v0, p0, Lc8/fp;->mShowingForMode:Z

    if-eqz v0, :cond_1

    .line 693
    iput-boolean v1, p0, Lc8/fp;->mShowingForMode:Z

    .line 694
    iget-object v0, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    invoke-virtual {v0, v1}, Lc8/Er;->setShowingForActionMode(Z)V

    .line 697
    :cond_0
    invoke-direct {p0, v1}, Lc8/fp;->updateVisibility(Z)V

    .line 699
    :cond_1
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 11
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 198
    sget v5, Lcom/youku/phone/R$id;->decor_content_parent:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lc8/Er;

    iput-object v5, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    .line 199
    iget-object v5, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    if-eqz v5, :cond_0

    .line 200
    iget-object v5, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    invoke-virtual {v5, p0}, Lc8/Er;->setActionBarVisibilityCallback(Lc8/Cr;)V

    .line 202
    :cond_0
    sget v5, Lcom/youku/phone/R$id;->action_bar:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lc8/fp;->getDecorToolbar(Landroid/view/View;)Lc8/lt;

    move-result-object v5

    iput-object v5, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    .line 203
    sget v5, Lcom/youku/phone/R$id;->action_context_bar:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lc8/yr;

    iput-object v5, p0, Lc8/fp;->mContextView:Lc8/yr;

    .line 205
    sget v5, Lcom/youku/phone/R$id;->action_bar_container:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lc8/wr;

    iput-object v5, p0, Lc8/fp;->mContainerView:Lc8/wr;

    .line 208
    iget-object v5, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lc8/fp;->mContextView:Lc8/yr;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lc8/fp;->mContainerView:Lc8/wr;

    if-nez v5, :cond_2

    .line 209
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " can only be used "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "with a compatible window decor layout"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 213
    :cond_2
    iget-object v5, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v5}, Lc8/lt;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lc8/fp;->mContext:Landroid/content/Context;

    .line 216
    iget-object v5, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v5}, Lc8/lt;->getDisplayOptions()I

    move-result v2

    .line 217
    .local v2, "current":I
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_7

    move v4, v7

    .line 218
    .local v4, "homeAsUp":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 219
    iput-boolean v7, p0, Lc8/fp;->mDisplayHomeAsUpSet:Z

    .line 222
    :cond_3
    iget-object v5, p0, Lc8/fp;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lc8/jq;->get(Landroid/content/Context;)Lc8/jq;

    move-result-object v1

    .line 223
    .local v1, "abp":Lc8/jq;
    invoke-virtual {v1}, Lc8/jq;->enableHomeButtonByDefault()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_8

    :cond_4
    move v5, v7

    :goto_1
    invoke-virtual {p0, v5}, Lc8/fp;->setHomeButtonEnabled(Z)V

    .line 224
    invoke-virtual {v1}, Lc8/jq;->hasEmbeddedTabs()Z

    move-result v5

    invoke-direct {p0, v5}, Lc8/fp;->setHasEmbeddedTabs(Z)V

    .line 226
    iget-object v5, p0, Lc8/fp;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    sget-object v9, Lcom/youku/phone/R$styleable;->ActionBar:[I

    sget v10, Lcom/youku/phone/R$attr;->actionBarStyle:I

    invoke-virtual {v5, v8, v9, v10, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 229
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Lcom/youku/phone/R$styleable;->ActionBar_hideOnContentScroll:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 230
    invoke-virtual {p0, v7}, Lc8/fp;->setHideOnContentScrollEnabled(Z)V

    .line 232
    :cond_5
    sget v5, Lcom/youku/phone/R$styleable;->ActionBar_elevation:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 233
    .local v3, "elevation":I
    if-eqz v3, :cond_6

    .line 234
    int-to-float v5, v3

    invoke-virtual {p0, v5}, Lc8/fp;->setElevation(F)V

    .line 236
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 237
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "abp":Lc8/jq;
    .end local v3    # "elevation":I
    .end local v4    # "homeAsUp":Z
    :cond_7
    move v4, v6

    .line 217
    goto :goto_0

    .restart local v1    # "abp":Lc8/jq;
    .restart local v4    # "homeAsUp":Z
    :cond_8
    move v5, v6

    .line 223
    goto :goto_1
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 5
    .param p1, "hasEmbeddedTabs"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 265
    iput-boolean p1, p0, Lc8/fp;->mHasEmbeddedTabs:Z

    .line 267
    iget-boolean v3, p0, Lc8/fp;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_1

    .line 268
    iget-object v3, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v3, v4}, Lc8/lt;->setEmbeddedTabView(Lc8/fw;)V

    .line 269
    iget-object v3, p0, Lc8/fp;->mContainerView:Lc8/wr;

    iget-object v4, p0, Lc8/fp;->mTabScrollView:Lc8/fw;

    invoke-virtual {v3, v4}, Lc8/wr;->setTabContainer(Lc8/fw;)V

    .line 274
    :goto_0
    invoke-virtual {p0}, Lc8/fp;->getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 275
    .local v0, "isInTabMode":Z
    :goto_1
    iget-object v3, p0, Lc8/fp;->mTabScrollView:Lc8/fw;

    if-eqz v3, :cond_0

    .line 276
    if-eqz v0, :cond_3

    .line 277
    iget-object v3, p0, Lc8/fp;->mTabScrollView:Lc8/fw;

    invoke-virtual {v3, v2}, Lc8/fw;->setVisibility(I)V

    .line 278
    iget-object v3, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    if-eqz v3, :cond_0

    .line 279
    iget-object v3, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 285
    :cond_0
    :goto_2
    iget-object v4, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    iget-boolean v3, p0, Lc8/fp;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    move v3, v1

    :goto_3
    invoke-interface {v4, v3}, Lc8/lt;->setCollapsible(Z)V

    .line 286
    iget-object v3, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    iget-boolean v4, p0, Lc8/fp;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {v3, v1}, Lc8/Er;->setHasNonEmbeddedTabs(Z)V

    .line 287
    return-void

    .line 271
    .end local v0    # "isInTabMode":Z
    :cond_1
    iget-object v3, p0, Lc8/fp;->mContainerView:Lc8/wr;

    invoke-virtual {v3, v4}, Lc8/wr;->setTabContainer(Lc8/fw;)V

    .line 272
    iget-object v3, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    iget-object v4, p0, Lc8/fp;->mTabScrollView:Lc8/fw;

    invoke-interface {v3, v4}, Lc8/lt;->setEmbeddedTabView(Lc8/fw;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 274
    goto :goto_1

    .line 282
    .restart local v0    # "isInTabMode":Z
    :cond_3
    iget-object v3, p0, Lc8/fp;->mTabScrollView:Lc8/fw;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lc8/fw;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v2

    .line 285
    goto :goto_3

    :cond_5
    move v1, v2

    .line 286
    goto :goto_4
.end method

.method private shouldAnimateContextView()Z
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lc8/fp;->mContainerView:Lc8/wr;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private showForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 667
    iget-boolean v0, p0, Lc8/fp;->mShowingForMode:Z

    if-nez v0, :cond_1

    .line 668
    iput-boolean v1, p0, Lc8/fp;->mShowingForMode:Z

    .line 669
    iget-object v0, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    invoke-virtual {v0, v1}, Lc8/Er;->setShowingForActionMode(Z)V

    .line 672
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/fp;->updateVisibility(Z)V

    .line 674
    :cond_1
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 4
    .param p1, "fromSystem"    # Z

    .prologue
    .line 750
    iget-boolean v1, p0, Lc8/fp;->mHiddenByApp:Z

    iget-boolean v2, p0, Lc8/fp;->mHiddenBySystem:Z

    iget-boolean v3, p0, Lc8/fp;->mShowingForMode:Z

    invoke-static {v1, v2, v3}, Lc8/fp;->checkShowingFlags(ZZZ)Z

    move-result v0

    .line 753
    .local v0, "shown":Z
    if-eqz v0, :cond_1

    .line 754
    iget-boolean v1, p0, Lc8/fp;->mNowShowing:Z

    if-nez v1, :cond_0

    .line 755
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/fp;->mNowShowing:Z

    .line 756
    invoke-virtual {p0, p1}, Lc8/fp;->doShow(Z)V

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    iget-boolean v1, p0, Lc8/fp;->mNowShowing:Z

    if-eqz v1, :cond_0

    .line 760
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/fp;->mNowShowing:Z

    .line 761
    invoke-virtual {p0, p1}, Lc8/fp;->doHide(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Lc8/in;)V
    .locals 1
    .param p1, "listener"    # Lc8/in;

    .prologue
    .line 340
    iget-object v0, p0, Lc8/fp;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    return-void
.end method

.method public addTab(Lc8/kn;)V
    .locals 1
    .param p1, "tab"    # Lc8/kn;

    .prologue
    .line 544
    iget-object v0, p0, Lc8/fp;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lc8/fp;->addTab(Lc8/kn;Z)V

    .line 545
    return-void
.end method

.method public addTab(Lc8/kn;I)V
    .locals 1
    .param p1, "tab"    # Lc8/kn;
    .param p2, "position"    # I

    .prologue
    .line 549
    iget-object v0, p0, Lc8/fp;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lc8/fp;->addTab(Lc8/kn;IZ)V

    .line 550
    return-void
.end method

.method public addTab(Lc8/kn;IZ)V
    .locals 1
    .param p1, "tab"    # Lc8/kn;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 564
    invoke-direct {p0}, Lc8/fp;->ensureTabsExist()V

    .line 565
    iget-object v0, p0, Lc8/fp;->mTabScrollView:Lc8/fw;

    invoke-virtual {v0, p1, p2, p3}, Lc8/fw;->addTab(Lc8/kn;IZ)V

    .line 566
    invoke-direct {p0, p1, p2}, Lc8/fp;->configureTab(Lc8/kn;I)V

    .line 567
    if-eqz p3, :cond_0

    .line 568
    invoke-virtual {p0, p1}, Lc8/fp;->selectTab(Lc8/kn;)V

    .line 570
    :cond_0
    return-void
.end method

.method public addTab(Lc8/kn;Z)V
    .locals 1
    .param p1, "tab"    # Lc8/kn;
    .param p2, "setSelected"    # Z

    .prologue
    .line 554
    invoke-direct {p0}, Lc8/fp;->ensureTabsExist()V

    .line 555
    iget-object v0, p0, Lc8/fp;->mTabScrollView:Lc8/fw;

    invoke-virtual {v0, p1, p2}, Lc8/fw;->addTab(Lc8/kn;Z)V

    .line 556
    iget-object v0, p0, Lc8/fp;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lc8/fp;->configureTab(Lc8/kn;I)V

    .line 557
    if-eqz p2, :cond_0

    .line 558
    invoke-virtual {p0, p1}, Lc8/fp;->selectTab(Lc8/kn;)V

    .line 560
    :cond_0
    return-void
.end method

.method public animateToMode(Z)V
    .locals 12
    .param p1, "toActionMode"    # Z

    .prologue
    const-wide/16 v10, 0xc8

    const-wide/16 v8, 0x64

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 855
    if-eqz p1, :cond_0

    .line 856
    invoke-direct {p0}, Lc8/fp;->showForActionMode()V

    .line 861
    :goto_0
    invoke-direct {p0}, Lc8/fp;->shouldAnimateContextView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 863
    if-eqz p1, :cond_1

    .line 868
    iget-object v3, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v3, v5, v8, v9}, Lc8/lt;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 870
    .local v1, "fadeOut":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v3, p0, Lc8/fp;->mContextView:Lc8/yr;

    invoke-virtual {v3, v4, v10, v11}, Lc8/yr;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 878
    .local v0, "fadeIn":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :goto_1
    new-instance v2, Lc8/vq;

    invoke-direct {v2}, Lc8/vq;-><init>()V

    .line 879
    .local v2, "set":Lc8/vq;
    invoke-virtual {v2, v1, v0}, Lc8/vq;->playSequentially(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lc8/vq;

    .line 880
    invoke-virtual {v2}, Lc8/vq;->start()V

    .line 891
    .end local v0    # "fadeIn":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v1    # "fadeOut":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v2    # "set":Lc8/vq;
    :goto_2
    return-void

    .line 858
    :cond_0
    invoke-direct {p0}, Lc8/fp;->hideForActionMode()V

    goto :goto_0

    .line 873
    :cond_1
    iget-object v3, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v3, v4, v10, v11}, Lc8/lt;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 875
    .restart local v0    # "fadeIn":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v3, p0, Lc8/fp;->mContextView:Lc8/yr;

    invoke-virtual {v3, v6, v8, v9}, Lc8/yr;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .restart local v1    # "fadeOut":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    goto :goto_1

    .line 882
    .end local v0    # "fadeIn":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v1    # "fadeOut":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_2
    if-eqz p1, :cond_3

    .line 883
    iget-object v3, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v3, v5}, Lc8/lt;->setVisibility(I)V

    .line 884
    iget-object v3, p0, Lc8/fp;->mContextView:Lc8/yr;

    invoke-virtual {v3, v4}, Lc8/yr;->setVisibility(I)V

    goto :goto_2

    .line 886
    :cond_3
    iget-object v3, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v3, v4}, Lc8/lt;->setVisibility(I)V

    .line 887
    iget-object v3, p0, Lc8/fp;->mContextView:Lc8/yr;

    invoke-virtual {v3, v6}, Lc8/yr;->setVisibility(I)V

    goto :goto_2
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0}, Lc8/lt;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0}, Lc8/lt;->collapseActionView()V

    .line 956
    const/4 v0, 0x1

    .line 958
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method completeDeferredDestroyActionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 314
    iget-object v0, p0, Lc8/fp;->mDeferredModeDestroyCallback:Lc8/kq;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lc8/fp;->mDeferredModeDestroyCallback:Lc8/kq;

    iget-object v1, p0, Lc8/fp;->mDeferredDestroyActionMode:Lc8/lq;

    invoke-interface {v0, v1}, Lc8/kq;->onDestroyActionMode(Lc8/lq;)V

    .line 316
    iput-object v2, p0, Lc8/fp;->mDeferredDestroyActionMode:Lc8/lq;

    .line 317
    iput-object v2, p0, Lc8/fp;->mDeferredModeDestroyCallback:Lc8/kq;

    .line 319
    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 348
    iget-boolean v2, p0, Lc8/fp;->mLastMenuVisibility:Z

    if-ne p1, v2, :cond_1

    .line 357
    :cond_0
    return-void

    .line 351
    :cond_1
    iput-boolean p1, p0, Lc8/fp;->mLastMenuVisibility:Z

    .line 353
    iget-object v2, p0, Lc8/fp;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 354
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 355
    iget-object v2, p0, Lc8/fp;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/in;

    invoke-interface {v2, p1}, Lc8/in;->onMenuVisibilityChanged(Z)V

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public doHide(Z)V
    .locals 7
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v6, 0x1

    .line 817
    iget-object v4, p0, Lc8/fp;->mCurrentShowAnim:Lc8/vq;

    if-eqz v4, :cond_0

    .line 818
    iget-object v4, p0, Lc8/fp;->mCurrentShowAnim:Lc8/vq;

    invoke-virtual {v4}, Lc8/vq;->cancel()V

    .line 821
    :cond_0
    iget v4, p0, Lc8/fp;->mCurWindowVisibility:I

    if-nez v4, :cond_4

    sget-boolean v4, Lc8/fp;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lc8/fp;->mShowHideAnimationEnabled:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_4

    .line 823
    :cond_1
    iget-object v4, p0, Lc8/fp;->mContainerView:Lc8/wr;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 824
    iget-object v4, p0, Lc8/fp;->mContainerView:Lc8/wr;

    invoke-virtual {v4, v6}, Lc8/wr;->setTransitioning(Z)V

    .line 825
    new-instance v1, Lc8/vq;

    invoke-direct {v1}, Lc8/vq;-><init>()V

    .line 826
    .local v1, "anim":Lc8/vq;
    iget-object v4, p0, Lc8/fp;->mContainerView:Lc8/wr;

    invoke-virtual {v4}, Lc8/wr;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v2, v4

    .line 827
    .local v2, "endingY":F
    if-eqz p1, :cond_2

    .line 828
    const/4 v4, 0x2

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 829
    .local v3, "topLeft":[I
    iget-object v4, p0, Lc8/fp;->mContainerView:Lc8/wr;

    invoke-virtual {v4, v3}, Lc8/wr;->getLocationInWindow([I)V

    .line 830
    aget v4, v3, v6

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 832
    .end local v3    # "topLeft":[I
    :cond_2
    iget-object v4, p0, Lc8/fp;->mContainerView:Lc8/wr;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 833
    .local v0, "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v4, p0, Lc8/fp;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 834
    invoke-virtual {v1, v0}, Lc8/vq;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lc8/vq;

    .line 835
    iget-boolean v4, p0, Lc8/fp;->mContentAnimations:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lc8/fp;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 836
    iget-object v4, p0, Lc8/fp;->mContentView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v1, v4}, Lc8/vq;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lc8/vq;

    .line 838
    :cond_3
    sget-object v4, Lc8/fp;->sHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Lc8/vq;->setInterpolator(Landroid/view/animation/Interpolator;)Lc8/vq;

    .line 839
    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Lc8/vq;->setDuration(J)Lc8/vq;

    .line 840
    iget-object v4, p0, Lc8/fp;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    invoke-virtual {v1, v4}, Lc8/vq;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Lc8/vq;

    .line 841
    iput-object v1, p0, Lc8/fp;->mCurrentShowAnim:Lc8/vq;

    .line 842
    invoke-virtual {v1}, Lc8/vq;->start()V

    .line 846
    .end local v0    # "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v1    # "anim":Lc8/vq;
    .end local v2    # "endingY":F
    :goto_0
    return-void

    .line 844
    :cond_4
    iget-object v4, p0, Lc8/fp;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto :goto_0

    .line 828
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public doShow(Z)V
    .locals 7
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v6, 0x0

    .line 767
    iget-object v4, p0, Lc8/fp;->mCurrentShowAnim:Lc8/vq;

    if-eqz v4, :cond_0

    .line 768
    iget-object v4, p0, Lc8/fp;->mCurrentShowAnim:Lc8/vq;

    invoke-virtual {v4}, Lc8/vq;->cancel()V

    .line 770
    :cond_0
    iget-object v4, p0, Lc8/fp;->mContainerView:Lc8/wr;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lc8/wr;->setVisibility(I)V

    .line 772
    iget v4, p0, Lc8/fp;->mCurWindowVisibility:I

    if-nez v4, :cond_5

    sget-boolean v4, Lc8/fp;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lc8/fp;->mShowHideAnimationEnabled:Z

    if-nez v4, :cond_1

    if-eqz p1, :cond_5

    .line 775
    :cond_1
    iget-object v4, p0, Lc8/fp;->mContainerView:Lc8/wr;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 776
    iget-object v4, p0, Lc8/fp;->mContainerView:Lc8/wr;

    invoke-virtual {v4}, Lc8/wr;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v2, v4

    .line 777
    .local v2, "startingY":F
    if-eqz p1, :cond_2

    .line 778
    const/4 v4, 0x2

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 779
    .local v3, "topLeft":[I
    iget-object v4, p0, Lc8/fp;->mContainerView:Lc8/wr;

    invoke-virtual {v4, v3}, Lc8/wr;->getLocationInWindow([I)V

    .line 780
    const/4 v4, 0x1

    aget v4, v3, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 782
    .end local v3    # "topLeft":[I
    :cond_2
    iget-object v4, p0, Lc8/fp;->mContainerView:Lc8/wr;

    invoke-static {v4, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 783
    new-instance v1, Lc8/vq;

    invoke-direct {v1}, Lc8/vq;-><init>()V

    .line 784
    .local v1, "anim":Lc8/vq;
    iget-object v4, p0, Lc8/fp;->mContainerView:Lc8/wr;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 785
    .local v0, "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v4, p0, Lc8/fp;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 786
    invoke-virtual {v1, v0}, Lc8/vq;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lc8/vq;

    .line 787
    iget-boolean v4, p0, Lc8/fp;->mContentAnimations:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lc8/fp;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 788
    iget-object v4, p0, Lc8/fp;->mContentView:Landroid/view/View;

    invoke-static {v4, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 789
    iget-object v4, p0, Lc8/fp;->mContentView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v1, v4}, Lc8/vq;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lc8/vq;

    .line 791
    :cond_3
    sget-object v4, Lc8/fp;->sShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Lc8/vq;->setInterpolator(Landroid/view/animation/Interpolator;)Lc8/vq;

    .line 792
    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Lc8/vq;->setDuration(J)Lc8/vq;

    .line 800
    iget-object v4, p0, Lc8/fp;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    invoke-virtual {v1, v4}, Lc8/vq;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Lc8/vq;

    .line 801
    iput-object v1, p0, Lc8/fp;->mCurrentShowAnim:Lc8/vq;

    .line 802
    invoke-virtual {v1}, Lc8/vq;->start()V

    .line 811
    .end local v0    # "a":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .end local v1    # "anim":Lc8/vq;
    .end local v2    # "startingY":F
    :goto_0
    iget-object v4, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    if-eqz v4, :cond_4

    .line 812
    iget-object v4, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 814
    :cond_4
    return-void

    .line 804
    :cond_5
    iget-object v4, p0, Lc8/fp;->mContainerView:Lc8/wr;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 805
    iget-object v4, p0, Lc8/fp;->mContainerView:Lc8/wr;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 806
    iget-boolean v4, p0, Lc8/fp;->mContentAnimations:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lc8/fp;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_6

    .line 807
    iget-object v4, p0, Lc8/fp;->mContentView:Landroid/view/View;

    invoke-static {v4, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 809
    :cond_6
    iget-object v4, p0, Lc8/fp;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto :goto_0

    .line 778
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public enableContentAnimations(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 655
    iput-boolean p1, p0, Lc8/fp;->mContentAnimations:Z

    .line 656
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0}, Lc8/lt;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0}, Lc8/lt;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lc8/fp;->mContainerView:Lc8/wr;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lc8/fp;->mContainerView:Lc8/wr;

    invoke-virtual {v0}, Lc8/wr;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHideOffset()I
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    invoke-virtual {v0}, Lc8/Er;->getActionBarHideOffset()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0}, Lc8/lt;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1297
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1293
    :pswitch_0
    iget-object v0, p0, Lc8/fp;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 1295
    :pswitch_1
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0}, Lc8/lt;->getDropdownItemCount()I

    move-result v0

    goto :goto_0

    .line 1291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0}, Lc8/lt;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1279
    iget-object v1, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v1}, Lc8/lt;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1285
    :cond_0
    :goto_0
    return v0

    .line 1281
    :pswitch_0
    iget-object v1, p0, Lc8/fp;->mSelectedTab:Lc8/ep;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lc8/fp;->mSelectedTab:Lc8/ep;

    invoke-virtual {v0}, Lc8/ep;->getPosition()I

    move-result v0

    goto :goto_0

    .line 1283
    :pswitch_1
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0}, Lc8/lt;->getDropdownSelectedPosition()I

    move-result v0

    goto :goto_0

    .line 1279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedTab()Lc8/kn;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lc8/fp;->mSelectedTab:Lc8/ep;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0}, Lc8/lt;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Lc8/kn;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1338
    iget-object v0, p0, Lc8/fp;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/kn;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Lc8/fp;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 5

    .prologue
    .line 900
    iget-object v3, p0, Lc8/fp;->mThemedContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 901
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 902
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, Lc8/fp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 903
    .local v0, "currentTheme":Landroid/content/res/Resources$Theme;
    sget v3, Lcom/youku/phone/R$attr;->actionBarWidgetTheme:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 904
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 906
    .local v2, "targetThemeRes":I
    if-eqz v2, :cond_1

    .line 907
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lc8/fp;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lc8/fp;->mThemedContext:Landroid/content/Context;

    .line 912
    .end local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "targetThemeRes":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lc8/fp;->mThemedContext:Landroid/content/Context;

    return-object v3

    .line 909
    .restart local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    .restart local v2    # "targetThemeRes":I
    :cond_1
    iget-object v3, p0, Lc8/fp;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lc8/fp;->mThemedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0}, Lc8/lt;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 1353
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0}, Lc8/lt;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0}, Lc8/lt;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lc8/fp;->mHiddenByApp:Z

    if-nez v0, :cond_0

    .line 686
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/fp;->mHiddenByApp:Z

    .line 687
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/fp;->updateVisibility(Z)V

    .line 689
    :cond_0
    return-void
.end method

.method public hideForSystem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 702
    iget-boolean v0, p0, Lc8/fp;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    .line 703
    iput-boolean v1, p0, Lc8/fp;->mHiddenBySystem:Z

    .line 704
    invoke-direct {p0, v1}, Lc8/fp;->updateVisibility(Z)V

    .line 706
    :cond_0
    return-void
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    invoke-virtual {v0}, Lc8/Er;->isHideOnContentScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    .line 849
    invoke-virtual {p0}, Lc8/fp;->getHeight()I

    move-result v0

    .line 851
    .local v0, "height":I
    iget-boolean v1, p0, Lc8/fp;->mNowShowing:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/fp;->getHideOffset()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0}, Lc8/lt;->isTitleTruncated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newTab()Lc8/kn;
    .locals 1

    .prologue
    .line 574
    new-instance v0, Lc8/ep;

    invoke-direct {v0, p0}, Lc8/ep;-><init>(Lc8/fp;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 261
    iget-object v0, p0, Lc8/fp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/jq;->get(Landroid/content/Context;)Lc8/jq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/jq;->hasEmbeddedTabs()Z

    move-result v0

    invoke-direct {p0, v0}, Lc8/fp;->setHasEmbeddedTabs(Z)V

    .line 262
    return-void
.end method

.method public onContentScrollStarted()V
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lc8/fp;->mCurrentShowAnim:Lc8/vq;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lc8/fp;->mCurrentShowAnim:Lc8/vq;

    invoke-virtual {v0}, Lc8/vq;->cancel()V

    .line 944
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/fp;->mCurrentShowAnim:Lc8/vq;

    .line 946
    :cond_0
    return-void
.end method

.method public onContentScrollStopped()V
    .locals 0

    .prologue
    .line 950
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 322
    iput p1, p0, Lc8/fp;->mCurWindowVisibility:I

    .line 323
    return-void
.end method

.method public removeAllTabs()V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0}, Lc8/fp;->cleanupTabs()V

    .line 421
    return-void
.end method

.method public removeOnMenuVisibilityListener(Lc8/in;)V
    .locals 1
    .param p1, "listener"    # Lc8/in;

    .prologue
    .line 344
    iget-object v0, p0, Lc8/fp;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 345
    return-void
.end method

.method public removeTab(Lc8/kn;)V
    .locals 1
    .param p1, "tab"    # Lc8/kn;

    .prologue
    .line 579
    invoke-virtual {p1}, Lc8/kn;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lc8/fp;->removeTabAt(I)V

    .line 580
    return-void
.end method

.method public removeTabAt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 584
    iget-object v4, p0, Lc8/fp;->mTabScrollView:Lc8/fw;

    if-nez v4, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    iget-object v4, p0, Lc8/fp;->mSelectedTab:Lc8/ep;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lc8/fp;->mSelectedTab:Lc8/ep;

    .line 590
    invoke-virtual {v4}, Lc8/ep;->getPosition()I

    move-result v3

    .line 591
    .local v3, "selectedTabPosition":I
    :goto_1
    iget-object v4, p0, Lc8/fp;->mTabScrollView:Lc8/fw;

    invoke-virtual {v4, p1}, Lc8/fw;->removeTabAt(I)V

    .line 592
    iget-object v4, p0, Lc8/fp;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/ep;

    .line 593
    .local v2, "removedTab":Lc8/ep;
    if-eqz v2, :cond_2

    .line 594
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lc8/ep;->setPosition(I)V

    .line 597
    :cond_2
    iget-object v4, p0, Lc8/fp;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 598
    .local v1, "newTabCount":I
    move v0, p1

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 599
    iget-object v4, p0, Lc8/fp;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/ep;

    invoke-virtual {v4, v0}, Lc8/ep;->setPosition(I)V

    .line 598
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 590
    .end local v0    # "i":I
    .end local v1    # "newTabCount":I
    .end local v2    # "removedTab":Lc8/ep;
    .end local v3    # "selectedTabPosition":I
    :cond_3
    iget v3, p0, Lc8/fp;->mSavedTabPosition:I

    goto :goto_1

    .line 602
    .restart local v0    # "i":I
    .restart local v1    # "newTabCount":I
    .restart local v2    # "removedTab":Lc8/ep;
    .restart local v3    # "selectedTabPosition":I
    :cond_4
    if-ne v3, p1, :cond_0

    .line 603
    iget-object v4, p0, Lc8/fp;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p0, v4}, Lc8/fp;->selectTab(Lc8/kn;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lc8/fp;->mTabs:Ljava/util/ArrayList;

    const/4 v5, 0x0

    add-int/lit8 v6, p1, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/ep;

    goto :goto_3
.end method

.method public requestFocus()Z
    .locals 2

    .prologue
    .line 445
    iget-object v1, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v1}, Lc8/lt;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 446
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 448
    const/4 v1, 0x1

    .line 450
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public selectTab(Lc8/kn;)V
    .locals 4
    .param p1, "tab"    # Lc8/kn;

    .prologue
    const/4 v2, -0x1

    .line 609
    invoke-virtual {p0}, Lc8/fp;->getNavigationMode()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    .line 610
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc8/kn;->getPosition()I

    move-result v1

    :goto_0
    iput v1, p0, Lc8/fp;->mSavedTabPosition:I

    .line 642
    .end local p1    # "tab":Lc8/kn;
    :cond_0
    :goto_1
    return-void

    .restart local p1    # "tab":Lc8/kn;
    :cond_1
    move v1, v2

    .line 610
    goto :goto_0

    .line 615
    :cond_2
    iget-object v1, p0, Lc8/fp;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v1}, Lc8/lt;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 617
    iget-object v1, p0, Lc8/fp;->mActivity:Landroid/app/Activity;

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 618
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 623
    .local v0, "trans":Landroid/support/v4/app/FragmentTransaction;
    :goto_2
    iget-object v1, p0, Lc8/fp;->mSelectedTab:Lc8/ep;

    if-ne v1, p1, :cond_5

    .line 624
    iget-object v1, p0, Lc8/fp;->mSelectedTab:Lc8/ep;

    if-eqz v1, :cond_3

    .line 625
    iget-object v1, p0, Lc8/fp;->mSelectedTab:Lc8/ep;

    invoke-virtual {v1}, Lc8/ep;->getCallback()Lc8/ln;

    move-result-object v1

    iget-object v2, p0, Lc8/fp;->mSelectedTab:Lc8/ep;

    invoke-interface {v1, v2, v0}, Lc8/ln;->onTabReselected(Lc8/kn;Landroid/support/v4/app/FragmentTransaction;)V

    .line 626
    iget-object v1, p0, Lc8/fp;->mTabScrollView:Lc8/fw;

    invoke-virtual {p1}, Lc8/kn;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lc8/fw;->animateToTab(I)V

    .line 639
    .end local p1    # "tab":Lc8/kn;
    :cond_3
    :goto_3
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 640
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 620
    .end local v0    # "trans":Landroid/support/v4/app/FragmentTransaction;
    .restart local p1    # "tab":Lc8/kn;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "trans":Landroid/support/v4/app/FragmentTransaction;
    goto :goto_2

    .line 629
    :cond_5
    iget-object v1, p0, Lc8/fp;->mTabScrollView:Lc8/fw;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lc8/kn;->getPosition()I

    move-result v2

    :cond_6
    invoke-virtual {v1, v2}, Lc8/fw;->setTabSelected(I)V

    .line 630
    iget-object v1, p0, Lc8/fp;->mSelectedTab:Lc8/ep;

    if-eqz v1, :cond_7

    .line 631
    iget-object v1, p0, Lc8/fp;->mSelectedTab:Lc8/ep;

    invoke-virtual {v1}, Lc8/ep;->getCallback()Lc8/ln;

    move-result-object v1

    iget-object v2, p0, Lc8/fp;->mSelectedTab:Lc8/ep;

    invoke-interface {v1, v2, v0}, Lc8/ln;->onTabUnselected(Lc8/kn;Landroid/support/v4/app/FragmentTransaction;)V

    .line 633
    :cond_7
    check-cast p1, Lc8/ep;

    .end local p1    # "tab":Lc8/kn;
    iput-object p1, p0, Lc8/fp;->mSelectedTab:Lc8/ep;

    .line 634
    iget-object v1, p0, Lc8/fp;->mSelectedTab:Lc8/ep;

    if-eqz v1, :cond_3

    .line 635
    iget-object v1, p0, Lc8/fp;->mSelectedTab:Lc8/ep;

    invoke-virtual {v1}, Lc8/ep;->getCallback()Lc8/ln;

    move-result-object v1

    iget-object v2, p0, Lc8/fp;->mSelectedTab:Lc8/ep;

    invoke-interface {v1, v2, v0}, Lc8/ln;->onTabSelected(Lc8/kn;Landroid/support/v4/app/FragmentTransaction;)V

    goto :goto_3
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 473
    iget-object v0, p0, Lc8/fp;->mContainerView:Lc8/wr;

    invoke-virtual {v0, p1}, Lc8/wr;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 474
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 361
    invoke-virtual {p0}, Lc8/fp;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    .line 362
    invoke-interface {v1}, Lc8/lt;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    .line 361
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/fp;->setCustomView(Landroid/view/View;)V

    .line 363
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1263
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0, p1}, Lc8/lt;->setCustomView(Landroid/view/View;)V

    .line 1264
    return-void
.end method

.method public setCustomView(Landroid/view/View;Lc8/gn;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Lc8/gn;

    .prologue
    .line 1268
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1269
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0, p1}, Lc8/lt;->setCustomView(Landroid/view/View;)V

    .line 1270
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1371
    iget-boolean v0, p0, Lc8/fp;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_0

    .line 1372
    invoke-virtual {p0, p1}, Lc8/fp;->setDisplayHomeAsUpEnabled(Z)V

    .line 1374
    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    const/4 v1, 0x4

    .line 377
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lc8/fp;->setDisplayOptions(II)V

    .line 378
    return-void

    .line 377
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    .line 458
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/fp;->mDisplayHomeAsUpSet:Z

    .line 461
    :cond_0
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0, p1}, Lc8/lt;->setDisplayOptions(I)V

    .line 462
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 465
    iget-object v1, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v1}, Lc8/lt;->getDisplayOptions()I

    move-result v0

    .line 466
    .local v0, "current":I
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 467
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/fp;->mDisplayHomeAsUpSet:Z

    .line 469
    :cond_0
    iget-object v1, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lc8/lt;->setDisplayOptions(I)V

    .line 470
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .prologue
    const/16 v1, 0x10

    .line 387
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lc8/fp;->setDisplayOptions(II)V

    .line 388
    return-void

    .line 387
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .prologue
    const/4 v1, 0x2

    .line 372
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lc8/fp;->setDisplayOptions(II)V

    .line 373
    return-void

    .line 372
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .prologue
    const/16 v1, 0x8

    .line 382
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lc8/fp;->setDisplayOptions(II)V

    .line 383
    return-void

    .line 382
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2
    .param p1, "useLogo"    # Z

    .prologue
    const/4 v1, 0x1

    .line 367
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lc8/fp;->setDisplayOptions(II)V

    .line 368
    return-void

    .line 367
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 252
    iget-object v0, p0, Lc8/fp;->mContainerView:Lc8/wr;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 253
    return-void
.end method

.method public setHideOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 730
    if-eqz p1, :cond_0

    iget-object v0, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    invoke-virtual {v0}, Lc8/Er;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_0
    iget-object v0, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    invoke-virtual {v0, p1}, Lc8/Er;->setActionBarHideOffset(I)V

    .line 735
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 2
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 710
    if-eqz p1, :cond_0

    iget-object v0, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    invoke-virtual {v0}, Lc8/Er;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_0
    iput-boolean p1, p0, Lc8/fp;->mHideOnContentScroll:Z

    .line 715
    iget-object v0, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    invoke-virtual {v0, p1}, Lc8/Er;->setHideOnContentScrollEnabled(Z)V

    .line 716
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 937
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0, p1}, Lc8/lt;->setNavigationContentDescription(I)V

    .line 938
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 932
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0, p1}, Lc8/lt;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 933
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 927
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0, p1}, Lc8/lt;->setNavigationIcon(I)V

    .line 928
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 922
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0, p1}, Lc8/lt;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 923
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 392
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0, p1}, Lc8/lt;->setHomeButtonEnabled(Z)V

    .line 393
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1344
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0, p1}, Lc8/lt;->setIcon(I)V

    .line 1345
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1349
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0, p1}, Lc8/lt;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1350
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lc8/jn;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Lc8/jn;

    .prologue
    .line 1274
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    new-instance v1, Lc8/Ao;

    invoke-direct {v1, p2}, Lc8/Ao;-><init>(Lc8/jn;)V

    invoke-interface {v0, p1, v1}, Lc8/lt;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1275
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1358
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0, p1}, Lc8/lt;->setLogo(I)V

    .line 1359
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1363
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0, p1}, Lc8/lt;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1364
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 1308
    iget-object v1, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v1}, Lc8/lt;->getNavigationMode()I

    move-result v0

    .line 1309
    .local v0, "oldMode":I
    packed-switch v0, :pswitch_data_0

    .line 1316
    :goto_0
    if-eq v0, p1, :cond_0

    iget-boolean v1, p0, Lc8/fp;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_0

    .line 1317
    iget-object v1, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    if-eqz v1, :cond_0

    .line 1318
    iget-object v1, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 1321
    :cond_0
    iget-object v1, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v1, p1}, Lc8/lt;->setNavigationMode(I)V

    .line 1322
    packed-switch p1, :pswitch_data_1

    .line 1332
    :cond_1
    :goto_1
    iget-object v4, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    if-ne p1, v6, :cond_2

    iget-boolean v1, p0, Lc8/fp;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Lc8/lt;->setCollapsible(Z)V

    .line 1333
    iget-object v1, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    if-ne p1, v6, :cond_3

    iget-boolean v4, p0, Lc8/fp;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_3

    :goto_3
    invoke-virtual {v1, v2}, Lc8/Er;->setHasNonEmbeddedTabs(Z)V

    .line 1334
    return-void

    .line 1311
    :pswitch_0
    invoke-virtual {p0}, Lc8/fp;->getSelectedNavigationIndex()I

    move-result v1

    iput v1, p0, Lc8/fp;->mSavedTabPosition:I

    .line 1312
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lc8/fp;->selectTab(Lc8/kn;)V

    .line 1313
    iget-object v1, p0, Lc8/fp;->mTabScrollView:Lc8/fw;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lc8/fw;->setVisibility(I)V

    goto :goto_0

    .line 1324
    :pswitch_1
    invoke-direct {p0}, Lc8/fp;->ensureTabsExist()V

    .line 1325
    iget-object v1, p0, Lc8/fp;->mTabScrollView:Lc8/fw;

    invoke-virtual {v1, v3}, Lc8/fw;->setVisibility(I)V

    .line 1326
    iget v1, p0, Lc8/fp;->mSavedTabPosition:I

    if-eq v1, v5, :cond_1

    .line 1327
    iget v1, p0, Lc8/fp;->mSavedTabPosition:I

    invoke-virtual {p0, v1}, Lc8/fp;->setSelectedNavigationItem(I)V

    .line 1328
    iput v5, p0, Lc8/fp;->mSavedTabPosition:I

    goto :goto_1

    :cond_2
    move v1, v3

    .line 1332
    goto :goto_2

    :cond_3
    move v2, v3

    .line 1333
    goto :goto_3

    .line 1309
    .line 1322
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 406
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0}, Lc8/lt;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 414
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :pswitch_0
    iget-object v0, p0, Lc8/fp;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/kn;

    invoke-virtual {p0, v0}, Lc8/fp;->selectTab(Lc8/kn;)V

    .line 412
    :goto_0
    return-void

    .line 411
    :pswitch_1
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0, p1}, Lc8/lt;->setDropdownSelectedPosition(I)V

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 333
    iput-boolean p1, p0, Lc8/fp;->mShowHideAnimationEnabled:Z

    .line 334
    if-nez p1, :cond_0

    iget-object v0, p0, Lc8/fp;->mCurrentShowAnim:Lc8/vq;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lc8/fp;->mCurrentShowAnim:Lc8/vq;

    invoke-virtual {v0}, Lc8/vq;->cancel()V

    .line 337
    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 482
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 477
    iget-object v0, p0, Lc8/fp;->mContainerView:Lc8/wr;

    invoke-virtual {v0, p1}, Lc8/wr;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    .line 478
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 402
    iget-object v0, p0, Lc8/fp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/fp;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 403
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 454
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0, p1}, Lc8/lt;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 455
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 397
    iget-object v0, p0, Lc8/fp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/fp;->setTitle(Ljava/lang/CharSequence;)V

    .line 398
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 435
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0, p1}, Lc8/lt;->setTitle(Ljava/lang/CharSequence;)V

    .line 436
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 440
    iget-object v0, p0, Lc8/fp;->mDecorToolbar:Lc8/lt;

    invoke-interface {v0, p1}, Lc8/lt;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 441
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 660
    iget-boolean v0, p0, Lc8/fp;->mHiddenByApp:Z

    if-eqz v0, :cond_0

    .line 661
    iput-boolean v1, p0, Lc8/fp;->mHiddenByApp:Z

    .line 662
    invoke-direct {p0, v1}, Lc8/fp;->updateVisibility(Z)V

    .line 664
    :cond_0
    return-void
.end method

.method public showForSystem()V
    .locals 1

    .prologue
    .line 677
    iget-boolean v0, p0, Lc8/fp;->mHiddenBySystem:Z

    if-eqz v0, :cond_0

    .line 678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/fp;->mHiddenBySystem:Z

    .line 679
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc8/fp;->updateVisibility(Z)V

    .line 681
    :cond_0
    return-void
.end method

.method public startActionMode(Lc8/kq;)Lc8/lq;
    .locals 3
    .param p1, "callback"    # Lc8/kq;

    .prologue
    .line 505
    iget-object v1, p0, Lc8/fp;->mActionMode:Lc8/dp;

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lc8/fp;->mActionMode:Lc8/dp;

    invoke-virtual {v1}, Lc8/dp;->finish()V

    .line 509
    :cond_0
    iget-object v1, p0, Lc8/fp;->mOverlayLayout:Lc8/Er;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc8/Er;->setHideOnContentScrollEnabled(Z)V

    .line 510
    iget-object v1, p0, Lc8/fp;->mContextView:Lc8/yr;

    invoke-virtual {v1}, Lc8/yr;->killMode()V

    .line 511
    new-instance v0, Lc8/dp;

    iget-object v1, p0, Lc8/fp;->mContextView:Lc8/yr;

    invoke-virtual {v1}, Lc8/yr;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lc8/dp;-><init>(Lc8/fp;Landroid/content/Context;Lc8/kq;)V

    .line 512
    .local v0, "mode":Lc8/dp;
    invoke-virtual {v0}, Lc8/dp;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    iput-object v0, p0, Lc8/fp;->mActionMode:Lc8/dp;

    .line 516
    invoke-virtual {v0}, Lc8/dp;->invalidate()V

    .line 517
    iget-object v1, p0, Lc8/fp;->mContextView:Lc8/yr;

    invoke-virtual {v1, v0}, Lc8/yr;->initForMode(Lc8/lq;)V

    .line 518
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lc8/fp;->animateToMode(Z)V

    .line 519
    iget-object v1, p0, Lc8/fp;->mContextView:Lc8/yr;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lc8/yr;->sendAccessibilityEvent(I)V

    .line 522
    .end local v0    # "mode":Lc8/dp;
    :goto_0
    return-object v0

    .restart local v0    # "mode":Lc8/dp;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
