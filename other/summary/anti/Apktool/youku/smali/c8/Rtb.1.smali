.class public final Lc8/Rtb;
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
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 26
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "arguments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Double;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 83
    .local v12, "t":D
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Double;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 84
    .local v4, "b":D
    const/16 v22, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Double;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 85
    .local v8, "c":D
    const/16 v22, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Double;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 87
    .local v10, "d":D
    const/16 v22, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Double;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 88
    .local v14, "x1":D
    const/16 v22, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Double;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    .line 89
    .local v18, "y1":D
    const/16 v22, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Double;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    .line 90
    .local v16, "x2":D
    const/16 v22, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Double;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    .line 92
    .local v20, "y2":D
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    .line 94
    cmpl-double v22, v12, v10

    if-nez v22, :cond_0

    .line 95
    add-double v22, v4, v8

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    .line 106
    :goto_0
    return-object v22

    .line 99
    :cond_0
    double-to-float v0, v14

    move/from16 v22, v0

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v23, v0

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v24, v0

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v25, v0

    invoke-static/range {v22 .. v25}, Lc8/eub;->access$000(FFFF)Lc8/cub;

    move-result-object v6

    .line 100
    .local v6, "bezierInterpolator":Lc8/cub;
    if-nez v6, :cond_1

    .line 101
    new-instance v6, Lc8/cub;

    .end local v6    # "bezierInterpolator":Lc8/cub;
    double-to-float v0, v14

    move/from16 v22, v0

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v23, v0

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v24, v0

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v6, v0, v1, v2, v3}, Lc8/cub;-><init>(FFFF)V

    .line 102
    .restart local v6    # "bezierInterpolator":Lc8/cub;
    invoke-static {}, Lc8/eub;->access$100()Lc8/dub;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lc8/dub;->add(Ljava/lang/Object;)V

    .line 105
    :cond_1
    div-double v22, v12, v10

    move-wide/from16 v0, v22

    double-to-float v7, v0

    .line 106
    .local v7, "input":F
    invoke-virtual {v6, v7}, Lc8/cub;->getInterpolation(F)F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v8

    add-double v22, v22, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    goto :goto_0
.end method
