.class public Lc8/vo;
.super Lc8/Xn;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v4/view/LayoutInflaterFactory;
.implements Lc8/Pq;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation build Lc8/N;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ro;,
        Lc8/to;,
        Lc8/oo;,
        Lc8/uo;,
        Lc8/qo;
    }
.end annotation


# static fields
.field private static final IS_PRE_LOLLIPOP:Z


# instance fields
.field private mActionMenuPresenterCallback:Lc8/oo;

.field mActionMode:Lc8/lq;

.field mActionModePopup:Landroid/widget/PopupWindow;

.field mActionModeView:Lc8/yr;

.field private mAppCompatViewInflater:Lc8/zo;

.field private mClosingActionMenu:Z

.field private mDecorContentParent:Lc8/kt;

.field private mEnableDefaultActionBarUp:Z

.field mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private mFeatureIndeterminateProgress:Z

.field private mFeatureProgress:Z

.field mInvalidatePanelMenuFeatures:I

.field mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mLongPressBackDown:Z

.field private mPanelMenuPresenterCallback:Lc8/uo;

.field private mPanels:[Lc8/to;

.field private mPreparedPanel:Lc8/to;

.field mShowActionModePopup:Ljava/lang/Runnable;

.field private mStatusGuard:Landroid/view/View;

.field private mSubDecor:Landroid/view/ViewGroup;

.field private mSubDecorInstalled:Z

.field private mTempRect1:Landroid/graphics/Rect;

.field private mTempRect2:Landroid/graphics/Rect;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lc8/vo;->IS_PRE_LOLLIPOP:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lc8/Rn;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Lc8/Rn;

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3}, Lc8/Xn;-><init>(Landroid/content/Context;Landroid/view/Window;Lc8/Rn;)V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/vo;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 133
    new-instance v0, Lc8/ho;

    invoke-direct {v0, p0}, Lc8/ho;-><init>(Lc8/vo;)V

    iput-object v0, p0, Lc8/vo;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 156
    return-void
.end method

.method private applyFixedSizeWindow()V
    .locals 7

    .prologue
    .line 535
    iget-object v3, p0, Lc8/vo;->mSubDecor:Landroid/view/ViewGroup;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/jt;

    .line 541
    .local v1, "cfl":Lc8/jt;
    iget-object v3, p0, Lc8/vo;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 542
    .local v2, "windowDecor":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 543
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 544
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 542
    invoke-virtual {v1, v3, v4, v5, v6}, Lc8/jt;->setDecorPadding(IIII)V

    .line 546
    iget-object v3, p0, Lc8/vo;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/youku/phone/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 547
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/youku/phone/R$styleable;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v1}, Lc8/jt;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 548
    sget v3, Lcom/youku/phone/R$styleable;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v1}, Lc8/jt;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 550
    sget v3, Lcom/youku/phone/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 551
    sget v3, Lcom/youku/phone/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I

    .line 552
    invoke-virtual {v1}, Lc8/jt;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v4

    .line 551
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 554
    :cond_0
    sget v3, Lcom/youku/phone/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 555
    sget v3, Lcom/youku/phone/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I

    .line 556
    invoke-virtual {v1}, Lc8/jt;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v4

    .line 555
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 558
    :cond_1
    sget v3, Lcom/youku/phone/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 559
    sget v3, Lcom/youku/phone/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I

    .line 560
    invoke-virtual {v1}, Lc8/jt;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v4

    .line 559
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 562
    :cond_2
    sget v3, Lcom/youku/phone/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 563
    sget v3, Lcom/youku/phone/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I

    .line 564
    invoke-virtual {v1}, Lc8/jt;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v4

    .line 563
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 566
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 568
    invoke-virtual {v1}, Lc8/jt;->requestLayout()V

    .line 569
    return-void
.end method

