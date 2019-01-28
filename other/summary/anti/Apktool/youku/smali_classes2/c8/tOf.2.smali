.class public Lc8/tOf;
.super Lc8/SOf;
.source "ImageLoadFeature.java"

# interfaces
.implements Lc8/MOf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/sOf;,
        Lc8/rOf;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/SOf",
        "<",
        "Landroid/widget/ImageView;",
        ">;",
        "Lc8/MOf;"
    }
.end annotation


# static fields
.field private static final L_SCROLLING:I = 0x1

.field private static final L_SHOWING:I = 0x0

.field private static final S_DONE_FAIL:I = 0x3

.field private static final S_DONE_SUC:I = 0x2

.field private static final S_INIT:I = 0x0

.field private static final S_LOADING:I = 0x1

.field private static final S_LOAD_IMMEDIATE:I = 0x4


# instance fields
.field protected mAlphaAnim:Landroid/animation/ObjectAnimator;

.field private mCacheKey4PlaceHolder:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEnableSizeInLayoutParams:Z

.field private mEnabledLoadOnFling:Z

.field private mErrorImageId:I

.field protected mFadeIn:Z

.field private mFailListener:Lc8/qxf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/qxf",
            "<",
            "Lc8/pxf;",
            ">;"
        }
    .end annotation
.end field

.field private mFinalUrlInspector:Lc8/COf;

.field private mGlobalPhenixOptions:Lc8/uOf;

.field private mHostReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mKeepBackgroundState:I

.field private mLastMaxViewSize:I

.field private mLastResTicket:Lc8/nxf;

.field protected mLoadState:I

.field protected mLoadingUrl:Ljava/lang/String;

.field private mMainHandler:Landroid/os/Handler;

.field private mMemoryMissListener:Lc8/qxf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/qxf",
            "<",
            "Lc8/sxf;",
            ">;"
        }
    .end annotation
.end field

.field private mNextPhenixOptions:Lc8/uOf;

.field private mNoRepeatOnError:Z

.field private mPlaceHoldForeground:Landroid/graphics/drawable/Drawable;

.field protected mPlaceHoldResourceId:I

.field private mPriorityModuleName:Ljava/lang/String;

.field private mRetryHandler:Lc8/sOf;

.field private mScrollState:I

.field private mSkipAutoSize:Ljava/lang/Boolean;

.field private mStrategyConfig:Lc8/nHf;

.field private mSuccListener:Lc8/rOf;

.field private mTicket:Lc8/nxf;

.field private mUrl:Ljava/lang/String;

.field private mUserCalledSetImageUrl:Z

.field protected mUserFailListener:Lc8/qxf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/qxf",
            "<",
            "Lc8/pxf;",
            ">;"
        }
    .end annotation
.end field

.field protected mUserSuccListener:Lc8/qxf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/qxf",
            "<",
            "Lc8/wxf;",
            ">;"
        }
    .end annotation
.end field

.field private mWhenNullClearImg:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Lc8/SOf;-><init>()V

    .line 78
    iput-boolean v1, p0, Lc8/tOf;->mNoRepeatOnError:Z

    .line 84
    iput v2, p0, Lc8/tOf;->mLoadState:I

    .line 87
    iput v2, p0, Lc8/tOf;->mScrollState:I

    .line 88
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/tOf;->mLoadingUrl:Ljava/lang/String;

    .line 89
    iput-boolean v1, p0, Lc8/tOf;->mWhenNullClearImg:Z

    .line 91
    iput-boolean v1, p0, Lc8/tOf;->mEnabledLoadOnFling:Z

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/tOf;->mMainHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Lc8/rOf;

    invoke-direct {v0, p0}, Lc8/rOf;-><init>(Lc8/tOf;)V

    iput-object v0, p0, Lc8/tOf;->mSuccListener:Lc8/rOf;

    .line 101
    new-instance v0, Lc8/sOf;

    invoke-direct {v0, p0}, Lc8/sOf;-><init>(Lc8/tOf;)V

    iput-object v0, p0, Lc8/tOf;->mRetryHandler:Lc8/sOf;

    .line 102
    iput-boolean v2, p0, Lc8/tOf;->mUserCalledSetImageUrl:Z

    .line 115
    new-instance v0, Lc8/lOf;

    invoke-direct {v0, p0}, Lc8/lOf;-><init>(Lc8/tOf;)V

    iput-object v0, p0, Lc8/tOf;->mMemoryMissListener:Lc8/qxf;

    .line 130
    new-instance v0, Lc8/mOf;

    invoke-direct {v0, p0}, Lc8/mOf;-><init>(Lc8/tOf;)V

    iput-object v0, p0, Lc8/tOf;->mFailListener:Lc8/qxf;

    .line 698
    return-void
