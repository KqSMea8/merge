.class public Lc8/hcb;
.super Lc8/Ds;
.source "LottieAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieAnimationView$SavedState;,
        Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;
    }
.end annotation


# static fields
.field private static final ASSET_STRONG_REF_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/kcb;",
            ">;"
        }
    .end annotation
.end field

.field private static final ASSET_WEAK_REF_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/kcb;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final RAW_RES_STRONG_REF_CACHE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lc8/kcb;",
            ">;"
        }
    .end annotation
.end field

.field private static final RAW_RES_WEAK_REF_CACHE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/kcb;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private animationName:Ljava/lang/String;

.field private animationResId:I
    .annotation build Landroid/support/annotation/RawRes;
    .end annotation
.end field

.field private autoPlay:Z

.field private composition:Lc8/kcb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private compositionLoader:Lc8/Zbb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private defaultCacheStrategy:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

.field private final loadedListener:Lc8/xcb;

.field private final lottieDrawable:Lc8/tcb;

.field private useHardwareLayer:Z

.field private wasAnimatingWhenDetached:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lc8/hcb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/hcb;->TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lc8/hcb;->RAW_RES_STRONG_REF_CACHE:Landroid/util/SparseArray;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lc8/hcb;->RAW_RES_WEAK_REF_CACHE:Landroid/util/SparseArray;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/hcb;->ASSET_STRONG_REF_CACHE:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/hcb;->ASSET_WEAK_REF_CACHE:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1}, Lc8/Ds;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Lc8/dcb;

    invoke-direct {v0, p0}, Lc8/dcb;-><init>(Lc8/hcb;)V

    iput-object v0, p0, Lc8/hcb;->loadedListener:Lc8/xcb;

    .line 77
    new-instance v0, Lc8/tcb;

    invoke-direct {v0}, Lc8/tcb;-><init>()V

    iput-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    .line 81
    iput-boolean v1, p0, Lc8/hcb;->wasAnimatingWhenDetached:Z

    .line 82
    iput-boolean v1, p0, Lc8/hcb;->autoPlay:Z

    .line 83
    iput-boolean v1, p0, Lc8/hcb;->useHardwareLayer:Z

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/hcb;->init(Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Lc8/Ds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    new-instance v0, Lc8/dcb;

    invoke-direct {v0, p0}, Lc8/dcb;-><init>(Lc8/hcb;)V

    iput-object v0, p0, Lc8/hcb;->loadedListener:Lc8/xcb;

    .line 77
    new-instance v0, Lc8/tcb;

    invoke-direct {v0}, Lc8/tcb;-><init>()V

    iput-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    .line 81
    iput-boolean v1, p0, Lc8/hcb;->wasAnimatingWhenDetached:Z

    .line 82
    iput-boolean v1, p0, Lc8/hcb;->autoPlay:Z

    .line 83
    iput-boolean v1, p0, Lc8/hcb;->useHardwareLayer:Z

    .line 96
    invoke-direct {p0, p2}, Lc8/hcb;->init(Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lc8/Ds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Lc8/dcb;

    invoke-direct {v0, p0}, Lc8/dcb;-><init>(Lc8/hcb;)V

    iput-object v0, p0, Lc8/hcb;->loadedListener:Lc8/xcb;

    .line 77
    new-instance v0, Lc8/tcb;

    invoke-direct {v0}, Lc8/tcb;-><init>()V

    iput-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    .line 81
    iput-boolean v1, p0, Lc8/hcb;->wasAnimatingWhenDetached:Z

    .line 82
    iput-boolean v1, p0, Lc8/hcb;->autoPlay:Z

    .line 83
    iput-boolean v1, p0, Lc8/hcb;->useHardwareLayer:Z

    .line 101
    invoke-direct {p0, p2}, Lc8/hcb;->init(Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method static synthetic access$002(Lc8/hcb;Lc8/Zbb;)Lc8/Zbb;
    .locals 0
    .param p0, "x0"    # Lc8/hcb;
    .param p1, "x1"    # Lc8/Zbb;

    .prologue
    .line 46
    iput-object p1, p0, Lc8/hcb;->compositionLoader:Lc8/Zbb;

    return-object p1
.end method

.method static synthetic access$100()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lc8/hcb;->RAW_RES_STRONG_REF_CACHE:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lc8/hcb;->RAW_RES_WEAK_REF_CACHE:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Map;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lc8/hcb;->ASSET_STRONG_REF_CACHE:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Map;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lc8/hcb;->ASSET_WEAK_REF_CACHE:Ljava/util/Map;

    return-object v0
.end method

.method private cancelLoaderTask()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lc8/hcb;->compositionLoader:Lc8/Zbb;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lc8/hcb;->compositionLoader:Lc8/Zbb;

    invoke-interface {v0}, Lc8/Zbb;->cancel()V

    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/hcb;->compositionLoader:Lc8/Zbb;

    .line 448
    :cond_0
    return-void
.end method

.method private enableOrDisableHardwareLayer()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 726
    iget-boolean v2, p0, Lc8/hcb;->useHardwareLayer:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v2}, Lc8/tcb;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 727
    .local v0, "useHardwareLayer":Z
    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lc8/hcb;->setLayerType(ILandroid/graphics/Paint;)V

    .line 728
    return-void

    .line 726
    .end local v0    # "useHardwareLayer":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 105
    invoke-virtual {p0}, Lc8/hcb;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/youku/phone/R$styleable;->LottieAnimationView:[I

    invoke-virtual {v6, p1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 106
    .local v5, "ta":Landroid/content/res/TypedArray;
    sget v6, Lcom/youku/phone/R$styleable;->LottieAnimationView_lottie_cacheStrategy:I

    sget-object v7, Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;->Weak:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    .line 108
    invoke-virtual {v7}, Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;->ordinal()I

    move-result v7

    .line 106
    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 109
    .local v0, "cacheStrategy":I
    invoke-static {}, Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;->values()[Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    move-result-object v6

    aget-object v6, v6, v0

    iput-object v6, p0, Lc8/hcb;->defaultCacheStrategy:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    .line 110
    invoke-virtual {p0}, Lc8/hcb;->isInEditMode()Z

    move-result v6

    if-nez v6, :cond_1

    .line 111
    sget v6, Lcom/youku/phone/R$styleable;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    .line 112
    .local v3, "hasRawRes":Z
    sget v6, Lcom/youku/phone/R$styleable;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    .line 113
    .local v2, "hasFileName":Z
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 114
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "lottie_rawRes and lottie_fileName cannot be used at the same time. Please use use only one at once."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 116
    :cond_0
    if-eqz v3, :cond_6

    .line 117
    sget v6, Lcom/youku/phone/R$styleable;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 118
    .local v4, "rawResId":I
    if-eqz v4, :cond_1

    .line 119
    invoke-virtual {p0, v4}, Lc8/hcb;->setAnimation(I)V

    .line 128
    .end local v2    # "hasFileName":Z
    .end local v3    # "hasRawRes":Z
    .end local v4    # "rawResId":I
    :cond_1
    :goto_0
    sget v6, Lcom/youku/phone/R$styleable;->LottieAnimationView_lottie_autoPlay:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 129
    iget-object v6, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v6}, Lc8/tcb;->playAnimation()V

    .line 130
    const/4 v6, 0x1

    iput-boolean v6, p0, Lc8/hcb;->autoPlay:Z

    .line 132
    :cond_2
    iget-object v6, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    sget v7, Lcom/youku/phone/R$styleable;->LottieAnimationView_lottie_loop:I

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {v6, v7}, Lc8/tcb;->loop(Z)V

    .line 133
    sget v6, Lcom/youku/phone/R$styleable;->LottieAnimationView_lottie_imageAssetsFolder:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lc8/hcb;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 134
    sget v6, Lcom/youku/phone/R$styleable;->LottieAnimationView_lottie_progress:I

    invoke-virtual {v5, v6, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {p0, v6}, Lc8/hcb;->setProgress(F)V

    .line 135
    sget v6, Lcom/youku/phone/R$styleable;->LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Lc8/hcb;->enableMergePathsForKitKatAndAbove(Z)V

    .line 137
    sget v6, Lcom/youku/phone/R$styleable;->LottieAnimationView_lottie_colorFilter:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 138
    new-instance v6, Lc8/Bcb;

    sget v7, Lcom/youku/phone/R$styleable;->LottieAnimationView_lottie_colorFilter:I

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-direct {v6, v7}, Lc8/Bcb;-><init>(I)V

    invoke-virtual {p0, v6}, Lc8/hcb;->addColorFilter(Landroid/graphics/ColorFilter;)V

    .line 141
    :cond_3
    sget v6, Lcom/youku/phone/R$styleable;->LottieAnimationView_lottie_scale:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 142
    iget-object v6, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    sget v7, Lcom/youku/phone/R$styleable;->LottieAnimationView_lottie_scale:I

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    invoke-virtual {v6, v7}, Lc8/tcb;->setScale(F)V

    .line 145
    :cond_4
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    invoke-virtual {p0}, Lc8/hcb;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lc8/Kfb;->getAnimationScale(Landroid/content/Context;)F

    move-result v6

    cmpl-float v6, v6, v9

    if-nez v6, :cond_5

    .line 148
    iget-object v6, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v6}, Lc8/tcb;->systemAnimationsAreDisabled()V

    .line 151
    :cond_5
    invoke-direct {p0}, Lc8/hcb;->enableOrDisableHardwareLayer()V

    .line 152
    return-void

    .line 121
    .restart local v2    # "hasFileName":Z
    .restart local v3    # "hasRawRes":Z
    :cond_6
    if-eqz v2, :cond_1

    .line 122
    sget v6, Lcom/youku/phone/R$styleable;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "fileName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {p0, v1}, Lc8/hcb;->setAnimation(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 590
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1}, Lc8/tcb;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 591
    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 582
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1}, Lc8/tcb;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 583
    return-void
.end method

.method public addColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 200
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1}, Lc8/tcb;->addColorFilter(Landroid/graphics/ColorFilter;)V

    .line 201
    return-void
.end method

.method public addColorFilterToContent(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "layerName"    # Ljava/lang/String;
    .param p2, "contentName"    # Ljava/lang/String;
    .param p3, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 182
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1, p2, p3}, Lc8/tcb;->addColorFilterToContent(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 183
    return-void
.end method

.method public addColorFilterToLayer(Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "layerName"    # Ljava/lang/String;
    .param p2, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 192
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1, p2}, Lc8/tcb;->addColorFilterToLayer(Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 193
    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->cancelAnimation()V

    .line 680
    invoke-direct {p0}, Lc8/hcb;->enableOrDisableHardwareLayer()V

    .line 681
    return-void
.end method

.method public clearColorFilters()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->clearColorFilters()V

    .line 208
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 289
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1}, Lc8/tcb;->enableMergePathsForKitKatAndAbove(Z)V

    .line 290
    return-void
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lc8/hcb;->composition:Lc8/kcb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/hcb;->composition:Lc8/kcb;

    invoke-virtual {v0}, Lc8/kcb;->getDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getFrame()I
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->getFrame()I

    move-result v0

    return v0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 619
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->getImageAssetsFolder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPerformanceTracker()Lc8/Acb;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 722
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->getPerformanceTracker()Lc8/Acb;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()F
    .locals 1
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .prologue
    .line 709
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->getProgress()F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->getScale()F

    move-result v0

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->getSpeed()F

    move-result v0

    return v0
.end method

.method public hasMasks()Z
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->hasMasks()Z

    move-result v0

    return v0
.end method

.method public hasMatte()Z
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->hasMatte()Z

    move-result v0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 211
    invoke-virtual {p0}, Lc8/hcb;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    if-ne v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-super {p0, v0}, Lc8/Ds;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-super {p0, p1}, Lc8/Ds;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->isAnimating()Z

    move-result v0

    return v0
.end method

.method public loop(Z)V
    .locals 1
    .param p1, "loop"    # Z

    .prologue
    .line 598
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1}, Lc8/tcb;->loop(Z)V

    .line 599
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Lc8/Ds;->onAttachedToWindow()V

    .line 259
    iget-boolean v0, p0, Lc8/hcb;->autoPlay:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc8/hcb;->wasAnimatingWhenDetached:Z

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lc8/hcb;->playAnimation()V

    .line 262
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lc8/hcb;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lc8/hcb;->cancelAnimation()V

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/hcb;->wasAnimatingWhenDetached:Z

    .line 269
    :cond_0
    invoke-virtual {p0}, Lc8/hcb;->recycleBitmaps()V

    .line 270
    invoke-super {p0}, Lc8/Ds;->onDetachedFromWindow()V

    .line 271
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 234
    instance-of v1, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    if-nez v1, :cond_0

    .line 235
    invoke-super {p0, p1}, Lc8/Ds;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 255
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 239
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    .line 240
    .local v0, "ss":Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lc8/Ds;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 241
    iget-object v1, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    iput-object v1, p0, Lc8/hcb;->animationName:Ljava/lang/String;

    .line 242
    iget-object v1, p0, Lc8/hcb;->animationName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    iget-object v1, p0, Lc8/hcb;->animationName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lc8/hcb;->setAnimation(Ljava/lang/String;)V

    .line 245
    :cond_1
    iget v1, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationResId:I

    iput v1, p0, Lc8/hcb;->animationResId:I

    .line 246
    iget v1, p0, Lc8/hcb;->animationResId:I

    if-eqz v1, :cond_2

    .line 247
    iget v1, p0, Lc8/hcb;->animationResId:I

    invoke-virtual {p0, v1}, Lc8/hcb;->setAnimation(I)V

    .line 249
    :cond_2
    iget v1, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->progress:F

    invoke-virtual {p0, v1}, Lc8/hcb;->setProgress(F)V

    .line 250
    iget-boolean v1, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isLooping:Z

    invoke-virtual {p0, v1}, Lc8/hcb;->loop(Z)V

    .line 251
    iget-boolean v1, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isAnimating:Z

    if-eqz v1, :cond_3

    .line 252
    invoke-virtual {p0}, Lc8/hcb;->playAnimation()V

    .line 254
    :cond_3
    iget-object v1, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    iget-object v2, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc8/tcb;->setImagesAssetsFolder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 222
    invoke-super {p0}, Lc8/Ds;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 223
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 224
    .local v0, "ss":Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    iget-object v2, p0, Lc8/hcb;->animationName:Ljava/lang/String;

    iput-object v2, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    .line 225
    iget v2, p0, Lc8/hcb;->animationResId:I

    iput v2, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationResId:I

    .line 226
    iget-object v2, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v2}, Lc8/tcb;->getProgress()F

    move-result v2

    iput v2, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->progress:F

    .line 227
    iget-object v2, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v2}, Lc8/tcb;->isAnimating()Z

    move-result v2

    iput-boolean v2, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isAnimating:Z

    .line 228
    iget-object v2, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v2}, Lc8/tcb;->isLooping()Z

    move-result v2

    iput-boolean v2, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isLooping:Z

    .line 229
    iget-object v2, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v2}, Lc8/tcb;->getImageAssetsFolder()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    .line 230
    return-object v0