.method private createSubDecor()Landroid/view/ViewGroup;
    .locals 15

    .prologue
    const v14, 0x1020002

    const/16 v13, 0x6d

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 355
    iget-object v8, p0, Lc8/vo;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/youku/phone/R$styleable;->AppCompatTheme:[I

    invoke-virtual {v8, v9}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 357
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v8, Lcom/youku/phone/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 358
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 359
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 363
    :cond_0
    sget v8, Lcom/youku/phone/R$styleable;->AppCompatTheme_windowNoTitle:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 364
    invoke-virtual {p0, v12}, Lc8/vo;->requestWindowFeature(I)Z

    .line 369
    :cond_1
    :goto_0
    sget v8, Lcom/youku/phone/R$styleable;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 370
    invoke-virtual {p0, v13}, Lc8/vo;->requestWindowFeature(I)Z

    .line 372
    :cond_2
    sget v8, Lcom/youku/phone/R$styleable;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 373
    const/16 v8, 0xa

    invoke-virtual {p0, v8}, Lc8/vo;->requestWindowFeature(I)Z

    .line 375
    :cond_3
    sget v8, Lcom/youku/phone/R$styleable;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lc8/vo;->mIsFloating:Z

    .line 376
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 379
    iget-object v8, p0, Lc8/vo;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 381
    iget-object v8, p0, Lc8/vo;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 382
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    .line 385
    .local v5, "subDecor":Landroid/view/ViewGroup;
    iget-boolean v8, p0, Lc8/vo;->mWindowNoTitle:Z

    if-nez v8, :cond_a

    .line 386
    iget-boolean v8, p0, Lc8/vo;->mIsFloating:Z

    if-eqz v8, :cond_6

    .line 388
    sget v8, Lcom/youku/phone/R$layout;->abc_dialog_title_material:I

    invoke-virtual {v3, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5    # "subDecor":Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .line 392
    .restart local v5    # "subDecor":Landroid/view/ViewGroup;
    iput-boolean v10, p0, Lc8/vo;->mOverlayActionBar:Z

    iput-boolean v10, p0, Lc8/vo;->mHasActionBar:Z

    .line 473
    :cond_4
    :goto_1
    if-nez v5, :cond_d

    .line 474
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lc8/vo;->mHasActionBar:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", windowActionBarOverlay: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lc8/vo;->mOverlayActionBar:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", android:windowIsFloating: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lc8/vo;->mIsFloating:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", windowActionModeOverlay: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lc8/vo;->mOverlayActionMode:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", windowNoTitle: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lc8/vo;->mWindowNoTitle:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " }"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 365
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "subDecor":Landroid/view/ViewGroup;
    :cond_5
    sget v8, Lcom/youku/phone/R$styleable;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 367
    const/16 v8, 0x6c

    invoke-virtual {p0, v8}, Lc8/vo;->requestWindowFeature(I)Z

    goto/16 :goto_0

    .line 393
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "subDecor":Landroid/view/ViewGroup;
    :cond_6
    iget-boolean v8, p0, Lc8/vo;->mHasActionBar:Z

    if-eqz v8, :cond_4

    .line 399
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 400
    .local v4, "outValue":Landroid/util/TypedValue;
    iget-object v8, p0, Lc8/vo;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget v9, Lcom/youku/phone/R$attr;->actionBarTheme:I

    invoke-virtual {v8, v9, v4, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 403
    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_9

    .line 404
    new-instance v6, Lc8/nq;

    iget-object v8, p0, Lc8/vo;->mContext:Landroid/content/Context;

    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v6, v8, v9}, Lc8/nq;-><init>(Landroid/content/Context;I)V

    .line 410
    .local v6, "themedContext":Landroid/content/Context;
    :goto_2
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/youku/phone/R$layout;->abc_screen_toolbar:I

    .line 411
    invoke-virtual {v8, v9, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5    # "subDecor":Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .line 413
    .restart local v5    # "subDecor":Landroid/view/ViewGroup;
    sget v8, Lcom/youku/phone/R$id;->decor_content_parent:I

    .line 414
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lc8/kt;

    iput-object v8, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    .line 415
    iget-object v8, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    invoke-virtual {p0}, Lc8/vo;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v9

    invoke-interface {v8, v9}, Lc8/kt;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 420
    iget-boolean v8, p0, Lc8/vo;->mOverlayActionBar:Z

    if-eqz v8, :cond_7

    .line 421
    iget-object v8, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    invoke-interface {v8, v13}, Lc8/kt;->initFeature(I)V

    .line 423
    :cond_7
    iget-boolean v8, p0, Lc8/vo;->mFeatureProgress:Z

    if-eqz v8, :cond_8

    .line 424
    iget-object v8, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Lc8/kt;->initFeature(I)V

    .line 426
    :cond_8
    iget-boolean v8, p0, Lc8/vo;->mFeatureIndeterminateProgress:Z

    if-eqz v8, :cond_4

    .line 427
    iget-object v8, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Lc8/kt;->initFeature(I)V

    goto/16 :goto_1

    .line 406
    .end local v6    # "themedContext":Landroid/content/Context;
    :cond_9
    iget-object v6, p0, Lc8/vo;->mContext:Landroid/content/Context;

    .restart local v6    # "themedContext":Landroid/content/Context;
    goto :goto_2

    .line 431
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .end local v6    # "themedContext":Landroid/content/Context;
    :cond_a
    iget-boolean v8, p0, Lc8/vo;->mOverlayActionMode:Z

    if-eqz v8, :cond_b

    .line 432
    sget v8, Lcom/youku/phone/R$layout;->abc_screen_simple_overlay_action_mode:I

    invoke-virtual {v3, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5    # "subDecor":Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .line 438
    .restart local v5    # "subDecor":Landroid/view/ViewGroup;
    :goto_3
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_c

    .line 441
    new-instance v8, Lc8/io;

    invoke-direct {v8, p0}, Lc8/io;-><init>(Lc8/vo;)V

    invoke-static {v5, v8}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    goto/16 :goto_1

    .line 435
    :cond_b
    sget v8, Lcom/youku/phone/R$layout;->abc_screen_simple:I

    invoke-virtual {v3, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .end local v5    # "subDecor":Landroid/view/ViewGroup;
    check-cast v5, Landroid/view/ViewGroup;

    .restart local v5    # "subDecor":Landroid/view/ViewGroup;
    goto :goto_3

    :cond_c
    move-object v8, v5

    .line 463
    check-cast v8, Lc8/Ft;

    new-instance v9, Lc8/jo;

    invoke-direct {v9, p0}, Lc8/jo;-><init>(Lc8/vo;)V

    invoke-interface {v8, v9}, Lc8/Ft;->setOnFitSystemWindowsListener(Lc8/Et;)V

    goto/16 :goto_1

    .line 484
    :cond_d
    iget-object v8, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    if-nez v8, :cond_e

    .line 485
    sget v8, Lcom/youku/phone/R$id;->title:I

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lc8/vo;->mTitleView:Landroid/widget/TextView;

    .line 489
    :cond_e
    invoke-static {v5}, Lc8/yx;->makeOptionalFitsSystemWindows(Landroid/view/View;)V

    .line 491
    sget v8, Lcom/youku/phone/R$id;->action_bar_activity_content:I

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lc8/jt;

    .line 494
    .local v2, "contentView":Lc8/jt;
    iget-object v8, p0, Lc8/vo;->mWindow:Landroid/view/Window;

    invoke-virtual {v8, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 495
    .local v7, "windowContentView":Landroid/view/ViewGroup;
    if-eqz v7, :cond_10

    .line 498
    :goto_4
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_f

    .line 499
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 500
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 501
    invoke-virtual {v2, v1}, Lc8/jt;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 506
    .end local v1    # "child":Landroid/view/View;
    :cond_f
    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setId(I)V

    .line 507
    invoke-virtual {v2, v14}, Lc8/jt;->setId(I)V

    .line 511
    instance-of v8, v7, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_10

    .line 512
    check-cast v7, Landroid/widget/FrameLayout;

    .end local v7    # "windowContentView":Landroid/view/ViewGroup;
    invoke-virtual {v7, v11}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 517
    :cond_10
    iget-object v8, p0, Lc8/vo;->mWindow:Landroid/view/Window;

    invoke-virtual {v8, v5}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 519
    new-instance v8, Lc8/ko;

    invoke-direct {v8, p0}, Lc8/ko;-><init>(Lc8/vo;)V

    invoke-virtual {v2, v8}, Lc8/jt;->setAttachListener(Lc8/it;)V

    .line 529
    return-object v5
.end method

.method private ensureSubDecor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 327
    iget-boolean v2, p0, Lc8/vo;->mSubDecorInstalled:Z

    if-nez v2, :cond_2

    .line 328
    invoke-direct {p0}, Lc8/vo;->createSubDecor()Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p0, Lc8/vo;->mSubDecor:Landroid/view/ViewGroup;

    .line 331
    invoke-virtual {p0}, Lc8/vo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 332
    .local v1, "title":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 333
    invoke-virtual {p0, v1}, Lc8/vo;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 336
    :cond_0
    invoke-direct {p0}, Lc8/vo;->applyFixedSizeWindow()V

    .line 338
    iget-object v2, p0, Lc8/vo;->mSubDecor:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lc8/vo;->onSubDecorInstalled(Landroid/view/ViewGroup;)V

    .line 340
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/vo;->mSubDecorInstalled:Z

    .line 347
    invoke-virtual {p0, v3, v3}, Lc8/vo;->getPanelState(IZ)Lc8/to;

    move-result-object v0

    .line 348
    .local v0, "st":Lc8/to;
    invoke-virtual {p0}, Lc8/vo;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    iget-object v2, v0, Lc8/to;->menu:Lc8/Rq;

    if-nez v2, :cond_2

    .line 349
    :cond_1
    const/16 v2, 0x6c

    invoke-direct {p0, v2}, Lc8/vo;->invalidatePanelMenu(I)V

    .line 352
    .end local v0    # "st":Lc8/to;
    .end local v1    # "title":Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method

.method private initializePanelContent(Lc8/to;)Z
    .locals 4
    .param p1, "st"    # Lc8/to;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1297
    iget-object v3, p1, Lc8/to;->createdPanelView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1298
    iget-object v2, p1, Lc8/to;->createdPanelView:Landroid/view/View;

    iput-object v2, p1, Lc8/to;->shownPanelView:Landroid/view/View;

    .line 1314
    :cond_0
    :goto_0
    return v1

    .line 1302
    :cond_1
    iget-object v3, p1, Lc8/to;->menu:Lc8/Rq;

    if-nez v3, :cond_2

    move v1, v2

    .line 1303
    goto :goto_0

    .line 1306
    :cond_2
    iget-object v3, p0, Lc8/vo;->mPanelMenuPresenterCallback:Lc8/uo;

    if-nez v3, :cond_3

    .line 1307
    new-instance v3, Lc8/uo;

    invoke-direct {v3, p0}, Lc8/uo;-><init>(Lc8/vo;)V

    iput-object v3, p0, Lc8/vo;->mPanelMenuPresenterCallback:Lc8/uo;

    .line 1310
    :cond_3
    iget-object v3, p0, Lc8/vo;->mPanelMenuPresenterCallback:Lc8/uo;

    invoke-virtual {p1, v3}, Lc8/to;->getListMenuView(Lc8/gr;)Lc8/jr;

    move-result-object v0

    .line 1312
    .local v0, "menuView":Lc8/jr;
    check-cast v0, Landroid/view/View;

    .end local v0    # "menuView":Lc8/jr;
    iput-object v0, p1, Lc8/to;->shownPanelView:Landroid/view/View;

    .line 1314
    iget-object v3, p1, Lc8/to;->shownPanelView:Landroid/view/View;

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private initializePanelDecor(Lc8/to;)Z
    .locals 2
    .param p1, "st"    # Lc8/to;

    .prologue
    .line 1203
    invoke-virtual {p0}, Lc8/vo;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc8/to;->setStyle(Landroid/content/Context;)V

    .line 1204
    new-instance v0, Lc8/ro;

    iget-object v1, p1, Lc8/to;->listPresenterContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lc8/ro;-><init>(Lc8/vo;Landroid/content/Context;)V

    iput-object v0, p1, Lc8/to;->decorView:Landroid/view/ViewGroup;

    .line 1205
    const/16 v0, 0x51

    iput v0, p1, Lc8/to;->gravity:I

    .line 1206
    const/4 v0, 0x1

    return v0
.end method

.method private initializePanelMenu(Lc8/to;)Z
    .locals 9
    .param p1, "st"    # Lc8/to;

    .prologue
    const/4 v8, 0x1

    .line 1254
    iget-object v1, p0, Lc8/vo;->mContext:Landroid/content/Context;

    .line 1257
    .local v1, "context":Landroid/content/Context;
    iget v6, p1, Lc8/to;->featureId:I

    if-eqz v6, :cond_0

    iget v6, p1, Lc8/to;->featureId:I

    const/16 v7, 0x6c

    if-ne v6, v7, :cond_3

    :cond_0
    iget-object v6, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    if-eqz v6, :cond_3

    .line 1259
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1260
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1261
    .local v0, "baseTheme":Landroid/content/res/Resources$Theme;
    sget v6, Lcom/youku/phone/R$attr;->actionBarTheme:I

    invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1263
    const/4 v5, 0x0

    .line 1264
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_4

    .line 1265
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1266
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1267
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1268
    sget v6, Lcom/youku/phone/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v5, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1275
    :goto_0
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_2

    .line 1276
    if-nez v5, :cond_1

    .line 1277
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1278
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1280
    :cond_1
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1283
    :cond_2
    if-eqz v5, :cond_3

    .line 1284
    new-instance v2, Lc8/nq;

    const/4 v6, 0x0

    invoke-direct {v2, v1, v6}, Lc8/nq;-><init>(Landroid/content/Context;I)V

    .line 1285
    .end local v1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v1, v2

    .line 1289
    .end local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_3
    new-instance v3, Lc8/Rq;

    invoke-direct {v3, v1}, Lc8/Rq;-><init>(Landroid/content/Context;)V

    .line 1290
    .local v3, "menu":Lc8/Rq;
    invoke-virtual {v3, p0}, Lc8/Rq;->setCallback(Lc8/Pq;)V

    .line 1291
    invoke-virtual {p1, v3}, Lc8/to;->setMenu(Lc8/Rq;)V

    .line 1293
    return v8

    .line 1271
    .end local v3    # "menu":Lc8/Rq;
    .restart local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v4    # "outValue":Landroid/util/TypedValue;
    .restart local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_4
    sget v6, Lcom/youku/phone/R$attr;->actionBarWidgetTheme:I

    invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0
.end method

.method private invalidatePanelMenu(I)V
    .locals 3
    .param p1, "featureId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1618
    iget v0, p0, Lc8/vo;->mInvalidatePanelMenuFeatures:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lc8/vo;->mInvalidatePanelMenuFeatures:I

    .line 1620
    iget-boolean v0, p0, Lc8/vo;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_0

    .line 1621
    iget-object v0, p0, Lc8/vo;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lc8/vo;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1622
    iput-boolean v2, p0, Lc8/vo;->mInvalidatePanelMenuPosted:Z

    .line 1624
    :cond_0
    return-void
.end method

.method private onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1472
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1473
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lc8/vo;->getPanelState(IZ)Lc8/to;

    move-result-object v0

    .line 1474
    .local v0, "st":Lc8/to;
    iget-boolean v1, v0, Lc8/to;->isOpen:Z

    if-nez v1, :cond_0

    .line 1475
    invoke-direct {p0, v0, p2}, Lc8/vo;->preparePanel(Lc8/to;Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1479
    .end local v0    # "st":Lc8/to;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onKeyUpPanel(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1483
    iget-object v5, p0, Lc8/vo;->mActionMode:Lc8/lq;

    if-eqz v5, :cond_1

    move v1, v4

    .line 1532
    :cond_0
    :goto_0
    return v1

    .line 1487
    :cond_1
    const/4 v1, 0x0

    .line 1488
    .local v1, "handled":Z
    invoke-virtual {p0, p1, v6}, Lc8/vo;->getPanelState(IZ)Lc8/to;

    move-result-object v3

    .line 1489
    .local v3, "st":Lc8/to;
    if-nez p1, :cond_4

    iget-object v5, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    .line 1490
    invoke-interface {v5}, Lc8/kt;->canShowOverflowMenu()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lc8/vo;->mContext:Landroid/content/Context;

    .line 1491
    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1492
    iget-object v5, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    invoke-interface {v5}, Lc8/kt;->isOverflowMenuShowing()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1493
    invoke-virtual {p0}, Lc8/vo;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0, v3, p2}, Lc8/vo;->preparePanel(Lc8/to;Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1494
    iget-object v5, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    invoke-interface {v5}, Lc8/kt;->showOverflowMenu()Z

    move-result v1

    .line 1523
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 1524
    iget-object v5, p0, Lc8/vo;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1526
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 1527
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 1497
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_3
    iget-object v5, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    invoke-interface {v5}, Lc8/kt;->hideOverflowMenu()Z

    move-result v1

    goto :goto_1

    .line 1500
    :cond_4
    iget-boolean v5, v3, Lc8/to;->isOpen:Z

    if-nez v5, :cond_5

    iget-boolean v5, v3, Lc8/to;->isHandled:Z

    if-eqz v5, :cond_6

    .line 1503
    :cond_5
    iget-boolean v1, v3, Lc8/to;->isOpen:Z

    .line 1505
    invoke-virtual {p0, v3, v6}, Lc8/vo;->closePanel(Lc8/to;Z)V

    goto :goto_1

    .line 1506
    :cond_6
    iget-boolean v5, v3, Lc8/to;->isPrepared:Z

    if-eqz v5, :cond_2

    .line 1507
    const/4 v2, 0x1

    .line 1508
    .local v2, "show":Z
    iget-boolean v5, v3, Lc8/to;->refreshMenuContent:Z

    if-eqz v5, :cond_7

    .line 1511
    iput-boolean v4, v3, Lc8/to;->isPrepared:Z

    .line 1512
    invoke-direct {p0, v3, p2}, Lc8/vo;->preparePanel(Lc8/to;Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1515
    :cond_7
    if-eqz v2, :cond_2

    .line 1517
    invoke-direct {p0, v3, p2}, Lc8/vo;->openPanel(Lc8/to;Landroid/view/KeyEvent;)V

    .line 1518
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private openPanel(Lc8/to;Landroid/view/KeyEvent;)V
    .locals 18
    .param p1, "st"    # Lc8/to;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1104
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lc8/to;->isOpen:Z

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lc8/vo;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1200
    :cond_0
    :goto_0
    return-void

    .line 1110
    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Lc8/to;->featureId:I

    if-nez v4, :cond_2

    .line 1111
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/vo;->mContext:Landroid/content/Context;

    .line 1112
    .local v13, "context":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 1113
    .local v12, "config":Landroid/content/res/Configuration;
    iget v4, v12, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    const/4 v15, 0x1

    .line 1115
    .local v15, "isXLarge":Z
    :goto_1
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    const/4 v14, 0x1

    .line 1118
    .local v14, "isHoneycombApp":Z
    :goto_2
    if-eqz v15, :cond_2

    if-nez v14, :cond_0

    .line 1123
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "isHoneycombApp":Z
    .end local v15    # "isXLarge":Z
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lc8/vo;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v11

    .line 1124
    .local v11, "cb":Landroid/view/Window$Callback;
    if-eqz v11, :cond_5

    move-object/from16 v0, p1

    iget v4, v0, Lc8/to;->featureId:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lc8/to;->menu:Lc8/Rq;

    invoke-interface {v11, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1126
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lc8/vo;->closePanel(Lc8/to;Z)V

    goto :goto_0

    .line 1113
    .end local v11    # "cb":Landroid/view/Window$Callback;
    .restart local v12    # "config":Landroid/content/res/Configuration;
    .restart local v13    # "context":Landroid/content/Context;
    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 1115
    .restart local v15    # "isXLarge":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 1130
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v15    # "isXLarge":Z
    .restart local v11    # "cb":Landroid/view/Window$Callback;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/vo;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowManager;

    .line 1131
    .local v17, "wm":Landroid/view/WindowManager;
    if-eqz v17, :cond_0

    .line 1136
    invoke-direct/range {p0 .. p2}, Lc8/vo;->preparePanel(Lc8/to;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1140
    const/4 v3, -0x2

    .line 1141
    .local v3, "width":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/to;->decorView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_6

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lc8/to;->refreshDecorView:Z

    if-eqz v4, :cond_c

    .line 1142
    :cond_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/to;->decorView:Landroid/view/ViewGroup;

    if-nez v4, :cond_b

    .line 1144
    invoke-direct/range {p0 .. p1}, Lc8/vo;->initializePanelDecor(Lc8/to;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/to;->decorView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 1152
    :cond_7
    :goto_3
    invoke-direct/range {p0 .. p1}, Lc8/vo;->initializePanelContent(Lc8/to;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lc8/to;->hasPanelItems()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1156
    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/to;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1157
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_8

    .line 1158
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1161
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    move-object/from16 v0, p1

    iget v10, v0, Lc8/to;->background:I

    .line 1162
    .local v10, "backgroundResId":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/to;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1164
    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/to;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    .line 1165
    .local v16, "shownPanelParent":Landroid/view/ViewParent;
    if-eqz v16, :cond_9

    move-object/from16 v0, v16

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_9

    .line 1166
    check-cast v16, Landroid/view/ViewGroup;

    .end local v16    # "shownPanelParent":Landroid/view/ViewParent;
    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/to;->shownPanelView:Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1168
    :cond_9
    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/to;->decorView:Landroid/view/ViewGroup;

    move-object/from16 v0, p1

    iget-object v5, v0, Lc8/to;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1174
    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/to;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1175
    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/to;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 1186
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "backgroundResId":I
    :cond_a
    :goto_4
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lc8/to;->isHandled:Z

    .line 1188
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    move-object/from16 v0, p1

    iget v5, v0, Lc8/to;->x:I

    move-object/from16 v0, p1

    iget v6, v0, Lc8/to;->y:I

    const/16 v7, 0x3ea

    const/high16 v8, 0x820000

    const/4 v9, -0x3

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1195
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    iget v4, v0, Lc8/to;->gravity:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1196
    move-object/from16 v0, p1

    iget v4, v0, Lc8/to;->windowAnimations:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1198
    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/to;->decorView:Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1199
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lc8/to;->isOpen:Z

    goto/16 :goto_0

    .line 1146
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_b
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lc8/to;->refreshDecorView:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/to;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 1148
    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/to;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_3

    .line 1177
    :cond_c
    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/to;->createdPanelView:Landroid/view/View;

    if-eqz v4, :cond_a

    .line 1180
    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/to;->createdPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1181
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_a

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    .line 1182
    const/4 v3, -0x1

    goto :goto_4
.end method

.method private performPanelShortcut(Lc8/to;ILandroid/view/KeyEvent;I)Z
    .locals 2
    .param p1, "st"    # Lc8/to;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    .line 1594
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1595
    const/4 v0, 0x0

    .line 1614
    :cond_0
    :goto_0
    return v0

    .line 1598
    :cond_1
    const/4 v0, 0x0

    .line 1602
    .local v0, "handled":Z
    iget-boolean v1, p1, Lc8/to;->isPrepared:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Lc8/vo;->preparePanel(Lc8/to;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Lc8/to;->menu:Lc8/Rq;

    if-eqz v1, :cond_3

    .line 1604
    iget-object v1, p1, Lc8/to;->menu:Lc8/Rq;

    invoke-virtual {v1, p2, p3, p4}, Lc8/Rq;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1607
    :cond_3
    if-eqz v0, :cond_0

    .line 1609
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    if-nez v1, :cond_0

    .line 1610
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lc8/vo;->closePanel(Lc8/to;Z)V

    goto :goto_0
.end method

.method private preparePanel(Lc8/to;Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "st"    # Lc8/to;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1318
    invoke-virtual {p0}, Lc8/vo;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1418
    :cond_0
    :goto_0
    return v5

    .line 1323
    :cond_1
    iget-boolean v3, p1, Lc8/to;->isPrepared:Z

    if-eqz v3, :cond_2

    move v5, v4

    .line 1324
    goto :goto_0

    .line 1327
    :cond_2
    iget-object v3, p0, Lc8/vo;->mPreparedPanel:Lc8/to;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lc8/vo;->mPreparedPanel:Lc8/to;

    if-eq v3, p1, :cond_3

    .line 1329
    iget-object v3, p0, Lc8/vo;->mPreparedPanel:Lc8/to;

    invoke-virtual {p0, v3, v5}, Lc8/vo;->closePanel(Lc8/to;Z)V

    .line 1332
    :cond_3
    invoke-virtual {p0}, Lc8/vo;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1334
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_4

    .line 1335
    iget v3, p1, Lc8/to;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lc8/to;->createdPanelView:Landroid/view/View;

    .line 1338
    :cond_4
    iget v3, p1, Lc8/to;->featureId:I

    if-eqz v3, :cond_5

    iget v3, p1, Lc8/to;->featureId:I

    const/16 v6, 0x6c

    if-ne v3, v6, :cond_c

    :cond_5
    move v1, v4

    .line 1341
    .local v1, "isActionBarMenu":Z
    :goto_1
    if-eqz v1, :cond_6

    iget-object v3, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    if-eqz v3, :cond_6

    .line 1344
    iget-object v3, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    invoke-interface {v3}, Lc8/kt;->setMenuPrepared()V

    .line 1347
    :cond_6
    iget-object v3, p1, Lc8/to;->createdPanelView:Landroid/view/View;

    if-nez v3, :cond_12

    if-eqz v1, :cond_7

    .line 1348
    invoke-virtual {p0}, Lc8/vo;->peekSupportActionBar()Lc8/mn;

    move-result-object v3

    instance-of v3, v3, Lc8/Wo;

    if-nez v3, :cond_12

    .line 1351
    :cond_7
    iget-object v3, p1, Lc8/to;->menu:Lc8/Rq;

    if-eqz v3, :cond_8

    iget-boolean v3, p1, Lc8/to;->refreshMenuContent:Z

    if-eqz v3, :cond_e

    .line 1352
    :cond_8
    iget-object v3, p1, Lc8/to;->menu:Lc8/Rq;

    if-nez v3, :cond_9

    .line 1353
    invoke-direct {p0, p1}, Lc8/vo;->initializePanelMenu(Lc8/to;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lc8/to;->menu:Lc8/Rq;

    if-eqz v3, :cond_0

    .line 1358
    :cond_9
    if-eqz v1, :cond_b

    iget-object v3, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    if-eqz v3, :cond_b

    .line 1359
    iget-object v3, p0, Lc8/vo;->mActionMenuPresenterCallback:Lc8/oo;

    if-nez v3, :cond_a

    .line 1360
    new-instance v3, Lc8/oo;

    invoke-direct {v3, p0}, Lc8/oo;-><init>(Lc8/vo;)V

    iput-object v3, p0, Lc8/vo;->mActionMenuPresenterCallback:Lc8/oo;

    .line 1362
    :cond_a
    iget-object v3, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    iget-object v6, p1, Lc8/to;->menu:Lc8/Rq;

    iget-object v7, p0, Lc8/vo;->mActionMenuPresenterCallback:Lc8/oo;

    invoke-interface {v3, v6, v7}, Lc8/kt;->setMenu(Landroid/view/Menu;Lc8/gr;)V

    .line 1367
    :cond_b
    iget-object v3, p1, Lc8/to;->menu:Lc8/Rq;

    invoke-virtual {v3}, Lc8/Rq;->stopDispatchingItemsChanged()V

    .line 1368
    iget v3, p1, Lc8/to;->featureId:I

    iget-object v6, p1, Lc8/to;->menu:Lc8/Rq;

    invoke-interface {v0, v3, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1370
    invoke-virtual {p1, v8}, Lc8/to;->setMenu(Lc8/Rq;)V

    .line 1372
    if-eqz v1, :cond_0

    iget-object v3, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    if-eqz v3, :cond_0

    .line 1374
    iget-object v3, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    iget-object v4, p0, Lc8/vo;->mActionMenuPresenterCallback:Lc8/oo;

    invoke-interface {v3, v8, v4}, Lc8/kt;->setMenu(Landroid/view/Menu;Lc8/gr;)V

    goto/16 :goto_0

    .end local v1    # "isActionBarMenu":Z
    :cond_c
    move v1, v5

    .line 1338
    goto :goto_1

    .line 1380
    .restart local v1    # "isActionBarMenu":Z
    :cond_d
    iput-boolean v5, p1, Lc8/to;->refreshMenuContent:Z

    .line 1385
    :cond_e
    iget-object v3, p1, Lc8/to;->menu:Lc8/Rq;

    invoke-virtual {v3}, Lc8/Rq;->stopDispatchingItemsChanged()V

    .line 1389
    iget-object v3, p1, Lc8/to;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v3, :cond_f

    .line 1390
    iget-object v3, p1, Lc8/to;->menu:Lc8/Rq;

    iget-object v6, p1, Lc8/to;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v3, v6}, Lc8/Rq;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 1391
    iput-object v8, p1, Lc8/to;->frozenActionViewState:Landroid/os/Bundle;

    .line 1395
    :cond_f
    iget-object v3, p1, Lc8/to;->createdPanelView:Landroid/view/View;

    iget-object v6, p1, Lc8/to;->menu:Lc8/Rq;

    invoke-interface {v0, v5, v3, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1396
    if-eqz v1, :cond_10

    iget-object v3, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    if-eqz v3, :cond_10

    .line 1399
    iget-object v3, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    iget-object v4, p0, Lc8/vo;->mActionMenuPresenterCallback:Lc8/oo;

    invoke-interface {v3, v8, v4}, Lc8/kt;->setMenu(Landroid/view/Menu;Lc8/gr;)V

    .line 1401
    :cond_10
    iget-object v3, p1, Lc8/to;->menu:Lc8/Rq;

    invoke-virtual {v3}, Lc8/Rq;->startDispatchingItemsChanged()V

    goto/16 :goto_0

    .line 1406
    :cond_11
    if-eqz p2, :cond_13

    .line 1407
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    .line 1406
    :goto_2
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 1408
    .local v2, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v3

    if-eq v3, v4, :cond_14

    move v3, v4

    :goto_3
    iput-boolean v3, p1, Lc8/to;->qwertyMode:Z

    .line 1409
    iget-object v3, p1, Lc8/to;->menu:Lc8/Rq;

    iget-boolean v6, p1, Lc8/to;->qwertyMode:Z

    invoke-virtual {v3, v6}, Lc8/Rq;->setQwertyMode(Z)V

    .line 1410
    iget-object v3, p1, Lc8/to;->menu:Lc8/Rq;

    invoke-virtual {v3}, Lc8/Rq;->startDispatchingItemsChanged()V

    .line 1414
    .end local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_12
    iput-boolean v4, p1, Lc8/to;->isPrepared:Z

    .line 1415
    iput-boolean v5, p1, Lc8/to;->isHandled:Z

    .line 1416
    iput-object p1, p0, Lc8/vo;->mPreparedPanel:Lc8/to;

    move v5, v4

    .line 1418
    goto/16 :goto_0

    .line 1407
    :cond_13
    const/4 v3, -0x1

    goto :goto_2

    .restart local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_14
    move v3, v5

    .line 1408
    goto :goto_3
.end method

.method private reopenMenu(Lc8/Rq;Z)V
    .locals 7
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "toggleMenuMode"    # Z

    .prologue
    const/16 v6, 0x6c

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1210
    iget-object v2, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    invoke-interface {v2}, Lc8/kt;->canShowOverflowMenu()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lc8/vo;->mContext:Landroid/content/Context;

    .line 1211
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    .line 1212
    invoke-interface {v2}, Lc8/kt;->isOverflowMenuShowPending()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1214
    :cond_0
    invoke-virtual {p0}, Lc8/vo;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1216
    .local v0, "cb":Landroid/view/Window$Callback;
    iget-object v2, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    invoke-interface {v2}, Lc8/kt;->isOverflowMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_4

    .line 1217
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lc8/vo;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1219
    iget-boolean v2, p0, Lc8/vo;->mInvalidatePanelMenuPosted:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lc8/vo;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1221
    iget-object v2, p0, Lc8/vo;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lc8/vo;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1222
    iget-object v2, p0, Lc8/vo;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1225
    :cond_2
    invoke-virtual {p0, v4, v5}, Lc8/vo;->getPanelState(IZ)Lc8/to;

    move-result-object v1

    .line 1229
    .local v1, "st":Lc8/to;
    iget-object v2, v1, Lc8/to;->menu:Lc8/Rq;

    if-eqz v2, :cond_3

    iget-boolean v2, v1, Lc8/to;->refreshMenuContent:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Lc8/to;->createdPanelView:Landroid/view/View;

    iget-object v3, v1, Lc8/to;->menu:Lc8/Rq;

    .line 1230
    invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1231
    iget-object v2, v1, Lc8/to;->menu:Lc8/Rq;

    invoke-interface {v0, v6, v2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1232
    iget-object v2, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    invoke-interface {v2}, Lc8/kt;->showOverflowMenu()Z

    .line 1251
    .end local v0    # "cb":Landroid/view/Window$Callback;
    .end local v1    # "st":Lc8/to;
    :cond_3
    :goto_0
    return-void

    .line 1236
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_4
    iget-object v2, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    invoke-interface {v2}, Lc8/kt;->hideOverflowMenu()Z

    .line 1237
    invoke-virtual {p0}, Lc8/vo;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1238
    invoke-virtual {p0, v4, v5}, Lc8/vo;->getPanelState(IZ)Lc8/to;

    move-result-object v1

    .line 1239
    .restart local v1    # "st":Lc8/to;
    iget-object v2, v1, Lc8/to;->menu:Lc8/Rq;

    invoke-interface {v0, v6, v2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1245
    .end local v0    # "cb":Landroid/view/Window$Callback;
    .end local v1    # "st":Lc8/to;
    :cond_5
    invoke-virtual {p0, v4, v5}, Lc8/vo;->getPanelState(IZ)Lc8/to;

    move-result-object v1

    .line 1247
    .restart local v1    # "st":Lc8/to;
    iput-boolean v5, v1, Lc8/to;->refreshDecorView:Z

    .line 1248
    invoke-virtual {p0, v1, v4}, Lc8/vo;->closePanel(Lc8/to;Z)V

    .line 1250
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lc8/vo;->openPanel(Lc8/to;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private sanitizeWindowFeatureId(I)I
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 1737
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 1740
    const/16 p1, 0x6c

    .line 1747
    .end local p1    # "featureId":I
    :cond_0
    :goto_0
    return p1

    .line 1741
    .restart local p1    # "featureId":I
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 1744
    const/16 p1, 0x6d

    goto :goto_0
.end method

.method private shouldInheritContext(Landroid/view/ViewParent;)Z
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewParent;

    .prologue
    const/4 v2, 0x0

    .line 1037
    if-nez p1, :cond_0

    move v1, v2

    .line 1055
    :goto_0
    return v1

    .line 1041
    :cond_0
    iget-object v1, p0, Lc8/vo;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1043
    .local v0, "windowDecor":Landroid/view/View;
    :goto_1
    if-nez p1, :cond_1

    .line 1048
    const/4 v1, 0x1

    goto :goto_0

    .line 1049
    :cond_1
    if-eq p1, v0, :cond_2

    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    .line 1050
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, v2

    .line 1055
    goto :goto_0

    .line 1057
    :cond_3
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_1
.end method

.method private throwFeatureRequestIfSubDecorInstalled()V
    .locals 2

    .prologue
    .line 1730
    iget-boolean v0, p0, Lc8/vo;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    .line 1731
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1734
    :cond_0
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 307
    invoke-direct {p0}, Lc8/vo;->ensureSubDecor()V

    .line 308
    iget-object v1, p0, Lc8/vo;->mSubDecor:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 309
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-object v1, p0, Lc8/vo;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 311
    return-void
.end method

.method callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1092
    iget-object v1, p0, Lc8/vo;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/view/LayoutInflater$Factory;

    if-eqz v1, :cond_0

    .line 1093
    iget-object v1, p0, Lc8/vo;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/view/LayoutInflater$Factory;

    .line 1094
    invoke-interface {v1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 1095
    .local v0, "result":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1099
    .end local v0    # "result":Landroid/view/View;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method callOnPanelClosed(ILc8/to;Landroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "panel"    # Lc8/to;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1537
    if-nez p3, :cond_1

    .line 1539
    if-nez p2, :cond_0

    .line 1540
    if-ltz p1, :cond_0

    iget-object v0, p0, Lc8/vo;->mPanels:[Lc8/to;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1541
    iget-object v0, p0, Lc8/vo;->mPanels:[Lc8/to;

    aget-object p2, v0, p1

    .line 1545
    :cond_0
    if-eqz p2, :cond_1

    .line 1547
    iget-object p3, p2, Lc8/to;->menu:Lc8/Rq;

    .line 1552
    :cond_1
    if-eqz p2, :cond_3

    iget-boolean v0, p2, Lc8/to;->isOpen:Z

    if-nez v0, :cond_3

    .line 1561
    :cond_2
    :goto_0
    return-void

    .line 1555
    :cond_3
    invoke-virtual {p0}, Lc8/vo;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1559
    iget-object v0, p0, Lc8/vo;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method checkCloseActionMenu(Lc8/Rq;)V
    .locals 2
    .param p1, "menu"    # Lc8/Rq;

    .prologue
    .line 1422
    iget-boolean v1, p0, Lc8/vo;->mClosingActionMenu:Z

    if-eqz v1, :cond_0

    .line 1433
    :goto_0
    return-void

    .line 1426
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/vo;->mClosingActionMenu:Z

    .line 1427
    iget-object v1, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    invoke-interface {v1}, Lc8/kt;->dismissPopups()V

    .line 1428
    invoke-virtual {p0}, Lc8/vo;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1429
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc8/vo;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1430
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 1432
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/vo;->mClosingActionMenu:Z

    goto :goto_0
.end method

.method closePanel(I)V
    .locals 2
    .param p1, "featureId"    # I

    .prologue
    const/4 v1, 0x1

    .line 1436
    invoke-virtual {p0, p1, v1}, Lc8/vo;->getPanelState(IZ)Lc8/to;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lc8/vo;->closePanel(Lc8/to;Z)V

    .line 1437
    return-void
.end method

.method closePanel(Lc8/to;Z)V
    .locals 5
    .param p1, "st"    # Lc8/to;
    .param p2, "doCallback"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1440
    if-eqz p2, :cond_1

    iget v1, p1, Lc8/to;->featureId:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    .line 1441
    invoke-interface {v1}, Lc8/kt;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1442
    iget-object v1, p1, Lc8/to;->menu:Lc8/Rq;

    invoke-virtual {p0, v1}, Lc8/vo;->checkCloseActionMenu(Lc8/Rq;)V

    .line 1469
    :cond_0
    :goto_0
    return-void

    .line 1446
    :cond_1
    iget-object v1, p0, Lc8/vo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1447
    .local v0, "wm":Landroid/view/WindowManager;
    if-eqz v0, :cond_2

    iget-boolean v1, p1, Lc8/to;->isOpen:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Lc8/to;->decorView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1448
    iget-object v1, p1, Lc8/to;->decorView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1450
    if-eqz p2, :cond_2

    .line 1451
    iget v1, p1, Lc8/to;->featureId:I

    invoke-virtual {p0, v1, p1, v4}, Lc8/vo;->callOnPanelClosed(ILc8/to;Landroid/view/Menu;)V

    .line 1455
    :cond_2
    iput-boolean v3, p1, Lc8/to;->isPrepared:Z

    .line 1456
    iput-boolean v3, p1, Lc8/to;->isHandled:Z

    .line 1457
    iput-boolean v3, p1, Lc8/to;->isOpen:Z

    .line 1460
    iput-object v4, p1, Lc8/to;->shownPanelView:Landroid/view/View;

    .line 1464
    const/4 v1, 0x1

    iput-boolean v1, p1, Lc8/to;->refreshDecorView:Z

    .line 1466
    iget-object v1, p0, Lc8/vo;->mPreparedPanel:Lc8/to;

    if-ne v1, p1, :cond_0

    .line 1467
    iput-object v4, p0, Lc8/vo;->mPreparedPanel:Lc8/to;

    goto :goto_0
.end method

.method public createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    .line 1016
    iget-object v0, p0, Lc8/vo;->mAppCompatViewInflater:Lc8/zo;

    if-nez v0, :cond_0

    .line 1017
    new-instance v0, Lc8/zo;

    invoke-direct {v0}, Lc8/zo;-><init>()V

    iput-object v0, p0, Lc8/vo;->mAppCompatViewInflater:Lc8/zo;

    .line 1020
    :cond_0
    const/4 v5, 0x0

    .line 1021
    .local v5, "inheritContext":Z
    sget-boolean v0, Lc8/vo;->IS_PRE_LOLLIPOP:Z

    if-eqz v0, :cond_1

    .line 1022
    instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v0, :cond_3

    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    .line 1024
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v7, :cond_2

    move v5, v7

    .line 1029
    :cond_1
    :goto_0
    iget-object v0, p0, Lc8/vo;->mAppCompatViewInflater:Lc8/zo;

    sget-boolean v6, Lc8/vo;->IS_PRE_LOLLIPOP:Z

    .line 1032
    invoke-static {}, Lc8/ox;->shouldBeUsed()Z

    move-result v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1029
    invoke-virtual/range {v0 .. v8}, Lc8/zo;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1024
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    .line 1026
    invoke-direct {p0, v0}, Lc8/vo;->shouldInheritContext(Landroid/view/ViewParent;)Z

    move-result v5

    goto :goto_0
.end method

.method dismissPopups()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1755
    iget-object v1, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    if-eqz v1, :cond_0

    .line 1756
    iget-object v1, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    invoke-interface {v1}, Lc8/kt;->dismissPopups()V

    .line 1759
    :cond_0
    iget-object v1, p0, Lc8/vo;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    .line 1760
    iget-object v1, p0, Lc8/vo;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lc8/vo;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1761
    iget-object v1, p0, Lc8/vo;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1763
    :try_start_0
    iget-object v1, p0, Lc8/vo;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1769
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/vo;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 1771
    :cond_2
    invoke-virtual {p0}, Lc8/vo;->endOnGoingFadeAnimation()V

    .line 1773
    invoke-virtual {p0, v3, v3}, Lc8/vo;->getPanelState(IZ)Lc8/to;

    move-result-object v0

    .line 1774
    .local v0, "st":Lc8/to;
    if-eqz v0, :cond_3

    iget-object v1, v0, Lc8/to;->menu:Lc8/Rq;

    if-eqz v1, :cond_3

    .line 1775
    iget-object v1, v0, Lc8/to;->menu:Lc8/Rq;

    invoke-virtual {v1}, Lc8/Rq;->close()V

    .line 1777
    :cond_3
    return-void

    .end local v0    # "st":Lc8/to;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 947
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x52

    if-ne v4, v5, :cond_0

    .line 949
    iget-object v4, p0, Lc8/vo;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 958
    :goto_0
    return v3

    .line 954
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 955
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 956
    .local v0, "action":I
    if-nez v0, :cond_1

    move v1, v3

    .line 958
    .local v1, "isDown":Z
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0, v2, p1}, Lc8/vo;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 956
    .end local v1    # "isDown":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 958
    .restart local v1    # "isDown":Z
    :cond_2
    invoke-virtual {p0, v2, p1}, Lc8/vo;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method doInvalidatePanelMenu(I)V
    .locals 5
    .param p1, "featureId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1627
    invoke-virtual {p0, p1, v4}, Lc8/vo;->getPanelState(IZ)Lc8/to;

    move-result-object v1

    .line 1629
    .local v1, "st":Lc8/to;
    iget-object v2, v1, Lc8/to;->menu:Lc8/Rq;

    if-eqz v2, :cond_1

    .line 1630
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1631
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lc8/to;->menu:Lc8/Rq;

    invoke-virtual {v2, v0}, Lc8/Rq;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 1632
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1633
    iput-object v0, v1, Lc8/to;->frozenActionViewState:Landroid/os/Bundle;

    .line 1636
    :cond_0
    iget-object v2, v1, Lc8/to;->menu:Lc8/Rq;

    invoke-virtual {v2}, Lc8/Rq;->stopDispatchingItemsChanged()V

    .line 1637
    iget-object v2, v1, Lc8/to;->menu:Lc8/Rq;

    invoke-virtual {v2}, Lc8/Rq;->clear()V

    .line 1639
    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    :cond_1
    iput-boolean v4, v1, Lc8/to;->refreshMenuContent:Z

    .line 1640
    iput-boolean v4, v1, Lc8/to;->refreshDecorView:Z

    .line 1643
    const/16 v2, 0x6c

    if-eq p1, v2, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v2, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    if-eqz v2, :cond_3

    .line 1645
    invoke-virtual {p0, v3, v3}, Lc8/vo;->getPanelState(IZ)Lc8/to;

    move-result-object v1

    .line 1646
    if-eqz v1, :cond_3

    .line 1647
    iput-boolean v3, v1, Lc8/to;->isPrepared:Z

    .line 1648
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lc8/vo;->preparePanel(Lc8/to;Landroid/view/KeyEvent;)Z

    .line 1651
    :cond_3
    return-void
.end method

.method endOnGoingFadeAnimation()V
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lc8/vo;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lc8/vo;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 889
    :cond_0
    return-void
.end method

.method findMenuPanel(Landroid/view/Menu;)Lc8/to;
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1564
    iget-object v3, p0, Lc8/vo;->mPanels:[Lc8/to;

    .line 1565
    .local v3, "panels":[Lc8/to;
    if-eqz v3, :cond_0

    array-length v0, v3

    .line 1566
    .local v0, "N":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1567
    aget-object v2, v3, v1

    .line 1568
    .local v2, "panel":Lc8/to;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lc8/to;->menu:Lc8/Rq;

    if-ne v4, p1, :cond_1

    .line 1572
    .end local v2    # "panel":Lc8/to;
    :goto_2
    return-object v2

    .line 1565
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1566
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "panel":Lc8/to;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1572
    .end local v2    # "panel":Lc8/to;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 238
    invoke-direct {p0}, Lc8/vo;->ensureSubDecor()V

    .line 239
    iget-object v0, p0, Lc8/vo;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getPanelState(IZ)Lc8/to;
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1577
    iget-object v0, p0, Lc8/vo;->mPanels:[Lc8/to;

    .local v0, "ar":[Lc8/to;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-gt v3, p1, :cond_2

    .line 1578
    :cond_0
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lc8/to;

    .line 1579
    .local v1, "nar":[Lc8/to;
    if-eqz v0, :cond_1

    .line 1580
    array-length v3, v0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1582
    :cond_1
    move-object v0, v1

    iput-object v1, p0, Lc8/vo;->mPanels:[Lc8/to;

    .line 1585
    .end local v1    # "nar":[Lc8/to;
    :cond_2
    aget-object v2, v0, p1

    .line 1586
    .local v2, "st":Lc8/to;
    if-nez v2, :cond_3

    .line 1587
    new-instance v2, Lc8/to;

    .end local v2    # "st":Lc8/to;
    invoke-direct {v2, p1}, Lc8/to;-><init>(I)V

    .restart local v2    # "st":Lc8/to;
    aput-object v2, v0, p1

    .line 1589
    :cond_3
    return-object v2
.end method

.method getSubDecor()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1751
    iget-object v0, p0, Lc8/vo;->mSubDecor:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public hasWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lc8/vo;->sanitizeWindowFeatureId(I)I

    move-result p1

    .line 616
    sparse-switch p1, :sswitch_data_0

    .line 630
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 618
    :sswitch_0
    iget-boolean v0, p0, Lc8/vo;->mHasActionBar:Z

    goto :goto_0

    .line 620
    :sswitch_1
    iget-boolean v0, p0, Lc8/vo;->mOverlayActionBar:Z

    goto :goto_0

    .line 622
    :sswitch_2
    iget-boolean v0, p0, Lc8/vo;->mOverlayActionMode:Z

    goto :goto_0

    .line 624
    :sswitch_3
    iget-boolean v0, p0, Lc8/vo;->mFeatureProgress:Z

    goto :goto_0

    .line 626
    :sswitch_4
    iget-boolean v0, p0, Lc8/vo;->mFeatureIndeterminateProgress:Z

    goto :goto_0

    .line 628
    :sswitch_5
    iget-boolean v0, p0, Lc8/vo;->mWindowNoTitle:Z

    goto :goto_0

    .line 616
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method public initWindowDecorActionBar()V
    .locals 3

    .prologue
    .line 181
    invoke-direct {p0}, Lc8/vo;->ensureSubDecor()V

    .line 183
    iget-boolean v0, p0, Lc8/vo;->mHasActionBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/vo;->mActionBar:Lc8/mn;

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lc8/vo;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 188
    new-instance v1, Lc8/fp;

    iget-object v0, p0, Lc8/vo;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Lc8/vo;->mOverlayActionBar:Z

    invoke-direct {v1, v0, v2}, Lc8/fp;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Lc8/vo;->mActionBar:Lc8/mn;

    .line 193
    :cond_2
    :goto_1
    iget-object v0, p0, Lc8/vo;->mActionBar:Lc8/mn;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lc8/vo;->mActionBar:Lc8/mn;

    iget-boolean v1, p0, Lc8/vo;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v0, v1}, Lc8/mn;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_0

    .line 190
    :cond_3
    iget-object v0, p0, Lc8/vo;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 191
    new-instance v1, Lc8/fp;

    iget-object v0, p0, Lc8/vo;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Lc8/fp;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Lc8/vo;->mActionBar:Lc8/mn;

    goto :goto_1
.end method

.method public installViewFactory()V
    .locals 2

    .prologue
    .line 1063
    iget-object v1, p0, Lc8/vo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1064
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1065
    invoke-static {v0, p0}, Landroid/support/v4/view/LayoutInflaterCompat;->setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 1073
    :goto_0
    return-void

    .line 1067
    :cond_0
    invoke-static {v0}, Landroid/support/v4/view/LayoutInflaterCompat;->getFactory(Landroid/view/LayoutInflater;)Landroid/support/v4/view/LayoutInflaterFactory;

    goto :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 720
    invoke-virtual {p0}, Lc8/vo;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    .line 721
    .local v0, "ab":Lc8/mn;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/mn;->invalidateOptionsMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    :goto_0
    return-void

    .line 723
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lc8/vo;->invalidatePanelMenu(I)V

    goto :goto_0
.end method

.method onBackPressed()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 893
    iget-object v2, p0, Lc8/vo;->mActionMode:Lc8/lq;

    if-eqz v2, :cond_1

    .line 894
    iget-object v2, p0, Lc8/vo;->mActionMode:Lc8/lq;

    invoke-virtual {v2}, Lc8/lq;->finish()V

    .line 905
    :cond_0
    :goto_0
    return v1

    .line 899
    :cond_1
    invoke-virtual {p0}, Lc8/vo;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    .line 900
    .local v0, "ab":Lc8/mn;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc8/mn;->collapseActionView()Z

    move-result v2

    if-nez v2, :cond_0

    .line 905
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 246
    iget-boolean v1, p0, Lc8/vo;->mHasActionBar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lc8/vo;->mSubDecorInstalled:Z

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {p0}, Lc8/vo;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    .line 250
    .local v0, "ab":Lc8/mn;
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0, p1}, Lc8/mn;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 256
    .end local v0    # "ab":Lc8/mn;
    :cond_0
    invoke-static {}, Lc8/zs;->get()Lc8/zs;

    move-result-object v1

    iget-object v2, p0, Lc8/vo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lc8/zs;->onConfigurationChanged(Landroid/content/Context;)V

    .line 259
    invoke-virtual {p0}, Lc8/vo;->applyDayNight()Z

    .line 260
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 160
    iget-object v1, p0, Lc8/vo;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lc8/vo;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lc8/vo;->peekSupportActionBar()Lc8/mn;

    move-result-object v0

    .line 164
    .local v0, "ab":Lc8/mn;
    if-nez v0, :cond_1

    .line 165
    iput-boolean v2, p0, Lc8/vo;->mEnableDefaultActionBarUp:Z

    .line 171
    .end local v0    # "ab":Lc8/mn;
    :cond_0
    :goto_0
    return-void

    .line 167
    .restart local v0    # "ab":Lc8/mn;
    :cond_1
    invoke-virtual {v0, v2}, Lc8/mn;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1081
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/vo;->callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 1082
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1087
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/vo;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 315
    iget-boolean v0, p0, Lc8/vo;->mInvalidatePanelMenuPosted:Z

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lc8/vo;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lc8/vo;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 319
    :cond_0
    invoke-super {p0}, Lc8/Xn;->onDestroy()V

    .line 321
    iget-object v0, p0, Lc8/vo;->mActionBar:Lc8/mn;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lc8/vo;->mActionBar:Lc8/mn;

    invoke-virtual {v0}, Lc8/mn;->onDestroy()V

    .line 324
    :cond_1
    return-void
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 989
    sparse-switch p1, :sswitch_data_0

    .line 1005
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    .line 1008
    invoke-virtual {p0, p1, p2}, Lc8/vo;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    :cond_0
    move v0, v1

    .line 1010
    :goto_1
    return v0

    .line 991
    :sswitch_0
    invoke-direct {p0, v1, p2}, Lc8/vo;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 999
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    :goto_2
    iput-boolean v0, p0, Lc8/vo;->mLongPressBackDown:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 989
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 911
    invoke-virtual {p0}, Lc8/vo;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    .line 912
    .local v0, "ab":Lc8/mn;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lc8/mn;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 942
    :cond_0
    :goto_0
    return v3

    .line 918
    :cond_1
    iget-object v5, p0, Lc8/vo;->mPreparedPanel:Lc8/to;

    if-eqz v5, :cond_2

    .line 919
    iget-object v5, p0, Lc8/vo;->mPreparedPanel:Lc8/to;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-direct {p0, v5, v6, p2, v3}, Lc8/vo;->performPanelShortcut(Lc8/to;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 921
    .local v1, "handled":Z
    if-eqz v1, :cond_2

    .line 922
    iget-object v4, p0, Lc8/vo;->mPreparedPanel:Lc8/to;

    if-eqz v4, :cond_0

    .line 923
    iget-object v4, p0, Lc8/vo;->mPreparedPanel:Lc8/to;

    iput-boolean v3, v4, Lc8/to;->isHandled:Z

    goto :goto_0

    .line 933
    .end local v1    # "handled":Z
    :cond_2
    iget-object v5, p0, Lc8/vo;->mPreparedPanel:Lc8/to;

    if-nez v5, :cond_3

    .line 934
    invoke-virtual {p0, v4, v3}, Lc8/vo;->getPanelState(IZ)Lc8/to;

    move-result-object v2

    .line 935
    .local v2, "st":Lc8/to;
    invoke-direct {p0, v2, p2}, Lc8/vo;->preparePanel(Lc8/to;Landroid/view/KeyEvent;)Z

    .line 936
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-direct {p0, v2, v5, p2, v3}, Lc8/vo;->performPanelShortcut(Lc8/to;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 937
    .restart local v1    # "handled":Z
    iput-boolean v4, v2, Lc8/to;->isPrepared:Z

    .line 938
    if-nez v1, :cond_0

    .end local v1    # "handled":Z
    .end local v2    # "st":Lc8/to;
    :cond_3
    move v3, v4

    .line 942
    goto :goto_0
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 962
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v2, v3

    .line 985
    :cond_1
    :goto_0
    return v2

    .line 964
    :sswitch_0
    invoke-direct {p0, v3, p2}, Lc8/vo;->onKeyUpPanel(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 967
    :sswitch_1
    iget-boolean v1, p0, Lc8/vo;->mLongPressBackDown:Z

    .line 968
    .local v1, "wasLongPressBackDown":Z
    iput-boolean v3, p0, Lc8/vo;->mLongPressBackDown:Z

    .line 970
    invoke-virtual {p0, v3, v3}, Lc8/vo;->getPanelState(IZ)Lc8/to;

    move-result-object v0

    .line 971
    .local v0, "st":Lc8/to;
    if-eqz v0, :cond_2

    iget-boolean v4, v0, Lc8/to;->isOpen:Z

    if-eqz v4, :cond_2

    .line 972
    if-nez v1, :cond_1

    .line 976
    invoke-virtual {p0, v0, v2}, Lc8/vo;->closePanel(Lc8/to;Z)V

    goto :goto_0

    .line 980
    :cond_2
    invoke-virtual {p0}, Lc8/vo;->onBackPressed()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 962
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMenuItemSelected(Lc8/Rq;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 675
    invoke-virtual {p0}, Lc8/vo;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 676
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/vo;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 677
    invoke-virtual {p1}, Lc8/Rq;->getRootMenu()Lc8/Rq;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/vo;->findMenuPanel(Landroid/view/Menu;)Lc8/to;

    move-result-object v1

    .line 678
    .local v1, "panel":Lc8/to;
    if-eqz v1, :cond_0

    .line 679
    iget v2, v1, Lc8/to;->featureId:I

    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    .line 682
    .end local v1    # "panel":Lc8/to;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lc8/Rq;)V
    .locals 1
    .param p1, "menu"    # Lc8/Rq;

    .prologue
    .line 687
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lc8/vo;->reopenMenu(Lc8/Rq;Z)V

    .line 688
    return-void
.end method

.method onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 663
    const/16 v2, 0x6c

    if-ne p1, v2, :cond_1

    .line 664
    invoke-virtual {p0}, Lc8/vo;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    .line 665
    .local v0, "ab":Lc8/mn;
    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {v0, v1}, Lc8/mn;->dispatchMenuVisibilityChanged(Z)V

    .line 670
    .end local v0    # "ab":Lc8/mn;
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onPanelClosed(ILandroid/view/Menu;)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 646
    const/16 v2, 0x6c

    if-ne p1, v2, :cond_1

    .line 647
    invoke-virtual {p0}, Lc8/vo;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    .line 648
    .local v0, "ab":Lc8/mn;
    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {v0, v3}, Lc8/mn;->dispatchMenuVisibilityChanged(Z)V

    .line 659
    .end local v0    # "ab":Lc8/mn;
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    if-nez p1, :cond_0

    .line 654
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lc8/vo;->getPanelState(IZ)Lc8/to;

    move-result-object v1

    .line 655
    .local v1, "st":Lc8/to;
    iget-boolean v2, v1, Lc8/to;->isOpen:Z

    if-eqz v2, :cond_0

    .line 656
    invoke-virtual {p0, v1, v3}, Lc8/vo;->closePanel(Lc8/to;Z)V

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 176
    invoke-direct {p0}, Lc8/vo;->ensureSubDecor()V

    .line 177
    return-void
.end method

.method public onPostResume()V
    .locals 2

    .prologue
    .line 272
    invoke-virtual {p0}, Lc8/vo;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    .line 273
    .local v0, "ab":Lc8/mn;
    if-eqz v0, :cond_0

    .line 274
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/mn;->setShowHideAnimationEnabled(Z)V

    .line 276
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lc8/vo;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    .line 265
    .local v0, "ab":Lc8/mn;
    if-eqz v0, :cond_0

    .line 266
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/mn;->setShowHideAnimationEnabled(Z)V

    .line 268
    :cond_0
    return-void
.end method

.method onSubDecorInstalled(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "subDecor"    # Landroid/view/ViewGroup;

    .prologue
    .line 532
    return-void
.end method

.method onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 635
    iget-object v0, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lc8/vo;->mDecorContentParent:Lc8/kt;

    invoke-interface {v0, p1}, Lc8/kt;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    invoke-virtual {p0}, Lc8/vo;->peekSupportActionBar()Lc8/mn;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 638
    invoke-virtual {p0}, Lc8/vo;->peekSupportActionBar()Lc8/mn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/mn;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 639
    :cond_2
    iget-object v0, p0, Lc8/vo;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lc8/vo;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public requestWindowFeature(I)Z
    .locals 3
    .param p1, "featureId"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 573
    invoke-direct {p0, p1}, Lc8/vo;->sanitizeWindowFeatureId(I)I

    move-result p1

    .line 575
    iget-boolean v2, p0, Lc8/vo;->mWindowNoTitle:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x6c

    if-ne p1, v2, :cond_0

    .line 610
    :goto_0
    return v0

    .line 578
    :cond_0
    iget-boolean v2, p0, Lc8/vo;->mHasActionBar:Z

    if-eqz v2, :cond_1

    if-ne p1, v1, :cond_1

    .line 580
    iput-boolean v0, p0, Lc8/vo;->mHasActionBar:Z

    .line 583
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 610
    iget-object v0, p0, Lc8/vo;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    goto :goto_0

    .line 585
    :sswitch_0
    invoke-direct {p0}, Lc8/vo;->throwFeatureRequestIfSubDecorInstalled()V

    .line 586
    iput-boolean v1, p0, Lc8/vo;->mHasActionBar:Z

    move v0, v1

    .line 587
    goto :goto_0

    .line 589
    :sswitch_1
    invoke-direct {p0}, Lc8/vo;->throwFeatureRequestIfSubDecorInstalled()V

    .line 590
    iput-boolean v1, p0, Lc8/vo;->mOverlayActionBar:Z

    move v0, v1

    .line 591
    goto :goto_0

    .line 593
    :sswitch_2
    invoke-direct {p0}, Lc8/vo;->throwFeatureRequestIfSubDecorInstalled()V

    .line 594
    iput-boolean v1, p0, Lc8/vo;->mOverlayActionMode:Z

    move v0, v1

    .line 595
    goto :goto_0

    .line 597
    :sswitch_3
    invoke-direct {p0}, Lc8/vo;->throwFeatureRequestIfSubDecorInstalled()V

    .line 598
    iput-boolean v1, p0, Lc8/vo;->mFeatureProgress:Z

    move v0, v1

    .line 599
    goto :goto_0

    .line 601
    :sswitch_4
    invoke-direct {p0}, Lc8/vo;->throwFeatureRequestIfSubDecorInstalled()V

    .line 602
    iput-boolean v1, p0, Lc8/vo;->mFeatureIndeterminateProgress:Z

    move v0, v1

    .line 603
    goto :goto_0

    .line 605
    :sswitch_5
    invoke-direct {p0}, Lc8/vo;->throwFeatureRequestIfSubDecorInstalled()V

    .line 606
    iput-boolean v1, p0, Lc8/vo;->mWindowNoTitle:Z

    move v0, v1

    .line 607
    goto :goto_0

    .line 583
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_2
        0x6c -> :sswitch_0
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 289
    invoke-direct {p0}, Lc8/vo;->ensureSubDecor()V

    .line 290
    iget-object v1, p0, Lc8/vo;->mSubDecor:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 291
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 292
    iget-object v1, p0, Lc8/vo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 293
    iget-object v1, p0, Lc8/vo;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 294
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 280
    invoke-direct {p0}, Lc8/vo;->ensureSubDecor()V

    .line 281
    iget-object v1, p0, Lc8/vo;->mSubDecor:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 282
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 283
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 284
    iget-object v1, p0, Lc8/vo;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 285
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 298
    invoke-direct {p0}, Lc8/vo;->ensureSubDecor()V

    .line 299
    iget-object v1, p0, Lc8/vo;->mSubDecor:Landroid/view/ViewGroup;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 300
    .local v0, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 301
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    iget-object v1, p0, Lc8/vo;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 303
    return-void
.end method

.method public setSupportActionBar(Lc8/kx;)V
    .locals 4
    .param p1, "toolbar"    # Lc8/kx;

    .prologue
    const/4 v3, 0x0

    .line 200
    iget-object v2, p0, Lc8/vo;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 233
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Lc8/vo;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    .line 206
    .local v0, "ab":Lc8/mn;
    instance-of v2, v0, Lc8/fp;

    if-eqz v2, :cond_1

    .line 207
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    :cond_1
    iput-object v3, p0, Lc8/vo;->mMenuInflater:Landroid/view/MenuInflater;

    .line 217
    if-eqz v0, :cond_2

    .line 218
    invoke-virtual {v0}, Lc8/mn;->onDestroy()V

    .line 221
    :cond_2
    if-eqz p1, :cond_3

    .line 222
    new-instance v1, Lc8/Wo;

    iget-object v2, p0, Lc8/vo;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v2, Landroid/app/Activity;

    .line 223
    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lc8/vo;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-direct {v1, p1, v2, v3}, Lc8/Wo;-><init>(Lc8/kx;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 224
    .local v1, "tbab":Lc8/Wo;
    iput-object v1, p0, Lc8/vo;->mActionBar:Lc8/mn;

    .line 225
    iget-object v2, p0, Lc8/vo;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Lc8/Wo;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 232
    .end local v1    # "tbab":Lc8/Wo;
    :goto_1
    invoke-virtual {p0}, Lc8/vo;->invalidateOptionsMenu()V

    goto :goto_0

    .line 227
    :cond_3
    iput-object v3, p0, Lc8/vo;->mActionBar:Lc8/mn;

    .line 229
    iget-object v2, p0, Lc8/vo;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Lc8/vo;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_1
.end method

.method final shouldAnimateActionModeView()Z
    .locals 1

    .prologue
    .line 882
    iget-boolean v0, p0, Lc8/vo;->mSubDecorInstalled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/vo;->mSubDecor:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/vo;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startSupportActionMode(Lc8/kq;)Lc8/lq;
    .locals 4
    .param p1, "callback"    # Lc8/kq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 692
    if-nez p1, :cond_0

    .line 693
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "ActionMode callback can not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 696
    :cond_0
    iget-object v2, p0, Lc8/vo;->mActionMode:Lc8/lq;

    if-eqz v2, :cond_1

    .line 697
    iget-object v2, p0, Lc8/vo;->mActionMode:Lc8/lq;

    invoke-virtual {v2}, Lc8/lq;->finish()V

    .line 700
    :cond_1
    new-instance v1, Lc8/qo;

    invoke-direct {v1, p0, p1}, Lc8/qo;-><init>(Lc8/vo;Lc8/kq;)V

    .line 702
    .local v1, "wrappedCallback":Lc8/kq;
    invoke-virtual {p0}, Lc8/vo;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    .line 703
    .local v0, "ab":Lc8/mn;
    if-eqz v0, :cond_2

    .line 704
    invoke-virtual {v0, v1}, Lc8/mn;->startActionMode(Lc8/kq;)Lc8/lq;

    move-result-object v2

    iput-object v2, p0, Lc8/vo;->mActionMode:Lc8/lq;

    .line 705
    iget-object v2, p0, Lc8/vo;->mActionMode:Lc8/lq;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lc8/vo;->mAppCompatCallback:Lc8/Rn;

    if-eqz v2, :cond_2

    .line 706
    iget-object v2, p0, Lc8/vo;->mAppCompatCallback:Lc8/Rn;

    iget-object v3, p0, Lc8/vo;->mActionMode:Lc8/lq;

    invoke-interface {v2, v3}, Lc8/Rn;->onSupportActionModeStarted(Lc8/lq;)V

    .line 710
    :cond_2
    iget-object v2, p0, Lc8/vo;->mActionMode:Lc8/lq;

    if-nez v2, :cond_3

    .line 712
    invoke-virtual {p0, v1}, Lc8/vo;->startSupportActionModeFromWindow(Lc8/kq;)Lc8/lq;

    move-result-object v2

    iput-object v2, p0, Lc8/vo;->mActionMode:Lc8/lq;

    .line 715
    :cond_3
    iget-object v2, p0, Lc8/vo;->mActionMode:Lc8/lq;

    return-object v2
.end method

.method startSupportActionModeFromWindow(Lc8/kq;)Lc8/lq;
    .locals 11
    .param p1, "callback"    # Lc8/kq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 728
    invoke-virtual {p0}, Lc8/vo;->endOnGoingFadeAnimation()V

    .line 729
    iget-object v8, p0, Lc8/vo;->mActionMode:Lc8/lq;

    if-eqz v8, :cond_0

    .line 730
    iget-object v8, p0, Lc8/vo;->mActionMode:Lc8/lq;

    invoke-virtual {v8}, Lc8/lq;->finish()V

    .line 733
    :cond_0
    instance-of v8, p1, Lc8/qo;

    if-nez v8, :cond_1

    .line 735
    new-instance v3, Lc8/qo;

    invoke-direct {v3, p0, p1}, Lc8/qo;-><init>(Lc8/vo;Lc8/kq;)V

    .end local p1    # "callback":Lc8/kq;
    .local v3, "callback":Lc8/kq;
    move-object p1, v3

    .line 738
    .end local v3    # "callback":Lc8/kq;
    .restart local p1    # "callback":Lc8/kq;
    :cond_1
    const/4 v5, 0x0

    .line 739
    .local v5, "mode":Lc8/lq;
    iget-object v8, p0, Lc8/vo;->mAppCompatCallback:Lc8/Rn;

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lc8/vo;->isDestroyed()Z

    move-result v8

    if-nez v8, :cond_2

    .line 741
    :try_start_0
    iget-object v8, p0, Lc8/vo;->mAppCompatCallback:Lc8/Rn;

    invoke-interface {v8, p1}, Lc8/Rn;->onWindowStartingSupportActionMode(Lc8/kq;)Lc8/lq;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 747
    :cond_2
    :goto_0
    if-eqz v5, :cond_5

    .line 748
    iput-object v5, p0, Lc8/vo;->mActionMode:Lc8/lq;

    .line 873
    :cond_3
    :goto_1
    iget-object v8, p0, Lc8/vo;->mActionMode:Lc8/lq;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lc8/vo;->mAppCompatCallback:Lc8/Rn;

    if-eqz v8, :cond_4

    .line 874
    iget-object v8, p0, Lc8/vo;->mAppCompatCallback:Lc8/Rn;

    iget-object v9, p0, Lc8/vo;->mActionMode:Lc8/lq;

    invoke-interface {v8, v9}, Lc8/Rn;->onSupportActionModeStarted(Lc8/lq;)V

    .line 876
    :cond_4
    iget-object v8, p0, Lc8/vo;->mActionMode:Lc8/lq;

    return-object v8

    .line 750
    :cond_5
    iget-object v8, p0, Lc8/vo;->mActionModeView:Lc8/yr;

    if-nez v8, :cond_6

    .line 751
    iget-boolean v8, p0, Lc8/vo;->mIsFloating:Z

    if-eqz v8, :cond_9

    .line 753
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 754
    .local v6, "outValue":Landroid/util/TypedValue;
    iget-object v8, p0, Lc8/vo;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 755
    .local v2, "baseTheme":Landroid/content/res/Resources$Theme;
    sget v8, Lcom/youku/phone/R$attr;->actionBarTheme:I

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v6, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 758
    iget v8, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_8

    .line 759
    iget-object v8, p0, Lc8/vo;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 760
    .local v1, "actionBarTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 761
    iget v8, v6, Landroid/util/TypedValue;->resourceId:I

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 763
    new-instance v0, Lc8/nq;

    iget-object v8, p0, Lc8/vo;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {v0, v8, v9}, Lc8/nq;-><init>(Landroid/content/Context;I)V

    .line 764
    .local v0, "actionBarContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 769
    .end local v1    # "actionBarTheme":Landroid/content/res/Resources$Theme;
    :goto_2
    new-instance v8, Lc8/yr;

    invoke-direct {v8, v0}, Lc8/yr;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lc8/vo;->mActionModeView:Lc8/yr;

    .line 770
    new-instance v8, Landroid/widget/PopupWindow;

    const/4 v9, 0x0

    sget v10, Lcom/youku/phone/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v8, v0, v9, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, p0, Lc8/vo;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 772
    iget-object v8, p0, Lc8/vo;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/support/v4/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 774
    iget-object v8, p0, Lc8/vo;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v9, p0, Lc8/vo;->mActionModeView:Lc8/yr;

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 775
    iget-object v8, p0, Lc8/vo;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 777
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget v9, Lcom/youku/phone/R$attr;->actionBarSize:I

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v6, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 779
    iget v8, v6, Landroid/util/TypedValue;->data:I

    .line 780
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 779
    invoke-static {v8, v9}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    .line 781
    .local v4, "height":I
    iget-object v8, p0, Lc8/vo;->mActionModeView:Lc8/yr;

    invoke-virtual {v8, v4}, Lc8/yr;->setContentHeight(I)V

    .line 782
    iget-object v8, p0, Lc8/vo;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v9, -0x2

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 783
    new-instance v8, Lc8/mo;

    invoke-direct {v8, p0}, Lc8/mo;-><init>(Lc8/vo;)V

    iput-object v8, p0, Lc8/vo;->mShowActionModePopup:Ljava/lang/Runnable;

    .line 824
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v4    # "height":I
    .end local v6    # "outValue":Landroid/util/TypedValue;
    :cond_6
    :goto_3
    iget-object v8, p0, Lc8/vo;->mActionModeView:Lc8/yr;

    if-eqz v8, :cond_3

    .line 825
    invoke-virtual {p0}, Lc8/vo;->endOnGoingFadeAnimation()V

    .line 826
    iget-object v8, p0, Lc8/vo;->mActionModeView:Lc8/yr;

    invoke-virtual {v8}, Lc8/yr;->killMode()V

    .line 827
    new-instance v5, Lc8/oq;

    .end local v5    # "mode":Lc8/lq;
    iget-object v8, p0, Lc8/vo;->mActionModeView:Lc8/yr;

    invoke-virtual {v8}, Lc8/yr;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lc8/vo;->mActionModeView:Lc8/yr;

    iget-object v8, p0, Lc8/vo;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v8, :cond_a

    const/4 v8, 0x1

    :goto_4
    invoke-direct {v5, v9, v10, p1, v8}, Lc8/oq;-><init>(Landroid/content/Context;Lc8/yr;Lc8/kq;Z)V

    .line 829
    .restart local v5    # "mode":Lc8/lq;
    invoke-virtual {v5}, Lc8/lq;->getMenu()Landroid/view/Menu;

    move-result-object v8

    invoke-interface {p1, v5, v8}, Lc8/kq;->onCreateActionMode(Lc8/lq;Landroid/view/Menu;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 830
    invoke-virtual {v5}, Lc8/lq;->invalidate()V

    .line 831
    iget-object v8, p0, Lc8/vo;->mActionModeView:Lc8/yr;

    invoke-virtual {v8, v5}, Lc8/yr;->initForMode(Lc8/lq;)V

    .line 832
    iput-object v5, p0, Lc8/vo;->mActionMode:Lc8/lq;

    .line 834
    invoke-virtual {p0}, Lc8/vo;->shouldAnimateActionModeView()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 835
    iget-object v8, p0, Lc8/vo;->mActionModeView:Lc8/yr;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 836
    iget-object v8, p0, Lc8/vo;->mActionModeView:Lc8/yr;

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v8

    iput-object v8, p0, Lc8/vo;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 837
    iget-object v8, p0, Lc8/vo;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v9, Lc8/no;

    invoke-direct {v9, p0}, Lc8/no;-><init>(Lc8/vo;)V

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 865
    :cond_7
    :goto_5
    iget-object v8, p0, Lc8/vo;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v8, :cond_3

    .line 866
    iget-object v8, p0, Lc8/vo;->mWindow:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lc8/vo;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 766
    .restart local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v6    # "outValue":Landroid/util/TypedValue;
    :cond_8
    iget-object v0, p0, Lc8/vo;->mContext:Landroid/content/Context;

    .restart local v0    # "actionBarContext":Landroid/content/Context;
    goto/16 :goto_2

    .line 814
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v6    # "outValue":Landroid/util/TypedValue;
    :cond_9
    iget-object v8, p0, Lc8/vo;->mSubDecor:Landroid/view/ViewGroup;

    sget v9, Lcom/youku/phone/R$id;->action_mode_bar_stub:I

    .line 815
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lc8/xx;

    .line 816
    .local v7, "stub":Lc8/xx;
    if-eqz v7, :cond_6

    .line 818
    invoke-virtual {p0}, Lc8/vo;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v7, v8}, Lc8/xx;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 819
    invoke-virtual {v7}, Lc8/xx;->inflate()Landroid/view/View;

    move-result-object v8

    check-cast v8, Lc8/yr;

    iput-object v8, p0, Lc8/vo;->mActionModeView:Lc8/yr;

    goto/16 :goto_3

    .line 827
    .end local v5    # "mode":Lc8/lq;
    .end local v7    # "stub":Lc8/xx;
    :cond_a
    const/4 v8, 0x0

    goto :goto_4

    .line 856
    .restart local v5    # "mode":Lc8/lq;
    :cond_b
    iget-object v8, p0, Lc8/vo;->mActionModeView:Lc8/yr;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 857
    iget-object v8, p0, Lc8/vo;->mActionModeView:Lc8/yr;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lc8/yr;->setVisibility(I)V

    .line 858
    iget-object v8, p0, Lc8/vo;->mActionModeView:Lc8/yr;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Lc8/yr;->sendAccessibilityEvent(I)V

    .line 860
    iget-object v8, p0, Lc8/vo;->mActionModeView:Lc8/yr;

    invoke-virtual {v8}, Lc8/yr;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Landroid/view/View;

    if-eqz v8, :cond_7

    .line 861
    iget-object v8, p0, Lc8/vo;->mActionModeView:Lc8/yr;

    invoke-virtual {v8}, Lc8/yr;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_5

    .line 869
    :cond_c
    const/4 v8, 0x0

    iput-object v8, p0, Lc8/vo;->mActionMode:Lc8/lq;

    goto/16 :goto_1

    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

.method updateStatusGuard(I)I
    .locals 12
    .param p1, "insetTop"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v7, 0x0

    .line 1660
    const/4 v6, 0x0

    .line 1662
    .local v6, "showStatusGuard":Z
    iget-object v8, p0, Lc8/vo;->mActionModeView:Lc8/yr;

    if-eqz v8, :cond_3

    .line 1663
    iget-object v8, p0, Lc8/vo;->mActionModeView:Lc8/yr;

    invoke-virtual {v8}, Lc8/yr;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_3

    .line 1664
    iget-object v8, p0, Lc8/vo;->mActionModeView:Lc8/yr;

    .line 1665
    invoke-virtual {v8}, Lc8/yr;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1666
    .local v3, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v4, 0x0

    .line 1668
    .local v4, "mlpChanged":Z
    iget-object v8, p0, Lc8/vo;->mActionModeView:Lc8/yr;

    invoke-virtual {v8}, Lc8/yr;->isShown()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1669
    iget-object v8, p0, Lc8/vo;->mTempRect1:Landroid/graphics/Rect;

    if-nez v8, :cond_0

    .line 1670
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lc8/vo;->mTempRect1:Landroid/graphics/Rect;

    .line 1671
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lc8/vo;->mTempRect2:Landroid/graphics/Rect;

    .line 1673
    :cond_0
    iget-object v0, p0, Lc8/vo;->mTempRect1:Landroid/graphics/Rect;

    .line 1674
    .local v0, "insets":Landroid/graphics/Rect;
    iget-object v1, p0, Lc8/vo;->mTempRect2:Landroid/graphics/Rect;

    .line 1675
    .local v1, "localInsets":Landroid/graphics/Rect;
    invoke-virtual {v0, v7, p1, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1677
    iget-object v8, p0, Lc8/vo;->mSubDecor:Landroid/view/ViewGroup;

    invoke-static {v8, v0, v1}, Lc8/yx;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1678
    iget v8, v1, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_5

    move v5, p1

    .line 1679
    .local v5, "newMargin":I
    :goto_0
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v8, v5, :cond_1

    .line 1680
    const/4 v4, 0x1

    .line 1681
    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1683
    iget-object v8, p0, Lc8/vo;->mStatusGuard:Landroid/view/View;

    if-nez v8, :cond_6

    .line 1684
    new-instance v8, Landroid/view/View;

    iget-object v9, p0, Lc8/vo;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lc8/vo;->mStatusGuard:Landroid/view/View;

    .line 1685
    iget-object v8, p0, Lc8/vo;->mStatusGuard:Landroid/view/View;

    iget-object v9, p0, Lc8/vo;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/youku/phone/R$color;->abc_input_method_navigation_guard:I

    .line 1686
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 1685
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1687
    iget-object v8, p0, Lc8/vo;->mSubDecor:Landroid/view/ViewGroup;

    iget-object v9, p0, Lc8/vo;->mStatusGuard:Landroid/view/View;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v11, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1701
    :cond_1
    :goto_1
    iget-object v8, p0, Lc8/vo;->mStatusGuard:Landroid/view/View;

    if-eqz v8, :cond_7

    const/4 v6, 0x1

    .line 1707
    :goto_2
    iget-boolean v8, p0, Lc8/vo;->mOverlayActionMode:Z

    if-nez v8, :cond_2

    if-eqz v6, :cond_2

    .line 1708
    const/4 p1, 0x0

    .line 1717
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "localInsets":Landroid/graphics/Rect;
    .end local v5    # "newMargin":I
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 1718
    iget-object v8, p0, Lc8/vo;->mActionModeView:Lc8/yr;

    invoke-virtual {v8, v3}, Lc8/yr;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1722
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "mlpChanged":Z
    :cond_3
    iget-object v8, p0, Lc8/vo;->mStatusGuard:Landroid/view/View;

    if-eqz v8, :cond_4

    .line 1723
    iget-object v8, p0, Lc8/vo;->mStatusGuard:Landroid/view/View;

    if-eqz v6, :cond_9

    :goto_4
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1726
    :cond_4
    return p1

    .restart local v0    # "insets":Landroid/graphics/Rect;
    .restart local v1    # "localInsets":Landroid/graphics/Rect;
    .restart local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v4    # "mlpChanged":Z
    :cond_5
    move v5, v7

    .line 1678
    goto :goto_0

    .line 1691
    .restart local v5    # "newMargin":I
    :cond_6
    iget-object v8, p0, Lc8/vo;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1692
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v8, p1, :cond_1

    .line 1693
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1694
    iget-object v8, p0, Lc8/vo;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    move v6, v7

    .line 1701
    goto :goto_2

    .line 1712
    .end local v0    # "insets":Landroid/graphics/Rect;
    .end local v1    # "localInsets":Landroid/graphics/Rect;
    .end local v5    # "newMargin":I
    :cond_8
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v8, :cond_2

    .line 1713
    const/4 v4, 0x1

    .line 1714
    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    .line 1723
    .end local v3    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "mlpChanged":Z
    :cond_9
    const/16 v7, 0x8

    goto :goto_4
.end method
