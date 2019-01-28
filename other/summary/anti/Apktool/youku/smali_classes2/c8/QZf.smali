.class public Lc8/QZf;
.super Ljava/lang/Object;
.source "WXTransition.java"


# static fields
.field private static final LAYOUT_PROPERTIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final TRANSFORM_PROPERTIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSITION_DELAY:Ljava/lang/String; = "transitionDelay"

.field public static final TRANSITION_DURATION:Ljava/lang/String; = "transitionDuration"

.field public static final TRANSITION_PROPERTY:Ljava/lang/String; = "transitionProperty"

.field public static final TRANSITION_TIMING_FUNCTION:Ljava/lang/String; = "transitionTimingFunction"


# instance fields
.field private animationRunnable:Ljava/lang/Runnable;

.field private delay:F

.field private domObject:Lc8/HYf;

.field private duration:F

.field private handler:Landroid/os/Handler;

.field private interpolator:Landroid/view/animation/Interpolator;

.field private layoutPendingUpdates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private layoutValueAnimator:Landroid/animation/ValueAnimator;

.field private properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transformAnimator:Landroid/animation/ObjectAnimator;

.field private transformPendingUpdates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transitionEndEvent:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    const-string/jumbo v0, "\\||,"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc8/QZf;->PROPERTY_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 89
    sput-object v0, Lc8/QZf;->LAYOUT_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lc8/QZf;->LAYOUT_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "height"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lc8/QZf;->LAYOUT_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "marginTop"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lc8/QZf;->LAYOUT_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "marginBottom"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lc8/QZf;->LAYOUT_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "marginLeft"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lc8/QZf;->LAYOUT_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "marginRight"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 102
    sput-object v0, Lc8/QZf;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "opacity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lc8/QZf;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "backgroundColor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lc8/QZf;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "transform"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc8/QZf;->properties:Ljava/util/List;

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lc8/QZf;->handler:Landroid/os/Handler;

    .line 125
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/QZf;->layoutPendingUpdates:Ljava/util/Map;

    .line 126
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/QZf;->transformPendingUpdates:Ljava/util/Map;

    .line 127
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/QZf;->targetStyles:Ljava/util/Map;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lc8/QZf;)V
    .locals 0
    .param p0, "x0"    # Lc8/QZf;

    .prologue
    .line 75
    invoke-direct {p0}, Lc8/QZf;->doTransitionAnimation()V

    return-void
.end method

.method static synthetic access$102(Lc8/QZf;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lc8/QZf;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 75
    iput-object p1, p0, Lc8/QZf;->animationRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$202(Lc8/QZf;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lc8/QZf;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 75
    iput-object p1, p0, Lc8/QZf;->transitionEndEvent:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lc8/QZf;)Lc8/tbg;
    .locals 1
    .param p0, "x0"    # Lc8/QZf;

    .prologue
    .line 75
    invoke-direct {p0}, Lc8/QZf;->getComponent()Lc8/tbg;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lc8/QZf;)Lc8/HYf;
    .locals 1
    .param p0, "x0"    # Lc8/QZf;

    .prologue
    .line 75
    iget-object v0, p0, Lc8/QZf;->domObject:Lc8/HYf;

    return-object v0
.end method

.method static synthetic access$500(Lc8/QZf;)V
    .locals 0
    .param p0, "x0"    # Lc8/QZf;

    .prologue
    .line 75
    invoke-direct {p0}, Lc8/QZf;->doPendingTransformAnimation()V

    return-void
.end method

.method static synthetic access$600(Lc8/QZf;)V
    .locals 0
    .param p0, "x0"    # Lc8/QZf;

    .prologue
    .line 75
    invoke-direct {p0}, Lc8/QZf;->onTransitionAnimationEnd()V

    return-void
.end method

