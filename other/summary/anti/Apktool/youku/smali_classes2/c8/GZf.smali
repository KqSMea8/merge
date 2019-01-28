.class public Lc8/GZf;
.super Ljava/lang/Object;
.source "LayoutEngine.java"


# static fields
.field private static final CSS_FLEX_DIRECTION_COLUMN:I

.field private static final CSS_FLEX_DIRECTION_COLUMN_REVERSE:I

.field private static final CSS_FLEX_DIRECTION_ROW:I

.field private static final CSS_FLEX_DIRECTION_ROW_REVERSE:I

.field private static final CSS_POSITION_ABSOLUTE:I

.field private static final CSS_POSITION_RELATIVE:I

.field private static final dim:[I

.field private static final leading:[I

.field private static final leadingSpacing:[I

.field private static final pos:[I

.field private static final trailing:[I

.field private static final trailingSpacing:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 21
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSFlexDirection;->COLUMN:Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    invoke-virtual {v0}, Lcom/taobao/weex/dom/flex/CSSFlexDirection;->ordinal()I

    move-result v0

    sput v0, Lc8/GZf;->CSS_FLEX_DIRECTION_COLUMN:I

    .line 23
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSFlexDirection;->COLUMN_REVERSE:Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    invoke-virtual {v0}, Lcom/taobao/weex/dom/flex/CSSFlexDirection;->ordinal()I

    move-result v0

    sput v0, Lc8/GZf;->CSS_FLEX_DIRECTION_COLUMN_REVERSE:I

    .line 25
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSFlexDirection;->ROW:Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    invoke-virtual {v0}, Lcom/taobao/weex/dom/flex/CSSFlexDirection;->ordinal()I

    move-result v0

    sput v0, Lc8/GZf;->CSS_FLEX_DIRECTION_ROW:I

    .line 27
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSFlexDirection;->ROW_REVERSE:Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    invoke-virtual {v0}, Lcom/taobao/weex/dom/flex/CSSFlexDirection;->ordinal()I

    move-result v0

    sput v0, Lc8/GZf;->CSS_FLEX_DIRECTION_ROW_REVERSE:I

    .line 30
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSPositionType;->RELATIVE:Lcom/taobao/weex/dom/flex/CSSPositionType;

    invoke-virtual {v0}, Lcom/taobao/weex/dom/flex/CSSPositionType;->ordinal()I

    move-result v0

    sput v0, Lc8/GZf;->CSS_POSITION_RELATIVE:I

    .line 31
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSPositionType;->ABSOLUTE:Lcom/taobao/weex/dom/flex/CSSPositionType;

    invoke-virtual {v0}, Lcom/taobao/weex/dom/flex/CSSPositionType;->ordinal()I

    move-result v0

    sput v0, Lc8/GZf;->CSS_POSITION_ABSOLUTE:I

    .line 33
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lc8/GZf;->leading:[I

    .line 40
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lc8/GZf;->trailing:[I

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lc8/GZf;->pos:[I

    .line 54
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lc8/GZf;->dim:[I

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lc8/GZf;->leadingSpacing:[I

    .line 68
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lc8/GZf;->trailingSpacing:[I

    return-void

    .line 33
    .line 40
    .line 47
    .line 54
    .line 61
    .line 68
    :array_0
    .array-data 4
        0x1
        0x3
        0x0
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x1
        0x2
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x3
        0x0
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x3
        0x6
        0x6
    .end array-data

    :array_5
    .array-data 4
        0x3
        0x1
        0x7
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static boundAxis(Lc8/CZf;IF)F
    .locals 8
    .param p0, "node"    # Lc8/CZf;
    .param p1, "axis"    # I
    .param p2, "value"    # F

    .prologue
    const-wide/16 v6, 0x0

    .line 76
    const/high16 v2, 0x7fc00000    # NaNf

    .line 77
    .local v2, "min":F
    const/high16 v1, 0x7fc00000    # NaNf

    .line 79
    .local v1, "max":F
    sget v3, Lc8/GZf;->CSS_FLEX_DIRECTION_COLUMN:I

    if-eq p1, v3, :cond_0

    sget v3, Lc8/GZf;->CSS_FLEX_DIRECTION_COLUMN_REVERSE:I

    if-ne p1, v3, :cond_4

    .line 81
    :cond_0
    iget-object v3, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget v2, v3, Lc8/DZf;->minHeight:F

    .line 82
    iget-object v3, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget v1, v3, Lc8/DZf;->maxHeight:F

    .line 89
    :cond_1
    :goto_0
    move v0, p2

    .line 91
    .local v0, "boundValue":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    float-to-double v4, v1

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_2

    cmpl-float v3, v0, v1

    if-lez v3, :cond_2

    .line 92
    move v0, v1

    .line 94
    :cond_2
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_3

    float-to-double v4, v2

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_3

    cmpg-float v3, v0, v2

    if-gez v3, :cond_3

    .line 95
    move v0, v2

    .line 98
    :cond_3
    return v0

    .line 83
    .end local v0    # "boundValue":F
    :cond_4
    sget v3, Lc8/GZf;->CSS_FLEX_DIRECTION_ROW:I

    if-eq p1, v3, :cond_5

    sget v3, Lc8/GZf;->CSS_FLEX_DIRECTION_ROW_REVERSE:I

    if-ne p1, v3, :cond_1

    .line 85
    :cond_5
    iget-object v3, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget v2, v3, Lc8/DZf;->minWidth:F

    .line 86
    iget-object v3, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget v1, v3, Lc8/DZf;->maxWidth:F

    goto :goto_0
.end method

.method private static getAlignItem(Lc8/CZf;Lc8/CZf;)Lcom/taobao/weex/dom/flex/CSSAlign;
    .locals 2
    .param p0, "node"    # Lc8/CZf;
    .param p1, "child"    # Lc8/CZf;

    .prologue
    .line 171
    iget-object v0, p1, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->alignSelf:Lcom/taobao/weex/dom/flex/CSSAlign;

    sget-object v1, Lcom/taobao/weex/dom/flex/CSSAlign;->AUTO:Lcom/taobao/weex/dom/flex/CSSAlign;

    if-eq v0, v1, :cond_0

    .line 172
    iget-object v0, p1, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->alignSelf:Lcom/taobao/weex/dom/flex/CSSAlign;

    .line 174
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->alignItems:Lcom/taobao/weex/dom/flex/CSSAlign;

    goto :goto_0
.end method

.method private static getCrossFlexDirection(ILcom/taobao/weex/dom/flex/CSSDirection;)I
    .locals 1
    .param p0, "axis"    # I
    .param p1, "direction"    # Lcom/taobao/weex/dom/flex/CSSDirection;

    .prologue
    .line 162
    sget v0, Lc8/GZf;->CSS_FLEX_DIRECTION_COLUMN:I

    if-eq p0, v0, :cond_0

    sget v0, Lc8/GZf;->CSS_FLEX_DIRECTION_COLUMN_REVERSE:I

    if-ne p0, v0, :cond_1

    .line 164
    :cond_0
    sget v0, Lc8/GZf;->CSS_FLEX_DIRECTION_ROW:I

    invoke-static {v0, p1}, Lc8/GZf;->resolveAxis(ILcom/taobao/weex/dom/flex/CSSDirection;)I

    move-result v0

    .line 166
    :goto_0
    return v0

    :cond_1
    sget v0, Lc8/GZf;->CSS_FLEX_DIRECTION_COLUMN:I

    goto :goto_0
.end method

.method private static getFlexDirection(Lc8/CZf;)I
    .locals 1
    .param p0, "node"    # Lc8/CZf;

    .prologue
    .line 156
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->flexDirection:Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    invoke-virtual {v0}, Lcom/taobao/weex/dom/flex/CSSFlexDirection;->ordinal()I

    move-result v0

    return v0
.end method

.method private static getRelativePosition(Lc8/CZf;I)F
    .locals 4
    .param p0, "node"    # Lc8/CZf;
    .param p1, "axis"    # I

    .prologue
    .line 123
    iget-object v2, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v2, v2, Lc8/DZf;->position:[F

    sget-object v3, Lc8/GZf;->leading:[I

    aget v3, v3, p1

    aget v0, v2, v3

    .line 124
    .local v0, "lead":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    .end local v0    # "lead":F
    :goto_0
    return v0

    .line 128
    .restart local v0    # "lead":F
    :cond_0
    iget-object v2, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v2, v2, Lc8/DZf;->position:[F

    sget-object v3, Lc8/GZf;->trailing:[I

    aget v3, v3, p1

    aget v1, v2, v3

    .line 129
    .local v1, "trailingPos":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    neg-float v0, v1

    goto :goto_0
.end method

.method private static isMeasureDefined(Lc8/CZf;)Z
    .locals 1
    .param p0, "node"    # Lc8/CZf;

    .prologue
    .line 178
    invoke-virtual {p0}, Lc8/CZf;->isMeasureDefined()Z

    move-result v0

    return v0
.end method

.method static layoutNode(Lc8/AZf;Lc8/CZf;FLcom/taobao/weex/dom/flex/CSSDirection;)V
    .locals 3
    .param p0, "layoutContext"    # Lc8/AZf;
    .param p1, "node"    # Lc8/CZf;
    .param p2, "parentMaxWidth"    # F
    .param p3, "parentDirection"    # Lcom/taobao/weex/dom/flex/CSSDirection;

    .prologue
    .line 198
    invoke-static {p1, p2}, Lc8/GZf;->needsRelayout(Lc8/CZf;F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p1, Lc8/CZf;->lastLayout:Lc8/EZf;

    iget-object v1, p1, Lc8/CZf;->csslayout:Lc8/zZf;

    iget-object v1, v1, Lc8/zZf;->dimensions:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lc8/EZf;->requestedWidth:F

    .line 200
    iget-object v0, p1, Lc8/CZf;->lastLayout:Lc8/EZf;

    iget-object v1, p1, Lc8/CZf;->csslayout:Lc8/zZf;

    iget-object v1, v1, Lc8/zZf;->dimensions:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lc8/EZf;->requestedHeight:F

    .line 201
    iget-object v0, p1, Lc8/CZf;->lastLayout:Lc8/EZf;

    iput p2, v0, Lc8/EZf;->parentMaxWidth:F

    .line 203
    invoke-static {p0, p1, p2, p3}, Lc8/GZf;->layoutNodeImpl(Lc8/AZf;Lc8/CZf;FLcom/taobao/weex/dom/flex/CSSDirection;)V

    .line 204
    iget-object v0, p1, Lc8/CZf;->csslayout:Lc8/zZf;

    invoke-virtual {p1, v0}, Lc8/CZf;->updateLastLayout(Lc8/zZf;)Z

    .line 210
    :goto_0
    invoke-virtual {p1}, Lc8/CZf;->markHasNewLayout()V

    .line 211
    return-void

    .line 206
    :cond_0
    iget-object v0, p1, Lc8/CZf;->csslayout:Lc8/zZf;

    iget-object v1, p1, Lc8/CZf;->lastLayout:Lc8/EZf;

    invoke-virtual {v0, v1}, Lc8/zZf;->copy(Lc8/zZf;)V

    .line 207
    iget-object v0, p1, Lc8/CZf;->lastLayout:Lc8/EZf;

    invoke-virtual {p1, v0}, Lc8/CZf;->updateLastLayout(Lc8/zZf;)Z

    goto :goto_0
.end method

.method private static layoutNodeImpl(Lc8/AZf;Lc8/CZf;FLcom/taobao/weex/dom/flex/CSSDirection;)V
    .locals 82
    .param p0, "layoutContext"    # Lc8/AZf;
    .param p1, "node"    # Lc8/CZf;
    .param p2, "parentMaxWidth"    # F
    .param p3, "parentDirection"    # Lcom/taobao/weex/dom/flex/CSSDirection;

    .prologue
    .line 218
    const/16 v32, 0x0

    .local v32, "i":I
    invoke-virtual/range {p1 .. p1}, Lc8/CZf;->getChildCount()I

    move-result v13

    .local v13, "childCount":I
    :goto_0
    move/from16 v0, v32

    if-ge v0, v13, :cond_0

    .line 219
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lc8/CZf;->getChildAt(I)Lc8/CZf;

    move-result-object v73

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    invoke-virtual/range {v73 .. v73}, Lc8/zZf;->resetResult()V

    .line 218
    add-int/lit8 v32, v32, 0x1

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lc8/CZf;->isShow()Z

    move-result v73

    if-nez v73, :cond_2

    .line 932
    :cond_1
    return-void

    .line 227
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lc8/GZf;->resolveDirection(Lc8/CZf;Lcom/taobao/weex/dom/flex/CSSDirection;)Lcom/taobao/weex/dom/flex/CSSDirection;

    move-result-object v23

    .line 228
    .local v23, "direction":Lcom/taobao/weex/dom/flex/CSSDirection;
    invoke-static/range {p1 .. p1}, Lc8/GZf;->getFlexDirection(Lc8/CZf;)I

    move-result v73

    move/from16 v0, v73

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lc8/GZf;->resolveAxis(ILcom/taobao/weex/dom/flex/CSSDirection;)I

    move-result v52

    .line 229
    .local v52, "mainAxis":I
    move/from16 v0, v52

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lc8/GZf;->getCrossFlexDirection(ILcom/taobao/weex/dom/flex/CSSDirection;)I

    move-result v16

    .line 230
    .local v16, "crossAxis":I
    sget v73, Lc8/GZf;->CSS_FLEX_DIRECTION_ROW:I

    move/from16 v0, v73

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lc8/GZf;->resolveAxis(ILcom/taobao/weex/dom/flex/CSSDirection;)I

    move-result v68

    .line 233
    .local v68, "resolvedRowAxis":I
    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-static {v0, v1}, Lc8/GZf;->setDimensionFromStyle(Lc8/CZf;I)V

    .line 234
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lc8/GZf;->setDimensionFromStyle(Lc8/CZf;I)V

    .line 237
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v73

    iput-object v0, v1, Lc8/zZf;->direction:Lcom/taobao/weex/dom/flex/CSSDirection;

    .line 241
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->leading:[I

    aget v74, v74, v52

    aget v75, v73, v74

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->leadingSpacing:[I

    aget v77, v77, v52

    sget-object v78, Lc8/GZf;->leading:[I

    aget v78, v78, v52

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-static {v0, v1}, Lc8/GZf;->getRelativePosition(Lc8/CZf;I)F

    move-result v77

    add-float v76, v76, v77

    add-float v75, v75, v76

    aput v75, v73, v74

    .line 243
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->trailing:[I

    aget v74, v74, v52

    aget v75, v73, v74

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->trailingSpacing:[I

    aget v77, v77, v52

    sget-object v78, Lc8/GZf;->trailing:[I

    aget v78, v78, v52

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-static {v0, v1}, Lc8/GZf;->getRelativePosition(Lc8/CZf;I)F

    move-result v77

    add-float v76, v76, v77

    add-float v75, v75, v76

    aput v75, v73, v74

    .line 245
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->leading:[I

    aget v74, v74, v16

    aget v75, v73, v74

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->leadingSpacing:[I

    aget v77, v77, v16

    sget-object v78, Lc8/GZf;->leading:[I

    aget v78, v78, v16

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lc8/GZf;->getRelativePosition(Lc8/CZf;I)F

    move-result v77

    add-float v76, v76, v77

    add-float v75, v75, v76

    aput v75, v73, v74

    .line 247
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->trailing:[I

    aget v74, v74, v16

    aget v75, v73, v74

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->trailingSpacing:[I

    aget v77, v77, v16

    sget-object v78, Lc8/GZf;->trailing:[I

    aget v78, v78, v16

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lc8/GZf;->getRelativePosition(Lc8/CZf;I)F

    move-result v77

    add-float v76, v76, v77

    add-float v75, v75, v76

    aput v75, v73, v74

    .line 252
    invoke-virtual/range {p1 .. p1}, Lc8/CZf;->getChildCount()I

    move-result v13

    .line 253
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->leadingSpacing:[I

    aget v74, v74, v68

    sget-object v75, Lc8/GZf;->leading:[I

    aget v75, v75, v68

    invoke-virtual/range {v73 .. v75}, Lc8/IZf;->getWithFallback(II)F

    move-result v73

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->leadingSpacing:[I

    aget v75, v75, v68

    sget-object v76, Lc8/GZf;->leading:[I

    aget v76, v76, v68

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    add-float v73, v73, v74

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->trailingSpacing:[I

    aget v75, v75, v68

    sget-object v76, Lc8/GZf;->trailing:[I

    aget v76, v76, v68

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v75, v0

    sget-object v76, Lc8/GZf;->trailingSpacing:[I

    aget v76, v76, v68

    sget-object v77, Lc8/GZf;->trailing:[I

    aget v77, v77, v68

    invoke-virtual/range {v75 .. v77}, Lc8/IZf;->getWithFallback(II)F

    move-result v75

    add-float v74, v74, v75

    add-float v64, v73, v74

    .line 258
    .local v64, "paddingAndBorderAxisResolvedRow":F
    invoke-static/range {p1 .. p1}, Lc8/GZf;->isMeasureDefined(Lc8/CZf;)Z

    move-result v73

    if-eqz v73, :cond_8

    .line 259
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v68

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-nez v73, :cond_d

    const/16 v39, 0x1

    .line 262
    .local v39, "isResolvedRowDimDefined":Z
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v68

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-nez v73, :cond_e

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v68

    aget v73, v73, v74

    move/from16 v0, v73

    float-to-double v0, v0

    move-wide/from16 v74, v0

    const-wide/16 v76, 0x0

    cmpl-double v73, v74, v76

    if-ltz v73, :cond_e

    .line 263
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    move-object/from16 v73, v0

    const/16 v74, 0x0

    aget v72, v73, v74

    .line 270
    .local v72, "width":F
    :goto_2
    sub-float v72, v72, v64

    .line 275
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v68

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-nez v73, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v68

    aget v73, v73, v74

    move/from16 v0, v73

    float-to-double v0, v0

    move-wide/from16 v74, v0

    const-wide/16 v76, 0x0

    cmpl-double v73, v74, v76

    if-gez v73, :cond_10

    :cond_3
    if-nez v39, :cond_10

    const/16 v40, 0x1

    .line 276
    .local v40, "isRowUndefined":Z
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    sget v75, Lc8/GZf;->CSS_FLEX_DIRECTION_COLUMN:I

    aget v74, v74, v75

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-nez v73, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    sget v75, Lc8/GZf;->CSS_FLEX_DIRECTION_COLUMN:I

    aget v74, v74, v75

    aget v73, v73, v74

    move/from16 v0, v73

    float-to-double v0, v0

    move-wide/from16 v74, v0

    const-wide/16 v76, 0x0

    cmpl-double v73, v74, v76

    if-gez v73, :cond_11

    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    sget v75, Lc8/GZf;->CSS_FLEX_DIRECTION_COLUMN:I

    aget v74, v74, v75

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-eqz v73, :cond_11

    const/16 v34, 0x1

    .line 280
    .local v34, "isColumnUndefined":Z
    :goto_4
    if-nez v40, :cond_5

    if-eqz v34, :cond_7

    .line 281
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/AZf;->measureOutput:Lc8/HZf;

    move-object/from16 v73, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v73

    move/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lc8/CZf;->measure(Lc8/HZf;F)Lc8/HZf;

    move-result-object v56

    .line 286
    .local v56, "measureDim":Lc8/HZf;
    if-eqz v40, :cond_6

    .line 287
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    const/16 v74, 0x0

    move-object/from16 v0, v56

    iget v0, v0, Lc8/HZf;->width:F

    move/from16 v75, v0

    add-float v75, v75, v64

    aput v75, v73, v74

    .line 290
    :cond_6
    if-eqz v34, :cond_7

    .line 291
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    const/16 v74, 0x1

    move-object/from16 v0, v56

    iget v0, v0, Lc8/HZf;->height:F

    move/from16 v75, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->leadingSpacing:[I

    sget v78, Lc8/GZf;->CSS_FLEX_DIRECTION_COLUMN:I

    aget v77, v77, v78

    sget-object v78, Lc8/GZf;->leading:[I

    sget v79, Lc8/GZf;->CSS_FLEX_DIRECTION_COLUMN:I

    aget v78, v78, v79

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v77, v0

    move-object/from16 v0, v77

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v77, v0

    sget-object v78, Lc8/GZf;->leadingSpacing:[I

    sget v79, Lc8/GZf;->CSS_FLEX_DIRECTION_COLUMN:I

    aget v78, v78, v79

    sget-object v79, Lc8/GZf;->leading:[I

    sget v80, Lc8/GZf;->CSS_FLEX_DIRECTION_COLUMN:I

    aget v79, v79, v80

    invoke-virtual/range {v77 .. v79}, Lc8/IZf;->getWithFallback(II)F

    move-result v77

    add-float v76, v76, v77

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v77, v0

    move-object/from16 v0, v77

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v77, v0

    sget-object v78, Lc8/GZf;->trailingSpacing:[I

    sget v79, Lc8/GZf;->CSS_FLEX_DIRECTION_COLUMN:I

    aget v78, v78, v79

    sget-object v79, Lc8/GZf;->trailing:[I

    sget v80, Lc8/GZf;->CSS_FLEX_DIRECTION_COLUMN:I

    aget v79, v79, v80

    invoke-virtual/range {v77 .. v79}, Lc8/IZf;->getWithFallback(II)F

    move-result v77

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v78, v0

    sget-object v79, Lc8/GZf;->trailingSpacing:[I

    sget v80, Lc8/GZf;->CSS_FLEX_DIRECTION_COLUMN:I

    aget v79, v79, v80

    sget-object v80, Lc8/GZf;->trailing:[I

    sget v81, Lc8/GZf;->CSS_FLEX_DIRECTION_COLUMN:I

    aget v80, v80, v81

    invoke-virtual/range {v78 .. v80}, Lc8/IZf;->getWithFallback(II)F

    move-result v78

    add-float v77, v77, v78

    add-float v76, v76, v77

    add-float v75, v75, v76

    aput v75, v73, v74

    .line 295
    .end local v56    # "measureDim":Lc8/HZf;
    :cond_7
    if-eqz v13, :cond_1

    .line 300
    .end local v34    # "isColumnUndefined":Z
    .end local v39    # "isResolvedRowDimDefined":Z
    .end local v40    # "isRowUndefined":Z
    .end local v72    # "width":F
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->flexWrap:Lcom/taobao/weex/dom/flex/CSSWrap;

    move-object/from16 v73, v0

    sget-object v74, Lcom/taobao/weex/dom/flex/CSSWrap;->WRAP:Lcom/taobao/weex/dom/flex/CSSWrap;

    move-object/from16 v0, v73

    move-object/from16 v1, v74

    if-ne v0, v1, :cond_12

    const/16 v38, 0x1

    .line 302
    .local v38, "isNodeFlexWrap":Z
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->justifyContent:Lcom/taobao/weex/dom/flex/CSSJustify;

    move-object/from16 v43, v0

    .line 304
    .local v43, "justifyContent":Lcom/taobao/weex/dom/flex/CSSJustify;
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->leadingSpacing:[I

    aget v74, v74, v52

    sget-object v75, Lc8/GZf;->leading:[I

    aget v75, v75, v52

    invoke-virtual/range {v73 .. v75}, Lc8/IZf;->getWithFallback(II)F

    move-result v73

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->leadingSpacing:[I

    aget v75, v75, v52

    sget-object v76, Lc8/GZf;->leading:[I

    aget v76, v76, v52

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    add-float v47, v73, v74

    .line 305
    .local v47, "leadingPaddingAndBorderMain":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->leadingSpacing:[I

    aget v74, v74, v16

    sget-object v75, Lc8/GZf;->leading:[I

    aget v75, v75, v16

    invoke-virtual/range {v73 .. v75}, Lc8/IZf;->getWithFallback(II)F

    move-result v73

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->leadingSpacing:[I

    aget v75, v75, v16

    sget-object v76, Lc8/GZf;->leading:[I

    aget v76, v76, v16

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    add-float v46, v73, v74

    .line 306
    .local v46, "leadingPaddingAndBorderCross":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->leadingSpacing:[I

    aget v74, v74, v52

    sget-object v75, Lc8/GZf;->leading:[I

    aget v75, v75, v52

    invoke-virtual/range {v73 .. v75}, Lc8/IZf;->getWithFallback(II)F

    move-result v73

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->leadingSpacing:[I

    aget v75, v75, v52

    sget-object v76, Lc8/GZf;->leading:[I

    aget v76, v76, v52

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    add-float v73, v73, v74

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->trailingSpacing:[I

    aget v75, v75, v52

    sget-object v76, Lc8/GZf;->trailing:[I

    aget v76, v76, v52

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v75, v0

    sget-object v76, Lc8/GZf;->trailingSpacing:[I

    aget v76, v76, v52

    sget-object v77, Lc8/GZf;->trailing:[I

    aget v77, v77, v52

    invoke-virtual/range {v75 .. v77}, Lc8/IZf;->getWithFallback(II)F

    move-result v75

    add-float v74, v74, v75

    add-float v63, v73, v74

    .line 307
    .local v63, "paddingAndBorderAxisMain":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->leadingSpacing:[I

    aget v74, v74, v16

    sget-object v75, Lc8/GZf;->leading:[I

    aget v75, v75, v16

    invoke-virtual/range {v73 .. v75}, Lc8/IZf;->getWithFallback(II)F

    move-result v73

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->leadingSpacing:[I

    aget v75, v75, v16

    sget-object v76, Lc8/GZf;->leading:[I

    aget v76, v76, v16

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    add-float v73, v73, v74

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->trailingSpacing:[I

    aget v75, v75, v16

    sget-object v76, Lc8/GZf;->trailing:[I

    aget v76, v76, v16

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v75, v0

    sget-object v76, Lc8/GZf;->trailingSpacing:[I

    aget v76, v76, v16

    sget-object v77, Lc8/GZf;->trailing:[I

    aget v77, v77, v16

    invoke-virtual/range {v75 .. v77}, Lc8/IZf;->getWithFallback(II)F

    move-result v75

    add-float v74, v74, v75

    add-float v62, v73, v74

    .line 309
    .local v62, "paddingAndBorderAxisCross":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v52

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-nez v73, :cond_13

    const/16 v36, 0x1

    .line 310
    .local v36, "isMainDimDefined":Z
    :goto_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v16

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-nez v73, :cond_14

    const/16 v35, 0x1

    .line 311
    .local v35, "isCrossDimDefined":Z
    :goto_7
    sget v73, Lc8/GZf;->CSS_FLEX_DIRECTION_ROW:I

    move/from16 v0, v52

    move/from16 v1, v73

    if-eq v0, v1, :cond_9

    sget v73, Lc8/GZf;->CSS_FLEX_DIRECTION_ROW_REVERSE:I

    move/from16 v0, v52

    move/from16 v1, v73

    if-ne v0, v1, :cond_15

    :cond_9
    const/16 v37, 0x1

    .line 318
    .local v37, "isMainRowDirection":Z
    :goto_8
    const/16 v26, 0x0

    .line 319
    .local v26, "firstAbsoluteChild":Lc8/CZf;
    const/16 v19, 0x0

    .line 321
    .local v19, "currentAbsoluteChild":Lc8/CZf;
    const/high16 v22, 0x7fc00000    # NaNf

    .line 322
    .local v22, "definedMainDim":F
    if-eqz v36, :cond_a

    .line 323
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v52

    aget v73, v73, v74

    sub-float v22, v73, v63

    .line 327
    :cond_a
    const/16 v70, 0x0

    .line 328
    .local v70, "startLine":I
    const/16 v25, 0x0

    .line 330
    .local v25, "endLine":I
    const/4 v7, 0x0

    .line 332
    .local v7, "alreadyComputedNextLayout":I
    const/16 v50, 0x0

    .line 333
    .local v50, "linesCrossDim":F
    const/16 v51, 0x0

    .line 334
    .local v51, "linesMainDim":F
    const/16 v49, 0x0

    .line 335
    .local v49, "linesCount":I
    :goto_9
    move/from16 v0, v25

    if-ge v0, v13, :cond_4e

    .line 342
    const/16 v53, 0x0

    .line 346
    .local v53, "mainContentDim":F
    const/16 v30, 0x0

    .line 347
    .local v30, "flexibleChildrenCount":I
    const/16 v71, 0x0

    .line 348
    .local v71, "totalFlexible":F
    const/16 v61, 0x0

    .line 354
    .local v61, "nonFlexibleChildrenCount":I
    if-eqz v36, :cond_b

    sget-object v73, Lcom/taobao/weex/dom/flex/CSSJustify;->FLEX_START:Lcom/taobao/weex/dom/flex/CSSJustify;

    move-object/from16 v0, v43

    move-object/from16 v1, v73

    if-eq v0, v1, :cond_c

    :cond_b
    if-nez v36, :cond_16

    sget-object v73, Lcom/taobao/weex/dom/flex/CSSJustify;->CENTER:Lcom/taobao/weex/dom/flex/CSSJustify;

    move-object/from16 v0, v43

    move-object/from16 v1, v73

    if-eq v0, v1, :cond_16

    :cond_c
    const/16 v42, 0x1

    .line 357
    .local v42, "isSimpleStackMain":Z
    :goto_a
    if-eqz v42, :cond_17

    move/from16 v28, v13

    .line 363
    .local v28, "firstComplexMain":I
    :goto_b
    const/16 v41, 0x1

    .line 364
    .local v41, "isSimpleStackCross":Z
    move/from16 v27, v13

    .line 366
    .local v27, "firstComplexCross":I
    const/16 v29, 0x0

    .line 367
    .local v29, "firstFlexChild":Lc8/CZf;
    const/16 v20, 0x0

    .line 369
    .local v20, "currentFlexChild":Lc8/CZf;
    move/from16 v54, v47

    .line 370
    .local v54, "mainDim":F
    const/16 v17, 0x0

    .line 373
    .local v17, "crossDim":F
    move/from16 v32, v70

    :goto_c
    move/from16 v0, v32

    if-ge v0, v13, :cond_1e

    .line 374
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lc8/CZf;->getChildAt(I)Lc8/CZf;

    move-result-object v12

    .line 375
    .local v12, "child":Lc8/CZf;
    invoke-virtual {v12}, Lc8/CZf;->isShow()Z

    move-result v73

    if-nez v73, :cond_18

    .line 376
    add-int/lit8 v25, v32, 0x1

    .line 373
    :goto_d
    add-int/lit8 v32, v32, 0x1

    goto :goto_c

    .line 259
    .end local v7    # "alreadyComputedNextLayout":I
    .end local v12    # "child":Lc8/CZf;
    .end local v17    # "crossDim":F
    .end local v19    # "currentAbsoluteChild":Lc8/CZf;
    .end local v20    # "currentFlexChild":Lc8/CZf;
    .end local v22    # "definedMainDim":F
    .end local v25    # "endLine":I
    .end local v26    # "firstAbsoluteChild":Lc8/CZf;
    .end local v27    # "firstComplexCross":I
    .end local v28    # "firstComplexMain":I
    .end local v29    # "firstFlexChild":Lc8/CZf;
    .end local v30    # "flexibleChildrenCount":I
    .end local v35    # "isCrossDimDefined":Z
    .end local v36    # "isMainDimDefined":Z
    .end local v37    # "isMainRowDirection":Z
    .end local v38    # "isNodeFlexWrap":Z
    .end local v41    # "isSimpleStackCross":Z
    .end local v42    # "isSimpleStackMain":Z
    .end local v43    # "justifyContent":Lcom/taobao/weex/dom/flex/CSSJustify;
    .end local v46    # "leadingPaddingAndBorderCross":F
    .end local v47    # "leadingPaddingAndBorderMain":F
    .end local v49    # "linesCount":I
    .end local v50    # "linesCrossDim":F
    .end local v51    # "linesMainDim":F
    .end local v53    # "mainContentDim":F
    .end local v54    # "mainDim":F
    .end local v61    # "nonFlexibleChildrenCount":I
    .end local v62    # "paddingAndBorderAxisCross":F
    .end local v63    # "paddingAndBorderAxisMain":F
    .end local v70    # "startLine":I
    .end local v71    # "totalFlexible":F
    :cond_d
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 264
    .restart local v39    # "isResolvedRowDimDefined":Z
    :cond_e
    if-eqz v39, :cond_f

    .line 265
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v68

    aget v72, v73, v74

    .restart local v72    # "width":F
    goto/16 :goto_2

    .line 267
    .end local v72    # "width":F
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->leadingSpacing:[I

    aget v74, v74, v68

    sget-object v75, Lc8/GZf;->leading:[I

    aget v75, v75, v68

    invoke-virtual/range {v73 .. v75}, Lc8/IZf;->getWithFallback(II)F

    move-result v73

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->trailingSpacing:[I

    aget v75, v75, v68

    sget-object v76, Lc8/GZf;->trailing:[I

    aget v76, v76, v68

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    add-float v73, v73, v74

    sub-float v72, p2, v73

    .restart local v72    # "width":F
    goto/16 :goto_2

    .line 275
    :cond_10
    const/16 v40, 0x0

    goto/16 :goto_3

    .line 276
    .restart local v40    # "isRowUndefined":Z
    :cond_11
    const/16 v34, 0x0

    goto/16 :goto_4

    .line 300
    .end local v39    # "isResolvedRowDimDefined":Z
    .end local v40    # "isRowUndefined":Z
    .end local v72    # "width":F
    :cond_12
    const/16 v38, 0x0

    goto/16 :goto_5

    .line 309
    .restart local v38    # "isNodeFlexWrap":Z
    .restart local v43    # "justifyContent":Lcom/taobao/weex/dom/flex/CSSJustify;
    .restart local v46    # "leadingPaddingAndBorderCross":F
    .restart local v47    # "leadingPaddingAndBorderMain":F
    .restart local v62    # "paddingAndBorderAxisCross":F
    .restart local v63    # "paddingAndBorderAxisMain":F
    :cond_13
    const/16 v36, 0x0

    goto/16 :goto_6

    .line 310
    .restart local v36    # "isMainDimDefined":Z
    :cond_14
    const/16 v35, 0x0

    goto/16 :goto_7

    .line 311
    .restart local v35    # "isCrossDimDefined":Z
    :cond_15
    const/16 v37, 0x0

    goto/16 :goto_8

    .line 354
    .restart local v7    # "alreadyComputedNextLayout":I
    .restart local v19    # "currentAbsoluteChild":Lc8/CZf;
    .restart local v22    # "definedMainDim":F
    .restart local v25    # "endLine":I
    .restart local v26    # "firstAbsoluteChild":Lc8/CZf;
    .restart local v30    # "flexibleChildrenCount":I
    .restart local v37    # "isMainRowDirection":Z
    .restart local v49    # "linesCount":I
    .restart local v50    # "linesCrossDim":F
    .restart local v51    # "linesMainDim":F
    .restart local v53    # "mainContentDim":F
    .restart local v61    # "nonFlexibleChildrenCount":I
    .restart local v70    # "startLine":I
    .restart local v71    # "totalFlexible":F
    :cond_16
    const/16 v42, 0x0

    goto/16 :goto_a

    .restart local v42    # "isSimpleStackMain":Z
    :cond_17
    move/from16 v28, v70

    .line 357
    goto/16 :goto_b

    .line 379
    .restart local v12    # "child":Lc8/CZf;
    .restart local v17    # "crossDim":F
    .restart local v20    # "currentFlexChild":Lc8/CZf;
    .restart local v27    # "firstComplexCross":I
    .restart local v28    # "firstComplexMain":I
    .restart local v29    # "firstFlexChild":Lc8/CZf;
    .restart local v41    # "isSimpleStackCross":Z
    .restart local v54    # "mainDim":F
    :cond_18
    move/from16 v0, v49

    iput v0, v12, Lc8/CZf;->lineIndex:I

    .line 381
    const/16 v73, 0x0

    move-object/from16 v0, v73

    iput-object v0, v12, Lc8/CZf;->nextAbsoluteChild:Lc8/CZf;

    .line 382
    const/16 v73, 0x0

    move-object/from16 v0, v73

    iput-object v0, v12, Lc8/CZf;->nextFlexChild:Lc8/CZf;

    .line 384
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lc8/GZf;->getAlignItem(Lc8/CZf;Lc8/CZf;)Lcom/taobao/weex/dom/flex/CSSAlign;

    move-result-object v6

    .line 388
    .local v6, "alignItem":Lcom/taobao/weex/dom/flex/CSSAlign;
    sget-object v73, Lcom/taobao/weex/dom/flex/CSSAlign;->STRETCH:Lcom/taobao/weex/dom/flex/CSSAlign;

    move-object/from16 v0, v73

    if-ne v6, v0, :cond_20

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->positionType:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v73, v0

    sget-object v74, Lcom/taobao/weex/dom/flex/CSSPositionType;->RELATIVE:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v0, v73

    move-object/from16 v1, v74

    if-ne v0, v1, :cond_20

    if-eqz v35, :cond_20

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v16

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-nez v73, :cond_19

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v16

    aget v73, v73, v74

    move/from16 v0, v73

    float-to-double v0, v0

    move-wide/from16 v74, v0

    const-wide/16 v76, 0x0

    cmpl-double v73, v74, v76

    if-gez v73, :cond_20

    .line 392
    :cond_19
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v16

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v75, v0

    sget-object v76, Lc8/GZf;->dim:[I

    aget v76, v76, v16

    aget v75, v75, v76

    sub-float v75, v75, v62

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->leadingSpacing:[I

    aget v77, v77, v16

    sget-object v78, Lc8/GZf;->leading:[I

    aget v78, v78, v16

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v77, v0

    move-object/from16 v0, v77

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v77, v0

    sget-object v78, Lc8/GZf;->trailingSpacing:[I

    aget v78, v78, v16

    sget-object v79, Lc8/GZf;->trailing:[I

    aget v79, v79, v16

    invoke-virtual/range {v77 .. v79}, Lc8/IZf;->getWithFallback(II)F

    move-result v77

    add-float v76, v76, v77

    sub-float v75, v75, v76

    move/from16 v0, v16

    move/from16 v1, v75

    invoke-static {v12, v0, v1}, Lc8/GZf;->boundAxis(Lc8/CZf;IF)F

    move-result v75

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->leadingSpacing:[I

    aget v77, v77, v16

    sget-object v78, Lc8/GZf;->leading:[I

    aget v78, v78, v16

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v77, v0

    move-object/from16 v0, v77

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v77, v0

    sget-object v78, Lc8/GZf;->leadingSpacing:[I

    aget v78, v78, v16

    sget-object v79, Lc8/GZf;->leading:[I

    aget v79, v79, v16

    invoke-virtual/range {v77 .. v79}, Lc8/IZf;->getWithFallback(II)F

    move-result v77

    add-float v76, v76, v77

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v77, v0

    move-object/from16 v0, v77

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v77, v0

    sget-object v78, Lc8/GZf;->trailingSpacing:[I

    aget v78, v78, v16

    sget-object v79, Lc8/GZf;->trailing:[I

    aget v79, v79, v16

    invoke-virtual/range {v77 .. v79}, Lc8/IZf;->getWithFallback(II)F

    move-result v77

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v78, v0

    sget-object v79, Lc8/GZf;->trailingSpacing:[I

    aget v79, v79, v16

    sget-object v80, Lc8/GZf;->trailing:[I

    aget v80, v80, v16

    invoke-virtual/range {v78 .. v80}, Lc8/IZf;->getWithFallback(II)F

    move-result v78

    add-float v77, v77, v78

    add-float v76, v76, v77

    invoke-static/range {v75 .. v76}, Ljava/lang/Math;->max(FF)F

    move-result v75

    aput v75, v73, v74

    .line 430
    :cond_1a
    const/16 v59, 0x0

    .line 434
    .local v59, "nextContentDim":F
    if-eqz v36, :cond_28

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->positionType:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v73, v0

    sget-object v74, Lcom/taobao/weex/dom/flex/CSSPositionType;->RELATIVE:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v0, v73

    move-object/from16 v1, v74

    if-ne v0, v1, :cond_28

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget v0, v0, Lc8/DZf;->flex:F

    move/from16 v73, v0

    const/16 v74, 0x0

    cmpl-float v73, v73, v74

    if-lez v73, :cond_28

    .line 435
    add-int/lit8 v30, v30, 0x1

    .line 436
    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget v0, v0, Lc8/DZf;->flex:F

    move/from16 v73, v0

    add-float v71, v71, v73

    .line 440
    if-nez v29, :cond_1b

    .line 441
    move-object/from16 v29, v12

    .line 443
    :cond_1b
    if-eqz v20, :cond_1c

    .line 444
    move-object/from16 v0, v20

    iput-object v12, v0, Lc8/CZf;->nextFlexChild:Lc8/CZf;

    .line 446
    :cond_1c
    move-object/from16 v20, v12

    .line 452
    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->leadingSpacing:[I

    aget v74, v74, v52

    sget-object v75, Lc8/GZf;->leading:[I

    aget v75, v75, v52

    invoke-virtual/range {v73 .. v75}, Lc8/IZf;->getWithFallback(II)F

    move-result v73

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->leadingSpacing:[I

    aget v75, v75, v52

    sget-object v76, Lc8/GZf;->leading:[I

    aget v76, v76, v52

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    add-float v73, v73, v74

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->trailingSpacing:[I

    aget v75, v75, v52

    sget-object v76, Lc8/GZf;->trailing:[I

    aget v76, v76, v52

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v75, v0

    sget-object v76, Lc8/GZf;->trailingSpacing:[I

    aget v76, v76, v52

    sget-object v77, Lc8/GZf;->trailing:[I

    aget v77, v77, v52

    invoke-virtual/range {v75 .. v77}, Lc8/IZf;->getWithFallback(II)F

    move-result v75

    add-float v74, v74, v75

    add-float v73, v73, v74

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->leadingSpacing:[I

    aget v75, v75, v52

    sget-object v76, Lc8/GZf;->leading:[I

    aget v76, v76, v52

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v75, v0

    sget-object v76, Lc8/GZf;->trailingSpacing:[I

    aget v76, v76, v52

    sget-object v77, Lc8/GZf;->trailing:[I

    aget v77, v77, v52

    invoke-virtual/range {v75 .. v77}, Lc8/IZf;->getWithFallback(II)F

    move-result v75

    add-float v74, v74, v75

    add-float v59, v73, v74

    .line 483
    :cond_1d
    :goto_e
    if-eqz v38, :cond_2c

    if-eqz v36, :cond_2c

    add-float v73, v53, v59

    cmpl-float v73, v73, v22

    if-lez v73, :cond_2c

    move/from16 v0, v32

    move/from16 v1, v70

    if-eq v0, v1, :cond_2c

    .line 489
    add-int/lit8 v61, v61, -0x1

    .line 490
    const/4 v7, 0x1

    .line 541
    .end local v6    # "alignItem":Lcom/taobao/weex/dom/flex/CSSAlign;
    .end local v12    # "child":Lc8/CZf;
    .end local v59    # "nextContentDim":F
    :cond_1e
    const/16 v45, 0x0

    .line 542
    .local v45, "leadingMainDim":F
    const/4 v10, 0x0

    .line 546
    .local v10, "betweenMainDim":F
    if-eqz v36, :cond_35

    .line 547
    sub-float v67, v22, v53

    .line 554
    .local v67, "remainingMainDim":F
    :goto_f
    if-eqz v30, :cond_3b

    .line 555
    div-float v31, v67, v71

    .line 561
    .local v31, "flexibleMainDim":F
    move-object/from16 v20, v29

    .line 562
    :goto_10
    if-eqz v20, :cond_36

    .line 563
    invoke-virtual/range {v20 .. v20}, Lc8/CZf;->isShow()Z

    move-result v73

    if-eqz v73, :cond_1f

    .line 564
    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget v0, v0, Lc8/DZf;->flex:F

    move/from16 v73, v0

    mul-float v73, v73, v31

    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->leadingSpacing:[I

    aget v75, v75, v52

    sget-object v76, Lc8/GZf;->leading:[I

    aget v76, v76, v52

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v75, v0

    sget-object v76, Lc8/GZf;->leadingSpacing:[I

    aget v76, v76, v52

    sget-object v77, Lc8/GZf;->leading:[I

    aget v77, v77, v52

    invoke-virtual/range {v75 .. v77}, Lc8/IZf;->getWithFallback(II)F

    move-result v75

    add-float v74, v74, v75

    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v75, v0

    sget-object v76, Lc8/GZf;->trailingSpacing:[I

    aget v76, v76, v52

    sget-object v77, Lc8/GZf;->trailing:[I

    aget v77, v77, v52

    invoke-virtual/range {v75 .. v77}, Lc8/IZf;->getWithFallback(II)F

    move-result v75

    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->trailingSpacing:[I

    aget v77, v77, v52

    sget-object v78, Lc8/GZf;->trailing:[I

    aget v78, v78, v52

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    add-float v75, v75, v76

    add-float v74, v74, v75

    add-float v9, v73, v74

    .line 566
    .local v9, "baseMainDim":F
    move-object/from16 v0, v20

    move/from16 v1, v52

    invoke-static {v0, v1, v9}, Lc8/GZf;->boundAxis(Lc8/CZf;IF)F

    move-result v11

    .line 568
    .local v11, "boundMainDim":F
    cmpl-float v73, v9, v11

    if-eqz v73, :cond_1f

    .line 569
    sub-float v67, v67, v11

    .line 570
    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget v0, v0, Lc8/DZf;->flex:F

    move/from16 v73, v0

    sub-float v71, v71, v73

    .line 573
    .end local v9    # "baseMainDim":F
    .end local v11    # "boundMainDim":F
    :cond_1f
    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/CZf;->nextFlexChild:Lc8/CZf;

    move-object/from16 v20, v0

    goto/16 :goto_10

    .line 398
    .end local v10    # "betweenMainDim":F
    .end local v31    # "flexibleMainDim":F
    .end local v45    # "leadingMainDim":F
    .end local v67    # "remainingMainDim":F
    .restart local v6    # "alignItem":Lcom/taobao/weex/dom/flex/CSSAlign;
    .restart local v12    # "child":Lc8/CZf;
    :cond_20
    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->positionType:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v73, v0

    sget-object v74, Lcom/taobao/weex/dom/flex/CSSPositionType;->ABSOLUTE:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v0, v73

    move-object/from16 v1, v74

    if-ne v0, v1, :cond_1a

    .line 401
    if-nez v26, :cond_21

    .line 402
    move-object/from16 v26, v12

    .line 404
    :cond_21
    if-eqz v19, :cond_22

    .line 405
    move-object/from16 v0, v19

    iput-object v12, v0, Lc8/CZf;->nextAbsoluteChild:Lc8/CZf;

    .line 407
    :cond_22
    move-object/from16 v19, v12

    .line 411
    const/16 v33, 0x0

    .local v33, "ii":I
    :goto_11
    const/16 v73, 0x2

    move/from16 v0, v33

    move/from16 v1, v73

    if-ge v0, v1, :cond_1a

    .line 412
    if-eqz v33, :cond_25

    sget v8, Lc8/GZf;->CSS_FLEX_DIRECTION_ROW:I

    .line 413
    .local v8, "axis":I
    :goto_12
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v8

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-nez v73, :cond_24

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v8

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-nez v73, :cond_23

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v8

    aget v73, v73, v74

    move/from16 v0, v73

    float-to-double v0, v0

    move-wide/from16 v74, v0

    const-wide/16 v76, 0x0

    cmpl-double v73, v74, v76

    if-gez v73, :cond_24

    :cond_23
    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->leading:[I

    aget v74, v74, v8

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-nez v73, :cond_24

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->trailing:[I

    aget v74, v74, v8

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-nez v73, :cond_24

    .line 417
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v74, v0

    sget-object v73, Lc8/GZf;->dim:[I

    aget v75, v73, v8

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v76, Lc8/GZf;->dim:[I

    aget v76, v76, v8

    aget v73, v73, v76

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->leadingSpacing:[I

    aget v77, v77, v8

    sget-object v78, Lc8/GZf;->leading:[I

    aget v78, v78, v8

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v77, v0

    move-object/from16 v0, v77

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v77, v0

    sget-object v78, Lc8/GZf;->leadingSpacing:[I

    aget v78, v78, v8

    sget-object v79, Lc8/GZf;->leading:[I

    aget v79, v79, v8

    invoke-virtual/range {v77 .. v79}, Lc8/IZf;->getWithFallback(II)F

    move-result v77

    add-float v76, v76, v77

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v77, v0

    move-object/from16 v0, v77

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v77, v0

    sget-object v78, Lc8/GZf;->trailingSpacing:[I

    aget v78, v78, v8

    sget-object v79, Lc8/GZf;->trailing:[I

    aget v79, v79, v8

    invoke-virtual/range {v77 .. v79}, Lc8/IZf;->getWithFallback(II)F

    move-result v77

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v78, v0

    sget-object v79, Lc8/GZf;->trailingSpacing:[I

    aget v79, v79, v8

    sget-object v80, Lc8/GZf;->trailing:[I

    aget v80, v80, v8

    invoke-virtual/range {v78 .. v80}, Lc8/IZf;->getWithFallback(II)F

    move-result v78

    add-float v77, v77, v78

    add-float v76, v76, v77

    sub-float v73, v73, v76

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->leadingSpacing:[I

    aget v77, v77, v8

    sget-object v78, Lc8/GZf;->leading:[I

    aget v78, v78, v8

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v77, v0

    move-object/from16 v0, v77

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v77, v0

    sget-object v78, Lc8/GZf;->trailingSpacing:[I

    aget v78, v78, v8

    sget-object v79, Lc8/GZf;->trailing:[I

    aget v79, v79, v8

    invoke-virtual/range {v77 .. v79}, Lc8/IZf;->getWithFallback(II)F

    move-result v77

    add-float v76, v76, v77

    sub-float v76, v73, v76

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->position:[F

    move-object/from16 v73, v0

    sget-object v77, Lc8/GZf;->leading:[I

    aget v77, v77, v8

    aget v73, v73, v77

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-eqz v73, :cond_26

    const/16 v73, 0x0

    :goto_13
    sub-float v76, v76, v73

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->position:[F

    move-object/from16 v73, v0

    sget-object v77, Lc8/GZf;->trailing:[I

    aget v77, v77, v8

    aget v73, v73, v77

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-eqz v73, :cond_27

    const/16 v73, 0x0

    :goto_14
    sub-float v73, v76, v73

    move/from16 v0, v73

    invoke-static {v12, v8, v0}, Lc8/GZf;->boundAxis(Lc8/CZf;IF)F

    move-result v73

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->leadingSpacing:[I

    aget v77, v77, v8

    sget-object v78, Lc8/GZf;->leading:[I

    aget v78, v78, v8

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v77, v0

    move-object/from16 v0, v77

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v77, v0

    sget-object v78, Lc8/GZf;->leadingSpacing:[I

    aget v78, v78, v8

    sget-object v79, Lc8/GZf;->leading:[I

    aget v79, v79, v8

    invoke-virtual/range {v77 .. v79}, Lc8/IZf;->getWithFallback(II)F

    move-result v77

    add-float v76, v76, v77

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v77, v0

    move-object/from16 v0, v77

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v77, v0

    sget-object v78, Lc8/GZf;->trailingSpacing:[I

    aget v78, v78, v8

    sget-object v79, Lc8/GZf;->trailing:[I

    aget v79, v79, v8

    invoke-virtual/range {v77 .. v79}, Lc8/IZf;->getWithFallback(II)F

    move-result v77

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v78, v0

    sget-object v79, Lc8/GZf;->trailingSpacing:[I

    aget v79, v79, v8

    sget-object v80, Lc8/GZf;->trailing:[I

    aget v80, v80, v8

    invoke-virtual/range {v78 .. v80}, Lc8/IZf;->getWithFallback(II)F

    move-result v78

    add-float v77, v77, v78

    add-float v76, v76, v77

    move/from16 v0, v73

    move/from16 v1, v76

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v73

    aput v73, v74, v75

    .line 411
    :cond_24
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_11

    .line 412
    .end local v8    # "axis":I
    :cond_25
    sget v8, Lc8/GZf;->CSS_FLEX_DIRECTION_COLUMN:I

    goto/16 :goto_12

    .line 417
    .restart local v8    # "axis":I
    :cond_26
    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->position:[F

    move-object/from16 v73, v0

    sget-object v77, Lc8/GZf;->leading:[I

    aget v77, v77, v8

    aget v73, v73, v77

    goto/16 :goto_13

    :cond_27
    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->position:[F

    move-object/from16 v73, v0

    sget-object v77, Lc8/GZf;->trailing:[I

    aget v77, v77, v8

    aget v73, v73, v77

    goto/16 :goto_14

    .line 456
    .end local v8    # "axis":I
    .end local v33    # "ii":I
    .restart local v59    # "nextContentDim":F
    :cond_28
    const/high16 v55, 0x7fc00000    # NaNf

    .line 457
    .local v55, "maxWidth":F
    if-nez v37, :cond_29

    .line 458
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v68

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-nez v73, :cond_2b

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v68

    aget v73, v73, v74

    move/from16 v0, v73

    float-to-double v0, v0

    move-wide/from16 v74, v0

    const-wide/16 v76, 0x0

    cmpl-double v73, v74, v76

    if-ltz v73, :cond_2b

    .line 459
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v68

    aget v73, v73, v74

    sub-float v55, v73, v64

    .line 469
    :cond_29
    :goto_15
    if-nez v7, :cond_2a

    .line 470
    move-object/from16 v0, p0

    move/from16 v1, v55

    move-object/from16 v2, v23

    invoke-static {v0, v12, v1, v2}, Lc8/GZf;->layoutNode(Lc8/AZf;Lc8/CZf;FLcom/taobao/weex/dom/flex/CSSDirection;)V

    .line 475
    :cond_2a
    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->positionType:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v73, v0

    sget-object v74, Lcom/taobao/weex/dom/flex/CSSPositionType;->RELATIVE:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v0, v73

    move-object/from16 v1, v74

    if-ne v0, v1, :cond_1d

    .line 476
    add-int/lit8 v61, v61, 0x1

    .line 478
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v52

    aget v73, v73, v74

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->leadingSpacing:[I

    aget v75, v75, v52

    sget-object v76, Lc8/GZf;->leading:[I

    aget v76, v76, v52

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    add-float v73, v73, v74

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->trailingSpacing:[I

    aget v75, v75, v52

    sget-object v76, Lc8/GZf;->trailing:[I

    aget v76, v76, v52

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    add-float v59, v73, v74

    goto/16 :goto_e

    .line 462
    :cond_2b
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->leadingSpacing:[I

    aget v74, v74, v68

    sget-object v75, Lc8/GZf;->leading:[I

    aget v75, v75, v68

    invoke-virtual/range {v73 .. v75}, Lc8/IZf;->getWithFallback(II)F

    move-result v73

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->trailingSpacing:[I

    aget v75, v75, v68

    sget-object v76, Lc8/GZf;->trailing:[I

    aget v76, v76, v68

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    add-float v73, v73, v74

    sub-float v73, p2, v73

    sub-float v55, v73, v64

    goto/16 :goto_15

    .line 497
    .end local v55    # "maxWidth":F
    :cond_2c
    if-eqz v42, :cond_2e

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->positionType:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v73, v0

    sget-object v74, Lcom/taobao/weex/dom/flex/CSSPositionType;->RELATIVE:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v0, v73

    move-object/from16 v1, v74

    if-ne v0, v1, :cond_2d

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->positionType:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v73, v0

    sget-object v74, Lcom/taobao/weex/dom/flex/CSSPositionType;->RELATIVE:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v0, v73

    move-object/from16 v1, v74

    if-ne v0, v1, :cond_2e

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget v0, v0, Lc8/DZf;->flex:F

    move/from16 v73, v0

    const/16 v74, 0x0

    cmpl-float v73, v73, v74

    if-lez v73, :cond_2e

    .line 499
    :cond_2d
    const/16 v42, 0x0

    .line 500
    move/from16 v28, v32

    .line 506
    :cond_2e
    if-eqz v41, :cond_31

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->positionType:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v73, v0

    sget-object v74, Lcom/taobao/weex/dom/flex/CSSPositionType;->RELATIVE:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v0, v73

    move-object/from16 v1, v74

    if-ne v0, v1, :cond_30

    sget-object v73, Lcom/taobao/weex/dom/flex/CSSAlign;->STRETCH:Lcom/taobao/weex/dom/flex/CSSAlign;

    move-object/from16 v0, v73

    if-eq v6, v0, :cond_2f

    sget-object v73, Lcom/taobao/weex/dom/flex/CSSAlign;->FLEX_START:Lcom/taobao/weex/dom/flex/CSSAlign;

    move-object/from16 v0, v73

    if-ne v6, v0, :cond_30

    :cond_2f
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v16

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-eqz v73, :cond_31

    .line 510
    :cond_30
    const/16 v41, 0x0

    .line 511
    move/from16 v27, v32

    .line 514
    :cond_31
    if-eqz v42, :cond_33

    .line 515
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->pos:[I

    aget v74, v74, v52

    aget v75, v73, v74

    add-float v75, v75, v54

    aput v75, v73, v74

    .line 516
    if-eqz v36, :cond_32

    .line 517
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->trailing:[I

    aget v74, v74, v52

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v75, v0

    sget-object v76, Lc8/GZf;->dim:[I

    aget v76, v76, v52

    aget v75, v75, v76

    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->dim:[I

    aget v77, v77, v52

    aget v76, v76, v77

    sub-float v75, v75, v76

    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->pos:[I

    aget v77, v77, v52

    aget v76, v76, v77

    sub-float v75, v75, v76

    aput v75, v73, v74

    .line 520
    :cond_32
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v52

    aget v73, v73, v74

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->leadingSpacing:[I

    aget v75, v75, v52

    sget-object v76, Lc8/GZf;->leading:[I

    aget v76, v76, v52

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    add-float v73, v73, v74

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->trailingSpacing:[I

    aget v75, v75, v52

    sget-object v76, Lc8/GZf;->trailing:[I

    aget v76, v76, v52

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    add-float v73, v73, v74

    add-float v54, v54, v73

    .line 521
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v16

    aget v73, v73, v74

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->leadingSpacing:[I

    aget v75, v75, v16

    sget-object v76, Lc8/GZf;->leading:[I

    aget v76, v76, v16

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    add-float v73, v73, v74

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->trailingSpacing:[I

    aget v75, v75, v16

    sget-object v76, Lc8/GZf;->trailing:[I

    aget v76, v76, v16

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    add-float v73, v73, v74

    move/from16 v0, v16

    move/from16 v1, v73

    invoke-static {v12, v0, v1}, Lc8/GZf;->boundAxis(Lc8/CZf;IF)F

    move-result v73

    move/from16 v0, v17

    move/from16 v1, v73

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 524
    :cond_33
    if-eqz v41, :cond_34

    .line 525
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->pos:[I

    aget v74, v74, v16

    aget v75, v73, v74

    add-float v76, v50, v46

    add-float v75, v75, v76

    aput v75, v73, v74

    .line 526
    if-eqz v35, :cond_34

    .line 527
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->trailing:[I

    aget v74, v74, v16

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v75, v0

    sget-object v76, Lc8/GZf;->dim:[I

    aget v76, v76, v16

    aget v75, v75, v76

    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->dim:[I

    aget v77, v77, v16

    aget v76, v76, v77

    sub-float v75, v75, v76

    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->pos:[I

    aget v77, v77, v16

    aget v76, v76, v77

    sub-float v75, v75, v76

    aput v75, v73, v74

    .line 531
    :cond_34
    const/4 v7, 0x0

    .line 532
    add-float v53, v53, v59

    .line 533
    add-int/lit8 v25, v32, 0x1

    goto/16 :goto_d

    .line 549
    .end local v6    # "alignItem":Lcom/taobao/weex/dom/flex/CSSAlign;
    .end local v12    # "child":Lc8/CZf;
    .end local v59    # "nextContentDim":F
    .restart local v10    # "betweenMainDim":F
    .restart local v45    # "leadingMainDim":F
    :cond_35
    const/16 v73, 0x0

    move/from16 v0, v53

    move/from16 v1, v73

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v73

    sub-float v67, v73, v53

    .restart local v67    # "remainingMainDim":F
    goto/16 :goto_f

    .line 575
    .restart local v31    # "flexibleMainDim":F
    :cond_36
    div-float v31, v67, v71

    .line 579
    const/16 v73, 0x0

    cmpg-float v73, v31, v73

    if-gez v73, :cond_37

    .line 580
    const/16 v31, 0x0

    .line 583
    :cond_37
    move-object/from16 v20, v29

    .line 584
    :goto_16
    if-eqz v20, :cond_3c

    .line 585
    invoke-virtual/range {v20 .. v20}, Lc8/CZf;->isShow()Z

    move-result v73

    if-eqz v73, :cond_39

    .line 588
    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v52

    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget v0, v0, Lc8/DZf;->flex:F

    move/from16 v75, v0

    mul-float v75, v75, v31

    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->leadingSpacing:[I

    aget v77, v77, v52

    sget-object v78, Lc8/GZf;->leading:[I

    aget v78, v78, v52

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v77, v0

    move-object/from16 v0, v77

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v77, v0

    sget-object v78, Lc8/GZf;->leadingSpacing:[I

    aget v78, v78, v52

    sget-object v79, Lc8/GZf;->leading:[I

    aget v79, v79, v52

    invoke-virtual/range {v77 .. v79}, Lc8/IZf;->getWithFallback(II)F

    move-result v77

    add-float v76, v76, v77

    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v77, v0

    move-object/from16 v0, v77

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v77, v0

    sget-object v78, Lc8/GZf;->trailingSpacing:[I

    aget v78, v78, v52

    sget-object v79, Lc8/GZf;->trailing:[I

    aget v79, v79, v52

    invoke-virtual/range {v77 .. v79}, Lc8/IZf;->getWithFallback(II)F

    move-result v77

    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v78, v0

    sget-object v79, Lc8/GZf;->trailingSpacing:[I

    aget v79, v79, v52

    sget-object v80, Lc8/GZf;->trailing:[I

    aget v80, v80, v52

    invoke-virtual/range {v78 .. v80}, Lc8/IZf;->getWithFallback(II)F

    move-result v78

    add-float v77, v77, v78

    add-float v76, v76, v77

    add-float v75, v75, v76

    move-object/from16 v0, v20

    move/from16 v1, v52

    move/from16 v2, v75

    invoke-static {v0, v1, v2}, Lc8/GZf;->boundAxis(Lc8/CZf;IF)F

    move-result v75

    aput v75, v73, v74

    .line 593
    const/high16 v55, 0x7fc00000    # NaNf

    .line 594
    .restart local v55    # "maxWidth":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v68

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-nez v73, :cond_3a

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v68

    aget v73, v73, v74

    move/from16 v0, v73

    float-to-double v0, v0

    move-wide/from16 v74, v0

    const-wide/16 v76, 0x0

    cmpl-double v73, v74, v76

    if-ltz v73, :cond_3a

    .line 595
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v68

    aget v73, v73, v74

    sub-float v55, v73, v64

    .line 604
    :cond_38
    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v55

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lc8/GZf;->layoutNode(Lc8/AZf;Lc8/CZf;FLcom/taobao/weex/dom/flex/CSSDirection;)V

    .line 606
    .end local v55    # "maxWidth":F
    :cond_39
    move-object/from16 v12, v20

    .line 607
    .restart local v12    # "child":Lc8/CZf;
    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/CZf;->nextFlexChild:Lc8/CZf;

    move-object/from16 v20, v0

    .line 608
    const/16 v73, 0x0

    move-object/from16 v0, v73

    iput-object v0, v12, Lc8/CZf;->nextFlexChild:Lc8/CZf;

    goto/16 :goto_16

    .line 597
    .end local v12    # "child":Lc8/CZf;
    .restart local v55    # "maxWidth":F
    :cond_3a
    if-nez v37, :cond_38

    .line 598
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->leadingSpacing:[I

    aget v74, v74, v68

    sget-object v75, Lc8/GZf;->leading:[I

    aget v75, v75, v68

    invoke-virtual/range {v73 .. v75}, Lc8/IZf;->getWithFallback(II)F

    move-result v73

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->trailingSpacing:[I

    aget v75, v75, v68

    sget-object v76, Lc8/GZf;->trailing:[I

    aget v76, v76, v68

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    add-float v73, v73, v74

    sub-float v73, p2, v73

    sub-float v55, v73, v64

    goto :goto_17

    .line 613
    .end local v31    # "flexibleMainDim":F
    .end local v55    # "maxWidth":F
    :cond_3b
    sget-object v73, Lcom/taobao/weex/dom/flex/CSSJustify;->FLEX_START:Lcom/taobao/weex/dom/flex/CSSJustify;

    move-object/from16 v0, v43

    move-object/from16 v1, v73

    if-eq v0, v1, :cond_3c

    .line 614
    sget-object v73, Lcom/taobao/weex/dom/flex/CSSJustify;->CENTER:Lcom/taobao/weex/dom/flex/CSSJustify;

    move-object/from16 v0, v43

    move-object/from16 v1, v73

    if-ne v0, v1, :cond_3e

    .line 615
    const/high16 v73, 0x40000000    # 2.0f

    div-float v45, v67, v73

    .line 640
    :cond_3c
    :goto_18
    add-float v54, v54, v45

    .line 642
    move/from16 v32, v28

    :goto_19
    move/from16 v0, v32

    move/from16 v1, v25

    if-ge v0, v1, :cond_45

    .line 643
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lc8/CZf;->getChildAt(I)Lc8/CZf;

    move-result-object v12

    .line 644
    .restart local v12    # "child":Lc8/CZf;
    invoke-virtual {v12}, Lc8/CZf;->isShow()Z

    move-result v73

    if-eqz v73, :cond_3d

    .line 648
    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->positionType:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v73, v0

    sget-object v74, Lcom/taobao/weex/dom/flex/CSSPositionType;->ABSOLUTE:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v0, v73

    move-object/from16 v1, v74

    if-ne v0, v1, :cond_43

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->leading:[I

    aget v74, v74, v52

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-nez v73, :cond_43

    .line 653
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v74, v0

    sget-object v73, Lc8/GZf;->pos:[I

    aget v75, v73, v52

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->position:[F

    move-object/from16 v73, v0

    sget-object v76, Lc8/GZf;->leading:[I

    aget v76, v76, v52

    aget v73, v73, v76

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-eqz v73, :cond_42

    const/16 v73, 0x0

    :goto_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->leadingSpacing:[I

    aget v77, v77, v52

    sget-object v78, Lc8/GZf;->leading:[I

    aget v78, v78, v52

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    add-float v73, v73, v76

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->leadingSpacing:[I

    aget v77, v77, v52

    sget-object v78, Lc8/GZf;->leading:[I

    aget v78, v78, v52

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    add-float v73, v73, v76

    aput v73, v74, v75

    .line 642
    :cond_3d
    :goto_1b
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_19

    .line 616
    .end local v12    # "child":Lc8/CZf;
    :cond_3e
    sget-object v73, Lcom/taobao/weex/dom/flex/CSSJustify;->FLEX_END:Lcom/taobao/weex/dom/flex/CSSJustify;

    move-object/from16 v0, v43

    move-object/from16 v1, v73

    if-ne v0, v1, :cond_3f

    .line 617
    move/from16 v45, v67

    goto/16 :goto_18

    .line 618
    :cond_3f
    sget-object v73, Lcom/taobao/weex/dom/flex/CSSJustify;->SPACE_BETWEEN:Lcom/taobao/weex/dom/flex/CSSJustify;

    move-object/from16 v0, v43

    move-object/from16 v1, v73

    if-ne v0, v1, :cond_41

    .line 619
    const/16 v73, 0x0

    move/from16 v0, v67

    move/from16 v1, v73

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v67

    .line 620
    add-int v73, v30, v61

    add-int/lit8 v73, v73, -0x1

    if-eqz v73, :cond_40

    .line 621
    add-int v73, v30, v61

    add-int/lit8 v73, v73, -0x1

    move/from16 v0, v73

    int-to-float v0, v0

    move/from16 v73, v0

    div-float v10, v67, v73

    goto/16 :goto_18

    .line 624
    :cond_40
    const/4 v10, 0x0

    goto/16 :goto_18

    .line 626
    :cond_41
    sget-object v73, Lcom/taobao/weex/dom/flex/CSSJustify;->SPACE_AROUND:Lcom/taobao/weex/dom/flex/CSSJustify;

    move-object/from16 v0, v43

    move-object/from16 v1, v73

    if-ne v0, v1, :cond_3c

    .line 628
    add-int v73, v30, v61

    move/from16 v0, v73

    int-to-float v0, v0

    move/from16 v73, v0

    div-float v10, v67, v73

    .line 630
    const/high16 v73, 0x40000000    # 2.0f

    div-float v45, v10, v73

    goto/16 :goto_18

    .line 653
    .restart local v12    # "child":Lc8/CZf;
    :cond_42
    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->position:[F

    move-object/from16 v73, v0

    sget-object v76, Lc8/GZf;->leading:[I

    aget v76, v76, v52

    aget v73, v73, v76

    goto/16 :goto_1a

    .line 659
    :cond_43
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->pos:[I

    aget v74, v74, v52

    aget v75, v73, v74

    add-float v75, v75, v54

    aput v75, v73, v74

    .line 662
    if-eqz v36, :cond_44

    .line 663
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->trailing:[I

    aget v74, v74, v52

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v75, v0

    sget-object v76, Lc8/GZf;->dim:[I

    aget v76, v76, v52

    aget v75, v75, v76

    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->dim:[I

    aget v77, v77, v52

    aget v76, v76, v77

    sub-float v75, v75, v76

    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->pos:[I

    aget v77, v77, v52

    aget v76, v76, v77

    sub-float v75, v75, v76

    aput v75, v73, v74

    .line 669
    :cond_44
    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->positionType:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v73, v0

    sget-object v74, Lcom/taobao/weex/dom/flex/CSSPositionType;->RELATIVE:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v0, v73

    move-object/from16 v1, v74

    if-ne v0, v1, :cond_3d

    .line 672
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v52

    aget v73, v73, v74

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->leadingSpacing:[I

    aget v75, v75, v52

    sget-object v76, Lc8/GZf;->leading:[I

    aget v76, v76, v52

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    add-float v73, v73, v74

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->trailingSpacing:[I

    aget v75, v75, v52

    sget-object v76, Lc8/GZf;->trailing:[I

    aget v76, v76, v52

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    add-float v73, v73, v74

    add-float v73, v73, v10

    add-float v54, v54, v73

    .line 675
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v16

    aget v73, v73, v74

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->leadingSpacing:[I

    aget v75, v75, v16

    sget-object v76, Lc8/GZf;->leading:[I

    aget v76, v76, v16

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    add-float v73, v73, v74

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->trailingSpacing:[I

    aget v75, v75, v16

    sget-object v76, Lc8/GZf;->trailing:[I

    aget v76, v76, v16

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    add-float v73, v73, v74

    move/from16 v0, v16

    move/from16 v1, v73

    invoke-static {v12, v0, v1}, Lc8/GZf;->boundAxis(Lc8/CZf;IF)F

    move-result v73

    move/from16 v0, v17

    move/from16 v1, v73

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    goto/16 :goto_1b

    .line 680
    .end local v12    # "child":Lc8/CZf;
    :cond_45
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v16

    aget v15, v73, v74

    .line 681
    .local v15, "containerCrossAxis":F
    if-nez v35, :cond_46

    .line 682
    add-float v73, v17, v62

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v73

    invoke-static {v0, v1, v2}, Lc8/GZf;->boundAxis(Lc8/CZf;IF)F

    move-result v73

    move/from16 v0, v73

    move/from16 v1, v62

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 692
    :cond_46
    move/from16 v32, v27

    :goto_1c
    move/from16 v0, v32

    move/from16 v1, v25

    if-ge v0, v1, :cond_4d

    .line 693
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lc8/CZf;->getChildAt(I)Lc8/CZf;

    move-result-object v12

    .line 694
    .restart local v12    # "child":Lc8/CZf;
    invoke-virtual {v12}, Lc8/CZf;->isShow()Z

    move-result v73

    if-eqz v73, :cond_47

    .line 698
    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->positionType:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v73, v0

    sget-object v74, Lcom/taobao/weex/dom/flex/CSSPositionType;->ABSOLUTE:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v0, v73

    move-object/from16 v1, v74

    if-ne v0, v1, :cond_49

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->leading:[I

    aget v74, v74, v16

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-nez v73, :cond_49

    .line 703
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v74, v0

    sget-object v73, Lc8/GZf;->pos:[I

    aget v75, v73, v16

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->position:[F

    move-object/from16 v73, v0

    sget-object v76, Lc8/GZf;->leading:[I

    aget v76, v76, v16

    aget v73, v73, v76

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-eqz v73, :cond_48

    const/16 v73, 0x0

    :goto_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->leadingSpacing:[I

    aget v77, v77, v16

    sget-object v78, Lc8/GZf;->leading:[I

    aget v78, v78, v16

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    add-float v73, v73, v76

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->leadingSpacing:[I

    aget v77, v77, v16

    sget-object v78, Lc8/GZf;->leading:[I

    aget v78, v78, v16

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    add-float v73, v73, v76

    aput v73, v74, v75

    .line 692
    :cond_47
    :goto_1e
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_1c

    .line 703
    :cond_48
    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->position:[F

    move-object/from16 v73, v0

    sget-object v76, Lc8/GZf;->leading:[I

    aget v76, v76, v16

    aget v73, v73, v76

    goto :goto_1d

    .line 708
    :cond_49
    move/from16 v44, v46

    .line 712
    .local v44, "leadingCrossDim":F
    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->positionType:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v73, v0

    sget-object v74, Lcom/taobao/weex/dom/flex/CSSPositionType;->RELATIVE:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v0, v73

    move-object/from16 v1, v74

    if-ne v0, v1, :cond_4a

    .line 715
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lc8/GZf;->getAlignItem(Lc8/CZf;Lc8/CZf;)Lcom/taobao/weex/dom/flex/CSSAlign;

    move-result-object v6

    .line 717
    .restart local v6    # "alignItem":Lcom/taobao/weex/dom/flex/CSSAlign;
    sget-object v73, Lcom/taobao/weex/dom/flex/CSSAlign;->STRETCH:Lcom/taobao/weex/dom/flex/CSSAlign;

    move-object/from16 v0, v73

    if-ne v6, v0, :cond_4b

    .line 720
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v16

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-eqz v73, :cond_4a

    .line 721
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v16

    sub-float v75, v15, v62

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->leadingSpacing:[I

    aget v77, v77, v16

    sget-object v78, Lc8/GZf;->leading:[I

    aget v78, v78, v16

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v77, v0

    move-object/from16 v0, v77

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v77, v0

    sget-object v78, Lc8/GZf;->trailingSpacing:[I

    aget v78, v78, v16

    sget-object v79, Lc8/GZf;->trailing:[I

    aget v79, v79, v16

    invoke-virtual/range {v77 .. v79}, Lc8/IZf;->getWithFallback(II)F

    move-result v77

    add-float v76, v76, v77

    sub-float v75, v75, v76

    move/from16 v0, v16

    move/from16 v1, v75

    invoke-static {v12, v0, v1}, Lc8/GZf;->boundAxis(Lc8/CZf;IF)F

    move-result v75

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->leadingSpacing:[I

    aget v77, v77, v16

    sget-object v78, Lc8/GZf;->leading:[I

    aget v78, v78, v16

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v77, v0

    move-object/from16 v0, v77

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v77, v0

    sget-object v78, Lc8/GZf;->leadingSpacing:[I

    aget v78, v78, v16

    sget-object v79, Lc8/GZf;->leading:[I

    aget v79, v79, v16

    invoke-virtual/range {v77 .. v79}, Lc8/IZf;->getWithFallback(II)F

    move-result v77

    add-float v76, v76, v77

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v77, v0

    move-object/from16 v0, v77

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v77, v0

    sget-object v78, Lc8/GZf;->trailingSpacing:[I

    aget v78, v78, v16

    sget-object v79, Lc8/GZf;->trailing:[I

    aget v79, v79, v16

    invoke-virtual/range {v77 .. v79}, Lc8/IZf;->getWithFallback(II)F

    move-result v77

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v78, v0

    sget-object v79, Lc8/GZf;->trailingSpacing:[I

    aget v79, v79, v16

    sget-object v80, Lc8/GZf;->trailing:[I

    aget v80, v80, v16

    invoke-virtual/range {v78 .. v80}, Lc8/IZf;->getWithFallback(II)F

    move-result v78

    add-float v77, v77, v78

    add-float v76, v76, v77

    invoke-static/range {v75 .. v76}, Ljava/lang/Math;->max(FF)F

    move-result v75

    aput v75, v73, v74

    .line 743
    .end local v6    # "alignItem":Lcom/taobao/weex/dom/flex/CSSAlign;
    :cond_4a
    :goto_1f
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->pos:[I

    aget v74, v74, v16

    aget v75, v73, v74

    add-float v76, v50, v44

    add-float v75, v75, v76

    aput v75, v73, v74

    .line 746
    if-eqz v35, :cond_47

    .line 747
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->trailing:[I

    aget v74, v74, v16

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v75, v0

    sget-object v76, Lc8/GZf;->dim:[I

    aget v76, v76, v16

    aget v75, v75, v76

    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->dim:[I

    aget v77, v77, v16

    aget v76, v76, v77

    sub-float v75, v75, v76

    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->pos:[I

    aget v77, v77, v16

    aget v76, v76, v77

    sub-float v75, v75, v76

    aput v75, v73, v74

    goto/16 :goto_1e

    .line 728
    .restart local v6    # "alignItem":Lcom/taobao/weex/dom/flex/CSSAlign;
    :cond_4b
    sget-object v73, Lcom/taobao/weex/dom/flex/CSSAlign;->FLEX_START:Lcom/taobao/weex/dom/flex/CSSAlign;

    move-object/from16 v0, v73

    if-eq v6, v0, :cond_4a

    .line 731
    sub-float v73, v15, v62

    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->dim:[I

    aget v75, v75, v16

    aget v74, v74, v75

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v75, v0

    sget-object v76, Lc8/GZf;->leadingSpacing:[I

    aget v76, v76, v16

    sget-object v77, Lc8/GZf;->leading:[I

    aget v77, v77, v16

    invoke-virtual/range {v75 .. v77}, Lc8/IZf;->getWithFallback(II)F

    move-result v75

    add-float v74, v74, v75

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v75, v0

    sget-object v76, Lc8/GZf;->trailingSpacing:[I

    aget v76, v76, v16

    sget-object v77, Lc8/GZf;->trailing:[I

    aget v77, v77, v16

    invoke-virtual/range {v75 .. v77}, Lc8/IZf;->getWithFallback(II)F

    move-result v75

    add-float v74, v74, v75

    sub-float v66, v73, v74

    .line 734
    .local v66, "remainingCrossDim":F
    sget-object v73, Lcom/taobao/weex/dom/flex/CSSAlign;->CENTER:Lcom/taobao/weex/dom/flex/CSSAlign;

    move-object/from16 v0, v73

    if-ne v6, v0, :cond_4c

    .line 735
    const/high16 v73, 0x40000000    # 2.0f

    div-float v73, v66, v73

    add-float v44, v44, v73

    goto/16 :goto_1f

    .line 737
    :cond_4c
    add-float v44, v44, v66

    goto/16 :goto_1f

    .line 752
    .end local v6    # "alignItem":Lcom/taobao/weex/dom/flex/CSSAlign;
    .end local v12    # "child":Lc8/CZf;
    .end local v44    # "leadingCrossDim":F
    .end local v66    # "remainingCrossDim":F
    :cond_4d
    add-float v50, v50, v17

    .line 753
    move/from16 v0, v51

    move/from16 v1, v54

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v51

    .line 754
    add-int/lit8 v49, v49, 0x1

    .line 755
    move/from16 v70, v25

    .line 756
    goto/16 :goto_9

    .line 771
    .end local v10    # "betweenMainDim":F
    .end local v15    # "containerCrossAxis":F
    .end local v17    # "crossDim":F
    .end local v20    # "currentFlexChild":Lc8/CZf;
    .end local v27    # "firstComplexCross":I
    .end local v28    # "firstComplexMain":I
    .end local v29    # "firstFlexChild":Lc8/CZf;
    .end local v30    # "flexibleChildrenCount":I
    .end local v41    # "isSimpleStackCross":Z
    .end local v42    # "isSimpleStackMain":Z
    .end local v45    # "leadingMainDim":F
    .end local v53    # "mainContentDim":F
    .end local v54    # "mainDim":F
    .end local v61    # "nonFlexibleChildrenCount":I
    .end local v67    # "remainingMainDim":F
    .end local v71    # "totalFlexible":F
    :cond_4e
    const/16 v73, 0x1

    move/from16 v0, v49

    move/from16 v1, v73

    if-le v0, v1, :cond_59

    if-eqz v35, :cond_59

    .line 772
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v16

    aget v73, v73, v74

    sub-float v60, v73, v62

    .line 774
    .local v60, "nodeCrossAxisInnerSize":F
    sub-float v65, v60, v50

    .line 776
    .local v65, "remainingAlignContentDim":F
    const/16 v18, 0x0

    .line 777
    .local v18, "crossDimLead":F
    move/from16 v21, v46

    .line 779
    .local v21, "currentLead":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v4, v0, Lc8/DZf;->alignContent:Lcom/taobao/weex/dom/flex/CSSAlign;

    .line 780
    .local v4, "alignContent":Lcom/taobao/weex/dom/flex/CSSAlign;
    sget-object v73, Lcom/taobao/weex/dom/flex/CSSAlign;->FLEX_END:Lcom/taobao/weex/dom/flex/CSSAlign;

    move-object/from16 v0, v73

    if-ne v4, v0, :cond_51

    .line 781
    add-float v21, v21, v65

    .line 790
    :cond_4f
    :goto_20
    const/16 v24, 0x0

    .line 791
    .local v24, "endIndex":I
    const/16 v32, 0x0

    :goto_21
    move/from16 v0, v32

    move/from16 v1, v49

    if-ge v0, v1, :cond_59

    .line 792
    move/from16 v69, v24

    .line 795
    .local v69, "startIndex":I
    const/16 v48, 0x0

    .line 796
    .local v48, "lineHeight":F
    move/from16 v33, v69

    .restart local v33    # "ii":I
    :goto_22
    move/from16 v0, v33

    if-ge v0, v13, :cond_53

    .line 797
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lc8/CZf;->getChildAt(I)Lc8/CZf;

    move-result-object v12

    .line 799
    .restart local v12    # "child":Lc8/CZf;
    invoke-virtual {v12}, Lc8/CZf;->isShow()Z

    move-result v73

    if-eqz v73, :cond_50

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->positionType:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v73, v0

    sget-object v74, Lcom/taobao/weex/dom/flex/CSSPositionType;->RELATIVE:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v0, v73

    move-object/from16 v1, v74

    if-ne v0, v1, :cond_50

    .line 802
    iget v0, v12, Lc8/CZf;->lineIndex:I

    move/from16 v73, v0

    move/from16 v0, v73

    move/from16 v1, v32

    if-ne v0, v1, :cond_53

    .line 805
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v16

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-nez v73, :cond_50

    .line 806
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v16

    aget v73, v73, v74

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v74, v0

    move-object/from16 v0, v74

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v74, v0

    sget-object v75, Lc8/GZf;->leadingSpacing:[I

    aget v75, v75, v16

    sget-object v76, Lc8/GZf;->leading:[I

    aget v76, v76, v16

    invoke-virtual/range {v74 .. v76}, Lc8/IZf;->getWithFallback(II)F

    move-result v74

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v75, v0

    sget-object v76, Lc8/GZf;->trailingSpacing:[I

    aget v76, v76, v16

    sget-object v77, Lc8/GZf;->trailing:[I

    aget v77, v77, v16

    invoke-virtual/range {v75 .. v77}, Lc8/IZf;->getWithFallback(II)F

    move-result v75

    add-float v74, v74, v75

    add-float v73, v73, v74

    move/from16 v0, v48

    move/from16 v1, v73

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v48

    .line 796
    :cond_50
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_22

    .line 782
    .end local v12    # "child":Lc8/CZf;
    .end local v24    # "endIndex":I
    .end local v33    # "ii":I
    .end local v48    # "lineHeight":F
    .end local v69    # "startIndex":I
    :cond_51
    sget-object v73, Lcom/taobao/weex/dom/flex/CSSAlign;->CENTER:Lcom/taobao/weex/dom/flex/CSSAlign;

    move-object/from16 v0, v73

    if-ne v4, v0, :cond_52

    .line 783
    const/high16 v73, 0x40000000    # 2.0f

    div-float v73, v65, v73

    add-float v21, v21, v73

    goto/16 :goto_20

    .line 784
    :cond_52
    sget-object v73, Lcom/taobao/weex/dom/flex/CSSAlign;->STRETCH:Lcom/taobao/weex/dom/flex/CSSAlign;

    move-object/from16 v0, v73

    if-ne v4, v0, :cond_4f

    .line 785
    cmpl-float v73, v60, v50

    if-lez v73, :cond_4f

    .line 786
    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v73, v0

    div-float v18, v65, v73

    goto/16 :goto_20

    .line 812
    .restart local v24    # "endIndex":I
    .restart local v33    # "ii":I
    .restart local v48    # "lineHeight":F
    .restart local v69    # "startIndex":I
    :cond_53
    move/from16 v24, v33

    .line 813
    add-float v48, v48, v18

    .line 815
    move/from16 v33, v69

    :goto_23
    move/from16 v0, v33

    move/from16 v1, v24

    if-ge v0, v1, :cond_58

    .line 816
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lc8/CZf;->getChildAt(I)Lc8/CZf;

    move-result-object v12

    .line 818
    .restart local v12    # "child":Lc8/CZf;
    invoke-virtual {v12}, Lc8/CZf;->isShow()Z

    move-result v73

    if-eqz v73, :cond_54

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->positionType:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v73, v0

    sget-object v74, Lcom/taobao/weex/dom/flex/CSSPositionType;->RELATIVE:Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-object/from16 v0, v73

    move-object/from16 v1, v74

    if-ne v0, v1, :cond_54

    .line 822
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lc8/GZf;->getAlignItem(Lc8/CZf;Lc8/CZf;)Lcom/taobao/weex/dom/flex/CSSAlign;

    move-result-object v5

    .line 823
    .local v5, "alignContentAlignItem":Lcom/taobao/weex/dom/flex/CSSAlign;
    sget-object v73, Lcom/taobao/weex/dom/flex/CSSAlign;->FLEX_START:Lcom/taobao/weex/dom/flex/CSSAlign;

    move-object/from16 v0, v73

    if-ne v5, v0, :cond_55

    .line 824
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->pos:[I

    aget v74, v74, v16

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v75, v0

    sget-object v76, Lc8/GZf;->leadingSpacing:[I

    aget v76, v76, v16

    sget-object v77, Lc8/GZf;->leading:[I

    aget v77, v77, v16

    invoke-virtual/range {v75 .. v77}, Lc8/IZf;->getWithFallback(II)F

    move-result v75

    add-float v75, v75, v21

    aput v75, v73, v74

    .line 815
    .end local v5    # "alignContentAlignItem":Lcom/taobao/weex/dom/flex/CSSAlign;
    :cond_54
    :goto_24
    add-int/lit8 v33, v33, 0x1

    goto :goto_23

    .line 825
    .restart local v5    # "alignContentAlignItem":Lcom/taobao/weex/dom/flex/CSSAlign;
    :cond_55
    sget-object v73, Lcom/taobao/weex/dom/flex/CSSAlign;->FLEX_END:Lcom/taobao/weex/dom/flex/CSSAlign;

    move-object/from16 v0, v73

    if-ne v5, v0, :cond_56

    .line 826
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->pos:[I

    aget v74, v74, v16

    add-float v75, v21, v48

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->trailingSpacing:[I

    aget v77, v77, v16

    sget-object v78, Lc8/GZf;->trailing:[I

    aget v78, v78, v16

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    sub-float v75, v75, v76

    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->dim:[I

    aget v77, v77, v16

    aget v76, v76, v77

    sub-float v75, v75, v76

    aput v75, v73, v74

    goto :goto_24

    .line 827
    :cond_56
    sget-object v73, Lcom/taobao/weex/dom/flex/CSSAlign;->CENTER:Lcom/taobao/weex/dom/flex/CSSAlign;

    move-object/from16 v0, v73

    if-ne v5, v0, :cond_57

    .line 828
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v16

    aget v14, v73, v74

    .line 829
    .local v14, "childHeight":F
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->pos:[I

    aget v74, v74, v16

    sub-float v75, v48, v14

    const/high16 v76, 0x40000000    # 2.0f

    div-float v75, v75, v76

    add-float v75, v75, v21

    aput v75, v73, v74

    goto :goto_24

    .line 830
    .end local v14    # "childHeight":F
    :cond_57
    sget-object v73, Lcom/taobao/weex/dom/flex/CSSAlign;->STRETCH:Lcom/taobao/weex/dom/flex/CSSAlign;

    move-object/from16 v0, v73

    if-ne v5, v0, :cond_54

    .line 831
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->pos:[I

    aget v74, v74, v16

    iget-object v0, v12, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v75, v0

    sget-object v76, Lc8/GZf;->leadingSpacing:[I

    aget v76, v76, v16

    sget-object v77, Lc8/GZf;->leading:[I

    aget v77, v77, v16

    invoke-virtual/range {v75 .. v77}, Lc8/IZf;->getWithFallback(II)F

    move-result v75

    add-float v75, v75, v21

    aput v75, v73, v74

    goto/16 :goto_24

    .line 837
    .end local v5    # "alignContentAlignItem":Lcom/taobao/weex/dom/flex/CSSAlign;
    .end local v12    # "child":Lc8/CZf;
    :cond_58
    add-float v21, v21, v48

    .line 791
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_21

    .line 841
    .end local v4    # "alignContent":Lcom/taobao/weex/dom/flex/CSSAlign;
    .end local v18    # "crossDimLead":F
    .end local v21    # "currentLead":F
    .end local v24    # "endIndex":I
    .end local v33    # "ii":I
    .end local v48    # "lineHeight":F
    .end local v60    # "nodeCrossAxisInnerSize":F
    .end local v65    # "remainingAlignContentDim":F
    .end local v69    # "startIndex":I
    :cond_59
    const/16 v58, 0x0

    .line 842
    .local v58, "needsMainTrailingPos":Z
    const/16 v57, 0x0

    .line 846
    .local v57, "needsCrossTrailingPos":Z
    if-nez v36, :cond_5b

    .line 847
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v52

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v75, v0

    sget-object v76, Lc8/GZf;->trailingSpacing:[I

    aget v76, v76, v52

    sget-object v77, Lc8/GZf;->trailing:[I

    aget v77, v77, v52

    invoke-virtual/range {v75 .. v77}, Lc8/IZf;->getWithFallback(II)F

    move-result v75

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->trailingSpacing:[I

    aget v77, v77, v52

    sget-object v78, Lc8/GZf;->trailing:[I

    aget v78, v78, v52

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    add-float v75, v75, v76

    add-float v75, v75, v51

    move-object/from16 v0, p1

    move/from16 v1, v52

    move/from16 v2, v75

    invoke-static {v0, v1, v2}, Lc8/GZf;->boundAxis(Lc8/CZf;IF)F

    move-result v75

    move/from16 v0, v75

    move/from16 v1, v63

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v75

    aput v75, v73, v74

    .line 855
    sget v73, Lc8/GZf;->CSS_FLEX_DIRECTION_ROW_REVERSE:I

    move/from16 v0, v52

    move/from16 v1, v73

    if-eq v0, v1, :cond_5a

    sget v73, Lc8/GZf;->CSS_FLEX_DIRECTION_COLUMN_REVERSE:I

    move/from16 v0, v52

    move/from16 v1, v73

    if-ne v0, v1, :cond_5b

    .line 857
    :cond_5a
    const/16 v58, 0x1

    .line 861
    :cond_5b
    if-nez v35, :cond_5d

    .line 862
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v16

    add-float v75, v50, v62

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v75

    invoke-static {v0, v1, v2}, Lc8/GZf;->boundAxis(Lc8/CZf;IF)F

    move-result v75

    move/from16 v0, v75

    move/from16 v1, v62

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v75

    aput v75, v73, v74

    .line 870
    sget v73, Lc8/GZf;->CSS_FLEX_DIRECTION_ROW_REVERSE:I

    move/from16 v0, v16

    move/from16 v1, v73

    if-eq v0, v1, :cond_5c

    sget v73, Lc8/GZf;->CSS_FLEX_DIRECTION_COLUMN_REVERSE:I

    move/from16 v0, v16

    move/from16 v1, v73

    if-ne v0, v1, :cond_5d

    .line 872
    :cond_5c
    const/16 v57, 0x1

    .line 877
    :cond_5d
    if-nez v58, :cond_5e

    if-eqz v57, :cond_61

    .line 878
    :cond_5e
    const/16 v32, 0x0

    :goto_25
    move/from16 v0, v32

    if-ge v0, v13, :cond_61

    .line 879
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lc8/CZf;->getChildAt(I)Lc8/CZf;

    move-result-object v12

    .line 880
    .restart local v12    # "child":Lc8/CZf;
    invoke-virtual {v12}, Lc8/CZf;->isShow()Z

    move-result v73

    if-eqz v73, :cond_60

    .line 884
    if-eqz v58, :cond_5f

    .line 885
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->trailing:[I

    aget v74, v74, v52

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v75, v0

    sget-object v76, Lc8/GZf;->dim:[I

    aget v76, v76, v52

    aget v75, v75, v76

    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->dim:[I

    aget v77, v77, v52

    aget v76, v76, v77

    sub-float v75, v75, v76

    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->pos:[I

    aget v77, v77, v52

    aget v76, v76, v77

    sub-float v75, v75, v76

    aput v75, v73, v74

    .line 888
    :cond_5f
    if-eqz v57, :cond_60

    .line 889
    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->trailing:[I

    aget v74, v74, v16

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v75, v0

    move-object/from16 v0, v75

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v75, v0

    sget-object v76, Lc8/GZf;->dim:[I

    aget v76, v76, v16

    aget v75, v75, v76

    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->dim:[I

    aget v77, v77, v16

    aget v76, v76, v77

    sub-float v75, v75, v76

    iget-object v0, v12, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->pos:[I

    aget v77, v77, v16

    aget v76, v76, v77

    sub-float v75, v75, v76

    aput v75, v73, v74

    .line 878
    :cond_60
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_25

    .line 895
    .end local v12    # "child":Lc8/CZf;
    :cond_61
    move-object/from16 v19, v26

    .line 896
    :goto_26
    if-eqz v19, :cond_1

    .line 897
    invoke-virtual/range {v19 .. v19}, Lc8/CZf;->isShow()Z

    move-result v73

    if-eqz v73, :cond_69

    .line 900
    const/16 v33, 0x0

    .restart local v33    # "ii":I
    :goto_27
    const/16 v73, 0x2

    move/from16 v0, v33

    move/from16 v1, v73

    if-ge v0, v1, :cond_69

    .line 901
    if-eqz v33, :cond_65

    sget v8, Lc8/GZf;->CSS_FLEX_DIRECTION_ROW:I

    .line 903
    .restart local v8    # "axis":I
    :goto_28
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v8

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-nez v73, :cond_63

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v8

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-nez v73, :cond_62

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->dim:[I

    aget v74, v74, v8

    aget v73, v73, v74

    move/from16 v0, v73

    float-to-double v0, v0

    move-wide/from16 v74, v0

    const-wide/16 v76, 0x0

    cmpl-double v73, v74, v76

    if-gez v73, :cond_63

    :cond_62
    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->leading:[I

    aget v74, v74, v8

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-nez v73, :cond_63

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->trailing:[I

    aget v74, v74, v8

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-nez v73, :cond_63

    .line 907
    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v74, v0

    sget-object v73, Lc8/GZf;->dim:[I

    aget v75, v73, v8

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v76, Lc8/GZf;->dim:[I

    aget v76, v76, v8

    aget v73, v73, v76

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->leadingSpacing:[I

    aget v77, v77, v8

    sget-object v78, Lc8/GZf;->leading:[I

    aget v78, v78, v8

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v77, v0

    move-object/from16 v0, v77

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v77, v0

    sget-object v78, Lc8/GZf;->trailingSpacing:[I

    aget v78, v78, v8

    sget-object v79, Lc8/GZf;->trailing:[I

    aget v79, v79, v8

    invoke-virtual/range {v77 .. v79}, Lc8/IZf;->getWithFallback(II)F

    move-result v77

    add-float v76, v76, v77

    sub-float v73, v73, v76

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->leadingSpacing:[I

    aget v77, v77, v8

    sget-object v78, Lc8/GZf;->leading:[I

    aget v78, v78, v8

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v77, v0

    move-object/from16 v0, v77

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    move-object/from16 v77, v0

    sget-object v78, Lc8/GZf;->trailingSpacing:[I

    aget v78, v78, v8

    sget-object v79, Lc8/GZf;->trailing:[I

    aget v79, v79, v8

    invoke-virtual/range {v77 .. v79}, Lc8/IZf;->getWithFallback(II)F

    move-result v77

    add-float v76, v76, v77

    sub-float v76, v73, v76

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->position:[F

    move-object/from16 v73, v0

    sget-object v77, Lc8/GZf;->leading:[I

    aget v77, v77, v8

    aget v73, v73, v77

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-eqz v73, :cond_66

    const/16 v73, 0x0

    :goto_29
    sub-float v76, v76, v73

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->position:[F

    move-object/from16 v73, v0

    sget-object v77, Lc8/GZf;->trailing:[I

    aget v77, v77, v8

    aget v73, v73, v77

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-eqz v73, :cond_67

    const/16 v73, 0x0

    :goto_2a
    sub-float v73, v76, v73

    move-object/from16 v0, v19

    move/from16 v1, v73

    invoke-static {v0, v8, v1}, Lc8/GZf;->boundAxis(Lc8/CZf;IF)F

    move-result v73

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->leadingSpacing:[I

    aget v77, v77, v8

    sget-object v78, Lc8/GZf;->leading:[I

    aget v78, v78, v8

    invoke-virtual/range {v76 .. v78}, Lc8/IZf;->getWithFallback(II)F

    move-result v76

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v77, v0

    move-object/from16 v0, v77

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v77, v0

    sget-object v78, Lc8/GZf;->leadingSpacing:[I

    aget v78, v78, v8

    sget-object v79, Lc8/GZf;->leading:[I

    aget v79, v79, v8

    invoke-virtual/range {v77 .. v79}, Lc8/IZf;->getWithFallback(II)F

    move-result v77

    add-float v76, v76, v77

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v77, v0

    move-object/from16 v0, v77

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    move-object/from16 v77, v0

    sget-object v78, Lc8/GZf;->trailingSpacing:[I

    aget v78, v78, v8

    sget-object v79, Lc8/GZf;->trailing:[I

    aget v79, v79, v8

    invoke-virtual/range {v77 .. v79}, Lc8/IZf;->getWithFallback(II)F

    move-result v77

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    move-object/from16 v78, v0

    sget-object v79, Lc8/GZf;->trailingSpacing:[I

    aget v79, v79, v8

    sget-object v80, Lc8/GZf;->trailing:[I

    aget v80, v80, v8

    invoke-virtual/range {v78 .. v80}, Lc8/IZf;->getWithFallback(II)F

    move-result v78

    add-float v77, v77, v78

    add-float v76, v76, v77

    move/from16 v0, v73

    move/from16 v1, v76

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v73

    aput v73, v74, v75

    .line 919
    :cond_63
    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->trailing:[I

    aget v74, v74, v8

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-nez v73, :cond_64

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->position:[F

    move-object/from16 v73, v0

    sget-object v74, Lc8/GZf;->leading:[I

    aget v74, v74, v8

    aget v73, v73, v74

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-eqz v73, :cond_64

    .line 921
    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->position:[F

    move-object/from16 v74, v0

    sget-object v73, Lc8/GZf;->leading:[I

    aget v75, v73, v8

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v73, v0

    sget-object v76, Lc8/GZf;->dim:[I

    aget v76, v76, v8

    aget v73, v73, v76

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/CZf;->csslayout:Lc8/zZf;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    move-object/from16 v76, v0

    sget-object v77, Lc8/GZf;->dim:[I

    aget v77, v77, v8

    aget v76, v76, v77

    sub-float v76, v73, v76

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->position:[F

    move-object/from16 v73, v0

    sget-object v77, Lc8/GZf;->trailing:[I

    aget v77, v77, v8

    aget v73, v73, v77

    invoke-static/range {v73 .. v73}, Ljava/lang/Float;->isNaN(F)Z

    move-result v73

    if-eqz v73, :cond_68

    const/16 v73, 0x0

    :goto_2b
    sub-float v73, v76, v73

    aput v73, v74, v75

    .line 900
    :cond_64
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_27

    .line 901
    .end local v8    # "axis":I
    :cond_65
    sget v8, Lc8/GZf;->CSS_FLEX_DIRECTION_COLUMN:I

    goto/16 :goto_28

    .line 907
    .restart local v8    # "axis":I
    :cond_66
    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->position:[F

    move-object/from16 v73, v0

    sget-object v77, Lc8/GZf;->leading:[I

    aget v77, v77, v8

    aget v73, v73, v77

    goto/16 :goto_29

    :cond_67
    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->position:[F

    move-object/from16 v73, v0

    sget-object v77, Lc8/GZf;->trailing:[I

    aget v77, v77, v8

    aget v73, v73, v77

    goto/16 :goto_2a

    .line 921
    :cond_68
    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/CZf;->cssstyle:Lc8/DZf;

    move-object/from16 v73, v0

    move-object/from16 v0, v73

    iget-object v0, v0, Lc8/DZf;->position:[F

    move-object/from16 v73, v0

    sget-object v77, Lc8/GZf;->trailing:[I

    aget v77, v77, v8

    aget v73, v73, v77

    goto :goto_2b

    .line 928
    .end local v8    # "axis":I
    .end local v33    # "ii":I
    :cond_69
    move-object/from16 v12, v19

    .line 929
    .restart local v12    # "child":Lc8/CZf;
    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/CZf;->nextAbsoluteChild:Lc8/CZf;

    move-object/from16 v19, v0

    .line 930
    const/16 v73, 0x0

    move-object/from16 v0, v73

    iput-object v0, v12, Lc8/CZf;->nextAbsoluteChild:Lc8/CZf;

    goto/16 :goto_26
.end method

.method static needsRelayout(Lc8/CZf;F)Z
    .locals 4
    .param p0, "node"    # Lc8/CZf;
    .param p1, "parentMaxWidth"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0}, Lc8/CZf;->isDirty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lc8/CZf;->lastLayout:Lc8/EZf;

    iget v2, v2, Lc8/EZf;->requestedHeight:F

    iget-object v3, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    iget-object v3, v3, Lc8/zZf;->dimensions:[F

    aget v3, v3, v1

    invoke-static {v2, v3}, Lc8/FZf;->floatsEqual(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/CZf;->lastLayout:Lc8/EZf;

    iget v2, v2, Lc8/EZf;->requestedWidth:F

    iget-object v3, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    iget-object v3, v3, Lc8/zZf;->dimensions:[F

    aget v3, v3, v0

    invoke-static {v2, v3}, Lc8/FZf;->floatsEqual(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/CZf;->lastLayout:Lc8/EZf;

    iget v2, v2, Lc8/EZf;->parentMaxWidth:F

    invoke-static {v2, p1}, Lc8/FZf;->floatsEqual(FF)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private static resolveAxis(ILcom/taobao/weex/dom/flex/CSSDirection;)I
    .locals 1
    .param p0, "axis"    # I
    .param p1, "direction"    # Lcom/taobao/weex/dom/flex/CSSDirection;

    .prologue
    .line 135
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSDirection;->RTL:Lcom/taobao/weex/dom/flex/CSSDirection;

    if-ne p1, v0, :cond_0

    .line 136
    sget v0, Lc8/GZf;->CSS_FLEX_DIRECTION_ROW:I

    if-ne p0, v0, :cond_1

    .line 137
    sget p0, Lc8/GZf;->CSS_FLEX_DIRECTION_ROW_REVERSE:I

    .line 143
    .end local p0    # "axis":I
    :cond_0
    :goto_0
    return p0

    .line 138
    .restart local p0    # "axis":I
    :cond_1
    sget v0, Lc8/GZf;->CSS_FLEX_DIRECTION_ROW_REVERSE:I

    if-ne p0, v0, :cond_0

    .line 139
    sget p0, Lc8/GZf;->CSS_FLEX_DIRECTION_ROW:I

    goto :goto_0
.end method

.method private static resolveDirection(Lc8/CZf;Lcom/taobao/weex/dom/flex/CSSDirection;)Lcom/taobao/weex/dom/flex/CSSDirection;
    .locals 2
    .param p0, "node"    # Lc8/CZf;
    .param p1, "parentDirection"    # Lcom/taobao/weex/dom/flex/CSSDirection;

    .prologue
    .line 147
    iget-object v1, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v1, Lc8/DZf;->direction:Lcom/taobao/weex/dom/flex/CSSDirection;

    .line 148
    .local v0, "direction":Lcom/taobao/weex/dom/flex/CSSDirection;
    sget-object v1, Lcom/taobao/weex/dom/flex/CSSDirection;->INHERIT:Lcom/taobao/weex/dom/flex/CSSDirection;

    if-ne v0, v1, :cond_0

    .line 149
    if-nez p1, :cond_1

    sget-object v0, Lcom/taobao/weex/dom/flex/CSSDirection;->LTR:Lcom/taobao/weex/dom/flex/CSSDirection;

    .line 152
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p1

    .line 149
    goto :goto_0
.end method

.method private static setDimensionFromStyle(Lc8/CZf;I)V
    .locals 6
    .param p0, "node"    # Lc8/CZf;
    .param p1, "axis"    # I

    .prologue
    .line 103
    iget-object v1, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    iget-object v1, v1, Lc8/zZf;->dimensions:[F

    sget-object v2, Lc8/GZf;->dim:[I

    aget v2, v2, p1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v1, v1, Lc8/DZf;->dimensions:[F

    sget-object v2, Lc8/GZf;->dim:[I

    aget v2, v2, p1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v1, v1, Lc8/DZf;->dimensions:[F

    sget-object v2, Lc8/GZf;->dim:[I

    aget v2, v2, p1

    aget v1, v1, v2

    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-lez v1, :cond_0

    .line 113
    iget-object v1, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v1, v1, Lc8/DZf;->dimensions:[F

    sget-object v2, Lc8/GZf;->dim:[I

    aget v2, v2, p1

    aget v1, v1, v2

    invoke-static {p0, p1, v1}, Lc8/GZf;->boundAxis(Lc8/CZf;IF)F

    move-result v1

    iget-object v2, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v2, v2, Lc8/DZf;->padding:Lc8/IZf;

    sget-object v3, Lc8/GZf;->leadingSpacing:[I

    aget v3, v3, p1

    sget-object v4, Lc8/GZf;->leading:[I

    aget v4, v4, p1

    invoke-virtual {v2, v3, v4}, Lc8/IZf;->getWithFallback(II)F

    move-result v2

    iget-object v3, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v3, v3, Lc8/DZf;->padding:Lc8/IZf;

    sget-object v4, Lc8/GZf;->trailingSpacing:[I

    aget v4, v4, p1

    sget-object v5, Lc8/GZf;->trailing:[I

    aget v5, v5, p1

    invoke-virtual {v3, v4, v5}, Lc8/IZf;->getWithFallback(II)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v3, v3, Lc8/DZf;->border:Lc8/IZf;

    sget-object v4, Lc8/GZf;->leadingSpacing:[I

    aget v4, v4, p1

    sget-object v5, Lc8/GZf;->leading:[I

    aget v5, v5, p1

    invoke-virtual {v3, v4, v5}, Lc8/IZf;->getWithFallback(II)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v3, v3, Lc8/DZf;->border:Lc8/IZf;

    sget-object v4, Lc8/GZf;->trailingSpacing:[I

    aget v4, v4, p1

    sget-object v5, Lc8/GZf;->trailing:[I

    aget v5, v5, p1

    invoke-virtual {v3, v4, v5}, Lc8/IZf;->getWithFallback(II)F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 119
    .local v0, "maxLayoutDimension":F
    iget-object v1, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    iget-object v1, v1, Lc8/zZf;->dimensions:[F

    sget-object v2, Lc8/GZf;->dim:[I

    aget v2, v2, p1

    aput v0, v1, v2

    goto/16 :goto_0
.end method
