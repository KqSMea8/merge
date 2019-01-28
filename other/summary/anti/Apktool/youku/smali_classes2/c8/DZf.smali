.class public Lc8/DZf;
.super Ljava/lang/Object;
.source "CSSStyle.java"


# instance fields
.field public alignContent:Lcom/taobao/weex/dom/flex/CSSAlign;

.field public alignItems:Lcom/taobao/weex/dom/flex/CSSAlign;

.field public alignSelf:Lcom/taobao/weex/dom/flex/CSSAlign;

.field public border:Lc8/IZf;

.field public dimensions:[F

.field public direction:Lcom/taobao/weex/dom/flex/CSSDirection;

.field public flex:F

.field public flexDirection:Lcom/taobao/weex/dom/flex/CSSFlexDirection;

.field public flexWrap:Lcom/taobao/weex/dom/flex/CSSWrap;

.field public justifyContent:Lcom/taobao/weex/dom/flex/CSSJustify;

.field public margin:Lc8/IZf;

.field public maxHeight:F

.field public maxWidth:F

.field public minHeight:F

.field public minWidth:F

.field public padding:Lc8/IZf;

.field public position:[F

.field public positionType:Lcom/taobao/weex/dom/flex/CSSPositionType;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x7fc00000    # NaNf

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lc8/IZf;

    invoke-direct {v0}, Lc8/IZf;-><init>()V

    iput-object v0, p0, Lc8/DZf;->margin:Lc8/IZf;

    .line 33
    new-instance v0, Lc8/IZf;

    invoke-direct {v0}, Lc8/IZf;-><init>()V

    iput-object v0, p0, Lc8/DZf;->padding:Lc8/IZf;

    .line 34
    new-instance v0, Lc8/IZf;

    invoke-direct {v0}, Lc8/IZf;-><init>()V

    iput-object v0, p0, Lc8/DZf;->border:Lc8/IZf;

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lc8/DZf;->position:[F

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lc8/DZf;->dimensions:[F

    .line 39
    iput v1, p0, Lc8/DZf;->minWidth:F

    .line 40
    iput v1, p0, Lc8/DZf;->minHeight:F

    .line 42
    iput v1, p0, Lc8/DZf;->maxWidth:F

    .line 43
    iput v1, p0, Lc8/DZf;->maxHeight:F

    .line 46
    invoke-virtual {p0}, Lc8/DZf;->reset()V

    .line 47
    return-void
.end method


# virtual methods
.method public copy(Lc8/DZf;)V
    .locals 6
    .param p1, "cssStyle"    # Lc8/DZf;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    iget-object v0, p1, Lc8/DZf;->direction:Lcom/taobao/weex/dom/flex/CSSDirection;

    iput-object v0, p0, Lc8/DZf;->direction:Lcom/taobao/weex/dom/flex/CSSDirection;

    .line 76
    iget-object v0, p1, Lc8/DZf;->flexDirection:Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    iput-object v0, p0, Lc8/DZf;->flexDirection:Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    .line 77
    iget-object v0, p1, Lc8/DZf;->justifyContent:Lcom/taobao/weex/dom/flex/CSSJustify;

    iput-object v0, p0, Lc8/DZf;->justifyContent:Lcom/taobao/weex/dom/flex/CSSJustify;

    .line 78
    iget-object v0, p1, Lc8/DZf;->alignContent:Lcom/taobao/weex/dom/flex/CSSAlign;

    iput-object v0, p0, Lc8/DZf;->alignContent:Lcom/taobao/weex/dom/flex/CSSAlign;

    .line 79
    iget-object v0, p1, Lc8/DZf;->alignItems:Lcom/taobao/weex/dom/flex/CSSAlign;

    iput-object v0, p0, Lc8/DZf;->alignItems:Lcom/taobao/weex/dom/flex/CSSAlign;

    .line 80
    iget-object v0, p1, Lc8/DZf;->alignSelf:Lcom/taobao/weex/dom/flex/CSSAlign;

    iput-object v0, p0, Lc8/DZf;->alignSelf:Lcom/taobao/weex/dom/flex/CSSAlign;

    .line 81
    iget-object v0, p1, Lc8/DZf;->positionType:Lcom/taobao/weex/dom/flex/CSSPositionType;

    iput-object v0, p0, Lc8/DZf;->positionType:Lcom/taobao/weex/dom/flex/CSSPositionType;

    .line 82
    iget-object v0, p1, Lc8/DZf;->flexWrap:Lcom/taobao/weex/dom/flex/CSSWrap;

    iput-object v0, p0, Lc8/DZf;->flexWrap:Lcom/taobao/weex/dom/flex/CSSWrap;

    .line 83
    iget v0, p1, Lc8/DZf;->flex:F

    iput v0, p0, Lc8/DZf;->flex:F

    .line 84
    iget-object v0, p1, Lc8/DZf;->margin:Lc8/IZf;

    iput-object v0, p0, Lc8/DZf;->margin:Lc8/IZf;

    .line 85
    iget-object v0, p1, Lc8/DZf;->padding:Lc8/IZf;

    iput-object v0, p0, Lc8/DZf;->padding:Lc8/IZf;

    .line 86
    iget-object v0, p1, Lc8/DZf;->border:Lc8/IZf;

    iput-object v0, p0, Lc8/DZf;->border:Lc8/IZf;

    .line 87
    iget-object v0, p0, Lc8/DZf;->position:[F

    iget-object v1, p1, Lc8/DZf;->position:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 88
    iget-object v0, p0, Lc8/DZf;->position:[F

    iget-object v1, p1, Lc8/DZf;->position:[F

    aget v1, v1, v5

    aput v1, v0, v5

    .line 89
    iget-object v0, p0, Lc8/DZf;->position:[F

    iget-object v1, p1, Lc8/DZf;->position:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 90
    iget-object v0, p0, Lc8/DZf;->position:[F

    iget-object v1, p1, Lc8/DZf;->position:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 91
    iget-object v0, p0, Lc8/DZf;->dimensions:[F

    iget-object v1, p1, Lc8/DZf;->dimensions:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 92
    iget-object v0, p0, Lc8/DZf;->dimensions:[F

    iget-object v1, p1, Lc8/DZf;->dimensions:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 93
    iget v0, p1, Lc8/DZf;->minWidth:F

    iput v0, p0, Lc8/DZf;->minWidth:F

    .line 94
    iget v0, p1, Lc8/DZf;->minHeight:F

    iput v0, p0, Lc8/DZf;->minHeight:F

    .line 95
    iget v0, p1, Lc8/DZf;->maxWidth:F

    iput v0, p0, Lc8/DZf;->maxWidth:F

    .line 96
    iget v0, p1, Lc8/DZf;->maxHeight:F

    iput v0, p0, Lc8/DZf;->maxHeight:F

    .line 97
    return-void
.end method

.method reset()V
    .locals 2

    .prologue
    const/high16 v1, 0x7fc00000    # NaNf

    .line 50
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSDirection;->INHERIT:Lcom/taobao/weex/dom/flex/CSSDirection;

    iput-object v0, p0, Lc8/DZf;->direction:Lcom/taobao/weex/dom/flex/CSSDirection;

    .line 51
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSFlexDirection;->COLUMN:Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    iput-object v0, p0, Lc8/DZf;->flexDirection:Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    .line 52
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSJustify;->FLEX_START:Lcom/taobao/weex/dom/flex/CSSJustify;

    iput-object v0, p0, Lc8/DZf;->justifyContent:Lcom/taobao/weex/dom/flex/CSSJustify;

    .line 53
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSAlign;->FLEX_START:Lcom/taobao/weex/dom/flex/CSSAlign;

    iput-object v0, p0, Lc8/DZf;->alignContent:Lcom/taobao/weex/dom/flex/CSSAlign;

    .line 54
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSAlign;->STRETCH:Lcom/taobao/weex/dom/flex/CSSAlign;

    iput-object v0, p0, Lc8/DZf;->alignItems:Lcom/taobao/weex/dom/flex/CSSAlign;

    .line 55
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSAlign;->AUTO:Lcom/taobao/weex/dom/flex/CSSAlign;

    iput-object v0, p0, Lc8/DZf;->alignSelf:Lcom/taobao/weex/dom/flex/CSSAlign;

    .line 56
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSPositionType;->RELATIVE:Lcom/taobao/weex/dom/flex/CSSPositionType;

    iput-object v0, p0, Lc8/DZf;->positionType:Lcom/taobao/weex/dom/flex/CSSPositionType;

    .line 57
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSWrap;->NOWRAP:Lcom/taobao/weex/dom/flex/CSSWrap;

    iput-object v0, p0, Lc8/DZf;->flexWrap:Lcom/taobao/weex/dom/flex/CSSWrap;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lc8/DZf;->flex:F

    .line 60
    iget-object v0, p0, Lc8/DZf;->margin:Lc8/IZf;

    invoke-virtual {v0}, Lc8/IZf;->reset()V

    .line 61
    iget-object v0, p0, Lc8/DZf;->padding:Lc8/IZf;

    invoke-virtual {v0}, Lc8/IZf;->reset()V

    .line 62
    iget-object v0, p0, Lc8/DZf;->border:Lc8/IZf;

    invoke-virtual {v0}, Lc8/IZf;->reset()V

    .line 64
    iget-object v0, p0, Lc8/DZf;->position:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 65
    iget-object v0, p0, Lc8/DZf;->dimensions:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 67
    iput v1, p0, Lc8/DZf;->minWidth:F

    .line 68
    iput v1, p0, Lc8/DZf;->minHeight:F

    .line 70
    iput v1, p0, Lc8/DZf;->maxWidth:F

    .line 71
    iput v1, p0, Lc8/DZf;->maxHeight:F

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "direction ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/DZf;->direction:Lcom/taobao/weex/dom/flex/CSSDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "flexDirection ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/DZf;->flexDirection:Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "justifyContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/DZf;->justifyContent:Lcom/taobao/weex/dom/flex/CSSJustify;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "alignContent ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/DZf;->alignContent:Lcom/taobao/weex/dom/flex/CSSAlign;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "alignItems ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/DZf;->alignItems:Lcom/taobao/weex/dom/flex/CSSAlign;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "alignSelf ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/DZf;->alignSelf:Lcom/taobao/weex/dom/flex/CSSAlign;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "positionType ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/DZf;->positionType:Lcom/taobao/weex/dom/flex/CSSPositionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "flexWrap ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/DZf;->flexWrap:Lcom/taobao/weex/dom/flex/CSSWrap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "flex ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/DZf;->flex:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "margin ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/DZf;->margin:Lc8/IZf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "padding ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/DZf;->padding:Lc8/IZf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "border ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/DZf;->border:Lc8/IZf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "position[POSITION_TOP] ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/DZf;->position:[F

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "position[POSITION_BOTTOM] ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/DZf;->position:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "position[POSITION_LEFT] ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/DZf;->position:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "position[POSITION_RIGHT] ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/DZf;->position:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "position[DIMENSION_WIDTH] ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/DZf;->position:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "position[DIMENSION_HEIGHT] ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/DZf;->position:[F

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "minWidth ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/DZf;->minWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "minHeight ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/DZf;->minHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "maxWidth ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/DZf;->maxWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "maxHeight ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/DZf;->maxHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
