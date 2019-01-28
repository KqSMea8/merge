.class public final Lc8/J;
.super Ljava/lang/Object;
.source "SpringForce.java"

# interfaces
.implements Lc8/G;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/I;
    }
.end annotation


# static fields
.field public static final DAMPING_RATIO_HIGH_BOUNCY:F = 0.2f

.field public static final DAMPING_RATIO_LOW_BOUNCY:F = 0.75f

.field public static final DAMPING_RATIO_MEDIUM_BOUNCY:F = 0.5f

.field public static final DAMPING_RATIO_NO_BOUNCY:F = 1.0f

.field public static final STIFFNESS_HIGH:F = 10000.0f

.field public static final STIFFNESS_LOW:F = 200.0f

.field public static final STIFFNESS_MEDIUM:F = 1500.0f

.field public static final STIFFNESS_VERY_LOW:F = 50.0f

.field private static final UNSET:D = 1.7976931348623157E308

.field static final VALUE_THRESHOLD_ALPHA:D = 0.0029411764705882353

.field static final VALUE_THRESHOLD_IN_PIXEL:D = 0.75

.field static final VALUE_THRESHOLD_ROTATION:D = 0.0020833333333333333

.field static final VALUE_THRESHOLD_SCALE:D = 0.0015

.field private static final VELOCITY_THRESHOLD_MULTIPLIER:D = 62.5


# instance fields
.field private mDampedFreq:D

.field mDampingRatio:D

.field private mFinalPosition:D

.field private mGammaMinus:D

.field private mGammaPlus:D

.field private mInitialized:Z

.field private final mMassState:Lc8/I;

.field mNaturalFreq:D

.field private mValueThreshold:D

.field private mVelocityThreshold:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-wide v0, 0x4097700000000000L    # 1500.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lc8/J;->mNaturalFreq:D

    .line 90
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lc8/J;->mDampingRatio:D

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/J;->mInitialized:Z

    .line 100
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    iput-wide v0, p0, Lc8/J;->mValueThreshold:D

    .line 101
    const-wide v0, 0x4047700000000000L    # 46.875

    iput-wide v0, p0, Lc8/J;->mVelocityThreshold:D

    .line 109
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lc8/J;->mFinalPosition:D

    .line 112
    new-instance v0, Lc8/I;

    invoke-direct {v0}, Lc8/I;-><init>()V

    iput-object v0, p0, Lc8/J;->mMassState:Lc8/I;

    .line 126
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .param p1, "finalPosition"    # F

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-wide v0, 0x4097700000000000L    # 1500.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lc8/J;->mNaturalFreq:D

    .line 90
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lc8/J;->mDampingRatio:D

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/J;->mInitialized:Z

    .line 100
    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    iput-wide v0, p0, Lc8/J;->mValueThreshold:D

    .line 101
    const-wide v0, 0x4047700000000000L    # 46.875

    iput-wide v0, p0, Lc8/J;->mVelocityThreshold:D

    .line 109
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lc8/J;->mFinalPosition:D

    .line 112
    new-instance v0, Lc8/I;

    invoke-direct {v0}, Lc8/I;-><init>()V

    iput-object v0, p0, Lc8/J;->mMassState:Lc8/I;

    .line 134
    float-to-double v0, p1

    iput-wide v0, p0, Lc8/J;->mFinalPosition:D

    .line 135
    return-void
.end method

.method private init()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 255
    iget-boolean v0, p0, Lc8/J;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-wide v0, p0, Lc8/J;->mFinalPosition:D

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Error: Final position of the spring must be set before the animation starts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_1
    iget-wide v0, p0, Lc8/J;->mDampingRatio:D

    cmpl-double v0, v0, v8

    if-lez v0, :cond_3

    .line 266
    iget-wide v0, p0, Lc8/J;->mDampingRatio:D

    neg-double v0, v0

    iget-wide v2, p0, Lc8/J;->mNaturalFreq:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lc8/J;->mNaturalFreq:D

    iget-wide v4, p0, Lc8/J;->mDampingRatio:D

    iget-wide v6, p0, Lc8/J;->mDampingRatio:D

    mul-double/2addr v4, v6

    sub-double/2addr v4, v8

    .line 267
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lc8/J;->mGammaPlus:D

    .line 268
    iget-wide v0, p0, Lc8/J;->mDampingRatio:D

    neg-double v0, v0

    iget-wide v2, p0, Lc8/J;->mNaturalFreq:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lc8/J;->mNaturalFreq:D

    iget-wide v4, p0, Lc8/J;->mDampingRatio:D

    iget-wide v6, p0, Lc8/J;->mDampingRatio:D

    mul-double/2addr v4, v6

    sub-double/2addr v4, v8

    .line 269
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lc8/J;->mGammaMinus:D

    .line 275
    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/J;->mInitialized:Z

    goto :goto_0

    .line 270
    :cond_3
    iget-wide v0, p0, Lc8/J;->mDampingRatio:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lc8/J;->mDampingRatio:D

    cmpg-double v0, v0, v8

    if-gez v0, :cond_2

    .line 272
    iget-wide v0, p0, Lc8/J;->mNaturalFreq:D

    iget-wide v2, p0, Lc8/J;->mDampingRatio:D

    iget-wide v4, p0, Lc8/J;->mDampingRatio:D

    mul-double/2addr v2, v4

    sub-double v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lc8/J;->mDampedFreq:D

    goto :goto_1
