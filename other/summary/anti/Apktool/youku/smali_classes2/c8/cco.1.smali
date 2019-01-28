.class public Lc8/cco;
.super Ljava/lang/Object;
.source "Back.java"

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
    .locals 13
    .param p1, "time"    # D
    .param p3, "start"    # D
    .param p5, "end"    # D
    .param p7, "duration"    # D

    .prologue
    .line 12
    const-wide/16 v10, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v11}, Lc8/cco;->easeIn(DDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public easeIn(DDDDD)D
    .locals 5
    .param p1, "t"    # D
    .param p3, "b"    # D
    .param p5, "c"    # D
    .param p7, "d"    # D
    .param p9, "s"    # D

    .prologue
    .line 21
    const-wide/16 v0, 0x0

    cmpl-double v0, p9, v0

    if-nez v0, :cond_0

    const-wide p9, 0x3ffb39abf3387161L    # 1.70158

    .line 22
    :cond_0
    div-double/2addr p1, p7

    mul-double v0, p5, p1

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, p9

    mul-double/2addr v2, p1

    sub-double/2addr v2, p9

    mul-double/2addr v0, v2

    add-double/2addr v0, p3

    return-wide v0
.end method

.method public easeInOut(DDDD)D
    .locals 13
    .param p1, "time"    # D
    .param p3, "start"    # D
    .param p5, "end"    # D
    .param p7, "duration"    # D

    .prologue
    .line 17
    const-wide v10, 0x3feccccccccccccdL    # 0.9

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v11}, Lc8/cco;->easeInOut(DDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public easeInOut(DDDDD)D
    .locals 7
    .param p1, "t"    # D
    .param p3, "b"    # D
    .param p5, "c"    # D
    .param p7, "d"    # D
    .param p9, "s"    # D

    .prologue
    .line 31
    const-wide/16 v0, 0x0

    cmpl-double v0, p9, v0

    if-nez v0, :cond_0

    const-wide p9, 0x3ffb39abf3387161L    # 1.70158

    .line 32
    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v0, p7, v0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v0, p5, v0

    mul-double v2, p1, p1

    const-wide v4, 0x3ff8666666666666L    # 1.525

    mul-double p9, p9, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v4, v4, p9

    mul-double/2addr v4, p1

    sub-double v4, v4, p9

    mul-double/2addr v2, v4

    mul-double/2addr v0, v2

    add-double/2addr v0, p3

    .line 33
    :goto_0
    return-wide v0

    :cond_1
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v0, p5, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    sub-double/2addr p1, v2

    mul-double v2, p1, p1

    const-wide v4, 0x3ff8666666666666L    # 1.525

    mul-double p9, p9, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v4, v4, p9

    mul-double/2addr v4, p1

    add-double v4, v4, p9

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    add-double/2addr v0, p3

    goto :goto_0
.end method

.method public easeOut(DDDD)D
    .locals 13
    .param p1, "time"    # D
    .param p3, "start"    # D
    .param p5, "end"    # D
    .param p7, "duration"    # D

    .prologue
    .line 7
    const-wide/16 v10, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v11}, Lc8/cco;->easeOut(DDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public easeOut(DDDDD)D
    .locals 5
    .param p1, "t"    # D
    .param p3, "b"    # D
    .param p5, "c"    # D
    .param p7, "d"    # D
    .param p9, "s"    # D

    .prologue
    .line 26
    const-wide/16 v0, 0x0

    cmpl-double v0, p9, v0

    if-nez v0, :cond_0

    const-wide p9, 0x3ffb39abf3387161L    # 1.70158

    .line 27
    :cond_0
    div-double v0, p1, p7

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double p1, v0, v2

    mul-double v0, p1, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, p9

    mul-double/2addr v2, p1

    add-double/2addr v2, p9

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    mul-double/2addr v0, p5

    add-double/2addr v0, p3

    return-wide v0
.end method