.end method

.method public pauseAnimation()V
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->pauseAnimation()V

    .line 685
    invoke-direct {p0}, Lc8/hcb;->enableOrDisableHardwareLayer()V

    .line 686
    return-void
.end method

.method public playAnimation()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->playAnimation()V

    .line 499
    invoke-direct {p0}, Lc8/hcb;->enableOrDisableHardwareLayer()V

    .line 500
    return-void
.end method

.method recycleBitmaps()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->recycleBitmaps()V

    .line 279
    :cond_0
    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 594
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1}, Lc8/tcb;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 595
    return-void
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 586
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1}, Lc8/tcb;->removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 587
    return-void
.end method

.method public resumeAnimation()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->resumeAnimation()V

    .line 508
    invoke-direct {p0}, Lc8/hcb;->enableOrDisableHardwareLayer()V

    .line 509
    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0}, Lc8/tcb;->reverseAnimationSpeed()V

    .line 565
    return-void
.end method

.method public setAnimation(I)V
    .locals 1
    .param p1, "animationResId"    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param

    .prologue
    .line 340
    iget-object v0, p0, Lc8/hcb;->defaultCacheStrategy:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    invoke-virtual {p0, p1, v0}, Lc8/hcb;->setAnimation(ILcom/airbnb/lottie/LottieAnimationView$CacheStrategy;)V

    .line 341
    return-void