.method private createLayoutPropertyValueHolder(Ljava/lang/String;Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .locals 8
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "holder":Landroid/animation/PropertyValuesHolder;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 430
    :goto_1
    if-nez v0, :cond_1

    .line 431
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 433
    :cond_1
    return-object v0

    .line 396
    :sswitch_0
    const-string/jumbo v6, "width"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "height"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "marginTop"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "marginLeft"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v5

    goto :goto_0

    :sswitch_4
    const-string/jumbo v6, "marginRight"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v6, "marginBottom"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    .line 398
    :pswitch_0
    const-string/jumbo v1, "width"

    new-array v5, v4, [F

    iget-object v6, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v6}, Lc8/HYf;->getLayoutWidth()F

    move-result v6

    aput v6, v5, v2

    invoke-static {p2}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v2

    iget-object v6, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v6}, Lc8/HYf;->getViewPortWidth()I

    move-result v6

    invoke-static {v2, v6}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v2

    aput v2, v5, v3

    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 401
    goto :goto_1

    .line 403
    :pswitch_1
    const-string/jumbo v1, "height"

    new-array v5, v4, [F

    iget-object v6, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v6}, Lc8/HYf;->getLayoutHeight()F

    move-result v6

    aput v6, v5, v2

    invoke-static {p2}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v2

    iget-object v6, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v6}, Lc8/HYf;->getViewPortWidth()I

    move-result v6

    invoke-static {v2, v6}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v2

    aput v2, v5, v3

    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 406
    goto/16 :goto_1

    .line 408
    :pswitch_2
    const-string/jumbo v1, "marginTop"

    new-array v5, v4, [F

    iget-object v6, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v6}, Lc8/HYf;->getMargin()Lc8/IZf;

    move-result-object v6

    invoke-virtual {v6, v3}, Lc8/IZf;->get(I)F

    move-result v6

    aput v6, v5, v2

    iget-object v2, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v2}, Lc8/HYf;->getViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v2

    iget-object v6, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v6}, Lc8/HYf;->getViewPortWidth()I

    move-result v6

    invoke-static {v2, v6}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v2

    aput v2, v5, v3

    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 411
    goto/16 :goto_1

    .line 413
    :pswitch_3
    const-string/jumbo v1, "marginLeft"

    new-array v5, v4, [F

    iget-object v6, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v6}, Lc8/HYf;->getMargin()Lc8/IZf;

    move-result-object v6

    invoke-virtual {v6, v2}, Lc8/IZf;->get(I)F

    move-result v6

    aput v6, v5, v2

    iget-object v2, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v2}, Lc8/HYf;->getViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v2

    iget-object v6, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v6}, Lc8/HYf;->getViewPortWidth()I

    move-result v6

    invoke-static {v2, v6}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v2

    aput v2, v5, v3

    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 416
    goto/16 :goto_1

    .line 418
    :pswitch_4
    const-string/jumbo v1, "marginRight"

    new-array v5, v4, [F

    iget-object v6, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v6}, Lc8/HYf;->getMargin()Lc8/IZf;

    move-result-object v6

    invoke-virtual {v6, v4}, Lc8/IZf;->get(I)F

    move-result v6

    aput v6, v5, v2

    iget-object v2, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v2}, Lc8/HYf;->getViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v2

    iget-object v6, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v6}, Lc8/HYf;->getViewPortWidth()I

    move-result v6

    invoke-static {v2, v6}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v2

    aput v2, v5, v3

    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 421
    goto/16 :goto_1

    .line 423
    :pswitch_5
    const-string/jumbo v1, "marginBottom"

    new-array v6, v4, [F

    iget-object v7, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v7}, Lc8/HYf;->getMargin()Lc8/IZf;

    move-result-object v7

    invoke-virtual {v7, v5}, Lc8/IZf;->get(I)F

    move-result v5

    aput v5, v6, v2

    iget-object v2, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v2}, Lc8/HYf;->getViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v2

    iget-object v5, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v5}, Lc8/HYf;->getViewPortWidth()I

    move-result v5

    invoke-static {v2, v5}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v2

    aput v2, v6, v3

    invoke-static {v1, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto/16 :goto_1

    .line 396
    .line 431
    nop

    :sswitch_data_0
    .sparse-switch
        -0x48c76ed9 -> :sswitch_1
        -0x3e464339 -> :sswitch_2
        -0x113c6e87 -> :sswitch_5
        0x6be2dc6 -> :sswitch_0
        0x3a1ea90e -> :sswitch_4
        0x757a12d5 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static createTimeInterpolator(Ljava/lang/String;)Landroid/view/animation/Interpolator;
    .locals 10
    .param p0, "interpolator"    # Ljava/lang/String;

    .prologue
    const v6, 0x3ed70a3d    # 0.42f

    const v9, 0x3dcccccd    # 0.1f

    const/high16 v8, 0x3e800000    # 0.25f

    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 589
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 590
    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 604
    :try_start_0
    new-instance v2, Lc8/fgg;

    new-instance v3, Lc8/PZf;

    invoke-direct {v3}, Lc8/PZf;-><init>()V

    invoke-direct {v2, p0, v3}, Lc8/fgg;-><init>(Ljava/lang/String;Lc8/dgg;)V

    .line 612
    .local v2, "parser":Lc8/fgg;, "Lcom/taobao/weex/utils/SingleFunctionParser<Ljava/lang/Float;>;"
    const-string/jumbo v3, "cubic-bezier"

    invoke-virtual {v2, v3}, Lc8/fgg;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 613
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 614
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v4, v5, v6, v3}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 624
    .end local v1    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v2    # "parser":Lc8/fgg;, "Lcom/taobao/weex/utils/SingleFunctionParser<Ljava/lang/Float;>;"
    :goto_1
    return-object v3

    .line 590
    :sswitch_0
    const-string/jumbo v4, "ease-in"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "ease-out"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "ease-in-out"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "ease"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v4, "linear"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    goto/16 :goto_0

    .line 592
    :pswitch_0
    invoke-static {v6, v5, v7, v7}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    goto :goto_1

    .line 594
    :pswitch_1
    const v3, 0x3f147ae1    # 0.58f

    invoke-static {v5, v5, v3, v7}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    goto :goto_1

    .line 596
    :pswitch_2
    const v3, 0x3f147ae1    # 0.58f

    invoke-static {v6, v5, v3, v7}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    goto :goto_1

    .line 598
    :pswitch_3
    invoke-static {v8, v9, v8, v7}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    goto :goto_1

    .line 600
    :pswitch_4
    invoke-static {v5, v5, v7, v7}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    goto :goto_1

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 619
    const-string/jumbo v3, "WXTransition"

    invoke-static {v3, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 624
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    invoke-static {v8, v9, v8, v7}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    goto :goto_1

    .line 590
    :sswitch_data_0
    .sparse-switch
        -0x75215c9c -> :sswitch_0
        -0x41b970db -> :sswitch_4
        -0x2f0a1f11 -> :sswitch_1
        -0x15938a9b -> :sswitch_2
        0x2f63ee -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private doLayoutPropertyValuesHolderAnimation([Landroid/animation/PropertyValuesHolder;)V
    .locals 4
    .param p1, "holders"    # [Landroid/animation/PropertyValuesHolder;

    .prologue
    .line 437
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lc8/QZf;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    .line 438
    iget-object v0, p0, Lc8/QZf;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lc8/NZf;

    invoke-direct {v1, p0}, Lc8/NZf;-><init>(Lc8/QZf;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 485
    iget-object v0, p0, Lc8/QZf;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lc8/OZf;

    invoke-direct {v1, p0}, Lc8/OZf;-><init>(Lc8/QZf;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 506
    iget-object v0, p0, Lc8/QZf;->interpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lc8/QZf;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lc8/QZf;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 509
    :cond_0
    iget-object v0, p0, Lc8/QZf;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lc8/QZf;->delay:F

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 510
    iget-object v0, p0, Lc8/QZf;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lc8/QZf;->duration:F

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 511
    iget-object v0, p0, Lc8/QZf;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 512
    return-void
.end method

.method private doPendingTransformAnimation()V
    .locals 20

    .prologue
    .line 283
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/QZf;->transformAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v15, :cond_0

    .line 284
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/QZf;->transformAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v15}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 285
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lc8/QZf;->transformAnimator:Landroid/animation/ObjectAnimator;

    .line 287
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/QZf;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v15

    if-nez v15, :cond_2

    .line 363
    :cond_1
    :goto_0
    return-void

    .line 290
    :cond_2
    invoke-direct/range {p0 .. p0}, Lc8/QZf;->getTargetView()Landroid/view/View;

    move-result-object v10

    .line 291
    .local v10, "taregtView":Landroid/view/View;
    if-eqz v10, :cond_1

    .line 294
    new-instance v5, Ljava/util/ArrayList;

    const/16 v15, 0x8

    invoke-direct {v5, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 295
    .local v5, "holders":Ljava/util/List;, "Ljava/util/List<Landroid/animation/PropertyValuesHolder;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/QZf;->transformPendingUpdates:Ljava/util/Map;

    const-string/jumbo v16, "transform"

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 296
    .local v12, "transform":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 297
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v15}, Lc8/HYf;->getLayoutWidth()F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/QZf;->domObject:Lc8/HYf;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lc8/HYf;->getLayoutHeight()F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/QZf;->domObject:Lc8/HYf;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lc8/HYf;->getViewPortWidth()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v12, v15, v0, v1}, Lc8/Iag;->parseTransForm(Ljava/lang/String;III)Ljava/util/Map;

    move-result-object v8

    .line 298
    .local v8, "properties":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;Ljava/lang/Float;>;"
    invoke-static {v8}, Lc8/Iag;->toHolders(Ljava/util/Map;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 299
    .local v13, "transformHolders":[Landroid/animation/PropertyValuesHolder;
    move-object v2, v13

    .local v2, "arr$":[Landroid/animation/PropertyValuesHolder;
    array-length v7, v13

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v4, v2, v6

    .line 300
    .local v4, "holder":Landroid/animation/PropertyValuesHolder;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 304
    .end local v2    # "arr$":[Landroid/animation/PropertyValuesHolder;
    .end local v4    # "holder":Landroid/animation/PropertyValuesHolder;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "properties":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;Ljava/lang/Float;>;"
    .end local v13    # "transformHolders":[Landroid/animation/PropertyValuesHolder;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/QZf;->properties:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 305
    .local v9, "property":Ljava/lang/String;
    sget-object v15, Lc8/QZf;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    invoke-interface {v15, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 308
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/QZf;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {v15, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 311
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/QZf;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {v15, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 312
    .local v14, "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/QZf;->targetStyles:Ljava/util/Map;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 313
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/QZf;->targetStyles:Ljava/util/Map;

    invoke-interface {v15, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    const/4 v15, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :cond_5
    :goto_3
    packed-switch v15, :pswitch_data_0

    goto :goto_2

    .line 317
    :pswitch_0
    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v18

    aput v18, v16, v17

    const/16 v17, 0x1

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v14, v0}, Lc8/Dgg;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    aput v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_2

    .line 314
    :catchall_0
    move-exception v15

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    .line 315
    :sswitch_0
    const-string/jumbo v16, "opacity"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    const/4 v15, 0x0

    goto :goto_3

    :sswitch_1
    const-string/jumbo v16, "backgroundColor"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    const/4 v15, 0x1

    goto :goto_3

    .line 322
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v15}, Lc8/HYf;->getStyles()Lc8/PYf;

    move-result-object v15

    invoke-virtual {v15}, Lc8/PYf;->getBackgroundColor()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lc8/Bgg;->getColor(Ljava/lang/String;I)I

    move-result v3

    .line 323
    .local v3, "fromColor":I
    const/4 v15, 0x0

    invoke-static {v14, v15}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lc8/Bgg;->getColor(Ljava/lang/String;I)I

    move-result v11

    .line 324
    .local v11, "toColor":I
    invoke-static {v10}, Lc8/Jgg;->getBorderDrawable(Landroid/view/View;)Lc8/Ieg;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 325
    invoke-static {v10}, Lc8/Jgg;->getBorderDrawable(Landroid/view/View;)Lc8/Ieg;

    move-result-object v15

    invoke-virtual {v15}, Lc8/Ieg;->getColor()I

    move-result v3

    .line 329
    :cond_6
    :goto_4
    new-instance v15, Lc8/Dag;

    invoke-direct {v15}, Lc8/Dag;-><init>()V

    new-instance v16, Landroid/animation/ArgbEvaluator;

    invoke-direct/range {v16 .. v16}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 326
    :cond_7
    invoke-virtual {v10}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    instance-of v15, v15, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v15, :cond_6

    .line 327
    invoke-virtual {v10}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    check-cast v15, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v3

    goto :goto_4

    .line 335
    .end local v3    # "fromColor":I
    .end local v9    # "property":Ljava/lang/String;
    .end local v11    # "toColor":I
    .end local v14    # "value":Ljava/lang/Object;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/QZf;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->clear()V

    .line 336
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [Landroid/animation/PropertyValuesHolder;

    invoke-interface {v5, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/animation/PropertyValuesHolder;

    invoke-static {v10, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lc8/QZf;->transformAnimator:Landroid/animation/ObjectAnimator;

    .line 337
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/QZf;->transformAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget v0, v0, Lc8/QZf;->duration:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 338
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/QZf;->transformAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget v0, v0, Lc8/QZf;->delay:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 339
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/QZf;->interpolator:Landroid/view/animation/Interpolator;

    if-eqz v15, :cond_9

    .line 340
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/QZf;->transformAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/QZf;->interpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 342
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/QZf;->transformAnimator:Landroid/animation/ObjectAnimator;

    new-instance v16, Lc8/MZf;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lc8/MZf;-><init>(Lc8/QZf;)V

    invoke-virtual/range {v15 .. v16}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/QZf;->transformAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v15}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 315
    :sswitch_data_0
    .sparse-switch
        -0x4b8807f5 -> :sswitch_0
        0x4cb7f6d5 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doTransitionAnimation()V
    .locals 7

    .prologue
    .line 221
    invoke-direct {p0}, Lc8/QZf;->getTargetView()Landroid/view/View;

    move-result-object v3

    .line 222
    .local v3, "taregtView":Landroid/view/View;
    if-nez v3, :cond_0

    .line 276
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v5, p0, Lc8/QZf;->targetStyles:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 226
    iget-object v5, p0, Lc8/QZf;->properties:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 227
    .local v2, "property":Ljava/lang/String;
    sget-object v5, Lc8/QZf;->LAYOUT_PROPERTIES:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lc8/QZf;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 230
    :cond_2
    iget-object v5, p0, Lc8/QZf;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 233
    iget-object v5, p0, Lc8/QZf;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 236
    iget-object v6, p0, Lc8/QZf;->targetStyles:Ljava/util/Map;

    monitor-enter v6

    .line 237
    :try_start_0
    iget-object v5, p0, Lc8/QZf;->targetStyles:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 239
    iget-object v5, p0, Lc8/QZf;->targetStyles:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 240
    .local v4, "targetValue":Ljava/lang/Object;
    iget-object v5, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v5}, Lc8/HYf;->getStyles()Lc8/PYf;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lc8/PYf;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-direct {p0}, Lc8/QZf;->getComponent()Lc8/tbg;

    move-result-object v0

    .line 242
    .local v0, "component":Lc8/tbg;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 244
    invoke-virtual {v0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v5

    invoke-interface {v5}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lc8/PYf;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .end local v0    # "component":Lc8/tbg;
    .end local v4    # "targetValue":Ljava/lang/Object;
    :cond_3
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 253
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "property":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lc8/QZf;->transitionEndEvent:Ljava/lang/Runnable;

    if-eqz v5, :cond_5

    .line 254
    iget-object v5, p0, Lc8/QZf;->transitionEndEvent:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 256
    :cond_5
    iget-object v5, p0, Lc8/QZf;->transitionEndEvent:Ljava/lang/Runnable;

    if-nez v5, :cond_6

    .line 257
    new-instance v5, Lc8/KZf;

    invoke-direct {v5, p0}, Lc8/KZf;-><init>(Lc8/QZf;)V

    iput-object v5, p0, Lc8/QZf;->transitionEndEvent:Ljava/lang/Runnable;

    .line 269
    :cond_6
    new-instance v5, Lc8/LZf;

    invoke-direct {v5, p0}, Lc8/LZf;-><init>(Lc8/QZf;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 275
    invoke-virtual {p0}, Lc8/QZf;->doPendingLayoutAnimation()V

    goto/16 :goto_0
.end method

.method public static fromMap(Ljava/util/Map;Lc8/HYf;)Lc8/QZf;
    .locals 11
    .param p1, "domObject"    # Lc8/HYf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/HYf;",
            ")",
            "Lc8/QZf;"
        }
    .end annotation

    .prologue
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .line 134
    const-string/jumbo v9, "transitionProperty"

    invoke-interface {p0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_0

    move-object v6, v8

    .line 163
    :goto_0
    return-object v6

    .line 137
    :cond_0
    const-string/jumbo v9, "transitionProperty"

    invoke-interface {p0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v8}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "propertyString":Ljava/lang/String;
    if-nez v5, :cond_1

    move-object v6, v8

    .line 139
    goto :goto_0

    .line 141
    :cond_1
    new-instance v6, Lc8/QZf;

    invoke-direct {v6}, Lc8/QZf;-><init>()V

    .line 142
    .local v6, "transition":Lc8/QZf;
    sget-object v9, Lc8/QZf;->PROPERTY_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "propertiesArray":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v3

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v4, v0, v1

    .line 144
    .local v4, "property":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 145
    .local v7, "trim":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 148
    sget-object v9, Lc8/QZf;->LAYOUT_PROPERTIES:Ljava/util/Set;

    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    sget-object v9, Lc8/QZf;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 149
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 150
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "WXTransition Property Not Supported"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 143
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 154
    :cond_3
    iget-object v9, v6, Lc8/QZf;->properties:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 156
    .end local v4    # "property":Ljava/lang/String;
    .end local v7    # "trim":Ljava/lang/String;
    :cond_4
    iget-object v9, v6, Lc8/QZf;->properties:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v6, v8

    .line 157
    goto :goto_0

    .line 159
    :cond_5
    const-string/jumbo v9, "transitionDuration"

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {p0, v9, v10}, Lc8/QZf;->parseTimeMillis(Ljava/util/Map;Ljava/lang/String;F)F

    move-result v9

    iput v9, v6, Lc8/QZf;->duration:F

    .line 160
    const-string/jumbo v9, "transitionDelay"

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Lc8/QZf;->parseTimeMillis(Ljava/util/Map;Ljava/lang/String;F)F

    move-result v9

    iput v9, v6, Lc8/QZf;->delay:F

    .line 161
    const-string/jumbo v9, "transitionTimingFunction"

    invoke-interface {p0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v8}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lc8/QZf;->createTimeInterpolator(Ljava/lang/String;)Landroid/view/animation/Interpolator;

    move-result-object v8

    iput-object v8, v6, Lc8/QZf;->interpolator:Landroid/view/animation/Interpolator;

    .line 162
    iput-object p1, v6, Lc8/QZf;->domObject:Lc8/HYf;

    goto/16 :goto_0
.end method

.method private getComponent()Lc8/tbg;
    .locals 4

    .prologue
    .line 540
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/pVf;->getWXDomManager()Lc8/EYf;

    move-result-object v2

    iget-object v3, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v3}, Lc8/HYf;->getDomContext()Lc8/pYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/pYf;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/EYf;->getDomContext(Ljava/lang/String;)Lc8/gYf;

    move-result-object v1

    .line 541
    .local v1, "domActionContext":Lc8/gYf;
    if-eqz v1, :cond_0

    .line 542
    iget-object v2, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v2}, Lc8/HYf;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lc8/gYf;->getCompByRef(Ljava/lang/String;)Lc8/tbg;

    move-result-object v0

    .line 545
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTargetView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 550
    iget-object v3, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v3}, Lc8/HYf;->getDomContext()Lc8/pYf;

    move-result-object v3

    if-nez v3, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-object v2

    .line 553
    :cond_1
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/pVf;->getWXDomManager()Lc8/EYf;

    move-result-object v3

    iget-object v4, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v4}, Lc8/HYf;->getDomContext()Lc8/pYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/pYf;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/EYf;->getDomContext(Ljava/lang/String;)Lc8/gYf;

    move-result-object v1

    .line 554
    .local v1, "domActionContext":Lc8/gYf;
    if-eqz v1, :cond_0

    .line 555
    iget-object v3, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v3}, Lc8/HYf;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lc8/gYf;->getCompByRef(Ljava/lang/String;)Lc8/tbg;

    move-result-object v0

    .line 556
    .local v0, "component":Lc8/tbg;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 557
    invoke-virtual {v0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method private declared-synchronized onTransitionAnimationEnd()V
    .locals 7

    .prologue
    .line 515
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lc8/QZf;->transitionEndEvent:Ljava/lang/Runnable;

    if-eqz v5, :cond_1

    .line 516
    invoke-direct {p0}, Lc8/QZf;->getTargetView()Landroid/view/View;

    move-result-object v4

    .line 517
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lc8/QZf;->transitionEndEvent:Ljava/lang/Runnable;

    if-eqz v5, :cond_0

    .line 518
    iget-object v5, p0, Lc8/QZf;->transitionEndEvent:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 520
    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lc8/QZf;->transitionEndEvent:Ljava/lang/Runnable;

    .line 522
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lc8/QZf;->targetStyles:Ljava/util/Map;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 523
    :try_start_1
    iget-object v5, p0, Lc8/QZf;->targetStyles:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 524
    invoke-direct {p0}, Lc8/QZf;->getComponent()Lc8/tbg;

    move-result-object v0

    .line 525
    .local v0, "component":Lc8/tbg;
    iget-object v5, p0, Lc8/QZf;->properties:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 526
    .local v2, "property":Ljava/lang/String;
    iget-object v5, p0, Lc8/QZf;->targetStyles:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 527
    iget-object v5, p0, Lc8/QZf;->targetStyles:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 528
    .local v3, "targetValue":Ljava/lang/Object;
    iget-object v5, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v5}, Lc8/HYf;->getStyles()Lc8/PYf;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lc8/PYf;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 530
    invoke-virtual {v0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v5

    invoke-interface {v5}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lc8/PYf;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 536
    .end local v0    # "component":Lc8/tbg;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "property":Ljava/lang/String;
    .end local v3    # "targetValue":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 515
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 534
    .restart local v0    # "component":Lc8/tbg;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    iget-object v5, p0, Lc8/QZf;->targetStyles:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 536
    .end local v0    # "component":Lc8/tbg;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private static parseTimeMillis(Ljava/util/Map;Ljava/lang/String;F)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "F)F"
        }
    .end annotation

    .prologue
    .line 570
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "duration":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 572
    const-string/jumbo v1, "s"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    .end local p2    # "defaultValue":F
    :goto_0
    return p2

    .line 578
    .restart local p2    # "defaultValue":F
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 580
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public doPendingLayoutAnimation()V
    .locals 7

    .prologue
    .line 367
    iget-object v5, p0, Lc8/QZf;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_0

    .line 368
    iget-object v5, p0, Lc8/QZf;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 369
    const/4 v5, 0x0

    iput-object v5, p0, Lc8/QZf;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    .line 371
    :cond_0
    iget-object v5, p0, Lc8/QZf;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 391
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v5, p0, Lc8/QZf;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v0, v5, [Landroid/animation/PropertyValuesHolder;

    .line 375
    .local v0, "holders":[Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x0

    .line 376
    .local v2, "index":I
    iget-object v5, p0, Lc8/QZf;->properties:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 377
    .local v3, "property":Ljava/lang/String;
    sget-object v5, Lc8/QZf;->LAYOUT_PROPERTIES:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 380
    iget-object v5, p0, Lc8/QZf;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 381
    iget-object v5, p0, Lc8/QZf;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 382
    .local v4, "targetValue":Ljava/lang/Object;
    iget-object v6, p0, Lc8/QZf;->targetStyles:Ljava/util/Map;

    monitor-enter v6

    .line 383
    :try_start_0
    iget-object v5, p0, Lc8/QZf;->targetStyles:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    invoke-direct {p0, v3, v4}, Lc8/QZf;->createLayoutPropertyValueHolder(Ljava/lang/String;Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v0, v2

    .line 386
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 384
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 389
    .end local v3    # "property":Ljava/lang/String;
    .end local v4    # "targetValue":Ljava/lang/Object;
    :cond_3
    iget-object v5, p0, Lc8/QZf;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 390
    invoke-direct {p0, v0}, Lc8/QZf;->doLayoutPropertyValuesHolderAnimation([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_0
.end method

.method public hasTransitionProperty(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lc8/QZf;->properties:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    .local v1, "property":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    const/4 v2, 0x1

    .line 176
    .end local v1    # "property":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startTransition(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "updates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lc8/QZf;->getTargetView()Landroid/view/View;

    move-result-object v3

    .line 186
    .local v3, "taregtView":Landroid/view/View;
    if-nez v3, :cond_0

    .line 213
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v5, p0, Lc8/QZf;->properties:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 190
    .local v2, "property":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 191
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 192
    .local v4, "targetValue":Ljava/lang/Object;
    sget-object v5, Lc8/QZf;->LAYOUT_PROPERTIES:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 193
    iget-object v5, p0, Lc8/QZf;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 194
    :cond_2
    sget-object v5, Lc8/QZf;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 195
    iget-object v5, p0, Lc8/QZf;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 199
    .end local v2    # "property":Ljava/lang/String;
    .end local v4    # "targetValue":Ljava/lang/Object;
    :cond_3
    iget-object v5, p0, Lc8/QZf;->domObject:Lc8/HYf;

    invoke-virtual {v5}, Lc8/HYf;->getAttrs()Lc8/xYf;

    move-result-object v5

    const-string/jumbo v6, "actionDelay"

    invoke-virtual {v5, v6}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Lc8/Dgg;->getNumberInt(Ljava/lang/Object;I)I

    move-result v0

    .line 200
    .local v0, "delay":I
    iget-object v5, p0, Lc8/QZf;->animationRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_4

    .line 201
    iget-object v5, p0, Lc8/QZf;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lc8/QZf;->animationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    :cond_4
    iget-object v5, p0, Lc8/QZf;->animationRunnable:Ljava/lang/Runnable;

    if-nez v5, :cond_5

    .line 204
    new-instance v5, Lc8/JZf;

    invoke-direct {v5, p0}, Lc8/JZf;-><init>(Lc8/QZf;)V

    iput-object v5, p0, Lc8/QZf;->animationRunnable:Ljava/lang/Runnable;

    .line 212
    :cond_5
    iget-object v5, p0, Lc8/QZf;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lc8/QZf;->animationRunnable:Ljava/lang/Runnable;

    int-to-long v8, v0

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
