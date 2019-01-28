.class public Lc8/GZb;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/IZb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Editor"
.end annotation


# static fields
.field public static final UNCHANGED:I = -0x80000000


# instance fields
.field anchorX:F

.field anchorY:F

.field mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

.field final synthetic this$0:Lc8/IZb;


# direct methods
.method public constructor <init>(Lc8/IZb;)V
    .locals 1

    .prologue
    .line 571
    iput-object p1, p0, Lc8/GZb;->this$0:Lc8/IZb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    invoke-virtual {p1}, Lc8/IZb;->getLayoutParams()Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    move-result-object v0

    iput-object v0, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    .line 573
    const/4 v0, 0x0

    iput v0, p0, Lc8/GZb;->anchorY:F

    iput v0, p0, Lc8/GZb;->anchorX:F

    .line 574
    return-void
.end method

.method private setPosition(IIZ)Lc8/GZb;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "skip"    # Z

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x80000000

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 719
    iget-object v0, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    if-eqz v0, :cond_5

    .line 720
    iget v0, p0, Lc8/GZb;->anchorX:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lc8/GZb;->anchorX:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lc8/GZb;->anchorY:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lc8/GZb;->anchorY:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 721
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Anchor point must be between 0 and 1, inclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_1
    if-eq p1, v4, :cond_2

    .line 727
    iget-object v0, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    int-to-float v1, p1

    iget-object v2, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v2, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->width:I

    int-to-float v2, v2

    iget v3, p0, Lc8/GZb;->anchorX:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->x:I

    .line 729
    :cond_2
    if-eq p2, v4, :cond_3

    .line 730
    iget-object v0, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    int-to-float v1, p2

    iget-object v2, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v2, v2, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->height:I

    int-to-float v2, v2

    iget v3, p0, Lc8/GZb;->anchorY:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->y:I

    .line 733
    :cond_3
    iget-object v0, p0, Lc8/GZb;->this$0:Lc8/IZb;

    iget v0, v0, Lc8/IZb;->flags:I

    sget v1, Lc8/pZb;->FLAG_WINDOW_EDGE_LIMITS_ENABLE:I

    invoke-static {v0, v1}, Lc8/wZb;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 735
    iget-object v0, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v0, v0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->gravity:I

    const/16 v1, 0x33

    if-eq v0, v1, :cond_4

    .line 736
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/GZb;->this$0:Lc8/IZb;

    iget v2, v2, Lc8/IZb;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " gravity must be TOP|LEFT if FLAG_WINDOW_EDGE_LIMITS_ENABLE or FLAG_WINDOW_EDGE_TILE_ENABLE is set."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_4
    iget-object v0, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget-object v1, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v1, v1, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->x:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lc8/GZb;->this$0:Lc8/IZb;

    iget v2, v2, Lc8/IZb;->displayWidth:I

    iget-object v3, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v3, v3, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->width:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->x:I

    .line 744
    iget-object v0, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget-object v1, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v1, v1, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->y:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lc8/GZb;->this$0:Lc8/IZb;

    iget v2, v2, Lc8/IZb;->displayHeight:I

    iget-object v3, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v3, v3, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->height:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->y:I

    .line 748
    :cond_5
    return-object p0
.end method