.end method

.method public setAnimation(ILcom/airbnb/lottie/LottieAnimationView$CacheStrategy;)V
    .locals 4
    .param p1, "animationResId"    # I
        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .param p2, "cacheStrategy"    # Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    .prologue
    .line 352
    iput p1, p0, Lc8/hcb;->animationResId:I

    .line 353
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/hcb;->animationName:Ljava/lang/String;

    .line 354
    sget-object v2, Lc8/hcb;->RAW_RES_WEAK_REF_CACHE:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-lez v2, :cond_0

    .line 355
    sget-object v2, Lc8/hcb;->RAW_RES_WEAK_REF_CACHE:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 356
    .local v0, "compRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/airbnb/lottie/LottieComposition;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/kcb;

    .line 357
    .local v1, "ref":Lc8/kcb;
    if-eqz v1, :cond_1

    .line 358
    invoke-virtual {p0, v1}, Lc8/hcb;->setComposition(Lc8/kcb;)V

    .line 380
    .end local v0    # "compRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/airbnb/lottie/LottieComposition;>;"
    .end local v1    # "ref":Lc8/kcb;
    :goto_0
    return-void

    .line 361
    :cond_0
    sget-object v2, Lc8/hcb;->RAW_RES_STRONG_REF_CACHE:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 362
    sget-object v2, Lc8/hcb;->RAW_RES_STRONG_REF_CACHE:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/kcb;

    invoke-virtual {p0, v2}, Lc8/hcb;->setComposition(Lc8/kcb;)V

    goto :goto_0

    .line 366
    :cond_1
    iget-object v2, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v2}, Lc8/tcb;->cancelAnimation()V

    .line 367
    invoke-direct {p0}, Lc8/hcb;->cancelLoaderTask()V

    .line 368
    invoke-virtual {p0}, Lc8/hcb;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lc8/ecb;

    invoke-direct {v3, p0, p2, p1}, Lc8/ecb;-><init>(Lc8/hcb;Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;I)V

    invoke-static {v2, p1, v3}, Lc8/jcb;->fromRawFile(Landroid/content/Context;ILc8/xcb;)Lc8/Zbb;

    move-result-object v2

    iput-object v2, p0, Lc8/hcb;->compositionLoader:Lc8/Zbb;

    goto :goto_0
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 1
    .param p1, "animationName"    # Ljava/lang/String;

    .prologue
    .line 389
    iget-object v0, p0, Lc8/hcb;->defaultCacheStrategy:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    invoke-virtual {p0, p1, v0}, Lc8/hcb;->setAnimation(Ljava/lang/String;Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;)V

    .line 390
    return-void
