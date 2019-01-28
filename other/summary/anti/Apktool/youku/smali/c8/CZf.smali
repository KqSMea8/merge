.class public Lc8/CZf;
.super Ljava/lang/Object;
.source "CSSNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/BZf;,
        Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;
    }
.end annotation


# instance fields
.field public final csslayout:Lc8/zZf;

.field public final cssstyle:Lc8/DZf;

.field final lastLayout:Lc8/EZf;

.field public lineIndex:I

.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/CZf;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLayoutChanged:Z

.field private mLayoutState:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

.field private mMeasureFunction:Lc8/BZf;

.field private mParent:Lc8/CZf;

.field private mShow:Z

.field nextAbsoluteChild:Lc8/CZf;

.field nextFlexChild:Lc8/CZf;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lc8/DZf;

    invoke-direct {v0}, Lc8/DZf;-><init>()V

    iput-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    .line 53
    new-instance v0, Lc8/zZf;

    invoke-direct {v0}, Lc8/zZf;-><init>()V

    iput-object v0, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    .line 54
    new-instance v0, Lc8/EZf;

    invoke-direct {v0}, Lc8/EZf;-><init>()V

    iput-object v0, p0, Lc8/CZf;->lastLayout:Lc8/EZf;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lc8/CZf;->lineIndex:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/CZf;->mMeasureFunction:Lc8/BZf;

    .line 61
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;->DIRTY:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    iput-object v0, p0, Lc8/CZf;->mLayoutState:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    .line 62
    iput-boolean v1, p0, Lc8/CZf;->mShow:Z

    .line 64
    iput-boolean v1, p0, Lc8/CZf;->mIsLayoutChanged:Z

    .line 600
    return-void
.end method

.method private toStringWithIndentation(Ljava/lang/StringBuilder;I)V
    .locals 4
    .param p1, "result"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # I

    .prologue
    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v1, "indentation":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 234
    const-string/jumbo v2, "__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v2, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    invoke-virtual {v2}, Lc8/zZf;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget-object v2, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    invoke-virtual {v2}, Lc8/DZf;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p0}, Lc8/CZf;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 251
    :goto_1
    return-void

    .line 245
    :cond_1
    const-string/jumbo v2, ", children: [\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lc8/CZf;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 247
    invoke-virtual {p0, v0}, Lc8/CZf;->getChildAt(I)Lc8/CZf;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-direct {v2, p1, v3}, Lc8/CZf;->toStringWithIndentation(Ljava/lang/StringBuilder;I)V

    .line 248
    const-string/jumbo v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 250
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public addChildAt(Lc8/CZf;I)V
    .locals 2
    .param p1, "child"    # Lc8/CZf;
    .param p2, "i"    # I

    .prologue
    .line 113
    iget-object v0, p1, Lc8/CZf;->mParent:Lc8/CZf;

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Child already has a parent, it must be removed first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lc8/CZf;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc8/CZf;->mChildren:Ljava/util/ArrayList;

    .line 121
    :cond_1
    iget-object v0, p0, Lc8/CZf;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 122
    iput-object p0, p1, Lc8/CZf;->mParent:Lc8/CZf;

    .line 123
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 124
    return-void
.end method

.method public calculateLayout(Lc8/AZf;)V
    .locals 2
    .param p1, "layoutContext"    # Lc8/AZf;

    .prologue
    .line 178
    iget-object v0, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    invoke-virtual {v0}, Lc8/zZf;->resetResult()V

    .line 179
    const/high16 v0, 0x7fc00000    # NaNf

    const/4 v1, 0x0

    invoke-static {p1, p0, v0, v1}, Lc8/GZf;->layoutNode(Lc8/AZf;Lc8/CZf;FLcom/taobao/weex/dom/flex/CSSDirection;)V

    .line 180
    return-void
.end method

.method protected dirty()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lc8/CZf;->mLayoutState:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    sget-object v1, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;->DIRTY:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    if-ne v0, v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lc8/CZf;->mLayoutState:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    sget-object v1, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;->HAS_NEW_LAYOUT:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    if-ne v0, v1, :cond_3

    .line 193
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    const-string/jumbo v0, "Previous csslayout was ignored! markLayoutSeen() never called"

    invoke-static {v0}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 196
    :cond_2
    invoke-virtual {p0}, Lc8/CZf;->markLayoutSeen()V

    .line 199
    :cond_3
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;->DIRTY:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    iput-object v0, p0, Lc8/CZf;->mLayoutState:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    .line 201
    iget-object v0, p0, Lc8/CZf;->mParent:Lc8/CZf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/CZf;->mParent:Lc8/CZf;

    invoke-virtual {v0}, Lc8/CZf;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lc8/CZf;->mParent:Lc8/CZf;

    invoke-virtual {v0}, Lc8/CZf;->dirty()V

    goto :goto_0
