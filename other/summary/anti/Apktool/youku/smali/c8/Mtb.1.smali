.class public final Lc8/Mtb;
.super Ljava/lang/Object;
.source "TimingFunctions.java"

# interfaces
.implements Lc8/Msb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/eub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 456
    .local p1, "arguments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 457
    .local v14, "t":D
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 458
    .local v4, "b":D
    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 459
    .local v6, "c":D
    const/16 v16, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 460
    .local v8, "d":D
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    .line 464
    move-wide v2, v6

    .line 465
    .local v2, "a":D
    const-wide/16 v16, 0x0

    cmpl-double v16, v14, v16

    if-nez v16, :cond_0

    .line 466
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    .line 478
    :goto_0
    return-object v16

    .line 468
    :cond_0
    div-double/2addr v14, v8

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v14, v16

    if-nez v16, :cond_1

    .line 469
    add-double v16, v4, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    goto :goto_0

    .line 471
    :cond_1
    const-wide v16, 0x3fd3333333333333L    # 0.3

    mul-double v10, v8, v16

    .line 472
    .local v10, "p":D
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    cmpg-double v16, v2, v16

    if-gez v16, :cond_2

    .line 473
    move-wide v2, v6

    .line 474
    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    div-double v12, v10, v16

    .line 478
    .local v12, "s":D
    :goto_1
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    const-wide/high16 v18, -0x3fdc000000000000L    # -10.0

    mul-double v18, v18, v14

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v16, v16, v2

    mul-double v18, v14, v8

    sub-double v18, v18, v12

    const-wide v20, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v18, v18, v20

    div-double v18, v18, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v16, v16, v6

    add-double v16, v16, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    goto :goto_0

    .line 476
    .end local v12    # "s":D
    :cond_2
    const-wide v16, 0x401921fb54442d18L    # 6.283185307179586

    div-double v16, v10, v16

    div-double v18, v6, v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->asin(D)D

    move-result-wide v18

    mul-double v12, v16, v18

    .restart local v12    # "s":D
    goto :goto_1
.end method