.end method

.method public setAnimation(Ljava/lang/String;Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;)V
    .locals 4
    .param p1, "animationName"    # Ljava/lang/String;
    .param p2, "cacheStrategy"    # Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    .prologue
    .line 401
    iput-object p1, p0, Lc8/hcb;->animationName:Ljava/lang/String;

    .line 402
    const/4 v2, 0x0

    iput v2, p0, Lc8/hcb;->animationResId:I

    .line 403
    sget-object v2, Lc8/hcb;->ASSET_WEAK_REF_CACHE:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    sget-object v2, Lc8/hcb;->ASSET_WEAK_REF_CACHE:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 405
    .local v0, "compRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/airbnb/lottie/LottieComposition;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/kcb;

    .line 406
    .local v1, "ref":Lc8/kcb;
    if-eqz v1, :cond_1

    .line 407
    invoke-virtual {p0, v1}, Lc8/hcb;->setComposition(Lc8/kcb;)V

    .line 429
    .end local v0    # "compRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/airbnb/lottie/LottieComposition;>;"
    .end local v1    # "ref":Lc8/kcb;
    :goto_0
    return-void

    .line 410
    :cond_0
    sget-object v2, Lc8/hcb;->ASSET_STRONG_REF_CACHE:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    sget-object v2, Lc8/hcb;->ASSET_STRONG_REF_CACHE:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/kcb;

    invoke-virtual {p0, v2}, Lc8/hcb;->setComposition(Lc8/kcb;)V

    goto :goto_0

    .line 415
    :cond_1
    iget-object v2, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v2}, Lc8/tcb;->cancelAnimation()V

    .line 416
    invoke-direct {p0}, Lc8/hcb;->cancelLoaderTask()V

    .line 417
    invoke-virtual {p0}, Lc8/hcb;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lc8/fcb;

    invoke-direct {v3, p0, p2, p1}, Lc8/fcb;-><init>(Lc8/hcb;Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;Ljava/lang/String;)V

    invoke-static {v2, p1, v3}, Lc8/jcb;->fromAssetFileName(Landroid/content/Context;Ljava/lang/String;Lc8/xcb;)Lc8/Zbb;

    move-result-object v2

    iput-object v2, p0, Lc8/hcb;->compositionLoader:Lc8/Zbb;

    goto :goto_0
