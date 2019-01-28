.class public final Lc8/vsb;
.super Ljava/lang/Object;
.source "ExpressionInvokerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Orb;,
        Lc8/Xrb;,
        Lc8/usb;,
        Lc8/gsb;,
        Lc8/esb;,
        Lc8/csb;,
        Lc8/msb;,
        Lc8/ksb;,
        Lc8/isb;,
        Lc8/ssb;,
        Lc8/qsb;,
        Lc8/osb;,
        Lc8/asb;,
        Lc8/Vrb;,
        Lc8/Trb;,
        Lc8/Rrb;,
        Lc8/Yrb;
    }
.end annotation


# static fields
.field private static final EMPTY_INVOKER:Lc8/Yrb;

.field private static final PERSPECTIVE:Ljava/lang/String; = "perspective"

.field private static final TAG:Ljava/lang/String; = "ExpressionInvoker"

.field private static final TRANSFORM_ORIGIN:Ljava/lang/String; = "transformOrigin"

.field private static final sExpressionInvokerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Lsb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    new-instance v0, Lc8/Yrb;

    invoke-direct {v0, v3}, Lc8/Yrb;-><init>(Lc8/Mrb;)V

    sput-object v0, Lc8/vsb;->EMPTY_INVOKER:Lc8/Yrb;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    sput-object v0, Lc8/vsb;->sExpressionInvokerMap:Ljava/util/Map;

    const-string/jumbo v1, "opacity"

    new-instance v2, Lc8/asb;

    invoke-direct {v2, v3}, Lc8/asb;-><init>(Lc8/Mrb;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lc8/vsb;->sExpressionInvokerMap:Ljava/util/Map;

    const-string/jumbo v1, "transform.translate"

    new-instance v2, Lc8/osb;

    invoke-direct {v2, v3}, Lc8/osb;-><init>(Lc8/Mrb;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lc8/vsb;->sExpressionInvokerMap:Ljava/util/Map;

    const-string/jumbo v1, "transform.translateX"

    new-instance v2, Lc8/qsb;

    invoke-direct {v2, v3}, Lc8/qsb;-><init>(Lc8/Mrb;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lc8/vsb;->sExpressionInvokerMap:Ljava/util/Map;

    const-string/jumbo v1, "transform.translateY"

    new-instance v2, Lc8/ssb;

    invoke-direct {v2, v3}, Lc8/ssb;-><init>(Lc8/Mrb;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lc8/vsb;->sExpressionInvokerMap:Ljava/util/Map;

    const-string/jumbo v1, "transform.scale"

    new-instance v2, Lc8/isb;

    invoke-direct {v2, v3}, Lc8/isb;-><init>(Lc8/Mrb;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lc8/vsb;->sExpressionInvokerMap:Ljava/util/Map;

    const-string/jumbo v1, "transform.scaleX"

    new-instance v2, Lc8/ksb;

    invoke-direct {v2, v3}, Lc8/ksb;-><init>(Lc8/Mrb;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lc8/vsb;->sExpressionInvokerMap:Ljava/util/Map;

    const-string/jumbo v1, "transform.scaleY"

    new-instance v2, Lc8/msb;

    invoke-direct {v2, v3}, Lc8/msb;-><init>(Lc8/Mrb;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lc8/vsb;->sExpressionInvokerMap:Ljava/util/Map;

    const-string/jumbo v1, "transform.rotate"

    new-instance v2, Lc8/csb;

    invoke-direct {v2, v3}, Lc8/csb;-><init>(Lc8/Mrb;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lc8/vsb;->sExpressionInvokerMap:Ljava/util/Map;

    const-string/jumbo v1, "transform.rotateZ"

    new-instance v2, Lc8/csb;

    invoke-direct {v2, v3}, Lc8/csb;-><init>(Lc8/Mrb;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lc8/vsb;->sExpressionInvokerMap:Ljava/util/Map;

    const-string/jumbo v1, "transform.rotateX"

    new-instance v2, Lc8/esb;

    invoke-direct {v2, v3}, Lc8/esb;-><init>(Lc8/Mrb;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lc8/vsb;->sExpressionInvokerMap:Ljava/util/Map;

    const-string/jumbo v1, "transform.rotateY"

    new-instance v2, Lc8/gsb;

    invoke-direct {v2, v3}, Lc8/gsb;-><init>(Lc8/Mrb;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lc8/vsb;->sExpressionInvokerMap:Ljava/util/Map;

    const-string/jumbo v1, "width"

    new-instance v2, Lc8/usb;

    invoke-direct {v2, v3}, Lc8/usb;-><init>(Lc8/Mrb;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lc8/vsb;->sExpressionInvokerMap:Ljava/util/Map;

    const-string/jumbo v1, "height"

    new-instance v2, Lc8/Xrb;

    invoke-direct {v2, v3}, Lc8/Xrb;-><init>(Lc8/Mrb;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lc8/vsb;->sExpressionInvokerMap:Ljava/util/Map;

    const-string/jumbo v1, "background-color"

    new-instance v2, Lc8/Orb;

    invoke-direct {v2, v3}, Lc8/Orb;-><init>(Lc8/Mrb;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lc8/vsb;->sExpressionInvokerMap:Ljava/util/Map;

    const-string/jumbo v1, "scroll.contentOffset"

    new-instance v2, Lc8/Rrb;

    invoke-direct {v2, v3}, Lc8/Rrb;-><init>(Lc8/Mrb;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lc8/vsb;->sExpressionInvokerMap:Ljava/util/Map;

    const-string/jumbo v1, "scroll.contentOffsetX"

    new-instance v2, Lc8/Trb;

    invoke-direct {v2, v3}, Lc8/Trb;-><init>(Lc8/Mrb;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lc8/vsb;->sExpressionInvokerMap:Ljava/util/Map;

    const-string/jumbo v1, "scroll.contentOffsetY"

    new-instance v2, Lc8/Vrb;

    invoke-direct {v2, v3}, Lc8/Vrb;-><init>(Lc8/Mrb;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    return-void
.end method

.method static synthetic access$1700(Lc8/tbg;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lc8/tbg;

    .prologue
    .line 30
    invoke-static {p0}, Lc8/vsb;->findScrollTarget(Lc8/tbg;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(D)D
    .locals 2
    .param p0, "x0"    # D

    .prologue
    .line 30
    invoke-static {p0, p1}, Lc8/vsb;->getRealSize(D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1900(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 30
    invoke-static {p0, p1}, Lc8/vsb;->postRunnable(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$2000(Landroid/content/Context;I)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-static {p0, p1}, Lc8/vsb;->normalizedPerspectiveValue(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Ljava/lang/String;Landroid/view/View;)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-static {p0, p1}, Lc8/vsb;->parseTransformOrigin(Ljava/lang/String;Landroid/view/View;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static findInvoker(Ljava/lang/String;)Lc8/Lsb;
    .locals 4
    .param p0, "prop"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 66
    sget-object v1, Lc8/vsb;->sExpressionInvokerMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Lsb;

    .line 67
    .local v0, "invoker":Lc8/Lsb;
    if-nez v0, :cond_0

    .line 68
    const-string/jumbo v1, "ExpressionInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown property ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lc8/vsb;->EMPTY_INVOKER:Lc8/Yrb;

    .line 71
    .end local v0    # "invoker":Lc8/Lsb;
    :cond_0
    return-object v0
.end method

.method private static findScrollTarget(Lc8/tbg;)Landroid/view/View;
    .locals 3
    .param p0, "component"    # Lc8/tbg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 509
    instance-of v1, p0, Lc8/acg;

    if-nez v1, :cond_1

    .line 510
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    const-string/jumbo v1, "ExpressionInvoker"

    const-string/jumbo v2, "scroll offset only support on Scroller Component"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    const/4 v1, 0x0

    .line 516
    :goto_0
    return-object v1

    :cond_1
    move-object v0, p0

    .line 515
    check-cast v0, Lc8/acg;

    .line 516
    .local v0, "scroller":Lc8/acg;
    invoke-virtual {v0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v1

    goto :goto_0
.end method

.method private static getRealSize(D)D
    .locals 4
    .param p0, "size"    # D

    .prologue
    .line 503
    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, p0

    sget v2, Lc8/UUf;->sDefaultWidth:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static normalizedPerspectiveValue(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "raw"    # I

    .prologue
    .line 524
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 525
    .local v0, "scale":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private static parseTransformOrigin(Ljava/lang/String;Landroid/view/View;)Landroid/util/Pair;
    .locals 9
    .param p0, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v8, 0x20

    .line 530
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-object v6

    .line 533
    :cond_1
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 534
    .local v0, "firstSpace":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_0

    .line 535
    move v1, v0

    .line 536
    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 537
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_2

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 542
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_0

    .line 543
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 544
    .local v4, "x":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 547
    .local v5, "y":Ljava/lang/String;
    const-string/jumbo v6, "left"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 548
    const/4 v2, 0x0

    .line 557
    .local v2, "pivotX":F
    :goto_2
    const-string/jumbo v6, "top"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 558
    const/4 v3, 0x0

    .line 567
    .local v3, "pivotY":F
    :goto_3
    new-instance v6, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 549
    .end local v2    # "pivotX":F
    .end local v3    # "pivotY":F
    :cond_3
    const-string/jumbo v6, "right"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 550
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v2, v6

    .restart local v2    # "pivotX":F
    goto :goto_2

    .line 551
    .end local v2    # "pivotX":F
    :cond_4
    const-string/jumbo v6, "center"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 552
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v2, v6

    .restart local v2    # "pivotX":F
    goto :goto_2

    .line 554
    .end local v2    # "pivotX":F
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v2, v6

    .restart local v2    # "pivotX":F
    goto :goto_2

    .line 559
    :cond_6
    const-string/jumbo v6, "bottom"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 560
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v3, v6

    .restart local v3    # "pivotY":F
    goto :goto_3

    .line 561
    .end local v3    # "pivotY":F
    :cond_7
    const-string/jumbo v6, "center"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 562
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v3, v6

    .restart local v3    # "pivotY":F
    goto :goto_3

    .line 564
    .end local v3    # "pivotY":F
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v3, v6

    .restart local v3    # "pivotY":F
    goto :goto_3
.end method

.method private static postRunnable(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "target"    # Landroid/view/View;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