.end method

.method public getAlignItems()Lcom/taobao/weex/dom/flex/CSSAlign;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->alignItems:Lcom/taobao/weex/dom/flex/CSSAlign;

    return-object v0
.end method

.method public getAlignSelf()Lcom/taobao/weex/dom/flex/CSSAlign;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->alignSelf:Lcom/taobao/weex/dom/flex/CSSAlign;

    return-object v0
.end method

.method public getBorder()Lc8/IZf;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    return-object v0
.end method

.method public getCSSLayoutBottom()F
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    iget-object v0, v0, Lc8/zZf;->position:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getCSSLayoutHeight()F
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getCSSLayoutLeft()F
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    iget-object v0, v0, Lc8/zZf;->position:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getCSSLayoutRight()F
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    iget-object v0, v0, Lc8/zZf;->position:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getCSSLayoutTop()F
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    iget-object v0, v0, Lc8/zZf;->position:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getCSSLayoutWidth()F
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getChildAt(I)Lc8/CZf;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lc8/CZf;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/CZf;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lc8/CZf;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/CZf;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getFlex()F
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget v0, v0, Lc8/DZf;->flex:F

    return v0
.end method

.method public getFlexDirection()Lcom/taobao/weex/dom/flex/CSSFlexDirection;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->flexDirection:Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    return-object v0
.end method

.method public getJustifyContent()Lcom/taobao/weex/dom/flex/CSSJustify;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->justifyContent:Lcom/taobao/weex/dom/flex/CSSJustify;

    return-object v0
.end method

.method public getLayoutDirection()Lcom/taobao/weex/dom/flex/CSSDirection;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    iget-object v0, v0, Lc8/zZf;->direction:Lcom/taobao/weex/dom/flex/CSSDirection;

    return-object v0
.end method

.method public getLayoutHeight()F
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getLayoutWidth()F
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLayoutX()F
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    iget-object v0, v0, Lc8/zZf;->position:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getLayoutY()F
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    iget-object v0, v0, Lc8/zZf;->position:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getMargin()Lc8/IZf;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    return-object v0
.end method

.method public getPadding()Lc8/IZf;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    return-object v0
.end method

.method public getParent()Lc8/CZf;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lc8/CZf;->mParent:Lc8/CZf;

    return-object v0
.end method

.method public getPositionBottom()F
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->position:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getPositionLeft()F
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->position:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getPositionRight()F
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->position:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getPositionTop()F
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->position:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getPositionType()Lcom/taobao/weex/dom/flex/CSSPositionType;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->positionType:Lcom/taobao/weex/dom/flex/CSSPositionType;

    return-object v0
.end method

.method public getStyleDirection()Lcom/taobao/weex/dom/flex/CSSDirection;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->direction:Lcom/taobao/weex/dom/flex/CSSDirection;

    return-object v0
.end method

.method public getStyleHeight()F
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getStyleWidth()F
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public hasNewLayout()Z
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lc8/CZf;->mLayoutState:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    sget-object v1, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;->HAS_NEW_LAYOUT:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexOf(Lc8/CZf;)I
    .locals 1
    .param p1, "child"    # Lc8/CZf;

    .prologue
    .line 147
    iget-object v0, p0, Lc8/CZf;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected isDirty()Z
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lc8/CZf;->mLayoutState:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    sget-object v1, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;->DIRTY:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutChanged()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lc8/CZf;->mIsLayoutChanged:Z

    return v0
.end method

.method public isMeasureDefined()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lc8/CZf;->mMeasureFunction:Lc8/BZf;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lc8/CZf;->mShow:Z

    return v0
.end method

.method markHasNewLayout()V
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;->HAS_NEW_LAYOUT:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    iput-object v0, p0, Lc8/CZf;->mLayoutState:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    .line 208
    return-void
.end method

.method public markLayoutSeen()V
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lc8/CZf;->hasNewLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Expected node to have a new csslayout to be seen!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;->UP_TO_DATE:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    iput-object v0, p0, Lc8/CZf;->mLayoutState:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    .line 221
    return-void
.end method

.method public markLayoutStateUpdated()V
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;->UP_TO_DATE:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    iput-object v0, p0, Lc8/CZf;->mLayoutState:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    .line 80
    return-void
.end method

