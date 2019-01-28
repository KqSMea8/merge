.class public Lc8/stb;
.super Ljava/lang/Object;
.source "OrientationEvaluator.java"


# instance fields
.field private final EULER:Lc8/Frb;

.field private final Q0:Lc8/ttb;

.field private final Q1:Lc8/ttb;

.field private final ZEE:Lc8/gub;

.field private constraintAlpha:Ljava/lang/Double;

.field private constraintAlphaOffset:D

.field private constraintBeta:Ljava/lang/Double;

.field private constraintBetaOffset:D

.field private constraintGamma:Ljava/lang/Double;

.field private constraintGammaOffset:D

.field private quaternion:Lc8/ttb;


# direct methods
.method constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 10
    .param p1, "constraintAlpha"    # Ljava/lang/Double;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "constraintBeta"    # Ljava/lang/Double;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "constraintGamma"    # Ljava/lang/Double;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v1, Lc8/ttb;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v9}, Lc8/ttb;-><init>(DDDD)V

    iput-object v1, p0, Lc8/stb;->quaternion:Lc8/ttb;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/stb;->constraintAlpha:Ljava/lang/Double;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/stb;->constraintBeta:Ljava/lang/Double;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/stb;->constraintGamma:Ljava/lang/Double;

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/stb;->constraintAlphaOffset:D

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/stb;->constraintBetaOffset:D

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/stb;->constraintGammaOffset:D

    .line 46
    new-instance v1, Lc8/gub;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v7}, Lc8/gub;-><init>(DDD)V

    iput-object v1, p0, Lc8/stb;->ZEE:Lc8/gub;

    .line 47
    new-instance v0, Lc8/Frb;

    invoke-direct {v0}, Lc8/Frb;-><init>()V

    iput-object v0, p0, Lc8/stb;->EULER:Lc8/Frb;

    .line 48
    new-instance v0, Lc8/ttb;

    invoke-direct {v0}, Lc8/ttb;-><init>()V

    iput-object v0, p0, Lc8/stb;->Q0:Lc8/ttb;

    .line 49
    new-instance v1, Lc8/ttb;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    neg-double v2, v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lc8/ttb;-><init>(DDDD)V

    iput-object v1, p0, Lc8/stb;->Q1:Lc8/ttb;

    .line 24
    iput-object p1, p0, Lc8/stb;->constraintAlpha:Ljava/lang/Double;

    .line 25
    iput-object p2, p0, Lc8/stb;->constraintBeta:Ljava/lang/Double;

    .line 26
    iput-object p3, p0, Lc8/stb;->constraintGamma:Ljava/lang/Double;

    .line 27
    return-void
.end method

.method private setObjectQuaternion(Lc8/ttb;DDDD)V
    .locals 12
    .param p1, "quaternion"    # Lc8/ttb;
    .param p2, "alpha"    # D
    .param p4, "beta"    # D
    .param p6, "gamma"    # D
    .param p8, "orient"    # D

    .prologue
    .line 52
    iget-object v3, p0, Lc8/stb;->EULER:Lc8/Frb;

    move-wide/from16 v0, p6

    neg-double v8, v0

    const-string/jumbo v10, "YXZ"

    move-wide/from16 v4, p4

    move-wide v6, p2

    invoke-virtual/range {v3 .. v10}, Lc8/Frb;->setValue(DDDLjava/lang/String;)V

    .line 53
    iget-object v2, p0, Lc8/stb;->EULER:Lc8/Frb;

    invoke-virtual {p1, v2}, Lc8/ttb;->setFromEuler(Lc8/Frb;)Lc8/ttb;

    .line 54
    iget-object v2, p0, Lc8/stb;->Q1:Lc8/ttb;

    invoke-virtual {p1, v2}, Lc8/ttb;->multiply(Lc8/ttb;)Lc8/ttb;

    .line 55
    iget-object v2, p0, Lc8/stb;->Q0:Lc8/ttb;

    iget-object v3, p0, Lc8/stb;->ZEE:Lc8/gub;

    move-wide/from16 v0, p8

    neg-double v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lc8/ttb;->setFromAxisAngle(Lc8/gub;D)Lc8/ttb;

    move-result-object v2

    invoke-virtual {p1, v2}, Lc8/ttb;->multiply(Lc8/ttb;)Lc8/ttb;

    .line 56
    return-void
.end method


# virtual methods
.method calculate(DDDD)Lc8/ttb;
    .locals 11
    .param p1, "deviceAlpha"    # D
    .param p3, "deviceBeta"    # D
    .param p5, "deviceGamma"    # D
    .param p7, "normalizedAlpha"    # D

    .prologue
    .line 36
    iget-object v0, p0, Lc8/stb;->constraintAlpha:Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/stb;->constraintAlpha:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 37
    .local v2, "alpha":D
    iget-object v0, p0, Lc8/stb;->constraintBeta:Ljava/lang/Double;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/stb;->constraintBeta:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 38
    .local v4, "beta":D
    iget-object v0, p0, Lc8/stb;->constraintGamma:Ljava/lang/Double;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/stb;->constraintGamma:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 41
    .local v6, "gamma":D
    iget-object v1, p0, Lc8/stb;->quaternion:Lc8/ttb;

    const-wide/16 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lc8/stb;->setObjectQuaternion(Lc8/ttb;DDDD)V

    .line 42
    iget-object v0, p0, Lc8/stb;->quaternion:Lc8/ttb;

    return-object v0

    .line 36
    .end local v2    # "alpha":D
    .end local v4    # "beta":D
    .end local v6    # "gamma":D
    :cond_0
    iget-wide v0, p0, Lc8/stb;->constraintAlphaOffset:D

    add-double v0, v0, p7

    goto :goto_0

    .line 37
    .restart local v2    # "alpha":D
    :cond_1
    iget-wide v0, p0, Lc8/stb;->constraintBetaOffset:D

    add-double/2addr v0, p3

    goto :goto_1

    .line 38
    .restart local v4    # "beta":D
    :cond_2
    iget-wide v0, p0, Lc8/stb;->constraintGammaOffset:D

    add-double v0, v0, p5

    goto :goto_2
.end method
