.class public Lc8/xsb;
.super Lc8/Arb;
.source "ExpressionOrientationHandler.java"

# interfaces
.implements Lc8/qtb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/wsb;
    }
.end annotation


# instance fields
.field private isStarted:Z

.field private mEvaluator3D:Lc8/stb;

.field private mEvaluatorX:Lc8/stb;

.field private mEvaluatorY:Lc8/stb;

.field private mLastAlpha:D

.field private mLastBeta:D

.field private mLastGamma:D

.field private mOrientationDetector:Lc8/rtb;

.field private mRecordsAlpha:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneType:Ljava/lang/String;

.field private mStartAlpha:D

.field private mStartBeta:D

.field private mStartGamma:D

.field private mValueHolder:Lc8/wsb;

.field private mVectorX:Lc8/gub;

.field private mVectorY:Lc8/gub;


# direct methods
.method constructor <init>(Lc8/nVf;)V
    .locals 8
    .param p1, "instance"    # Lc8/nVf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 52
    invoke-direct {p0, p1}, Lc8/Arb;-><init>(Lc8/nVf;)V

    .line 29
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/xsb;->isStarted:Z

    .line 48
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lc8/xsb;->mRecordsAlpha:Ljava/util/LinkedList;

    .line 191
    new-instance v1, Lc8/gub;

    move-wide v4, v2

    invoke-direct/range {v1 .. v7}, Lc8/gub;-><init>(DDD)V

    iput-object v1, p0, Lc8/xsb;->mVectorX:Lc8/gub;

    .line 192
    new-instance v1, Lc8/gub;

    move-wide v4, v6

    invoke-direct/range {v1 .. v7}, Lc8/gub;-><init>(DDD)V

    iput-object v1, p0, Lc8/xsb;->mVectorY:Lc8/gub;

    .line 194
    new-instance v1, Lc8/wsb;

    move-wide v4, v2

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lc8/wsb;-><init>(DDD)V

    iput-object v1, p0, Lc8/xsb;->mValueHolder:Lc8/wsb;

    .line 53
    invoke-virtual {p1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 55
    invoke-static {v0}, Lc8/rtb;->getInstance(Landroid/content/Context;)Lc8/rtb;

    move-result-object v1

    iput-object v1, p0, Lc8/xsb;->mOrientationDetector:Lc8/rtb;

    .line 57
    :cond_0
    return-void
.end method

.method private calculate2D(DDD)Z
    .locals 19
    .param p1, "alpha"    # D
    .param p3, "beta"    # D
    .param p5, "gamma"    # D

    .prologue
    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/xsb;->mEvaluatorX:Lc8/stb;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/xsb;->mEvaluatorY:Lc8/stb;

    if-eqz v3, :cond_3

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/xsb;->mRecordsAlpha:Ljava/util/LinkedList;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/xsb;->mRecordsAlpha:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_0

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/xsb;->mRecordsAlpha:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 204
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/xsb;->mRecordsAlpha:Ljava/util/LinkedList;

    const/16 v4, 0x168

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lc8/xsb;->formatRecords(Ljava/util/List;I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/xsb;->mRecordsAlpha:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/xsb;->mRecordsAlpha:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lc8/xsb;->mStartAlpha:D

    sub-double/2addr v4, v6

    const-wide v6, 0x4076800000000000L    # 360.0

    rem-double v10, v4, v6

    .line 207
    .local v10, "formatAlpha":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/xsb;->mEvaluatorX:Lc8/stb;

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v3 .. v11}, Lc8/stb;->calculate(DDDD)Lc8/ttb;

    move-result-object v2

    .line 208
    .local v2, "quaternionX":Lc8/ttb;
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/xsb;->mEvaluatorY:Lc8/stb;

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-virtual/range {v3 .. v11}, Lc8/stb;->calculate(DDDD)Lc8/ttb;

    move-result-object v12

    .line 210
    .local v12, "quaternionY":Lc8/ttb;
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/xsb;->mVectorX:Lc8/gub;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v3 .. v9}, Lc8/gub;->set(DDD)V

    .line 211
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/xsb;->mVectorX:Lc8/gub;

    invoke-virtual {v3, v2}, Lc8/gub;->applyQuaternion(Lc8/ttb;)Lc8/gub;

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/xsb;->mVectorY:Lc8/gub;

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v3 .. v9}, Lc8/gub;->set(DDD)V

    .line 213
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/xsb;->mVectorY:Lc8/gub;

    invoke-virtual {v3, v12}, Lc8/gub;->applyQuaternion(Lc8/ttb;)Lc8/gub;

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/xsb;->mVectorX:Lc8/gub;

    iget-wide v4, v3, Lc8/gub;->x:D

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    const-wide v6, 0x4056800000000000L    # 90.0

    sub-double v14, v4, v6

    .line 216
    .local v14, "x":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/xsb;->mVectorY:Lc8/gub;

    iget-wide v4, v3, Lc8/gub;->y:D

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    const-wide v6, 0x4056800000000000L    # 90.0

    sub-double v16, v4, v6

    .line 218
    .local v16, "y":D
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v14, v15}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 219
    :cond_1
    const/4 v3, 0x0

    .line 228
    .end local v2    # "quaternionX":Lc8/ttb;
    .end local v10    # "formatAlpha":D
    .end local v12    # "quaternionY":Lc8/ttb;
    .end local v14    # "x":D
    .end local v16    # "y":D
    :goto_0
    return v3

    .line 222
    .restart local v2    # "quaternionX":Lc8/ttb;
    .restart local v10    # "formatAlpha":D
    .restart local v12    # "quaternionY":Lc8/ttb;
    .restart local v14    # "x":D
    .restart local v16    # "y":D
    :cond_2
    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v14, v4

    .line 223
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v0, v4

    move-wide/from16 v16, v0

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/xsb;->mValueHolder:Lc8/wsb;

    iput-wide v14, v3, Lc8/wsb;->x:D

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/xsb;->mValueHolder:Lc8/wsb;

    move-wide/from16 v0, v16

    iput-wide v0, v3, Lc8/wsb;->y:D

    .line 228
    .end local v2    # "quaternionX":Lc8/ttb;
    .end local v10    # "formatAlpha":D
    .end local v12    # "quaternionY":Lc8/ttb;
    .end local v14    # "x":D
    .end local v16    # "y":D
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private calculate3D(DDD)Z
    .locals 11
    .param p1, "alpha"    # D
    .param p3, "beta"    # D
    .param p5, "gamma"    # D

    .prologue
    .line 233
    iget-object v1, p0, Lc8/xsb;->mEvaluator3D:Lc8/stb;

    if-eqz v1, :cond_3

    .line 234
    iget-object v1, p0, Lc8/xsb;->mRecordsAlpha:Ljava/util/LinkedList;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v1, p0, Lc8/xsb;->mRecordsAlpha:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 236
    iget-object v1, p0, Lc8/xsb;->mRecordsAlpha:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 239
    :cond_0
    iget-object v1, p0, Lc8/xsb;->mRecordsAlpha:Ljava/util/LinkedList;

    const/16 v2, 0x168

    invoke-direct {p0, v1, v2}, Lc8/xsb;->formatRecords(Ljava/util/List;I)V

    .line 240
    iget-object v1, p0, Lc8/xsb;->mRecordsAlpha:Ljava/util/LinkedList;

    iget-object v2, p0, Lc8/xsb;->mRecordsAlpha:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-wide v4, p0, Lc8/xsb;->mStartAlpha:D

    sub-double/2addr v2, v4

    const-wide v4, 0x4076800000000000L    # 360.0

    rem-double v8, v2, v4

    .line 241
    .local v8, "formatAlpha":D
    iget-object v1, p0, Lc8/xsb;->mEvaluator3D:Lc8/stb;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v1 .. v9}, Lc8/stb;->calculate(DDDD)Lc8/ttb;

    move-result-object v0

    .line 243
    .local v0, "q":Lc8/ttb;
    iget-wide v2, v0, Lc8/ttb;->x:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_1

    iget-wide v2, v0, Lc8/ttb;->y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_1

    iget-wide v2, v0, Lc8/ttb;->z:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_1

    iget-wide v2, v0, Lc8/ttb;->x:D

    .line 244
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_1

    iget-wide v2, v0, Lc8/ttb;->y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_1

    iget-wide v2, v0, Lc8/ttb;->z:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    :cond_1
    const/4 v1, 0x0

    .line 252
    .end local v0    # "q":Lc8/ttb;
    .end local v8    # "formatAlpha":D
    :goto_0
    return v1

    .line 248
    .restart local v0    # "q":Lc8/ttb;
    .restart local v8    # "formatAlpha":D
    :cond_2
    iget-object v1, p0, Lc8/xsb;->mValueHolder:Lc8/wsb;

    iget-wide v2, v0, Lc8/ttb;->x:D

    iput-wide v2, v1, Lc8/wsb;->x:D

    .line 249
    iget-object v1, p0, Lc8/xsb;->mValueHolder:Lc8/wsb;

    iget-wide v2, v0, Lc8/ttb;->y:D

    iput-wide v2, v1, Lc8/wsb;->y:D

    .line 250
    iget-object v1, p0, Lc8/xsb;->mValueHolder:Lc8/wsb;

    iget-wide v2, v0, Lc8/ttb;->z:D

    iput-wide v2, v1, Lc8/wsb;->z:D

    .line 252
    .end local v0    # "q":Lc8/ttb;
    .end local v8    # "formatAlpha":D
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private fireEventByState(Ljava/lang/String;DDD)V
    .locals 4
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "alpha"    # D
    .param p4, "beta"    # D
    .param p6, "gamma"    # D

    .prologue
    .line 283
    iget-object v1, p0, Lc8/xsb;->mCallback:Lc8/EWf;

    if-eqz v1, :cond_0

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 285
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "state"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string/jumbo v1, "alpha"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string/jumbo v1, "beta"

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string/jumbo v1, "gamma"

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v1, p0, Lc8/xsb;->mCallback:Lc8/EWf;

    invoke-interface {v1, v0}, Lc8/EWf;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 291
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    const-string/jumbo v1, "ExpressionBinding"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ">>>>>>>>>>>fire event:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6, p7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .end local v0    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private formatRecords(Ljava/util/List;I)V
    .locals 8
    .param p2, "threshold"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 258
    .local v1, "l":I
    const/4 v4, 0x1

    if-le v1, v4, :cond_2

    .line 259
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 260
    add-int/lit8 v4, v0, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 261
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-int/lit8 v4, v0, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double v4, v6, v4

    neg-int v6, p2

    div-int/lit8 v6, v6, 0x2

    int-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 262
    add-int/lit8 v4, v0, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    int-to-double v6, p2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v2, v4, v6

    .line 263
    .local v2, "times":D
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    int-to-double v6, p2

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {p1, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 265
    .end local v2    # "times":D
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-int/lit8 v4, v0, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double v4, v6, v4

    div-int/lit8 v6, p2, 0x2

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 266
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    int-to-double v6, p2

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {p1, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 271
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public onActivityPause()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lc8/xsb;->mOrientationDetector:Lc8/rtb;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lc8/xsb;->mOrientationDetector:Lc8/rtb;

    invoke-virtual {v0}, Lc8/rtb;->stop()V

    .line 302
    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lc8/xsb;->mOrientationDetector:Lc8/rtb;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lc8/xsb;->mOrientationDetector:Lc8/rtb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/rtb;->start(I)Z

    .line 309
    :cond_0
    return-void
.end method

.method public onBindExpression(Ljava/lang/String;Ljava/util/Map;Lc8/ysb;Ljava/util/List;Lc8/EWf;)V
    .locals 8
    .param p1, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "exitExpressionPair"    # Lc8/ysb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "callback"    # Lc8/EWf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/ysb;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "globalConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "expressionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-wide v6, 0x4056800000000000L    # 90.0

    const/4 v4, 0x0

    .line 78
    invoke-super/range {p0 .. p5}, Lc8/Arb;->onBindExpression(Ljava/lang/String;Ljava/util/Map;Lc8/ysb;Ljava/util/List;Lc8/EWf;)V

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "sceneType":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 84
    const-string/jumbo v1, "sceneType"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "sceneType":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 85
    .restart local v0    # "sceneType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 86
    const-string/jumbo v0, "2d"

    .line 91
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "2d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "3d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    :cond_1
    const-string/jumbo v0, "2d"

    .line 95
    :cond_2
    iput-object v0, p0, Lc8/xsb;->mSceneType:Ljava/lang/String;

    .line 96
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ExpressionOrientationHandler] sceneType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    :cond_3
    const-string/jumbo v1, "2d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 101
    new-instance v1, Lc8/stb;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v4, v2, v4}, Lc8/stb;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    iput-object v1, p0, Lc8/xsb;->mEvaluatorX:Lc8/stb;

    .line 102
    new-instance v1, Lc8/stb;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v1, v2, v4, v3}, Lc8/stb;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    iput-object v1, p0, Lc8/xsb;->mEvaluatorY:Lc8/stb;

    .line 106
    :cond_4
    :goto_1
    return-void

    .line 88
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_6
    const-string/jumbo v1, "3d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 104
    new-instance v1, Lc8/stb;

    invoke-direct {v1, v4, v4, v4}, Lc8/stb;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    iput-object v1, p0, Lc8/xsb;->mEvaluator3D:Lc8/stb;

    goto :goto_1