.method measure(Lc8/HZf;F)Lc8/HZf;
    .locals 2
    .param p1, "measureOutput"    # Lc8/HZf;
    .param p2, "width"    # F

    .prologue
    const/high16 v1, 0x7fc00000    # NaNf

    .line 158
    invoke-virtual {p0}, Lc8/CZf;->isMeasureDefined()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Measure function isn\'t defined!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iput v1, p1, Lc8/HZf;->height:F

    .line 162
    iput v1, p1, Lc8/HZf;->width:F

    .line 163
    iget-object v0, p0, Lc8/CZf;->mMeasureFunction:Lc8/BZf;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lc8/CZf;->mMeasureFunction:Lc8/BZf;

    invoke-interface {v0, p0, p2, p1}, Lc8/BZf;->measure(Lc8/CZf;FLc8/HZf;)V

    .line 167
    :cond_1
    return-object p1
.end method

.method public removeChildAt(I)Lc8/CZf;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 128
    iget-object v1, p0, Lc8/CZf;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/CZf;

    .line 129
    .local v0, "removed":Lc8/CZf;
    const/4 v1, 0x0

    iput-object v1, v0, Lc8/CZf;->mParent:Lc8/CZf;

    .line 130
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 131
    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lc8/CZf;->mParent:Lc8/CZf;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/CZf;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/CZf;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 571
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You should not reset an attached CSSNode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_1
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    invoke-virtual {v0}, Lc8/DZf;->reset()V

    .line 575
    iget-object v0, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    invoke-virtual {v0}, Lc8/zZf;->resetResult()V

    .line 576
    const/4 v0, 0x0

    iput v0, p0, Lc8/CZf;->lineIndex:I

    .line 577
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;->DIRTY:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    iput-object v0, p0, Lc8/CZf;->mLayoutState:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    .line 578
    return-void
.end method

.method public setAlignItems(Lcom/taobao/weex/dom/flex/CSSAlign;)V
    .locals 1
    .param p1, "alignItems"    # Lcom/taobao/weex/dom/flex/CSSAlign;

    .prologue
    .line 314
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->alignItems:Lcom/taobao/weex/dom/flex/CSSAlign;

    if-eq v0, p1, :cond_0

    .line 315
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iput-object p1, v0, Lc8/DZf;->alignItems:Lcom/taobao/weex/dom/flex/CSSAlign;

    .line 316
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 318
    :cond_0
    return-void
.end method

.method public setAlignSelf(Lcom/taobao/weex/dom/flex/CSSAlign;)V
    .locals 1
    .param p1, "alignSelf"    # Lcom/taobao/weex/dom/flex/CSSAlign;

    .prologue
    .line 328
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->alignSelf:Lcom/taobao/weex/dom/flex/CSSAlign;

    if-eq v0, p1, :cond_0

    .line 329
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iput-object p1, v0, Lc8/DZf;->alignSelf:Lcom/taobao/weex/dom/flex/CSSAlign;

    .line 330
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 332
    :cond_0
    return-void
.end method