.method private setSize(IIZ)Lc8/GZb;
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "skip"    # Z

    .prologue
    const/high16 v9, -0x80000000

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 628
    iget-object v6, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    if-eqz v6, :cond_6

    .line 629
    iget v6, p0, Lc8/GZb;->anchorX:F

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    iget v6, p0, Lc8/GZb;->anchorX:F

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_0

    iget v6, p0, Lc8/GZb;->anchorY:F

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    iget v6, p0, Lc8/GZb;->anchorY:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_1

    .line 630
    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Anchor point must be between 0 and 1, inclusive."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 633
    :cond_1
    iget-object v6, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v1, v6, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->width:I

    .line 634
    .local v1, "lastWidth":I
    iget-object v6, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v0, v6, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->height:I

    .line 636
    .local v0, "lastHeight":I
    if-eq p1, v9, :cond_2

    .line 637
    iget-object v6, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iput p1, v6, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->width:I

    .line 639
    :cond_2
    if-eq p2, v9, :cond_3

    .line 640
    iget-object v6, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iput p2, v6, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->height:I

    .line 644
    :cond_3
    iget-object v6, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v3, v6, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->maxWidth:I

    .line 645
    .local v3, "maxWidth":I
    iget-object v6, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v2, v6, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->maxHeight:I

    .line 647
    .local v2, "maxHeight":I
    iget-object v6, p0, Lc8/GZb;->this$0:Lc8/IZb;

    iget v6, v6, Lc8/IZb;->flags:I

    sget v7, Lc8/pZb;->FLAG_WINDOW_EDGE_LIMITS_ENABLE:I

    invoke-static {v6, v7}, Lc8/wZb;->isSet(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 648
    iget-object v6, p0, Lc8/GZb;->this$0:Lc8/IZb;

    iget v6, v6, Lc8/IZb;->displayWidth:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 649
    iget-object v6, p0, Lc8/GZb;->this$0:Lc8/IZb;

    iget v6, v6, Lc8/IZb;->displayHeight:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 653
    :cond_4
    iget-object v6, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget-object v7, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v7, v7, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->width:I

    iget-object v8, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v8, v8, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->minWidth:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->width:I

    .line 654
    iget-object v6, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget-object v7, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v7, v7, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->height:I

    iget-object v8, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v8, v8, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->minHeight:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->height:I

    .line 657
    iget-object v6, p0, Lc8/GZb;->this$0:Lc8/IZb;

    iget v6, v6, Lc8/IZb;->flags:I

    sget v7, Lc8/pZb;->FLAG_WINDOW_ASPECT_RATIO_ENABLE:I

    invoke-static {v6, v7}, Lc8/wZb;->isSet(II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 658
    iget-object v6, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v6, v6, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->height:I

    int-to-float v6, v6

    iget-object v7, p0, Lc8/GZb;->this$0:Lc8/IZb;

    iget-object v7, v7, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget v7, v7, Lc8/vZb;->ratio:F

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 659
    .local v5, "ratioWidth":I
    iget-object v6, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v6, v6, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->width:I

    int-to-float v6, v6

    iget-object v7, p0, Lc8/GZb;->this$0:Lc8/IZb;

    iget-object v7, v7, Lc8/IZb;->touchInfo:Lc8/vZb;

    iget v7, v7, Lc8/vZb;->ratio:F

    div-float/2addr v6, v7

    float-to-int v4, v6

    .line 660
    .local v4, "ratioHeight":I
    iget-object v6, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v6, v6, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->minHeight:I

    if-lt v4, v6, :cond_7

    iget-object v6, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v6, v6, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->maxHeight:I

    if-gt v4, v6, :cond_7

    .line 662
    iget-object v6, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iput v4, v6, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->height:I

    .line 669
    .end local v4    # "ratioHeight":I
    .end local v5    # "ratioWidth":I
    :cond_5
    :goto_0
    if-nez p3, :cond_6

    .line 671
    iget-object v6, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v6, v6, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->x:I

    int-to-float v6, v6

    int-to-float v7, v1

    iget v8, p0, Lc8/GZb;->anchorX:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iget v7, v7, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->y:I

    int-to-float v7, v7

    int-to-float v8, v0

    iget v9, p0, Lc8/GZb;->anchorY:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {p0, v6, v7}, Lc8/GZb;->setPosition(II)Lc8/GZb;

    .line 675
    .end local v0    # "lastHeight":I
    .end local v1    # "lastWidth":I
    .end local v2    # "maxHeight":I
    .end local v3    # "maxWidth":I
    :cond_6
    return-object p0

    .line 665
    .restart local v0    # "lastHeight":I
    .restart local v1    # "lastWidth":I
    .restart local v2    # "maxHeight":I
    .restart local v3    # "maxWidth":I
    .restart local v4    # "ratioHeight":I
    .restart local v5    # "ratioWidth":I
    :cond_7
    iget-object v6, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    iput v5, v6, Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;->width:I

    goto :goto_0
.end method


# virtual methods
.method public commit()V
    .locals 3

    .prologue
    .line 755
    iget-object v0, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lc8/GZb;->this$0:Lc8/IZb;

    invoke-static {v0}, Lc8/IZb;->access$000(Lc8/IZb;)Lc8/uZb;

    move-result-object v0

    iget-object v1, p0, Lc8/GZb;->this$0:Lc8/IZb;

    iget v1, v1, Lc8/IZb;->id:I

    iget-object v2, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    invoke-virtual {v0, v1, v2}, Lc8/uZb;->updateViewLayout(ILcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;)V

    .line 757
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/GZb;->mParams:Lcom/alibaba/poplayerconsole/lib/StandOutWindow$StandOutLayoutParams;

    .line 759
    :cond_0
    return-void
.end method

.method public setAnchorPoint(FF)Lc8/GZb;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 577
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpl-float v0, p1, v2

    if-gtz v0, :cond_0

    cmpg-float v0, p2, v1

    if-ltz v0, :cond_0

    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    .line 578
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Anchor point must be between 0 and 1, inclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_1
    iput p1, p0, Lc8/GZb;->anchorX:F

    .line 582
    iput p2, p0, Lc8/GZb;->anchorY:F

    .line 584
    return-object p0
.end method

.method public setPosition(FF)Lc8/GZb;
    .locals 2
    .param p1, "percentWidth"    # F
    .param p2, "percentHeight"    # F

    .prologue
    .line 689
    iget-object v0, p0, Lc8/GZb;->this$0:Lc8/IZb;

    iget v0, v0, Lc8/IZb;->displayWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget-object v1, p0, Lc8/GZb;->this$0:Lc8/IZb;

    iget v1, v1, Lc8/IZb;->displayHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lc8/GZb;->setPosition(II)Lc8/GZb;

    move-result-object v0

    return-object v0
.end method

.method public setPosition(II)Lc8/GZb;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 703
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/GZb;->setPosition(IIZ)Lc8/GZb;

    move-result-object v0

    return-object v0
.end method

.method public setSize(FF)Lc8/GZb;
    .locals 2
    .param p1, "percentWidth"    # F
    .param p2, "percentHeight"    # F

    .prologue
    .line 598
    iget-object v0, p0, Lc8/GZb;->this$0:Lc8/IZb;

    iget v0, v0, Lc8/IZb;->displayWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget-object v1, p0, Lc8/GZb;->this$0:Lc8/IZb;

    iget v1, v1, Lc8/IZb;->displayHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lc8/GZb;->setSize(II)Lc8/GZb;

    move-result-object v0

    return-object v0
.end method

.method public setSize(II)Lc8/GZb;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 612
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/GZb;->setSize(IIZ)Lc8/GZb;

    move-result-object v0

    return-object v0
.end method