.end method

.method public onCreate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    iget-object v0, p0, Lc8/xsb;->mOrientationDetector:Lc8/rtb;

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    .line 66
    :cond_0
    iget-object v0, p0, Lc8/xsb;->mOrientationDetector:Lc8/rtb;

    invoke-virtual {v0, p0}, Lc8/rtb;->addOrientationChangedListener(Lc8/qtb;)V

    .line 67
    iget-object v0, p0, Lc8/xsb;->mOrientationDetector:Lc8/rtb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/rtb;->start(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lc8/xsb;->mOrientationDetector:Lc8/rtb;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lc8/xsb;->mOrientationDetector:Lc8/rtb;

    invoke-virtual {v0, p0}, Lc8/rtb;->removeOrientationChangedListener(Lc8/qtb;)Z

    .line 125
    iget-object v0, p0, Lc8/xsb;->mOrientationDetector:Lc8/rtb;

    invoke-virtual {v0}, Lc8/rtb;->stop()V

    .line 128
    :cond_0
    iget-object v0, p0, Lc8/xsb;->mExpressionHoldersMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lc8/xsb;->mExpressionHoldersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/xsb;->mExpressionHoldersMap:Ljava/util/Map;

    .line 132
    :cond_1
    return-void
.end method

.method public onDisable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 110
    invoke-virtual {p0}, Lc8/xsb;->clearExpressions()V

    .line 111
    iget-object v0, p0, Lc8/xsb;->mOrientationDetector:Lc8/rtb;

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    .line 115
    :cond_0
    const-string/jumbo v1, "end"

    iget-wide v2, p0, Lc8/xsb;->mLastAlpha:D

    iget-wide v4, p0, Lc8/xsb;->mLastBeta:D

    iget-wide v6, p0, Lc8/xsb;->mLastGamma:D

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lc8/xsb;->fireEventByState(Ljava/lang/String;DDD)V

    .line 116
    iget-object v0, p0, Lc8/xsb;->mOrientationDetector:Lc8/rtb;

    invoke-virtual {v0, p0}, Lc8/rtb;->removeOrientationChangedListener(Lc8/qtb;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onExit(Ljava/util/Map;)V
    .locals 8
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "alpha"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 277
    .local v2, "alpha":D
    const-string/jumbo v0, "beta"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 278
    .local v4, "beta":D
    const-string/jumbo v0, "gamma"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 279
    .local v6, "gamma":D
    const-string/jumbo v1, "exit"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lc8/xsb;->fireEventByState(Ljava/lang/String;DDD)V

    .line 280
    return-void
.end method

.method public onOrientationChanged(DDD)V
    .locals 27
    .param p1, "alpha"    # D
    .param p3, "beta"    # D
    .param p5, "gamma"    # D

    .prologue
    .line 137
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v0, v4

    move-wide/from16 p1, v0

    .line 138
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v0, v4

    move-wide/from16 p3, v0

    .line 139
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v0, v4

    move-wide/from16 p5, v0

    .line 141
    move-object/from16 v0, p0

    iget-wide v4, v0, Lc8/xsb;->mLastAlpha:D

    cmpl-double v4, p1, v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-wide v4, v0, Lc8/xsb;->mLastBeta:D

    cmpl-double v4, p3, v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-wide v4, v0, Lc8/xsb;->mLastGamma:D

    cmpl-double v4, p5, v4

    if-nez v4, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lc8/xsb;->isStarted:Z

    if-nez v4, :cond_2

    .line 146
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lc8/xsb;->isStarted:Z

    .line 147
    const-string/jumbo v5, "start"

    move-object/from16 v4, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v4 .. v11}, Lc8/xsb;->fireEventByState(Ljava/lang/String;DDD)V

    .line 148
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/xsb;->mStartAlpha:D

    .line 149
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/xsb;->mStartBeta:D

    .line 150
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/xsb;->mStartGamma:D

    .line 154
    :cond_2
    const/16 v25, 0x0

    .line 155
    .local v25, "result":Z
    const-string/jumbo v4, "2d"

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/xsb;->mSceneType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 156
    invoke-direct/range {p0 .. p6}, Lc8/xsb;->calculate2D(DDD)Z

    move-result v25

    .line 161
    :cond_3
    :goto_1
    if-eqz v25, :cond_0

    .line 165
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/xsb;->mValueHolder:Lc8/wsb;

    iget-wide v0, v4, Lc8/wsb;->x:D

    move-wide/from16 v18, v0

    .line 166
    .local v18, "x":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/xsb;->mValueHolder:Lc8/wsb;

    iget-wide v0, v4, Lc8/wsb;->y:D

    move-wide/from16 v20, v0

    .line 167
    .local v20, "y":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/xsb;->mValueHolder:Lc8/wsb;

    iget-wide v0, v4, Lc8/wsb;->z:D

    move-wide/from16 v22, v0

    .line 169
    .local v22, "z":D
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/xsb;->mLastAlpha:D

    .line 170
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/xsb;->mLastBeta:D

    .line 171
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/xsb;->mLastGamma:D

    .line 180
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/xsb;->mScope:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lc8/xsb;->mStartAlpha:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/xsb;->mStartBeta:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/xsb;->mStartGamma:D

    move-wide/from16 v16, v0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-static/range {v5 .. v23}, Lc8/otb;->applyOrientationValuesToScope(Ljava/util/Map;DDDDDDDDD)V

    .line 181
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/xsb;->mExitExpressionPair:Lc8/ysb;

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/xsb;->mScope:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lc8/xsb;->evaluateExitExpression(Lc8/ysb;Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 182
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/xsb;->mExpressionHoldersMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/xsb;->mScope:Ljava/util/Map;

    const-string/jumbo v6, "orientation"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lc8/xsb;->consumeExpression(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 185
    :catch_0
    move-exception v24

    .line 186
    .local v24, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ExpressionBinding"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "runtime error\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    .end local v18    # "x":D
    .end local v20    # "y":D
    .end local v22    # "z":D
    .end local v24    # "e":Ljava/lang/Exception;
    :cond_4
    const-string/jumbo v4, "3d"

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/xsb;->mSceneType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 158
    invoke-direct/range {p0 .. p6}, Lc8/xsb;->calculate3D(DDD)Z

    move-result v25

    goto/16 :goto_1
.end method

.method public onStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 73
    return-void
.end method
