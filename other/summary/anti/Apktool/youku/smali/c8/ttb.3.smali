.class public Lc8/ttb;
.super Ljava/lang/Object;
.source "Quaternion.java"


# instance fields
.field w:D

.field x:D

.field y:D

.field z:D


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method constructor <init>(DDDD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .param p7, "w"    # D

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lc8/ttb;->x:D

    .line 23
    iput-wide p3, p0, Lc8/ttb;->y:D

    .line 24
    iput-wide p5, p0, Lc8/ttb;->z:D

    .line 25
    iput-wide p7, p0, Lc8/ttb;->w:D

    .line 26
    return-void
.end method


# virtual methods
.method multiply(Lc8/ttb;)Lc8/ttb;
    .locals 1
    .param p1, "q"    # Lc8/ttb;

    .prologue
    .line 109
    invoke-virtual {p0, p0, p1}, Lc8/ttb;->multiplyQuaternions(Lc8/ttb;Lc8/ttb;)Lc8/ttb;

    move-result-object v0

    return-object v0
.end method

.method multiplyQuaternions(Lc8/ttb;Lc8/ttb;)Lc8/ttb;
    .locals 24
    .param p1, "a"    # Lc8/ttb;
    .param p2, "b"    # Lc8/ttb;

    .prologue
    .line 114
    move-object/from16 v0, p1

    iget-wide v6, v0, Lc8/ttb;->x:D

    .local v6, "qax":D
    move-object/from16 v0, p1

    iget-wide v8, v0, Lc8/ttb;->y:D

    .local v8, "qay":D
    move-object/from16 v0, p1

    iget-wide v10, v0, Lc8/ttb;->z:D

    .local v10, "qaz":D
    move-object/from16 v0, p1

    iget-wide v4, v0, Lc8/ttb;->w:D

    .line 115
    .local v4, "qaw":D
    move-object/from16 v0, p2

    iget-wide v14, v0, Lc8/ttb;->x:D

    .local v14, "qbx":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lc8/ttb;->y:D

    move-wide/from16 v16, v0

    .local v16, "qby":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lc8/ttb;->z:D

    move-wide/from16 v18, v0

    .local v18, "qbz":D
    move-object/from16 v0, p2

    iget-wide v12, v0, Lc8/ttb;->w:D

    .line 117
    .local v12, "qbw":D
    mul-double v20, v6, v12

    mul-double v22, v4, v14

    add-double v20, v20, v22

    mul-double v22, v8, v18

    add-double v20, v20, v22

    mul-double v22, v10, v16

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->x:D

    .line 118
    mul-double v20, v8, v12

    mul-double v22, v4, v16

    add-double v20, v20, v22

    mul-double v22, v10, v14

    add-double v20, v20, v22

    mul-double v22, v6, v18

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->y:D

    .line 119
    mul-double v20, v10, v12

    mul-double v22, v4, v18

    add-double v20, v20, v22

    mul-double v22, v6, v16

    add-double v20, v20, v22

    mul-double v22, v8, v14

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->z:D

    .line 120
    mul-double v20, v4, v12

    mul-double v22, v6, v14

    sub-double v20, v20, v22

    mul-double v22, v8, v16

    sub-double v20, v20, v22

    mul-double v22, v10, v18

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->w:D

    .line 121
    return-object p0
.end method

.method setFromAxisAngle(Lc8/gub;D)Lc8/ttb;
    .locals 6
    .param p1, "axis"    # Lc8/gub;
    .param p2, "angle"    # D

    .prologue
    .line 97
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v0, p2, v4

    .line 98
    .local v0, "halfAngle":D
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 100
    .local v2, "s":D
    iget-wide v4, p1, Lc8/gub;->x:D

    mul-double/2addr v4, v2

    iput-wide v4, p0, Lc8/ttb;->x:D

    .line 101
    iget-wide v4, p1, Lc8/gub;->y:D

    mul-double/2addr v4, v2

    iput-wide v4, p0, Lc8/ttb;->y:D

    .line 102
    iget-wide v4, p1, Lc8/gub;->z:D

    mul-double/2addr v4, v2

    iput-wide v4, p0, Lc8/ttb;->z:D

    .line 103
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iput-wide v4, p0, Lc8/ttb;->w:D

    .line 104
    return-object p0
.end method

.method setFromEuler(Lc8/Frb;)Lc8/ttb;
    .locals 22
    .param p1, "euler"    # Lc8/Frb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 33
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lc8/Frb;->isEuler:Z

    if-nez v11, :cond_2

    .line 34
    :cond_0
    const/16 p0, 0x0

    .line 90
    .end local p0    # "this":Lc8/ttb;
    :cond_1
    :goto_0
    return-object p0

    .line 37
    .restart local p0    # "this":Lc8/ttb;
    :cond_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/Frb;->x:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 38
    .local v4, "c1":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/Frb;->y:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 39
    .local v6, "c2":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/Frb;->z:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 40
    .local v8, "c3":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/Frb;->x:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 41
    .local v12, "s1":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/Frb;->y:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 42
    .local v14, "s2":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/Frb;->z:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 44
    .local v16, "s3":D
    move-object/from16 v0, p1

    iget-object v10, v0, Lc8/Frb;->order:Ljava/lang/String;

    .line 46
    .local v10, "order":Ljava/lang/String;
    const-string/jumbo v11, "XYZ"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 48
    mul-double v18, v12, v6

    mul-double v18, v18, v8

    mul-double v20, v4, v14

    mul-double v20, v20, v16

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->x:D

    .line 49
    mul-double v18, v4, v14

    mul-double v18, v18, v8

    mul-double v20, v12, v6

    mul-double v20, v20, v16

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->y:D

    .line 50
    mul-double v18, v4, v6

    mul-double v18, v18, v16

    mul-double v20, v12, v14

    mul-double v20, v20, v8

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->z:D

    .line 51
    mul-double v18, v4, v6

    mul-double v18, v18, v8

    mul-double v20, v12, v14

    mul-double v20, v20, v16

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->w:D

    goto/16 :goto_0

    .line 53
    :cond_3
    const-string/jumbo v11, "YXZ"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 55
    mul-double v18, v12, v6

    mul-double v18, v18, v8

    mul-double v20, v4, v14

    mul-double v20, v20, v16

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->x:D

    .line 56
    mul-double v18, v4, v14

    mul-double v18, v18, v8

    mul-double v20, v12, v6

    mul-double v20, v20, v16

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->y:D

    .line 57
    mul-double v18, v4, v6

    mul-double v18, v18, v16

    mul-double v20, v12, v14

    mul-double v20, v20, v8

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->z:D

    .line 58
    mul-double v18, v4, v6

    mul-double v18, v18, v8

    mul-double v20, v12, v14

    mul-double v20, v20, v16

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->w:D

    goto/16 :goto_0

    .line 60
    :cond_4
    const-string/jumbo v11, "ZXY"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 62
    mul-double v18, v12, v6

    mul-double v18, v18, v8

    mul-double v20, v4, v14

    mul-double v20, v20, v16

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->x:D

    .line 63
    mul-double v18, v4, v14

    mul-double v18, v18, v8

    mul-double v20, v12, v6

    mul-double v20, v20, v16

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->y:D

    .line 64
    mul-double v18, v4, v6

    mul-double v18, v18, v16

    mul-double v20, v12, v14

    mul-double v20, v20, v8

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->z:D

    .line 65
    mul-double v18, v4, v6

    mul-double v18, v18, v8

    mul-double v20, v12, v14

    mul-double v20, v20, v16

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->w:D

    goto/16 :goto_0

    .line 67
    :cond_5
    const-string/jumbo v11, "ZYX"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 69
    mul-double v18, v12, v6

    mul-double v18, v18, v8

    mul-double v20, v4, v14

    mul-double v20, v20, v16

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->x:D

    .line 70
    mul-double v18, v4, v14

    mul-double v18, v18, v8

    mul-double v20, v12, v6

    mul-double v20, v20, v16

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->y:D

    .line 71
    mul-double v18, v4, v6

    mul-double v18, v18, v16

    mul-double v20, v12, v14

    mul-double v20, v20, v8

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->z:D

    .line 72
    mul-double v18, v4, v6

    mul-double v18, v18, v8

    mul-double v20, v12, v14

    mul-double v20, v20, v16

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->w:D

    goto/16 :goto_0

    .line 74
    :cond_6
    const-string/jumbo v11, "YZX"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 76
    mul-double v18, v12, v6

    mul-double v18, v18, v8

    mul-double v20, v4, v14

    mul-double v20, v20, v16

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->x:D

    .line 77
    mul-double v18, v4, v14

    mul-double v18, v18, v8

    mul-double v20, v12, v6

    mul-double v20, v20, v16

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->y:D

    .line 78
    mul-double v18, v4, v6

    mul-double v18, v18, v16

    mul-double v20, v12, v14

    mul-double v20, v20, v8

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->z:D

    .line 79
    mul-double v18, v4, v6

    mul-double v18, v18, v8

    mul-double v20, v12, v14

    mul-double v20, v20, v16

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->w:D

    goto/16 :goto_0

    .line 81
    :cond_7
    const-string/jumbo v11, "XZY"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 83
    mul-double v18, v12, v6

    mul-double v18, v18, v8

    mul-double v20, v4, v14

    mul-double v20, v20, v16

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->x:D

    .line 84
    mul-double v18, v4, v14

    mul-double v18, v18, v8

    mul-double v20, v12, v6

    mul-double v20, v20, v16

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->y:D

    .line 85
    mul-double v18, v4, v6

    mul-double v18, v18, v16

    mul-double v20, v12, v14

    mul-double v20, v20, v8

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->z:D

    .line 86
    mul-double v18, v4, v6

    mul-double v18, v18, v8

    mul-double v20, v12, v14

    mul-double v20, v20, v16

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/ttb;->w:D

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Quaternion{x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/ttb;->x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/ttb;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/ttb;->z:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/ttb;->w:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
