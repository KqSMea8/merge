.class public Lc8/WJ;
.super Ljava/lang/Object;
.source "NetWorkKalmanFilter.java"


# instance fields
.field private Kalman_C1:D

.field private Kalman_C2:D

.field private Kalman_Count:J

.field private Kalman_ek:D

.field private Kalman_z:D

.field private kalman_Kk:D

.field private kalman_Pk:D

.field private kalman_Q:D

.field private kalman_R:D

.field private kalman_Xk:D

.field private mcurrentNetWorkSpeed:D


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/WJ;->Kalman_Count:J

    .line 16
    iput-wide v2, p0, Lc8/WJ;->Kalman_C1:D

    iput-wide v2, p0, Lc8/WJ;->Kalman_C2:D

    .line 20
    iput-wide v2, p0, Lc8/WJ;->mcurrentNetWorkSpeed:D

    return-void
.end method


# virtual methods
.method public ResetKalmanParams()V
    .locals 2

    .prologue
    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/WJ;->Kalman_Count:J

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/WJ;->mcurrentNetWorkSpeed:D

    .line 113
    return-void
.end method

.method public addMeasurement(DD)D
    .locals 21
    .param p1, "Measurement"    # D
    .param p3, "TimeInMs"    # D

    .prologue
    .line 29
    const-wide v6, 0x3fee666666666666L    # 0.95

    .line 33
    .local v6, "beta":D
    div-double v8, p1, p3

    .line 36
    .local v8, "speed_tmp":D
    const-wide/high16 v14, 0x4020000000000000L    # 8.0

    cmpg-double v5, v8, v14

    if-gez v5, :cond_1

    .line 38
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->Kalman_Count:J

    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-eqz v5, :cond_0

    .line 39
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->mcurrentNetWorkSpeed:D

    .line 106
    :goto_0
    return-wide v14

    .line 41
    :cond_0
    move-object/from16 v0, p0

    iput-wide v8, v0, Lc8/WJ;->mcurrentNetWorkSpeed:D

    .line 42
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->mcurrentNetWorkSpeed:D

    goto :goto_0

    .line 51
    :cond_1
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->Kalman_Count:J

    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-nez v5, :cond_2

    .line 52
    move-object/from16 v0, p0

    iput-wide v8, v0, Lc8/WJ;->Kalman_C1:D

    .line 53
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->Kalman_C1:D

    move-object/from16 v0, p0

    iput-wide v14, v0, Lc8/WJ;->kalman_Xk:D

    .line 55
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->kalman_Xk:D

    const-wide v16, 0x3fb999999999999aL    # 0.1

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lc8/WJ;->kalman_R:D

    .line 56
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->kalman_Xk:D

    const-wide v16, 0x3f947ae147ae147bL    # 0.02

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lc8/WJ;->kalman_Q:D

    .line 57
    const-wide v14, 0x3fb999999999999aL    # 0.1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/WJ;->kalman_Xk:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/WJ;->kalman_Xk:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lc8/WJ;->kalman_Pk:D

    .line 99
    :goto_1
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->kalman_Xk:D

    const-wide/16 v16, 0x0

    cmpg-double v5, v14, v16

    if-gez v5, :cond_8

    .line 100
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->Kalman_C2:D

    const-wide v16, 0x3fe6666666666666L    # 0.7

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lc8/WJ;->mcurrentNetWorkSpeed:D

    .line 101
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->mcurrentNetWorkSpeed:D

    move-object/from16 v0, p0

    iput-wide v14, v0, Lc8/WJ;->kalman_Xk:D

    .line 106
    :goto_2
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->mcurrentNetWorkSpeed:D

    goto :goto_0

    .line 58
    :cond_2
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->Kalman_Count:J

    const-wide/16 v16, 0x1

    cmp-long v5, v14, v16

    if-nez v5, :cond_3

    .line 59
    move-object/from16 v0, p0

    iput-wide v8, v0, Lc8/WJ;->Kalman_C2:D

    .line 60
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->Kalman_C2:D

    move-object/from16 v0, p0

    iput-wide v14, v0, Lc8/WJ;->kalman_Xk:D

    goto :goto_1

    .line 63
    :cond_3
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->Kalman_C2:D

    sub-double v2, v8, v14

    .line 65
    .local v2, "Kalman_u":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->Kalman_C2:D

    move-object/from16 v0, p0

    iput-wide v14, v0, Lc8/WJ;->Kalman_C1:D

    .line 66
    move-object/from16 v0, p0

    iput-wide v8, v0, Lc8/WJ;->Kalman_C2:D

    .line 68
    div-double v14, v8, v6

    move-object/from16 v0, p0

    iput-wide v14, v0, Lc8/WJ;->Kalman_z:D

    .line 69
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->Kalman_z:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/WJ;->kalman_Xk:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v6

    sub-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lc8/WJ;->Kalman_ek:D

    .line 71
    const/4 v4, 0x0

    .line 73
    .local v4, "MeasurementConstraintFlag":I
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->kalman_R:D

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 74
    .local v12, "tmp_srqt_kalman_R":D
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->Kalman_ek:D

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    mul-double v16, v16, v12

    cmpl-double v5, v14, v16

    if-ltz v5, :cond_6

    .line 75
    const/4 v4, 0x1

    .line 76
    const-wide/high16 v14, 0x3fe8000000000000L    # 0.75

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/WJ;->Kalman_ek:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v12

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lc8/WJ;->Kalman_ek:D

    .line 82
    :cond_4
    :goto_3
    const-wide v14, 0x3ff0cccccccccccdL    # 1.05

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/WJ;->kalman_R:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide v16, 0x3f647ae147ae147bL    # 0.0025

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/WJ;->Kalman_ek:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/WJ;->Kalman_ek:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v10, v14, v16

    .line 84
    .local v10, "tmp":D
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x3fe999999999999aL    # 0.8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/WJ;->kalman_R:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    .line 85
    const-wide/high16 v14, 0x3ff4000000000000L    # 1.25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/WJ;->kalman_R:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lc8/WJ;->kalman_R:D

    .line 87
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->kalman_Pk:D

    mul-double v16, v6, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/WJ;->kalman_Pk:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/WJ;->kalman_R:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    div-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lc8/WJ;->kalman_Kk:D

    .line 88
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->kalman_Xk:D

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    div-double v16, v16, v6

    mul-double v16, v16, v2

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/WJ;->kalman_Kk:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/WJ;->Kalman_ek:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lc8/WJ;->kalman_Xk:D

    .line 90
    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 91
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->kalman_Xk:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/WJ;->Kalman_z:D

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lc8/WJ;->kalman_Xk:D

    .line 96
    :cond_5
    :goto_4
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/WJ;->kalman_Kk:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v6

    sub-double v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/WJ;->kalman_Pk:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/WJ;->kalman_Q:D

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lc8/WJ;->kalman_Pk:D

    goto/16 :goto_1

    .line 77
    .end local v10    # "tmp":D
    :cond_6
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->Kalman_ek:D

    const-wide/high16 v16, -0x3ff0000000000000L    # -4.0

    mul-double v16, v16, v12

    cmpg-double v5, v14, v16

    if-gtz v5, :cond_4

    .line 78
    const/4 v4, 0x2

    .line 79
    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    mul-double/2addr v14, v12

    const-wide/high16 v16, 0x3fe8000000000000L    # 0.75

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/WJ;->Kalman_ek:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lc8/WJ;->Kalman_ek:D

    goto/16 :goto_3

    .line 92
    .restart local v10    # "tmp":D
    :cond_7
    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 93
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->kalman_Xk:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/WJ;->Kalman_z:D

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lc8/WJ;->kalman_Xk:D

    goto :goto_4

    .line 103
    .end local v2    # "Kalman_u":D
    .end local v4    # "MeasurementConstraintFlag":I
    .end local v10    # "tmp":D
    .end local v12    # "tmp_srqt_kalman_R":D
    :cond_8
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/WJ;->kalman_Xk:D

    move-object/from16 v0, p0

    iput-wide v14, v0, Lc8/WJ;->mcurrentNetWorkSpeed:D

    goto/16 :goto_2
.end method
