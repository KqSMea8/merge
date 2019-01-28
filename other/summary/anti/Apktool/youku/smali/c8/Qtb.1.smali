.class public final Lc8/Qtb;
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
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 18
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
    .line 544
    .local p1, "arguments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 545
    .local v10, "t":D
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 546
    .local v2, "b":D
    const/4 v12, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 547
    .local v4, "c":D
    const/4 v12, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 548
    .local v6, "d":D
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 550
    const-wide v8, 0x3ffb39abf3387161L    # 1.70158

    .line 551
    .local v8, "s":D
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v6, v12

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v10, v12

    if-gez v12, :cond_0

    .line 552
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v4, v12

    mul-double v14, v10, v10

    const-wide v16, 0x3ff8666666666666L    # 1.525

    mul-double v8, v8, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v16, v16, v8

    mul-double v16, v16, v10

    sub-double v16, v16, v8

    mul-double v14, v14, v16

    mul-double/2addr v12, v14

    add-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 554
    :goto_0
    return-object v12

    :cond_0
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v4, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    sub-double/2addr v10, v14

    mul-double v14, v10, v10

    const-wide v16, 0x3ff8666666666666L    # 1.525

    mul-double v8, v8, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v16, v16, v8

    mul-double v16, v16, v10

    add-double v16, v16, v8

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    add-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    goto :goto_0
.end method
