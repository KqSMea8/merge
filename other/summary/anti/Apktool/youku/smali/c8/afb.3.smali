.class public Lc8/afb;
.super Ljava/lang/Object;
.source "ShapeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Zeb;
    }
.end annotation


# instance fields
.field private closed:Z

.field private final curves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/ydb;",
            ">;"
        }
    .end annotation
.end field

.field private initialPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/afb;->curves:Ljava/util/List;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/graphics/PointF;ZLjava/util/List;)V
    .locals 1
    .param p1, "initialPoint"    # Landroid/graphics/PointF;
    .param p2, "closed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lc8/ydb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p3, "curves":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/CubicCurveData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/afb;->curves:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lc8/afb;->initialPoint:Landroid/graphics/PointF;

    .line 24
    iput-boolean p2, p0, Lc8/afb;->closed:Z

    .line 25
    iget-object v0, p0, Lc8/afb;->curves:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/PointF;ZLjava/util/List;Lc8/Yeb;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/PointF;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Lc8/Yeb;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lc8/afb;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    return-void
.end method

.method private setInitialPoint(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 32
    iget-object v0, p0, Lc8/afb;->initialPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lc8/afb;->initialPoint:Landroid/graphics/PointF;

    .line 35
    :cond_0
    iget-object v0, p0, Lc8/afb;->initialPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 36
    return-void
.end method


# virtual methods
.method public getCurves()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/ydb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lc8/afb;->curves:Ljava/util/List;

    return-object v0
.end method

.method public getInitialPoint()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lc8/afb;->initialPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public interpolateBetween(Lc8/afb;Lc8/afb;F)V
    .locals 16
    .param p1, "shapeData1"    # Lc8/afb;
    .param p2, "shapeData2"    # Lc8/afb;
    .param p3, "percentage"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 52
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/afb;->initialPoint:Landroid/graphics/PointF;

    if-nez v12, :cond_0

    .line 53
    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/afb;->initialPoint:Landroid/graphics/PointF;

    .line 55
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lc8/afb;->isClosed()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual/range {p2 .. p2}, Lc8/afb;->isClosed()Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_1
    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lc8/afb;->closed:Z

    .line 57
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/afb;->curves:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/afb;->curves:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lc8/afb;->getCurves()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-eq v12, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/afb;->curves:Ljava/util/List;

    .line 58
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lc8/afb;->getCurves()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-eq v12, v13, :cond_3

    .line 59
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Curves must have the same number of control points. This: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 60
    invoke-virtual/range {p0 .. p0}, Lc8/afb;->getCurves()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\tShape 1: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 61
    invoke-virtual/range {p1 .. p1}, Lc8/afb;->getCurves()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\tShape 2: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 62
    invoke-virtual/range {p2 .. p2}, Lc8/afb;->getCurves()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 55
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 63
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/afb;->curves:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 64
    invoke-virtual/range {p1 .. p1}, Lc8/afb;->getCurves()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v7, v12, -0x1

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_4

    .line 65
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/afb;->curves:Ljava/util/List;

    new-instance v13, Lc8/ydb;

    invoke-direct {v13}, Lc8/ydb;-><init>()V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 69
    .end local v7    # "i":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lc8/afb;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v8

    .line 70
    .local v8, "initialPoint1":Landroid/graphics/PointF;
    invoke-virtual/range {p2 .. p2}, Lc8/afb;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v9

    .line 72
    .local v9, "initialPoint2":Landroid/graphics/PointF;
    iget v12, v8, Landroid/graphics/PointF;->x:F

    iget v13, v9, Landroid/graphics/PointF;->x:F

    move/from16 v0, p3

    invoke-static {v12, v13, v0}, Lc8/Jfb;->lerp(FFF)F

    move-result v12

    iget v13, v8, Landroid/graphics/PointF;->y:F

    iget v14, v9, Landroid/graphics/PointF;->y:F

    .line 73
    move/from16 v0, p3

    invoke-static {v13, v14, v0}, Lc8/Jfb;->lerp(FFF)F

    move-result v13

    .line 72
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lc8/afb;->setInitialPoint(FF)V

    .line 75
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/afb;->curves:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v7, v12, -0x1

    .restart local v7    # "i":I
    :goto_2
    if-ltz v7, :cond_5

    .line 76
    invoke-virtual/range {p1 .. p1}, Lc8/afb;->getCurves()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/ydb;

    .line 77
    .local v5, "curve1":Lc8/ydb;
    invoke-virtual/range {p2 .. p2}, Lc8/afb;->getCurves()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/ydb;

    .line 79
    .local v6, "curve2":Lc8/ydb;
    invoke-virtual {v5}, Lc8/ydb;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v1

    .line 80
    .local v1, "cp11":Landroid/graphics/PointF;
    invoke-virtual {v5}, Lc8/ydb;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v3

    .line 81
    .local v3, "cp21":Landroid/graphics/PointF;
    invoke-virtual {v5}, Lc8/ydb;->getVertex()Landroid/graphics/PointF;

    move-result-object v10

    .line 83
    .local v10, "vertex1":Landroid/graphics/PointF;
    invoke-virtual {v6}, Lc8/ydb;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v2

    .line 84
    .local v2, "cp12":Landroid/graphics/PointF;
    invoke-virtual {v6}, Lc8/ydb;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v4

    .line 85
    .local v4, "cp22":Landroid/graphics/PointF;
    invoke-virtual {v6}, Lc8/ydb;->getVertex()Landroid/graphics/PointF;

    move-result-object v11

    .line 87
    .local v11, "vertex2":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/afb;->curves:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc8/ydb;

    iget v13, v1, Landroid/graphics/PointF;->x:F

    iget v14, v2, Landroid/graphics/PointF;->x:F

    .line 88
    move/from16 v0, p3

    invoke-static {v13, v14, v0}, Lc8/Jfb;->lerp(FFF)F

    move-result v13

    iget v14, v1, Landroid/graphics/PointF;->y:F

    iget v15, v2, Landroid/graphics/PointF;->y:F

    move/from16 v0, p3

    invoke-static {v14, v15, v0}, Lc8/Jfb;->lerp(FFF)F

    move-result v14

    .line 87
    invoke-virtual {v12, v13, v14}, Lc8/ydb;->setControlPoint1(FF)V

    .line 90
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/afb;->curves:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc8/ydb;

    iget v13, v3, Landroid/graphics/PointF;->x:F

    iget v14, v4, Landroid/graphics/PointF;->x:F

    .line 91
    move/from16 v0, p3

    invoke-static {v13, v14, v0}, Lc8/Jfb;->lerp(FFF)F

    move-result v13

    iget v14, v3, Landroid/graphics/PointF;->y:F

    iget v15, v4, Landroid/graphics/PointF;->y:F

    move/from16 v0, p3

    invoke-static {v14, v15, v0}, Lc8/Jfb;->lerp(FFF)F

    move-result v14

    .line 90
    invoke-virtual {v12, v13, v14}, Lc8/ydb;->setControlPoint2(FF)V

    .line 93
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/afb;->curves:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc8/ydb;

    iget v13, v10, Landroid/graphics/PointF;->x:F

    iget v14, v11, Landroid/graphics/PointF;->x:F

    .line 94
    move/from16 v0, p3

    invoke-static {v13, v14, v0}, Lc8/Jfb;->lerp(FFF)F

    move-result v13

    iget v14, v10, Landroid/graphics/PointF;->y:F

    iget v15, v11, Landroid/graphics/PointF;->y:F

    move/from16 v0, p3

    invoke-static {v14, v15, v0}, Lc8/Jfb;->lerp(FFF)F

    move-result v14

    .line 93
    invoke-virtual {v12, v13, v14}, Lc8/ydb;->setVertex(FF)V

    .line 75
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_2

    .line 97
    .end local v1    # "cp11":Landroid/graphics/PointF;
    .end local v2    # "cp12":Landroid/graphics/PointF;
    .end local v3    # "cp21":Landroid/graphics/PointF;
    .end local v4    # "cp22":Landroid/graphics/PointF;
    .end local v5    # "curve1":Lc8/ydb;
    .end local v6    # "curve2":Lc8/ydb;
    .end local v10    # "vertex1":Landroid/graphics/PointF;
    .end local v11    # "vertex2":Landroid/graphics/PointF;
    :cond_5
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lc8/afb;->closed:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ShapeData{numCurves="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/afb;->curves:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/afb;->closed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
