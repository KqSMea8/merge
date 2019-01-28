.class public Lc8/Fsb;
.super Lc8/Arb;
.source "ExpressionScrollHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Asb;,
        Lc8/Csb;,
        Lc8/Esb;
    }
.end annotation


# static fields
.field private static sOffsetHolderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/Asb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isStart:Z

.field private mOnScrollListener:Lc8/Cv;

.field private mSourceRef:Ljava/lang/String;

.field private mWxScrollViewListener:Lc8/weg;

.field private mX:I

.field private mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/Fsb;->sOffsetHolderMap:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Lc8/nVf;)V
    .locals 1
    .param p1, "instance"    # Lc8/nVf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lc8/Arb;-><init>(Lc8/nVf;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Fsb;->isStart:Z

    .line 54
    return-void
.end method

.method static synthetic access$100(Lc8/Fsb;II)Z
    .locals 1
    .param p0, "x0"    # Lc8/Fsb;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lc8/Fsb;->isSameDirection(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lc8/Fsb;IIIIII)V
    .locals 0
    .param p0, "x0"    # Lc8/Fsb;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 38
    invoke-direct/range {p0 .. p6}, Lc8/Fsb;->handleScrollEvent(IIIIII)V

    return-void
.end method

.method static synthetic access$300(Lc8/Fsb;Ljava/lang/String;FFFFFF)V
    .locals 0
    .param p0, "x0"    # Lc8/Fsb;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # F
    .param p6, "x6"    # F
    .param p7, "x7"    # F

    .prologue
    .line 38
    invoke-direct/range {p0 .. p7}, Lc8/Fsb;->fireEventByState(Ljava/lang/String;FFFFFF)V

    return-void
.end method