.end method


# virtual methods
.method public getAcceleration(FF)F
    .locals 8
    .param p1, "lastDisplacement"    # F
    .param p2, "lastVelocity"    # F

    .prologue
    .line 227
    invoke-virtual {p0}, Lc8/J;->getFinalPosition()F

    move-result v4

    sub-float/2addr p1, v4

    .line 229
    iget-wide v4, p0, Lc8/J;->mNaturalFreq:D

    iget-wide v6, p0, Lc8/J;->mNaturalFreq:D

    mul-double v2, v4, v6

    .line 230
    .local v2, "k":D
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, Lc8/J;->mNaturalFreq:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lc8/J;->mDampingRatio:D

    mul-double v0, v4, v6

    .line 232
    .local v0, "c":D
    neg-double v4, v2

    float-to-double v6, p1

    mul-double/2addr v4, v6

    float-to-double v6, p2

    mul-double/2addr v6, v0

    sub-double/2addr v4, v6

    double-to-float v4, v4

    return v4
.end method

.method public getDampingRatio()F
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lc8/J;->mDampingRatio:D

    double-to-float v0, v0

    return v0
.end method

.method public getFinalPosition()F
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lc8/J;->mFinalPosition:D

    double-to-float v0, v0

    return v0
.end method

.method public getStiffness()F
    .locals 4

    .prologue
    .line 162
    iget-wide v0, p0, Lc8/J;->mNaturalFreq:D

    iget-wide v2, p0, Lc8/J;->mNaturalFreq:D

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public isAtEquilibrium(FF)Z
    .locals 4
    .param p1, "value"    # F
    .param p2, "velocity"    # F

    .prologue
    .line 240
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lc8/J;->mVelocityThreshold:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lc8/J;->getFinalPosition()F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lc8/J;->mValueThreshold:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 242
    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDampingRatio(F)Lc8/J;
    .locals 2
    .param p1, "dampingRatio"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 181
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Damping ratio must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    float-to-double v0, p1

    iput-wide v0, p0, Lc8/J;->mDampingRatio:D

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/J;->mInitialized:Z

    .line 187
    return-object p0
.end method

.method setDefaultThreshold(D)V
    .locals 5
    .param p1, "threshold"    # D

    .prologue
    .line 336
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lc8/J;->mValueThreshold:D

    .line 337
    iget-wide v0, p0, Lc8/J;->mValueThreshold:D

    const-wide v2, 0x404f400000000000L    # 62.5

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lc8/J;->mVelocityThreshold:D

    .line 338
    return-void
.end method

.method public setFinalPosition(F)Lc8/J;
    .locals 2
    .param p1, "finalPosition"    # F

    .prologue
    .line 206
    float-to-double v0, p1

    iput-wide v0, p0, Lc8/J;->mFinalPosition:D

    .line 207
    return-object p0
.end method

.method public setStiffness(F)Lc8/J;
    .locals 2
    .param p1, "stiffness"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 147
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Spring stiffness constant cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lc8/J;->mNaturalFreq:D

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/J;->mInitialized:Z

    .line 153
    return-object p0
.end method

