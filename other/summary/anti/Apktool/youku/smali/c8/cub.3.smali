.class public Lc8/cub;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/eub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BezierInterpolatorWrapper"
.end annotation


# instance fields
.field private mInnerInterpolator:Landroid/view/animation/Interpolator;

.field x1:F

.field x2:F

.field y1:F

.field y2:F


# direct methods
.method constructor <init>(FFFF)V
    .locals 1
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    iput p1, p0, Lc8/cub;->x1:F

    .line 644
    iput p2, p0, Lc8/cub;->y1:F

    .line 645
    iput p3, p0, Lc8/cub;->x2:F

    .line 646
    iput p4, p0, Lc8/cub;->y2:F

    .line 647
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lc8/cub;->mInnerInterpolator:Landroid/view/animation/Interpolator;

    .line 648
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1, "input"    # F

    .prologue
    .line 652
    iget-object v0, p0, Lc8/cub;->mInnerInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