.end method

.method public setAnimation(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 439
    invoke-direct {p0}, Lc8/hcb;->cancelLoaderTask()V

    .line 440
    invoke-virtual {p0}, Lc8/hcb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lc8/hcb;->loadedListener:Lc8/xcb;

    invoke-static {v0, p1, v1}, Lc8/jcb;->fromJson(Landroid/content/res/Resources;Lorg/json/JSONObject;Lc8/xcb;)Lc8/Zbb;

    move-result-object v0

    iput-object v0, p0, Lc8/hcb;->compositionLoader:Lc8/Zbb;

    .line 441
    return-void
.end method

.method public setComposition(Lc8/kcb;)V
    .locals 2
    .param p1, "composition"    # Lc8/kcb;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 459
    iget-object v1, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v1, p0}, Lc8/tcb;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 461
    iget-object v1, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v1, p1}, Lc8/tcb;->setComposition(Lc8/kcb;)Z

    move-result v0

    .line 462
    .local v0, "isNewComposition":Z
    invoke-direct {p0}, Lc8/hcb;->enableOrDisableHardwareLayer()V

    .line 463
    if-nez v0, :cond_0

    .line 477
    :goto_0
    return-void

    .line 471
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lc8/hcb;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    iget-object v1, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {p0, v1}, Lc8/hcb;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 474
    iput-object p1, p0, Lc8/hcb;->composition:Lc8/kcb;

    .line 476
    invoke-virtual {p0}, Lc8/hcb;->requestLayout()V

    goto :goto_0