.method updateValues(DDJ)Lc8/I;
    .locals 27
    .param p1, "lastDisplacement"    # D
    .param p3, "lastVelocity"    # D
    .param p5, "timeElapsed"    # J

    .prologue
    .line 283
    invoke-direct/range {p0 .. p0}, Lc8/J;->init()V

    .line 285
    move-wide/from16 v0, p5

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x408f400000000000L    # 1000.0

    div-double v10, v16, v18

    .line 286
    .local v10, "deltaT":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mFinalPosition:D

    move-wide/from16 v16, v0

    sub-double p1, p1, v16

    .line 289
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mDampingRatio:D

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v16, v18

    if-lez v16, :cond_0

    .line 291
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mGammaMinus:D

    move-wide/from16 v16, v0

    mul-double v16, v16, p1

    sub-double v16, v16, p3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mGammaMinus:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mGammaPlus:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    div-double v16, v16, v18

    sub-double v2, p1, v16

    .line 293
    .local v2, "coeffA":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mGammaMinus:D

    move-wide/from16 v16, v0

    mul-double v16, v16, p1

    sub-double v16, v16, p3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mGammaMinus:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mGammaPlus:D

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    div-double v4, v16, v18

    .line 295
    .local v4, "coeffB":D
    const-wide v16, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mGammaMinus:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v10

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v16, v16, v2

    const-wide v18, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mGammaPlus:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v10

    .line 296
    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    mul-double v18, v18, v4

    add-double v12, v16, v18

    .line 297
    .local v12, "displacement":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mGammaMinus:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v2

    const-wide v18, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mGammaMinus:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v10

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    mul-double v16, v16, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mGammaPlus:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v4

    const-wide v20, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mGammaPlus:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v10

    .line 298
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v8, v16, v18

    .line 320
    .end local v2    # "coeffA":D
    .end local v4    # "coeffB":D
    .local v8, "currentVelocity":D
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/J;->mMassState:Lc8/I;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mFinalPosition:D

    move-wide/from16 v18, v0

    add-double v18, v18, v12

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lc8/I;->mValue:F

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/J;->mMassState:Lc8/I;

    move-object/from16 v16, v0

    double-to-float v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lc8/I;->mVelocity:F

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/J;->mMassState:Lc8/I;

    move-object/from16 v16, v0

    return-object v16

    .line 299
    .end local v8    # "currentVelocity":D
    .end local v12    # "displacement":D
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mDampingRatio:D

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_1

    .line 301
    move-wide/from16 v2, p1

    .line 302
    .restart local v2    # "coeffA":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mNaturalFreq:D

    move-wide/from16 v16, v0

    mul-double v16, v16, p1

    add-double v4, p3, v16

    .line 303
    .restart local v4    # "coeffB":D
    mul-double v16, v4, v10

    add-double v16, v16, v2

    const-wide v18, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mNaturalFreq:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v10

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    mul-double v12, v16, v18

    .line 304
    .restart local v12    # "displacement":D
    mul-double v16, v4, v10

    add-double v16, v16, v2

    const-wide v18, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mNaturalFreq:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v10

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    mul-double v16, v16, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mNaturalFreq:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    const-wide v18, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mNaturalFreq:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v10

    .line 305
    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    mul-double v18, v18, v4

    add-double v8, v16, v18

    .line 306
    .restart local v8    # "currentVelocity":D
    goto/16 :goto_0

    .line 308
    .end local v2    # "coeffA":D
    .end local v4    # "coeffB":D
    .end local v8    # "currentVelocity":D
    .end local v12    # "displacement":D
    :cond_1
    move-wide/from16 v6, p1

    .line 309
    .local v6, "cosCoeff":D
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mDampedFreq:D

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mDampingRatio:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mNaturalFreq:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    mul-double v18, v18, p1

    add-double v18, v18, p3

    mul-double v14, v16, v18

    .line 311
    .local v14, "sinCoeff":D
    const-wide v16, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mDampingRatio:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mNaturalFreq:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    mul-double v18, v18, v10

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mDampedFreq:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v10

    .line 312
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mDampedFreq:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v10

    .line 313
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v20, v20, v14

    add-double v18, v18, v20

    mul-double v12, v16, v18

    .line 314
    .restart local v12    # "displacement":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mNaturalFreq:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mDampingRatio:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    const-wide v18, 0x4005bf0a8b145769L    # Math.E

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mDampingRatio:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mNaturalFreq:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    mul-double v20, v20, v10

    .line 315
    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mDampedFreq:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mDampedFreq:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v10

    .line 316
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mDampedFreq:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/J;->mDampedFreq:D

    move-wide/from16 v24, v0

    mul-double v24, v24, v10

    .line 317
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v20, v20, v22

    mul-double v18, v18, v20

    add-double v8, v16, v18

    .restart local v8    # "currentVelocity":D
    goto/16 :goto_0
.end method
