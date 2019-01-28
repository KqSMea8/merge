.class public Lc8/ldb;
.super Lc8/Ecb;
.source "PathKeyframe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/kdb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Ecb",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private path:Landroid/graphics/Path;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lc8/kcb;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 0
    .param p1, "composition"    # Lc8/kcb;
    .param p2, "startValue"    # Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "endValue"    # Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "startFrame"    # F
    .param p6, "endFrame"    # Ljava/lang/Float;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct/range {p0 .. p6}, Lc8/Ecb;-><init>(Lc8/kcb;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lc8/kcb;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;Lc8/jdb;)V
    .locals 0
    .param p1, "x0"    # Lc8/kcb;
    .param p2, "x1"    # Landroid/graphics/PointF;
    .param p3, "x2"    # Landroid/graphics/PointF;
    .param p4, "x3"    # Landroid/view/animation/Interpolator;
    .param p5, "x4"    # F
    .param p6, "x5"    # Ljava/lang/Float;
    .param p7, "x6"    # Lc8/jdb;

    .prologue
    .line 17
    invoke-direct/range {p0 .. p6}, Lc8/ldb;-><init>(Lc8/kcb;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    return-void
.end method

.method static synthetic access$102(Lc8/ldb;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 0
    .param p0, "x0"    # Lc8/ldb;
    .param p1, "x1"    # Landroid/graphics/Path;

    .prologue
    .line 17
    iput-object p1, p0, Lc8/ldb;->path:Landroid/graphics/Path;

    return-object p1
.end method


# virtual methods
.method getPath()Landroid/graphics/Path;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lc8/ldb;->path:Landroid/graphics/Path;

    return-object v0
.end method