.method public setBorder(IF)V
    .locals 1
    .param p1, "spacingType"    # I
    .param p2, "border"    # F

    .prologue
    .line 431
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->border:Lc8/IZf;

    invoke-virtual {v0, p1, p2}, Lc8/IZf;->set(IF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 434
    :cond_0
    return-void
.end method

.method public setDefaultPadding(IF)V
    .locals 1
    .param p1, "spacingType"    # I
    .param p2, "padding"    # F

    .prologue
    .line 560
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    invoke-virtual {v0, p1, p2}, Lc8/IZf;->setDefault(IF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 563
    :cond_0
    return-void
.end method

.method public setDirection(Lcom/taobao/weex/dom/flex/CSSDirection;)V
    .locals 1
    .param p1, "direction"    # Lcom/taobao/weex/dom/flex/CSSDirection;

    .prologue
    .line 272
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->direction:Lcom/taobao/weex/dom/flex/CSSDirection;

    if-eq v0, p1, :cond_0

    .line 273
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iput-object p1, v0, Lc8/DZf;->direction:Lcom/taobao/weex/dom/flex/CSSDirection;

    .line 274
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 276
    :cond_0
    return-void
.end method

.method public setFlex(F)V
    .locals 1
    .param p1, "flex"    # F

    .prologue
    .line 363
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget v0, v0, Lc8/DZf;->flex:F

    invoke-virtual {p0, v0, p1}, Lc8/CZf;->valuesEqual(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iput p1, v0, Lc8/DZf;->flex:F

    .line 365
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 367
    :cond_0
    return-void
.end method

.method public setFlexDirection(Lcom/taobao/weex/dom/flex/CSSFlexDirection;)V
    .locals 1
    .param p1, "flexDirection"    # Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    .prologue
    .line 286
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->flexDirection:Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    if-eq v0, p1, :cond_0

    .line 287
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iput-object p1, v0, Lc8/DZf;->flexDirection:Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    .line 288
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 290
    :cond_0
    return-void
.end method

.method public setJustifyContent(Lcom/taobao/weex/dom/flex/CSSJustify;)V
    .locals 1
    .param p1, "justifyContent"    # Lcom/taobao/weex/dom/flex/CSSJustify;

    .prologue
    .line 300
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->justifyContent:Lcom/taobao/weex/dom/flex/CSSJustify;

    if-eq v0, p1, :cond_0

    .line 301
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iput-object p1, v0, Lc8/DZf;->justifyContent:Lcom/taobao/weex/dom/flex/CSSJustify;

    .line 302
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 304
    :cond_0
    return-void
.end method

.method public setLayoutHeight(F)V
    .locals 2
    .param p1, "height"    # F

    .prologue
    .line 549
    iget-object v0, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 550
    return-void
.end method

.method public setLayoutWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .prologue
    .line 541
    iget-object v0, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    iget-object v0, v0, Lc8/zZf;->dimensions:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 542
    return-void
.end method

.method public setLayoutX(F)V
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 525
    iget-object v0, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    iget-object v0, v0, Lc8/zZf;->position:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 526
    return-void
.end method

.method public setLayoutY(F)V
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 533
    iget-object v0, p0, Lc8/CZf;->csslayout:Lc8/zZf;

    iget-object v0, v0, Lc8/zZf;->position:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 534
    return-void
.end method

.method public setMargin(IF)V
    .locals 1
    .param p1, "spacingType"    # I
    .param p2, "margin"    # F

    .prologue
    .line 377
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->margin:Lc8/IZf;

    invoke-virtual {v0, p1, p2}, Lc8/IZf;->set(IF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 380
    :cond_0
    return-void
.end method

.method public setMaxHeight(F)V
    .locals 1
    .param p1, "maxHeight"    # F

    .prologue
    .line 404
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget v0, v0, Lc8/DZf;->maxHeight:F

    invoke-virtual {p0, v0, p1}, Lc8/CZf;->valuesEqual(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iput p1, v0, Lc8/DZf;->maxHeight:F

    .line 406
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 408
    :cond_0
    return-void
.end method

.method public setMaxWidth(F)V
    .locals 1
    .param p1, "maxWidth"    # F

    .prologue
    .line 390
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget v0, v0, Lc8/DZf;->maxWidth:F

    invoke-virtual {p0, v0, p1}, Lc8/CZf;->valuesEqual(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iput p1, v0, Lc8/DZf;->maxWidth:F

    .line 392
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 394
    :cond_0
    return-void
.end method

.method public setMeasureFunction(Lc8/BZf;)V
    .locals 1
    .param p1, "measureFunction"    # Lc8/BZf;

    .prologue
    .line 151
    iget-object v0, p0, Lc8/CZf;->mMeasureFunction:Lc8/BZf;

    if-eq v0, p1, :cond_0

    .line 152
    iput-object p1, p0, Lc8/CZf;->mMeasureFunction:Lc8/BZf;

    .line 153
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 155
    :cond_0
    return-void
.end method

.method public setMinHeight(F)V
    .locals 1
    .param p1, "minHeight"    # F

    .prologue
    .line 397
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget v0, v0, Lc8/DZf;->minHeight:F

    invoke-virtual {p0, v0, p1}, Lc8/CZf;->valuesEqual(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iput p1, v0, Lc8/DZf;->minHeight:F

    .line 399
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 401
    :cond_0
    return-void
.end method

.method public setMinWidth(F)V
    .locals 1
    .param p1, "minWidth"    # F

    .prologue
    .line 383
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget v0, v0, Lc8/DZf;->minWidth:F

    invoke-virtual {p0, v0, p1}, Lc8/CZf;->valuesEqual(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iput p1, v0, Lc8/DZf;->minWidth:F

    .line 385
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 387
    :cond_0
    return-void
.end method

.method public setPadding(IF)V
    .locals 1
    .param p1, "spacingType"    # I
    .param p2, "padding"    # F

    .prologue
    .line 418
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->padding:Lc8/IZf;

    invoke-virtual {v0, p1, p2}, Lc8/IZf;->set(IF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 421
    :cond_0
    return-void
.end method

.method public setParentNull()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/CZf;->mParent:Lc8/CZf;

    .line 136
    return-void
.end method

.method public setPositionBottom(F)V
    .locals 2
    .param p1, "positionBottom"    # F

    .prologue
    const/4 v1, 0x3

    .line 458
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->position:[F

    aget v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lc8/CZf;->valuesEqual(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->position:[F

    aput p1, v0, v1

    .line 460
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 462
    :cond_0
    return-void
.end method

.method public setPositionLeft(F)V
    .locals 2
    .param p1, "positionLeft"    # F

    .prologue
    const/4 v1, 0x0

    .line 472
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->position:[F

    aget v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lc8/CZf;->valuesEqual(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->position:[F

    aput p1, v0, v1

    .line 474
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 476
    :cond_0
    return-void
.end method

.method public setPositionRight(F)V
    .locals 2
    .param p1, "positionRight"    # F

    .prologue
    const/4 v1, 0x2

    .line 486
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->position:[F

    aget v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lc8/CZf;->valuesEqual(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->position:[F

    aput p1, v0, v1

    .line 488
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 490
    :cond_0
    return-void
.end method

.method public setPositionTop(F)V
    .locals 2
    .param p1, "positionTop"    # F

    .prologue
    const/4 v1, 0x1

    .line 444
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->position:[F

    aget v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lc8/CZf;->valuesEqual(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->position:[F

    aput p1, v0, v1

    .line 446
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 448
    :cond_0
    return-void
.end method

.method public setPositionType(Lcom/taobao/weex/dom/flex/CSSPositionType;)V
    .locals 1
    .param p1, "positionType"    # Lcom/taobao/weex/dom/flex/CSSPositionType;

    .prologue
    .line 342
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->positionType:Lcom/taobao/weex/dom/flex/CSSPositionType;

    if-eq v0, p1, :cond_0

    .line 343
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iput-object p1, v0, Lc8/DZf;->positionType:Lcom/taobao/weex/dom/flex/CSSPositionType;

    .line 344
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 346
    :cond_0
    return-void
.end method

.method public setStyleHeight(F)V
    .locals 2
    .param p1, "height"    # F

    .prologue
    const/4 v1, 0x1

    .line 514
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    aget v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lc8/CZf;->valuesEqual(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    aput p1, v0, v1

    .line 516
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 518
    :cond_0
    return-void
.end method

.method public setStyleWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .prologue
    const/4 v1, 0x0

    .line 500
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    aget v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lc8/CZf;->valuesEqual(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->dimensions:[F

    aput p1, v0, v1

    .line 502
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 504
    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 71
    iget-boolean v0, p0, Lc8/CZf;->mShow:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 72
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;->UP_TO_DATE:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    iput-object v0, p0, Lc8/CZf;->mLayoutState:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    .line 74
    :cond_0
    iput-boolean p1, p0, Lc8/CZf;->mShow:Z

    .line 75
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 76
    return-void
.end method

.method public setWrap(Lcom/taobao/weex/dom/flex/CSSWrap;)V
    .locals 1
    .param p1, "flexWrap"    # Lcom/taobao/weex/dom/flex/CSSWrap;

    .prologue
    .line 349
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget-object v0, v0, Lc8/DZf;->flexWrap:Lcom/taobao/weex/dom/flex/CSSWrap;

    if-eq v0, p1, :cond_0

    .line 350
    iget-object v0, p0, Lc8/CZf;->cssstyle:Lc8/DZf;

    iput-object p1, v0, Lc8/DZf;->flexWrap:Lcom/taobao/weex/dom/flex/CSSWrap;

    .line 351
    invoke-virtual {p0}, Lc8/CZf;->dirty()V

    .line 353
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lc8/CZf;->toStringWithIndentation(Ljava/lang/StringBuilder;I)V

    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateLastLayout(Lc8/zZf;)Z
    .locals 1
    .param p1, "newLayout"    # Lc8/zZf;

    .prologue
    .line 96
    iget-object v0, p0, Lc8/CZf;->lastLayout:Lc8/EZf;

    invoke-virtual {v0, p1}, Lc8/EZf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lc8/CZf;->mIsLayoutChanged:Z

    .line 97
    iget-boolean v0, p0, Lc8/CZf;->mIsLayoutChanged:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lc8/CZf;->lastLayout:Lc8/EZf;

    invoke-virtual {v0, p1}, Lc8/EZf;->copy(Lc8/zZf;)V

    .line 100
    :cond_0
    iget-boolean v0, p0, Lc8/CZf;->mIsLayoutChanged:Z

    return v0

    .line 96
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected valuesEqual(FF)Z
    .locals 1
    .param p1, "f1"    # F
    .param p2, "f2"    # F

    .prologue
    .line 261
    invoke-static {p1, p2}, Lc8/FZf;->floatsEqual(FF)Z

    move-result v0

    return v0
.end method