.end method

.method public setFontAssetDelegate(Lc8/acb;)V
    .locals 1
    .param p1, "assetDelegate"    # Lc8/acb;

    .prologue
    .line 647
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1}, Lc8/tcb;->setFontAssetDelegate(Lc8/acb;)V

    .line 648
    return-void
.end method

.method public setFrame(I)V
    .locals 1
    .param p1, "frame"    # I

    .prologue
    .line 694
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1}, Lc8/tcb;->setFrame(I)V

    .line 695
    return-void
.end method

.method public setImageAssetDelegate(Lc8/bcb;)V
    .locals 1
    .param p1, "assetDelegate"    # Lc8/bcb;

    .prologue
    .line 639
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1}, Lc8/tcb;->setImageAssetDelegate(Lc8/bcb;)V

    .line 640
    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 1
    .param p1, "imageAssetsFolder"    # Ljava/lang/String;

    .prologue
    .line 614
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1}, Lc8/tcb;->setImagesAssetsFolder(Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 169
    invoke-virtual {p0}, Lc8/hcb;->recycleBitmaps()V

    .line 170
    invoke-direct {p0}, Lc8/hcb;->cancelLoaderTask()V

    .line 171
    invoke-super {p0, p1}, Lc8/Ds;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 172
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 161
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    if-eq p1, v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lc8/hcb;->recycleBitmaps()V

    .line 164
    :cond_0
    invoke-direct {p0}, Lc8/hcb;->cancelLoaderTask()V

    .line 165
    invoke-super {p0, p1}, Lc8/Ds;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 155
    invoke-virtual {p0}, Lc8/hcb;->recycleBitmaps()V

    .line 156
    invoke-direct {p0}, Lc8/hcb;->cancelLoaderTask()V

    .line 157
    invoke-super {p0, p1}, Lc8/Ds;->setImageResource(I)V

    .line 158
    return-void
.end method

.method public setMaxFrame(I)V
    .locals 1
    .param p1, "endFrame"    # I

    .prologue
    .line 529
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1}, Lc8/tcb;->setMaxFrame(I)V

    .line 530
    return-void
