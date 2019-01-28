.class public Lc8/gub;
.super Ljava/lang/Object;
.source "Vector3.java"


# instance fields
.field x:D

.field y:D

.field z:D


# direct methods
.method constructor <init>(DDD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lc8/gub;->x:D

    .line 14
    iput-wide p3, p0, Lc8/gub;->y:D

    .line 15
    iput-wide p5, p0, Lc8/gub;->z:D

    .line 16
    return-void
.end method


# virtual methods
.method applyQuaternion(Lc8/ttb;)Lc8/gub;
    .locals 30
    .param p1, "q"    # Lc8/ttb;

    .prologue
    .line 25
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/gub;->x:D

    move-wide/from16 v20, v0

    .local v20, "x":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/gub;->y:D

    move-wide/from16 v22, v0

    .local v22, "y":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/gub;->z:D

    move-wide/from16 v24, v0

    .line 26
    .local v24, "z":D
    move-object/from16 v0, p1

    iget-wide v14, v0, Lc8/ttb;->x:D

    .local v14, "qx":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/ttb;->y:D

    move-wide/from16 v16, v0

    .local v16, "qy":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lc8/ttb;->z:D

    move-wide/from16 v18, v0

    .local v18, "qz":D
    move-object/from16 v0, p1

    iget-wide v12, v0, Lc8/ttb;->w:D

    .line 30
    .local v12, "qw":D
    mul-double v26, v12, v20

    mul-double v28, v16, v24

    add-double v26, v26, v28

    mul-double v28, v18, v22

    sub-double v6, v26, v28

    .line 31
    .local v6, "ix":D
    mul-double v26, v12, v22

    mul-double v28, v18, v20

    add-double v26, v26, v28

    mul-double v28, v14, v24

    sub-double v8, v26, v28

    .line 32
    .local v8, "iy":D
    mul-double v26, v12, v24

    mul-double v28, v14, v22

    add-double v26, v26, v28

    mul-double v28, v16, v20

    sub-double v10, v26, v28

    .line 33
    .local v10, "iz":D
    neg-double v0, v14

    move-wide/from16 v26, v0

    mul-double v26, v26, v20

    mul-double v28, v16, v22

    sub-double v26, v26, v28

    mul-double v28, v18, v24

    sub-double v4, v26, v28

    .line 37
    .local v4, "iw":D
    mul-double v26, v6, v12

    neg-double v0, v14

    move-wide/from16 v28, v0

    mul-double v28, v28, v4

    add-double v26, v26, v28

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v8

    add-double v26, v26, v28

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v10

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/gub;->x:D

    .line 38
    mul-double v26, v8, v12

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v4

    add-double v26, v26, v28

    neg-double v0, v14

    move-wide/from16 v28, v0

    mul-double v28, v28, v10

    add-double v26, v26, v28

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v6

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/gub;->y:D

    .line 39
    mul-double v26, v10, v12

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v4

    add-double v26, v26, v28

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v6

    add-double v26, v26, v28

    neg-double v0, v14

    move-wide/from16 v28, v0

    mul-double v28, v28, v8

    sub-double v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/gub;->z:D

    .line 41
    return-object p0
.end method

.method set(DDD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 19
    iput-wide p1, p0, Lc8/gub;->x:D

    .line 20
    iput-wide p3, p0, Lc8/gub;->y:D

    .line 21
    iput-wide p5, p0, Lc8/gub;->z:D

    .line 22
    return-void
.end method
