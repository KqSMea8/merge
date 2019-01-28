.class public Lc8/hco;
.super Ljava/lang/Object;
.source "Elastic.java"

# interfaces
.implements Lc8/gco;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public easeIn(DDDD)D
    .locals 15
    .param p1, "time"    # D
    .param p3, "start"    # D
    .param p5, "end"    # D
    .param p7, "duration"    # D

    .prologue
    .line 7
    add-double v10, p3, p5

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v12, p7

    invoke-virtual/range {v1 .. v13}, Lc8/hco;->easeIn(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public easeIn(DDDDDD)D
    .locals 9
    .param p1, "t"    # D
    .param p3, "b"    # D
    .param p5, "c"    # D
    .param p7, "d"    # D
    .param p9, "a"    # D
    .param p11, "p"    # D

    .prologue
    .line 12
    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_0

    .line 20
    .end local p3    # "b":D
    :goto_0
    return-wide p3

    .line 13
    .restart local p3    # "b":D
    :cond_0
    div-double p1, p1, p7

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_1

    add-double/2addr p3, p5

    goto :goto_0

    .line 14
    :cond_1
    const-wide/16 v2, 0x0

    cmpl-double v2, p11, v2

    if-gtz v2, :cond_2

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double p11, p7, v2

    .line 15
    :cond_2
    const-wide/16 v2, 0x0

    cmpl-double v2, p9, v2

    if-lez v2, :cond_3

    invoke-static {p5, p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, p9, v2

    if-gez v2, :cond_4

    .line 16
    :cond_3
    move-wide/from16 p9, p5

    .line 17
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double v0, p11, v2

    .line 20
    .local v0, "s":D
    :goto_1
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, v6

    mul-double/2addr v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, p9

    mul-double v4, p1, p7

    sub-double/2addr v4, v0

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v4, v6

    div-double v4, v4, p11

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    neg-double v2, v2

    add-double/2addr p3, v2

    goto :goto_0

    .line 19
    .end local v0    # "s":D
    :cond_4
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double v2, p11, v2

    div-double v4, p5, p9

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    mul-double v0, v2, v4

    .restart local v0    # "s":D
    goto :goto_1
.end method

.method public easeInOut(DDDD)D
    .locals 15
    .param p1, "t"    # D
    .param p3, "b"    # D
    .param p5, "c"    # D
    .param p7, "d"    # D

    .prologue
    .line 43
    add-double v10, p3, p5

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v12, p7

    invoke-virtual/range {v1 .. v13}, Lc8/hco;->easeInOut(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public easeInOut(DDDDDD)D
    .locals 11
    .param p1, "t"    # D
    .param p3, "b"    # D
    .param p5, "c"    # D
    .param p7, "d"    # D
    .param p9, "a"    # D
    .param p11, "p"    # D

    .prologue
    .line 49
    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_0

    .line 58
    .end local p3    # "b":D
    :goto_0
    return-wide p3

    .line 50
    .restart local p3    # "b":D
    :cond_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, p7, v2

    div-double/2addr p1, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_1

    add-double p3, p3, p5

    goto :goto_0

    .line 51
    :cond_1
    const-wide/16 v2, 0x0

    cmpl-double v2, p11, v2

    if-gtz v2, :cond_2

    const-wide v2, 0x3fdcccccccccccccL    # 0.44999999999999996

    mul-double p11, p7, v2

    .line 52
    :cond_2
    const-wide/16 v2, 0x0

    cmpl-double v2, p9, v2

    if-lez v2, :cond_3

    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, p9, v2

    if-gez v2, :cond_4

    .line 53
    :cond_3
    move-wide/from16 p9, p5

    .line 54
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double v0, p11, v2

    .line 57
    .local v0, "s":D
    :goto_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p1, v2

    if-gez v2, :cond_5

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, v8

    mul-double/2addr v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v4, v4, p9

    mul-double v6, p1, p7

    sub-double/2addr v6, v0

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v6, v8

    div-double v6, v6, p11

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr p3, v2

    goto :goto_0

    .line 56
    .end local v0    # "s":D
    :cond_4
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double v2, p11, v2

    div-double v4, p5, p9

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    mul-double v0, v2, v4

    .restart local v0    # "s":D
    goto :goto_1

    .line 58
    :cond_5
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, -0x3fdc000000000000L    # -10.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, v6

    mul-double/2addr v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, p9

    mul-double v4, p1, p7

    sub-double/2addr v4, v0

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v4, v6

    div-double v4, v4, p11

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    add-double v2, v2, p5

    add-double/2addr p3, v2

    goto/16 :goto_0
.end method

.method public easeOut(DDDD)D
    .locals 15
    .param p1, "time"    # D
    .param p3, "start"    # D
    .param p5, "end"    # D
    .param p7, "duration"    # D

    .prologue
    .line 25
    add-double v10, p3, p5

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v12, p7

    invoke-virtual/range {v1 .. v13}, Lc8/hco;->easeOut(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public easeOut(DDDDDD)D
    .locals 9
    .param p1, "t"    # D
    .param p3, "b"    # D
    .param p5, "c"    # D
    .param p7, "d"    # D
    .param p9, "a"    # D
    .param p11, "p"    # D

    .prologue
    .line 30
    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_0

    .line 38
    .end local p3    # "b":D
    :goto_0
    return-wide p3

    .line 31
    .restart local p3    # "b":D
    :cond_0
    div-double p1, p1, p7

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_1

    add-double/2addr p3, p5

    goto :goto_0

    .line 32
    :cond_1
    const-wide/16 v2, 0x0

    cmpl-double v2, p11, v2

    if-gtz v2, :cond_2

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double p11, p7, v2

    .line 33
    :cond_2
    const-wide/16 v2, 0x0

    cmpl-double v2, p9, v2

    if-lez v2, :cond_3

    invoke-static {p5, p6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, p9, v2

    if-gez v2, :cond_4

    .line 34
    :cond_3
    move-wide/from16 p9, p5

    .line 35
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double v0, p11, v2

    .line 38
    .local v0, "s":D
    :goto_1
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, -0x3fdc000000000000L    # -10.0

    mul-double/2addr v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, p9

    mul-double v4, p1, p7

    sub-double/2addr v4, v0

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v4, v6

    div-double v4, v4, p11

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v2, p5

    add-double/2addr p3, v2

    goto :goto_0

    .line 37
    .end local v0    # "s":D
    :cond_4
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double v2, p11, v2

    div-double v4, p5, p9

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    mul-double v0, v2, v4

    .restart local v0    # "s":D
    goto :goto_1
.end method