.end method

.method public setMaxProgress(F)V
    .locals 1
    .param p1, "endProgress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 536
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1}, Lc8/tcb;->setMaxProgress(F)V

    .line 537
    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 1
    .param p1, "minFrame"    # I
    .param p2, "maxFrame"    # I

    .prologue
    .line 544
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1, p2}, Lc8/tcb;->setMinAndMaxFrame(II)V

    .line 545
    return-void
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 1
    .param p1, "minProgress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p2, "maxProgress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 554
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1, p2}, Lc8/tcb;->setMinAndMaxProgress(FF)V

    .line 555
    return-void
.end method

.method public setMinFrame(I)V
    .locals 1
    .param p1, "startFrame"    # I

    .prologue
    .line 515
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1}, Lc8/tcb;->setMinFrame(I)V

    .line 516
    return-void
.end method

.method public setMinProgress(F)V
    .locals 1
    .param p1, "startProgress"    # F

    .prologue
    .line 522
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1}, Lc8/tcb;->setMinProgress(F)V

    .line 523
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 717
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1}, Lc8/tcb;->setPerformanceTrackingEnabled(Z)V

    .line 718
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 705
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1}, Lc8/tcb;->setProgress(F)V

    .line 706
    return-void
.end method

.method public setScale(F)V
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 667
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1}, Lc8/tcb;->setScale(F)V

    .line 668
    invoke-virtual {p0}, Lc8/hcb;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    if-ne v0, v1, :cond_0

    .line 669
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/hcb;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 670
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {p0, v0}, Lc8/hcb;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 672
    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 571
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1}, Lc8/tcb;->setSpeed(F)V

    .line 572
    return-void
.end method

.method public setTextDelegate(Lc8/Ccb;)V
    .locals 1
    .param p1, "textDelegate"    # Lc8/Ccb;

    .prologue
    .line 654
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1}, Lc8/tcb;->setTextDelegate(Lc8/Ccb;)V

    .line 655
    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 630
    iget-object v0, p0, Lc8/hcb;->lottieDrawable:Lc8/tcb;

    invoke-virtual {v0, p1, p2}, Lc8/tcb;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public useExperimentalHardwareAcceleration()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 297
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/hcb;->useHardwareAcceleration(Z)V

    .line 298
    return-void
.end method

.method public useExperimentalHardwareAcceleration(Z)V
    .locals 0
    .param p1, "use"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p0, p1}, Lc8/hcb;->useHardwareAcceleration(Z)V

    .line 307
    return-void
.end method

.method public useHardwareAcceleration()V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/hcb;->useHardwareAcceleration(Z)V

    .line 314
    return-void
.end method

.method public useHardwareAcceleration(Z)V
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 329
    iput-boolean p1, p0, Lc8/hcb;->useHardwareLayer:Z

    .line 330
    invoke-direct {p0}, Lc8/hcb;->enableOrDisableHardwareLayer()V

    .line 331
    return-void
.end method