.end method

.method static synthetic access$000(Lc8/tOf;)Z
    .locals 1
    .param p0, "x0"    # Lc8/tOf;

    .prologue
    .line 63
    iget-boolean v0, p0, Lc8/tOf;->mWhenNullClearImg:Z

    return v0
.end method

.method static synthetic access$100(Lc8/tOf;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;ZZ)V
    .locals 0
    .param p0, "x0"    # Lc8/tOf;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/tOf;->fillImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;ZZ)V

    return-void
.end method

.method static synthetic access$200(Lc8/tOf;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/tOf;

    .prologue
    .line 63
    iget-object v0, p0, Lc8/tOf;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lc8/tOf;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/tOf;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lc8/tOf;->mNoRepeatOnError:Z

    return p1
.end method

.method static synthetic access$400(Lc8/tOf;Z)Z
    .locals 1
    .param p0, "x0"    # Lc8/tOf;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lc8/tOf;->loadImageIfNecessary(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lc8/tOf;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p0, "x0"    # Lc8/tOf;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lc8/tOf;->isViewBitmapDifferentWith(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lc8/tOf;)I
    .locals 1
    .param p0, "x0"    # Lc8/tOf;

    .prologue
    .line 63
    iget v0, p0, Lc8/tOf;->mKeepBackgroundState:I

    return v0
.end method

.method private fillImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;ZZ)V
    .locals 2
    .param p1, "hostView"    # Landroid/widget/ImageView;
    .param p2, "drawable"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p3, "isError"    # Z
    .param p4, "clearDrawableIfNull"    # Z

    .prologue
    const/4 v1, 0x0

    .line 528
    if-nez p1, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v0, p0, Lc8/tOf;->mLastResTicket:Lc8/nxf;

    if-eqz v0, :cond_2

    .line 533
    iget-object v0, p0, Lc8/tOf;->mLastResTicket:Lc8/nxf;

    invoke-virtual {v0}, Lc8/nxf;->cancel()Z

    .line 534
    iput-object v1, p0, Lc8/tOf;->mLastResTicket:Lc8/nxf;

    .line 536
    :cond_2
    if-eqz p2, :cond_4

    .line 537
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 539
    iget v0, p0, Lc8/tOf;->mKeepBackgroundState:I

    if-ltz v0, :cond_3

    iget v0, p0, Lc8/tOf;->mKeepBackgroundState:I

    if-nez v0, :cond_0

    iget v0, p0, Lc8/tOf;->mPlaceHoldResourceId:I

    if-eqz v0, :cond_0

    .line 540
    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 542
    :cond_4
    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    .line 543
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    iget v0, p0, Lc8/tOf;->mErrorImageId:I

    if-eqz v0, :cond_5

    iget v0, p0, Lc8/tOf;->mErrorImageId:I

    :goto_1
    invoke-direct {p0, v0}, Lc8/tOf;->placeBgResImage(I)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lc8/tOf;->mPlaceHoldResourceId:I

    goto :goto_1

    .line 545
    :cond_6
    if-nez p4, :cond_7

    invoke-direct {p0, p1, v1}, Lc8/tOf;->isViewDrawableSameWith(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lc8/tOf;->mPlaceHoldForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 547
    iget-object v0, p0, Lc8/tOf;->mPlaceHoldForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 548
    :cond_8
    if-eqz p4, :cond_0

    .line 549
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    iget v0, p0, Lc8/tOf;->mPlaceHoldResourceId:I

    invoke-direct {p0, v0}, Lc8/tOf;->placeBgResImage(I)V

    goto :goto_0
.end method

.method private getPriorityModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lc8/tOf;->mNextPhenixOptions:Lc8/uOf;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lc8/tOf;->mNextPhenixOptions:Lc8/uOf;

    iget-object v0, v0, Lc8/uOf;->priorityModuleName:Ljava/lang/String;

    .line 318
    :goto_0
    return-object v0

    .line 312
    :cond_0
    iget-object v0, p0, Lc8/tOf;->mPriorityModuleName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lc8/tOf;->mPriorityModuleName:Ljava/lang/String;

    goto :goto_0

    .line 315
    :cond_1
    iget-object v0, p0, Lc8/tOf;->mGlobalPhenixOptions:Lc8/uOf;

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p0, Lc8/tOf;->mGlobalPhenixOptions:Lc8/uOf;

    iget-object v0, v0, Lc8/uOf;->priorityModuleName:Ljava/lang/String;

    goto :goto_0

    .line 318
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isViewBitmapDifferentWith(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z
    .locals 2
    .param p1, "hostView"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 514
    instance-of v1, p1, Lc8/DOf;

    if-eqz v1, :cond_0

    .line 515
    check-cast p1, Lc8/DOf;

    .end local p1    # "hostView":Landroid/widget/ImageView;
    invoke-virtual {p1, p2}, Lc8/DOf;->isViewBitmapDifferentWith(Landroid/graphics/Bitmap;)Z

    move-result v1

    .line 518
    :goto_0
    return v1

    .restart local p1    # "hostView":Landroid/widget/ImageView;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isViewDrawableSameWith(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "hostView"    # Landroid/widget/ImageView;
    .param p2, "target"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 506
    instance-of v0, p1, Lc8/DOf;

    if-eqz v0, :cond_0

    .line 507
    check-cast p1, Lc8/DOf;

    .end local p1    # "hostView":Landroid/widget/ImageView;
    invoke-virtual {p1, p2}, Lc8/DOf;->isDrawableSameWith(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 509
    :goto_0
    return v0

    .restart local p1    # "hostView":Landroid/widget/ImageView;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadImageIfNecessary(Z)Z
    .locals 17
    .param p1, "isInLayoutPass"    # Z

    .prologue
    .line 386
    invoke-virtual/range {p0 .. p0}, Lc8/tOf;->getHost()Landroid/widget/ImageView;

    move-result-object v7

    .line 387
    .local v7, "imageView":Landroid/widget/ImageView;
    if-nez v7, :cond_0

    .line 388
    const/4 v13, 0x0

    .line 501
    :goto_0
    return v13

    .line 391
    :cond_0
    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v12

    .line 392
    .local v12, "width":I
    invoke-virtual {v7}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    .line 395
    .local v6, "height":I
    const/4 v8, 0x0

    .line 397
    .local v8, "isFullyWrapContent":Z
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .local v11, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v11, :cond_1

    .line 398
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lc8/tOf;->mEnableSizeInLayoutParams:Z

    if-eqz v13, :cond_2

    iget v13, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v13, :cond_2

    iget v13, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v13, :cond_2

    .line 399
    iget v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 400
    iget v6, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 401
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lc8/tOf;->mLastMaxViewSize:I

    .line 408
    :cond_1
    :goto_1
    if-nez v12, :cond_4

    if-nez v6, :cond_4

    if-nez v8, :cond_4

    .line 409
    const/4 v13, 0x0

    goto :goto_0

    .line 403
    :cond_2
    iget v13, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v14, -0x2

    if-ne v13, v14, :cond_3

    iget v13, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v14, -0x2

    if-ne v13, v14, :cond_3

    const/4 v8, 0x1

    :goto_2
    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 412
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/tOf;->mUrl:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 413
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/tOf;->mTicket:Lc8/nxf;

    if-eqz v13, :cond_5

    .line 414
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/tOf;->mTicket:Lc8/nxf;

    invoke-virtual {v13}, Lc8/nxf;->cancel()Z

    .line 417
    :cond_5
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/tOf;->mUserCalledSetImageUrl:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v14, v15}, Lc8/tOf;->fillImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;ZZ)V

    .line 418
    const/4 v13, 0x0

    goto :goto_0

    .line 422
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/tOf;->mTicket:Lc8/nxf;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/tOf;->mTicket:Lc8/nxf;

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/tOf;->mUrl:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lc8/nxf;->theSame(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 423
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/tOf;->mTicket:Lc8/nxf;

    invoke-virtual {v13}, Lc8/nxf;->cancel()Z

    .line 426
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lc8/tOf;->mNoRepeatOnError:Z

    if-eqz v13, :cond_8

    .line 427
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 430
    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lc8/tOf;->mLoadState:I

    if-eqz v13, :cond_9

    .line 431
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 434
    :cond_9
    const/4 v9, 0x0

    .line 435
    .local v9, "memOnly":Z
    move-object/from16 v0, p0

    iget v13, v0, Lc8/tOf;->mScrollState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b

    .line 436
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lc8/tOf;->mEnabledLoadOnFling:Z

    if-nez v13, :cond_a

    .line 437
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 439
    :cond_a
    const/4 v9, 0x1

    .line 442
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/tOf;->mUrl:Ljava/lang/String;

    .line 444
    .local v4, "decideUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/tOf;->mSkipAutoSize:Ljava/lang/Boolean;

    if-nez v13, :cond_c

    invoke-static {}, Lc8/DOf;->isAutoSizeSkippedGlobally()Z

    move-result v13

    if-eqz v13, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/tOf;->mSkipAutoSize:Ljava/lang/Boolean;

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/tOf;->mSkipAutoSize:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_e

    .line 445
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/tOf;->mUrl:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/tOf;->mStrategyConfig:Lc8/nHf;

    move-object/from16 v16, v0

    invoke-static/range {v13 .. v16}, Lc8/uNf;->decideUrl(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 447
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/tOf;->mFinalUrlInspector:Lc8/COf;

    if-eqz v13, :cond_f

    .line 448
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/tOf;->mFinalUrlInspector:Lc8/COf;

    invoke-interface {v13, v4, v12, v6}, Lc8/COf;->inspectFinalUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 450
    :cond_f
    invoke-static {}, Lc8/DOf;->getGlobalFinalUrlInspector()Lc8/COf;

    move-result-object v5

    .local v5, "globalInspector":Lc8/COf;
    if-eqz v5, :cond_10

    .line 451
    invoke-interface {v5, v4, v12, v6}, Lc8/COf;->inspectFinalUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 454
    :cond_10
    move-object/from16 v0, p0

    iput-object v4, v0, Lc8/tOf;->mLoadingUrl:Ljava/lang/String;

    .line 455
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/tOf;->mSuccListener:Lc8/rOf;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lc8/rOf;->setIsInLayoutPass(Z)V

    .line 456
    if-eqz v9, :cond_15

    const/4 v13, 0x4

    :goto_3
    move-object/from16 v0, p0

    iput v13, v0, Lc8/tOf;->mLoadState:I

    .line 457
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/tOf;->mNextPhenixOptions:Lc8/uOf;

    if-eqz v13, :cond_16

    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/tOf;->mNextPhenixOptions:Lc8/uOf;

    .line 458
    .local v10, "nowOptions":Lc8/uOf;
    :goto_4
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/tOf;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14}, Lc8/ixf;->with(Landroid/content/Context;)Lc8/ixf;

    move-result-object v13

    .line 459
    invoke-direct/range {p0 .. p0}, Lc8/tOf;->getPriorityModuleName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v4}, Lc8/ixf;->load(Ljava/lang/String;Ljava/lang/String;)Lc8/mxf;

    move-result-object v13

    const/4 v14, 0x1

    .line 460
    invoke-virtual {v13, v14}, Lc8/mxf;->releasableDrawable(Z)Lc8/mxf;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/tOf;->mCacheKey4PlaceHolder:Ljava/lang/String;

    .line 461
    invoke-virtual {v13, v14}, Lc8/mxf;->secondary(Ljava/lang/String;)Lc8/mxf;

    move-result-object v13

    .line 462
    invoke-virtual {v13, v9}, Lc8/mxf;->memOnly(Z)Lc8/mxf;

    move-result-object v13

    .line 463
    invoke-virtual {v13, v7}, Lc8/mxf;->limitSize(Landroid/view/View;)Lc8/mxf;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/tOf;->mSuccListener:Lc8/rOf;

    .line 464
    invoke-virtual {v13, v14}, Lc8/mxf;->succListener(Lc8/qxf;)Lc8/mxf;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/tOf;->mMemoryMissListener:Lc8/qxf;

    .line 465
    invoke-virtual {v13, v14}, Lc8/mxf;->memCacheMissListener(Lc8/qxf;)Lc8/mxf;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/tOf;->mFailListener:Lc8/qxf;

    .line 466
    invoke-virtual {v13, v14}, Lc8/mxf;->failListener(Lc8/qxf;)Lc8/mxf;

    move-result-object v3

    .line 468
    .local v3, "creator":Lc8/mxf;
    if-eqz v10, :cond_12

    .line 470
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Lc8/uOf;->isOpened(I)Z

    move-result v13

    invoke-virtual {v3, v13}, Lc8/mxf;->preloadWithSmall(Z)Lc8/mxf;

    move-result-object v13

    const/4 v14, 0x2

    .line 471
    invoke-virtual {v10, v14}, Lc8/uOf;->isOpened(I)Z

    move-result v14

    invoke-virtual {v13, v14}, Lc8/mxf;->scaleFromLarge(Z)Lc8/mxf;

    move-result-object v13

    iget-object v14, v10, Lc8/uOf;->bitmapProcessors:[Lc8/ovf;

    .line 472
    invoke-virtual {v13, v14}, Lc8/mxf;->bitmapProcessors([Lc8/ovf;)Lc8/mxf;

    move-result-object v13

    iget v14, v10, Lc8/uOf;->thumbnailType:I

    const/16 v15, 0x10

    .line 473
    invoke-virtual {v10, v15}, Lc8/uOf;->isOpened(I)Z

    move-result v15

    invoke-virtual {v13, v14, v15}, Lc8/mxf;->asThumbnail(IZ)Lc8/mxf;

    move-result-object v13

    iget v14, v10, Lc8/uOf;->diskCachePriority:I

    .line 474
    invoke-virtual {v13, v14}, Lc8/mxf;->diskCachePriority(I)Lc8/mxf;

    move-result-object v13

    iget v14, v10, Lc8/uOf;->schedulePriority:I

    .line 475
    invoke-virtual {v13, v14}, Lc8/mxf;->schedulePriority(I)Lc8/mxf;

    move-result-object v13

    iget v14, v10, Lc8/uOf;->memoryCachePriority:I

    .line 476
    invoke-virtual {v13, v14}, Lc8/mxf;->memoryCachePriority(I)Lc8/mxf;

    .line 478
    const/4 v13, 0x4

    invoke-virtual {v10, v13}, Lc8/uOf;->isOpened(I)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 479
    invoke-virtual {v3}, Lc8/mxf;->skipCache()Lc8/mxf;

    .line 481
    :cond_11
    const/16 v13, 0x8

    invoke-virtual {v10, v13}, Lc8/uOf;->isOpened(I)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 482
    invoke-virtual {v3}, Lc8/mxf;->onlyCache()Lc8/mxf;

    .line 487
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/tOf;->mUrl:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_13

    .line 488
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/tOf;->mRetryHandler:Lc8/sOf;

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/tOf;->mUrl:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lc8/sOf;->setRetryUrl(Ljava/lang/String;)Lc8/sOf;

    move-result-object v13

    invoke-virtual {v3, v13}, Lc8/mxf;->retryHandler(Lc8/rxf;)Lc8/mxf;

    .line 491
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/tOf;->mStrategyConfig:Lc8/nHf;

    if-eqz v13, :cond_14

    .line 492
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/tOf;->mStrategyConfig:Lc8/nHf;

    invoke-virtual {v13}, Lc8/nHf;->getBizIdStr()Ljava/lang/String;

    move-result-object v2

    .line 494
    .local v2, "bizIdStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/tOf;->mStrategyConfig:Lc8/nHf;

    invoke-virtual {v13}, Lc8/nHf;->getBizId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, "bizCode":Ljava/lang/String;
    :goto_5
    const-string/jumbo v13, "bundle_biz_code"

    invoke-virtual {v3, v13, v1}, Lc8/mxf;->addLoaderExtra(Ljava/lang/String;Ljava/lang/String;)Lc8/mxf;

    .line 499
    .end local v1    # "bizCode":Ljava/lang/String;
    .end local v2    # "bizIdStr":Ljava/lang/String;
    :cond_14
    invoke-virtual {v3}, Lc8/mxf;->fetch()Lc8/nxf;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/tOf;->mTicket:Lc8/nxf;

    .line 500
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/tOf;->mTicket:Lc8/nxf;

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/tOf;->mUrl:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lc8/nxf;->setUrl(Ljava/lang/String;)V

    .line 501
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 456
    .end local v3    # "creator":Lc8/mxf;
    .end local v10    # "nowOptions":Lc8/uOf;
    :cond_15
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 457
    :cond_16
    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/tOf;->mGlobalPhenixOptions:Lc8/uOf;

    goto/16 :goto_4

    .restart local v2    # "bizIdStr":Ljava/lang/String;
    .restart local v3    # "creator":Lc8/mxf;
    .restart local v10    # "nowOptions":Lc8/uOf;
    :cond_17
    move-object v1, v2

    .line 494
    goto :goto_5
.end method

.method private placeBgResImage(I)V
    .locals 3
    .param p1, "resourceId"    # I

    .prologue
    .line 555
    invoke-virtual {p0}, Lc8/tOf;->getHost()Landroid/widget/ImageView;

    move-result-object v0

    .line 556
    .local v0, "view":Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    iget-object v1, p0, Lc8/tOf;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lc8/NNf;->isPictureResource(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 561
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 565
    :cond_2
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v1

    invoke-static {p1}, Lc8/Mxf;->wrapRes(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/ixf;->load(Ljava/lang/String;)Lc8/mxf;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lc8/mxf;->schedulePriority(I)Lc8/mxf;

    move-result-object v1

    new-instance v2, Lc8/oOf;

    invoke-direct {v2, p0}, Lc8/oOf;-><init>(Lc8/tOf;)V

    invoke-virtual {v1, v2}, Lc8/mxf;->succListener(Lc8/qxf;)Lc8/mxf;

    move-result-object v1

    .line 576
    invoke-virtual {v1}, Lc8/mxf;->fetch()Lc8/nxf;

    move-result-object v1

    iput-object v1, p0, Lc8/tOf;->mLastResTicket:Lc8/nxf;

    goto :goto_0
.end method


# virtual methods
.method public afterOnLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v2, 0x1

    .line 221
    sub-int v3, p4, p2

    sub-int v4, p5, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 222
    .local v0, "maxSize":I
    iget v3, p0, Lc8/tOf;->mLastMaxViewSize:I

    if-lez v3, :cond_3

    iget v3, p0, Lc8/tOf;->mLastMaxViewSize:I

    sub-int v3, v0, v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_3

    move v1, v2

    .line 223
    .local v1, "resized":Z
    :goto_0
    iput v0, p0, Lc8/tOf;->mLastMaxViewSize:I

    .line 224
    if-nez v1, :cond_0

    iget v3, p0, Lc8/tOf;->mLoadState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 225
    :cond_0
    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {p0}, Lc8/tOf;->resetState()V

    .line 228
    :cond_1
    invoke-direct {p0, v2}, Lc8/tOf;->loadImageIfNecessary(Z)Z

    .line 230
    :cond_2
    return-void

    .line 222
    .end local v1    # "resized":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public beforeOnLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 216
    return-void
.end method

.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/tOf;->constructor(Landroid/content/Context;Landroid/util/AttributeSet;I[Z)V

    .line 193
    return-void
.end method

.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I[Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "autoReleaseRet"    # [Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 196
    if-eqz p2, :cond_2

    .line 197
    sget-object v1, Lcom/youku/phone/R$styleable;->ImageLoadFeature:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 198
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_2

    .line 199
    sget v1, Lcom/youku/phone/R$styleable;->ImageLoadFeature_uik_fade_in:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lc8/tOf;->mFadeIn:Z

    .line 200
    sget v1, Lcom/youku/phone/R$styleable;->ImageLoadFeature_uik_skip_auto_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    sget v1, Lcom/youku/phone/R$styleable;->ImageLoadFeature_uik_skip_auto_size:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lc8/tOf;->mSkipAutoSize:Ljava/lang/Boolean;

    .line 203
    :cond_0
    sget v1, Lcom/youku/phone/R$styleable;->ImageLoadFeature_uik_when_null_clear_img:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lc8/tOf;->mWhenNullClearImg:Z

    .line 204
    sget v1, Lcom/youku/phone/R$styleable;->ImageLoadFeature_uik_place_hold_background:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lc8/tOf;->mPlaceHoldResourceId:I

    .line 205
    sget v1, Lcom/youku/phone/R$styleable;->ImageLoadFeature_uik_error_background:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lc8/tOf;->mErrorImageId:I

    .line 206
    sget v1, Lcom/youku/phone/R$styleable;->ImageLoadFeature_uik_place_hold_foreground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lc8/tOf;->mPlaceHoldForeground:Landroid/graphics/drawable/Drawable;

    .line 207
    if-eqz p4, :cond_1

    .line 208
    sget v1, Lcom/youku/phone/R$styleable;->ImageLoadFeature_uik_auto_release_image:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    aput-boolean v1, p4, v2

    .line 210
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_2
    return-void
.end method

.method public enableLoadOnFling(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 334
    iput-boolean p1, p0, Lc8/tOf;->mEnabledLoadOnFling:Z

    .line 335
    return-void
.end method

.method public enableSizeInLayoutParams(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 338
    iput-boolean p1, p0, Lc8/tOf;->mEnableSizeInLayoutParams:Z

    .line 339
    return-void
.end method

.method public failListener(Lc8/qxf;)Lc8/tOf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/qxf",
            "<",
            "Lc8/pxf;",
            ">;)",
            "Lc8/tOf;"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "listener":Lc8/qxf;, "Lcom/taobao/phenix/intf/event/IPhenixListener<Lcom/taobao/phenix/intf/event/FailPhenixEvent;>;"
    iput-object p1, p0, Lc8/tOf;->mUserFailListener:Lc8/qxf;

    .line 254
    return-object p0
.end method

.method public bridge synthetic getHost()Landroid/view/View;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lc8/tOf;->getHost()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lc8/tOf;->mHostReference:Ljava/lang/ref/WeakReference;

    .line 184
    .local v0, "hostRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/ImageView;>;"
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 187
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lc8/tOf;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lc8/tOf;->mLoadingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isFadeIn()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lc8/tOf;->mFadeIn:Z

    return v0
.end method

.method public keepBackgroundOnForegroundUpdate(Z)V
    .locals 1
    .param p1, "keep"    # Z

    .prologue
    .line 330
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lc8/tOf;->mKeepBackgroundState:I

    .line 331
    return-void

    .line 330
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x1

    iput v0, p0, Lc8/tOf;->mScrollState:I

    .line 361
    return-void
.end method

.method public reload(Z)V
    .locals 6
    .param p1, "isAsync"    # Z

    .prologue
    .line 258
    iget-object v1, p0, Lc8/tOf;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lc8/tOf;->mCacheKey4PlaceHolder:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lc8/tOf;->mNextPhenixOptions:Lc8/uOf;

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lc8/tOf;->setImageUrl(Ljava/lang/String;Ljava/lang/String;ZZLc8/uOf;)V

    .line 259
    return-void
.end method

.method public resetState()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lc8/tOf;->mLoadState:I

    .line 267
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 364
    iget v0, p0, Lc8/tOf;->mScrollState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 365
    iput v2, p0, Lc8/tOf;->mScrollState:I

    .line 372
    iget v0, p0, Lc8/tOf;->mLoadState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lc8/tOf;->mLoadState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 373
    :cond_0
    invoke-virtual {p0}, Lc8/tOf;->resetState()V

    .line 374
    invoke-direct {p0, v2}, Lc8/tOf;->loadImageIfNecessary(Z)Z

    .line 377
    :cond_1
    return-void
.end method

.method public retrieveImageData()Lc8/exf;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 323
    iget-object v0, p0, Lc8/tOf;->mLoadingUrl:Ljava/lang/String;

    .local v0, "loadedUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    const/4 v1, 0x0

    .line 326
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v1

    invoke-direct {p0}, Lc8/tOf;->getPriorityModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Lc8/ixf;->fetchDiskCache(Ljava/lang/String;Ljava/lang/String;IZ)Lc8/exf;

    move-result-object v1

    goto :goto_0
.end method

.method public setErrorImageResId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 356
    iput p1, p0, Lc8/tOf;->mErrorImageId:I

    .line 357
    return-void
.end method

.method public setFadeIn(Z)V
    .locals 0
    .param p1, "fadeIn"    # Z

    .prologue
    .line 584
    iput-boolean p1, p0, Lc8/tOf;->mFadeIn:Z

    .line 585
    return-void
.end method

.method public setFinalUrlInspector(Lc8/COf;)V
    .locals 0
    .param p1, "inspector"    # Lc8/COf;

    .prologue
    .line 241
    iput-object p1, p0, Lc8/tOf;->mFinalUrlInspector:Lc8/COf;

    .line 242
    return-void
.end method

.method public bridge synthetic setHost(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lc8/tOf;->setHost(Landroid/widget/ImageView;)V

    return-void
.end method

.method public setHost(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "host"    # Landroid/widget/ImageView;

    .prologue
    const/4 v0, 0x0

    .line 163
    if-nez p1, :cond_1

    .line 164
    iput-object v0, p0, Lc8/tOf;->mHostReference:Ljava/lang/ref/WeakReference;

    .line 166
    iput-object v0, p0, Lc8/tOf;->mUserSuccListener:Lc8/qxf;

    .line 167
    iput-object v0, p0, Lc8/tOf;->mUserFailListener:Lc8/qxf;

    .line 168
    iget-object v0, p0, Lc8/tOf;->mTicket:Lc8/nxf;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lc8/tOf;->mTicket:Lc8/nxf;

    invoke-virtual {v0}, Lc8/nxf;->cancel()Z

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/tOf;->mHostReference:Ljava/lang/ref/WeakReference;

    .line 175
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/tOf;->mContext:Landroid/content/Context;

    .line 176
    iget-object v0, p0, Lc8/tOf;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/tOf;->loadImageIfNecessary(Z)Z

    goto :goto_0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 262
    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lc8/tOf;->setImageUrl(Ljava/lang/String;Ljava/lang/String;ZZLc8/uOf;)V

    .line 263
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Ljava/lang/String;ZZLc8/uOf;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cacheKey4PlaceHolder"    # Ljava/lang/String;
    .param p3, "isAsync"    # Z
    .param p4, "forceLoad"    # Z
    .param p5, "options"    # Lc8/uOf;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 270
    iput-boolean v4, p0, Lc8/tOf;->mUserCalledSetImageUrl:Z

    .line 273
    if-nez p4, :cond_1

    iget v1, p0, Lc8/tOf;->mLoadState:I

    if-eqz v1, :cond_1

    iget v1, p0, Lc8/tOf;->mLoadState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lc8/tOf;->mUrl:Ljava/lang/String;

    .line 274
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/tOf;->mCacheKey4PlaceHolder:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/tOf;->mNextPhenixOptions:Lc8/uOf;

    .line 275
    invoke-static {v1, p5}, Lc8/uOf;->isSame(Lc8/uOf;Lc8/uOf;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iput-object p1, p0, Lc8/tOf;->mUrl:Ljava/lang/String;

    .line 282
    iput-object p2, p0, Lc8/tOf;->mCacheKey4PlaceHolder:Ljava/lang/String;

    .line 283
    iput-boolean v3, p0, Lc8/tOf;->mNoRepeatOnError:Z

    .line 284
    invoke-virtual {p0}, Lc8/tOf;->resetState()V

    .line 285
    iput-object p5, p0, Lc8/tOf;->mNextPhenixOptions:Lc8/uOf;

    .line 287
    invoke-virtual {p0}, Lc8/tOf;->getHost()Landroid/widget/ImageView;

    move-result-object v0

    .line 288
    .local v0, "hostView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 289
    if-eqz p3, :cond_3

    .line 290
    iget-object v1, p0, Lc8/tOf;->mUrl:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 291
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v1

    iget-object v2, p0, Lc8/tOf;->mTicket:Lc8/nxf;

    invoke-virtual {v1, v2}, Lc8/ixf;->cancel(Lc8/nxf;)V

    .line 292
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3, v4}, Lc8/tOf;->fillImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;ZZ)V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v1, p0, Lc8/tOf;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lc8/nOf;

    invoke-direct {v2, p0}, Lc8/nOf;-><init>(Lc8/tOf;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 302
    :cond_3
    invoke-direct {p0, v3}, Lc8/tOf;->loadImageIfNecessary(Z)Z

    goto :goto_0
.end method

.method public setPhenixOptions(Lc8/uOf;)V
    .locals 0
    .param p1, "phenixOptions"    # Lc8/uOf;

    .prologue
    .line 604
    iput-object p1, p0, Lc8/tOf;->mGlobalPhenixOptions:Lc8/uOf;

    .line 605
    return-void
.end method

.method public setPlaceHoldForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 349
    iput-object p1, p0, Lc8/tOf;->mPlaceHoldForeground:Landroid/graphics/drawable/Drawable;

    .line 350
    return-void
.end method

.method public setPlaceHoldImageResId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 345
    iput p1, p0, Lc8/tOf;->mPlaceHoldResourceId:I

    .line 346
    return-void
.end method

.method public setPriorityModuleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 600
    iput-object p1, p0, Lc8/tOf;->mPriorityModuleName:Ljava/lang/String;

    .line 601
    return-void
.end method

.method public setStrategyConfig(Ljava/lang/Object;)V
    .locals 1
    .param p1, "config"    # Ljava/lang/Object;

    .prologue
    .line 156
    instance-of v0, p1, Lc8/nHf;

    if-eqz v0, :cond_0

    .line 157
    check-cast p1, Lc8/nHf;

    .end local p1    # "config":Ljava/lang/Object;
    iput-object p1, p0, Lc8/tOf;->mStrategyConfig:Lc8/nHf;

    .line 159
    :cond_0
    return-void
.end method

.method public setWhenNullClearImg(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 588
    iput-boolean p1, p0, Lc8/tOf;->mWhenNullClearImg:Z

    .line 589
    return-void
.end method

.method public skipAutoSize(Z)Z
    .locals 1
    .param p1, "skip"    # Z

    .prologue
    .line 236
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc8/tOf;->mSkipAutoSize:Ljava/lang/Boolean;

    .line 237
    return p1
.end method

.method public succListener(Lc8/qxf;)Lc8/tOf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/qxf",
            "<",
            "Lc8/wxf;",
            ">;)",
            "Lc8/tOf;"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "listener":Lc8/qxf;, "Lcom/taobao/phenix/intf/event/IPhenixListener<Lcom/taobao/phenix/intf/event/SuccPhenixEvent;>;"
    iput-object p1, p0, Lc8/tOf;->mUserSuccListener:Lc8/qxf;

    .line 249
    return-object p0
.end method