.method static synthetic access$600(Lc8/Fsb;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/Fsb;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/Fsb;->mSourceRef:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lc8/Fsb;->sOffsetHolderMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private fireEventByState(Ljava/lang/String;FFFFFF)V
    .locals 20
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "contentOffsetX"    # F
    .param p3, "contentOffsetY"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F
    .param p6, "tdx"    # F
    .param p7, "tdy"    # F

    .prologue
    .line 186
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/Fsb;->mCallback:Lc8/EWf;

    if-eqz v11, :cond_0

    .line 187
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v10, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v11, "state"

    move-object/from16 v0, p1

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget v11, Lc8/UUf;->sDefaultWidth:I

    int-to-float v11, v11

    mul-float v11, v11, p2

    float-to-double v0, v11

    move-wide/from16 v16, v0

    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v11

    int-to-double v0, v11

    move-wide/from16 v18, v0

    div-double v12, v16, v18

    .line 190
    .local v12, "x":D
    sget v11, Lc8/UUf;->sDefaultWidth:I

    int-to-float v11, v11

    mul-float v11, v11, p3

    float-to-double v0, v11

    move-wide/from16 v16, v0

    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v11

    int-to-double v0, v11

    move-wide/from16 v18, v0

    div-double v14, v16, v18

    .line 191
    .local v14, "y":D
    const-string/jumbo v11, "x"

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string/jumbo v11, "y"

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget v11, Lc8/UUf;->sDefaultWidth:I

    int-to-float v11, v11

    mul-float v11, v11, p4

    float-to-double v0, v11

    move-wide/from16 v16, v0

    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v11

    int-to-double v0, v11

    move-wide/from16 v18, v0

    div-double v2, v16, v18

    .line 195
    .local v2, "_dx":D
    sget v11, Lc8/UUf;->sDefaultWidth:I

    int-to-float v11, v11

    mul-float v11, v11, p5

    float-to-double v0, v11

    move-wide/from16 v16, v0

    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v11

    int-to-double v0, v11

    move-wide/from16 v18, v0

    div-double v4, v16, v18

    .line 196
    .local v4, "_dy":D
    const-string/jumbo v11, "dx"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string/jumbo v11, "dy"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget v11, Lc8/UUf;->sDefaultWidth:I

    int-to-float v11, v11

    mul-float v11, v11, p6

    float-to-double v0, v11

    move-wide/from16 v16, v0

    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v11

    int-to-double v0, v11

    move-wide/from16 v18, v0

    div-double v6, v16, v18

    .line 200
    .local v6, "_tdx":D
    sget v11, Lc8/UUf;->sDefaultWidth:I

    int-to-float v11, v11

    mul-float v11, v11, p7

    float-to-double v0, v11

    move-wide/from16 v16, v0

    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v11

    int-to-double v0, v11

    move-wide/from16 v18, v0

    div-double v8, v16, v18

    .line 201
    .local v8, "_tdy":D
    const-string/jumbo v11, "tdx"

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string/jumbo v11, "tdy"

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/Fsb;->mCallback:Lc8/EWf;

    invoke-interface {v11, v10}, Lc8/EWf;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 205
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 206
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, ">>>>>>>>>>>fire event:("

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v16, ")"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .end local v2    # "_dx":D
    .end local v4    # "_dy":D
    .end local v6    # "_tdx":D
    .end local v8    # "_tdy":D
    .end local v10    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "x":D
    .end local v14    # "y":D
    :cond_0
    return-void
.end method

.method private handleScrollEvent(IIIIII)V
    .locals 17
    .param p1, "contentOffsetX"    # I
    .param p2, "contentOffsetY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "tdx"    # I
    .param p6, "tdy"    # I

    .prologue
    .line 106
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v3, "[ExpressionScrollHandler] scroll changed. (contentOffsetX:%d,contentOffsetY:%d,dx:%d,dy:%d,tdx:%d,tdy:%d)"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 109
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 107
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    :cond_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Fsb;->mX:I

    .line 113
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Fsb;->mY:I

    .line 115
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lc8/Fsb;->isStart:Z

    if-nez v2, :cond_1

    .line 116
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lc8/Fsb;->isStart:Z

    .line 117
    const-string/jumbo v3, "start"

    move/from16 v0, p1

    int-to-float v4, v0

    move/from16 v0, p2

    int-to-float v5, v0

    move/from16 v0, p3

    int-to-float v6, v0

    move/from16 v0, p4

    int-to-float v7, v0

    move/from16 v0, p5

    int-to-float v8, v0

    move/from16 v0, p6

    int-to-float v9, v0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lc8/Fsb;->fireEventByState(Ljava/lang/String;FFFFFF)V

    .line 122
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Fsb;->mScope:Ljava/util/Map;

    move/from16 v0, p1

    int-to-double v4, v0

    move/from16 v0, p2

    int-to-double v6, v0

    move/from16 v0, p3

    int-to-double v8, v0

    move/from16 v0, p4

    int-to-double v10, v0

    move/from16 v0, p5

    int-to-double v12, v0

    move/from16 v0, p6

    int-to-double v14, v0

    invoke-static/range {v3 .. v15}, Lc8/otb;->applyScrollValuesToScope(Ljava/util/Map;DDDDDD)V

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fsb;->mExitExpressionPair:Lc8/ysb;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Fsb;->mScope:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lc8/Fsb;->evaluateExitExpression(Lc8/ysb;Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fsb;->mExpressionHoldersMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Fsb;->mScope:Ljava/util/Map;

    const-string/jumbo v4, "scroll"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lc8/Fsb;->consumeExpression(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_2
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v16

    .line 127
    .local v16, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ExpressionBinding"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "runtime error\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isSameDirection(II)Z
    .locals 1
    .param p1, "currentValue"    # I
    .param p2, "lastValue"    # I

    .prologue
    .line 371
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    if-gez p1, :cond_2

    if-gez p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityPause()V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public onActivityResume()V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public onBindExpression(Ljava/lang/String;Ljava/util/Map;Lc8/ysb;Ljava/util/List;Lc8/EWf;)V
    .locals 0
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
    .line 140
    .local p2, "globalConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "expressionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-super/range {p0 .. p5}, Lc8/Arb;->onBindExpression(Ljava/lang/String;Ljava/util/Map;Lc8/ysb;Ljava/util/List;Lc8/EWf;)V

    .line 141
    return-void
.end method

.method public onCreate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 58
    iget-object v11, p0, Lc8/Fsb;->mAnchorInstanceId:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v3, p0, Lc8/Fsb;->mInstanceId:Ljava/lang/String;

    .line 59
    .local v3, "instanceId":Ljava/lang/String;
    :goto_0
    invoke-static {v3, p1}, Lc8/Cyb;->findComponentByRef(Ljava/lang/String;Ljava/lang/String;)Lc8/tbg;

    move-result-object v8

    .line 60
    .local v8, "sourceComponent":Lc8/tbg;
    if-nez v8, :cond_2

    .line 61
    const-string/jumbo v10, "ExpressionBinding"

    const-string/jumbo v11, "[ExpressionScrollHandler]source component not found."

    invoke-static {v10, v11}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_1
    return v9

    .line 58
    .end local v3    # "instanceId":Ljava/lang/String;
    .end local v8    # "sourceComponent":Lc8/tbg;
    :cond_1
    iget-object v3, p0, Lc8/Fsb;->mAnchorInstanceId:Ljava/lang/String;

    goto :goto_0

    .line 64
    .restart local v3    # "instanceId":Ljava/lang/String;
    .restart local v8    # "sourceComponent":Lc8/tbg;
    :cond_2
    iput-object p1, p0, Lc8/Fsb;->mSourceRef:Ljava/lang/String;

    .line 65
    instance-of v11, v8, Lc8/acg;

    if-eqz v11, :cond_3

    move-object v7, v8

    .line 66
    check-cast v7, Lc8/acg;

    .line 67
    .local v7, "scroller":Lc8/acg;
    invoke-virtual {v7}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v2

    .line 68
    .local v2, "innerView":Landroid/view/View;
    if-eqz v2, :cond_0

    instance-of v11, v2, Lc8/xeg;

    if-eqz v11, :cond_0

    .line 69
    new-instance v9, Lc8/Esb;

    const/4 v11, 0x0

    invoke-direct {v9, p0, v11}, Lc8/Esb;-><init>(Lc8/Fsb;Lc8/zsb;)V

    iput-object v9, p0, Lc8/Fsb;->mWxScrollViewListener:Lc8/weg;

    .line 70
    check-cast v2, Lc8/xeg;

    .end local v2    # "innerView":Landroid/view/View;
    iget-object v9, p0, Lc8/Fsb;->mWxScrollViewListener:Lc8/weg;

    invoke-virtual {v2, v9}, Lc8/xeg;->addScrollViewListener(Lc8/weg;)V

    move v9, v10

    .line 71
    goto :goto_1

    .line 74
    .end local v7    # "scroller":Lc8/acg;
    :cond_3
    instance-of v11, v8, Lc8/odg;

    if-eqz v11, :cond_0

    move-object v5, v8

    .line 75
    check-cast v5, Lc8/odg;

    .line 76
    .local v5, "list":Lc8/odg;
    invoke-virtual {v5}, Lc8/odg;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/Ifg;

    .line 77
    .local v1, "hostView":Lc8/Ifg;
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v1}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lc8/efg;

    .line 79
    .local v6, "recyclerView":Lc8/efg;
    invoke-virtual {v5}, Lc8/odg;->getOrientation()I

    move-result v11

    if-ne v11, v10, :cond_5

    move v4, v10

    .line 80
    .local v4, "isVertical":Z
    :goto_2
    if-eqz v6, :cond_0

    .line 81
    sget-object v11, Lc8/Fsb;->sOffsetHolderMap:Ljava/util/HashMap;

    if-eqz v11, :cond_4

    .line 82
    sget-object v11, Lc8/Fsb;->sOffsetHolderMap:Ljava/util/HashMap;

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Asb;

    .line 83
    .local v0, "holder":Lc8/Asb;
    if-nez v0, :cond_4

    .line 84
    sget-object v11, Lc8/Fsb;->sOffsetHolderMap:Ljava/util/HashMap;

    new-instance v12, Lc8/Asb;

    invoke-direct {v12, v9, v9}, Lc8/Asb;-><init>(II)V

    invoke-virtual {v11, p1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .end local v0    # "holder":Lc8/Asb;
    :cond_4
    new-instance v9, Lc8/Csb;

    invoke-direct {v9, p0, v4}, Lc8/Csb;-><init>(Lc8/Fsb;Z)V

    iput-object v9, p0, Lc8/Fsb;->mOnScrollListener:Lc8/Cv;

    .line 88
    iget-object v9, p0, Lc8/Fsb;->mOnScrollListener:Lc8/Cv;

    invoke-virtual {v6, v9}, Lc8/efg;->addOnScrollListener(Lc8/Cv;)V

    move v9, v10

    .line 89
    goto :goto_1

    .end local v4    # "isVertical":Z
    :cond_5
    move v4, v9

    .line 79
    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lc8/Fsb;->mOnScrollListener:Lc8/Cv;

    .line 215
    iput-object v0, p0, Lc8/Fsb;->mWxScrollViewListener:Lc8/weg;

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Fsb;->isStart:Z

    .line 217
    sget-object v0, Lc8/Fsb;->sOffsetHolderMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 218
    sget-object v0, Lc8/Fsb;->sOffsetHolderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 220
    :cond_0
    return-void
.end method

.method public onDisable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 145
    invoke-virtual/range {p0 .. p0}, Lc8/Fsb;->clearExpressions()V

    .line 146
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lc8/Fsb;->isStart:Z

    .line 147
    const-string/jumbo v2, "end"

    move-object/from16 v0, p0

    iget v1, v0, Lc8/Fsb;->mX:I

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lc8/Fsb;->mY:I

    int-to-float v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lc8/Fsb;->fireEventByState(Ljava/lang/String;FFFFFF)V

    .line 148
    sget-object v1, Lc8/Fsb;->sOffsetHolderMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/Fsb;->mSourceRef:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    sget-object v1, Lc8/Fsb;->sOffsetHolderMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Fsb;->mSourceRef:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc8/Asb;

    .line 150
    .local v9, "h":Lc8/Asb;
    if-eqz v9, :cond_0

    .line 151
    move-object/from16 v0, p0

    iget v1, v0, Lc8/Fsb;->mX:I

    iput v1, v9, Lc8/Asb;->x:I

    .line 152
    move-object/from16 v0, p0

    iget v1, v0, Lc8/Fsb;->mY:I

    iput v1, v9, Lc8/Asb;->y:I

    .line 156
    .end local v9    # "h":Lc8/Asb;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/Fsb;->mAnchorInstanceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/Fsb;->mInstanceId:Ljava/lang/String;

    .line 157
    .local v12, "instanceId":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lc8/Cyb;->findComponentByRef(Ljava/lang/String;Ljava/lang/String;)Lc8/tbg;

    move-result-object v16

    .line 158
    .local v16, "sourceComponent":Lc8/tbg;
    if-nez v16, :cond_2

    .line 159
    const-string/jumbo v1, "ExpressionBinding"

    const-string/jumbo v2, "[ExpressionScrollHandler]source component not found."

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v1, 0x0

    .line 181
    :goto_1
    return v1

    .line 156
    .end local v12    # "instanceId":Ljava/lang/String;
    .end local v16    # "sourceComponent":Lc8/tbg;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/Fsb;->mAnchorInstanceId:Ljava/lang/String;

    goto :goto_0

    .line 162
    .restart local v12    # "instanceId":Ljava/lang/String;
    .restart local v16    # "sourceComponent":Lc8/tbg;
    :cond_2
    move-object/from16 v0, v16

    instance-of v1, v0, Lc8/acg;

    if-eqz v1, :cond_3

    move-object/from16 v15, v16

    .line 163
    check-cast v15, Lc8/acg;

    .line 164
    .local v15, "scroller":Lc8/acg;
    invoke-virtual {v15}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v11

    .line 165
    .local v11, "innerView":Landroid/view/View;
    if-eqz v11, :cond_4

    instance-of v1, v11, Lc8/xeg;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/Fsb;->mWxScrollViewListener:Lc8/weg;

    if-eqz v1, :cond_4

    .line 166
    check-cast v11, Lc8/xeg;

    .end local v11    # "innerView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/Fsb;->mWxScrollViewListener:Lc8/weg;

    invoke-virtual {v11, v1}, Lc8/xeg;->removeScrollViewListener(Lc8/weg;)V

    .line 168
    const/4 v1, 0x1

    goto :goto_1

    .line 170
    .end local v15    # "scroller":Lc8/acg;
    :cond_3
    move-object/from16 v0, v16

    instance-of v1, v0, Lc8/odg;

    if-eqz v1, :cond_4

    move-object/from16 v13, v16

    .line 171
    check-cast v13, Lc8/odg;

    .line 172
    .local v13, "list":Lc8/odg;
    invoke-virtual {v13}, Lc8/odg;->getHostView()Landroid/view/View;

    move-result-object v10

    check-cast v10, Lc8/Ifg;

    .line 173
    .local v10, "hostView":Lc8/Ifg;
    if-eqz v10, :cond_4

    .line 174
    invoke-virtual {v10}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v14

    check-cast v14, Lc8/efg;

    .line 175
    .local v14, "recyclerView":Lc8/efg;
    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/Fsb;->mOnScrollListener:Lc8/Cv;

    if-eqz v1, :cond_4

    .line 176
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/Fsb;->mOnScrollListener:Lc8/Cv;

    invoke-virtual {v14, v1}, Lc8/efg;->removeOnScrollListener(Lc8/Cv;)V

    .line 177
    const/4 v1, 0x1

    goto :goto_1

    .line 181
    .end local v10    # "hostView":Lc8/Ifg;
    .end local v13    # "list":Lc8/odg;
    .end local v14    # "recyclerView":Lc8/efg;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
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
    .local p1, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 224
    const-string/jumbo v0, "internal_x"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 225
    .local v2, "contentOffsetX":F
    const-string/jumbo v0, "internal_y"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 226
    .local v3, "contentOffsetY":F
    const-string/jumbo v1, "exit"

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lc8/Fsb;->fireEventByState(Ljava/lang/String;FFFFFF)V

    .line 227
    return-void
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
    .line 135
    return-void
.end method
