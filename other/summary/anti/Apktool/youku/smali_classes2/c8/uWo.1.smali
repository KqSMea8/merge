.class public Lc8/uWo;
.super Ljava/lang/Object;
.source "WXParallaxExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/wWo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackgroundColorCreator"
.end annotation


# instance fields
.field input:[I

.field output:[I

.field final synthetic this$0:Lc8/wWo;


# direct methods
.method private constructor <init>(Lc8/wWo;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lc8/uWo;->this$0:Lc8/wWo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/wWo;Lc8/tWo;)V
    .locals 0
    .param p1, "x0"    # Lc8/wWo;
    .param p2, "x1"    # Lc8/tWo;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lc8/uWo;-><init>(Lc8/wWo;)V

    return-void
.end method


# virtual methods
.method getColor(II)I
    .locals 9
    .param p1, "XDelta"    # I
    .param p2, "YDelta"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 222
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WXParallax:getColor: XDelta"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " YDelta:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mOffsetY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/uWo;->this$0:Lc8/wWo;

    invoke-virtual {v4}, Lc8/wWo;->getOffset()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 227
    :cond_0
    iget-object v3, p0, Lc8/uWo;->this$0:Lc8/wWo;

    invoke-virtual {v3}, Lc8/wWo;->getOffset()F

    move-result v3

    iget-object v4, p0, Lc8/uWo;->input:[I

    aget v4, v4, v8

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 228
    iget-object v3, p0, Lc8/uWo;->output:[I

    aget v3, v3, v8

    .line 242
    :goto_0
    return v3

    .line 231
    :cond_1
    iget-object v3, p0, Lc8/uWo;->this$0:Lc8/wWo;

    invoke-virtual {v3}, Lc8/wWo;->getOffset()F

    move-result v3

    iget-object v4, p0, Lc8/uWo;->input:[I

    aget v4, v4, v7

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 232
    iget-object v3, p0, Lc8/uWo;->output:[I

    aget v3, v3, v7

    goto :goto_0

    .line 235
    :cond_2
    iget-object v3, p0, Lc8/uWo;->output:[I

    aget v3, v3, v7

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    iget-object v4, p0, Lc8/uWo;->this$0:Lc8/wWo;

    invoke-virtual {v4}, Lc8/wWo;->getOffset()F

    move-result v4

    iget-object v5, p0, Lc8/uWo;->input:[I

    aget v5, v5, v7

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lc8/uWo;->output:[I

    aget v5, v5, v8

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    iget-object v6, p0, Lc8/uWo;->output:[I

    aget v6, v6, v7

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    sub-int/2addr v5, v6

    mul-int/2addr v4, v5

    iget-object v5, p0, Lc8/uWo;->input:[I

    aget v5, v5, v8

    iget-object v6, p0, Lc8/uWo;->input:[I

    aget v6, v6, v7

    sub-int/2addr v5, v6

    div-int/2addr v4, v5

    add-int v2, v3, v4

    .line 236
    .local v2, "r1":I
    iget-object v3, p0, Lc8/uWo;->output:[I

    aget v3, v3, v7

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget-object v4, p0, Lc8/uWo;->this$0:Lc8/wWo;

    invoke-virtual {v4}, Lc8/wWo;->getOffset()F

    move-result v4

    iget-object v5, p0, Lc8/uWo;->input:[I

    aget v5, v5, v7

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lc8/uWo;->output:[I

    aget v5, v5, v8

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget-object v6, p0, Lc8/uWo;->output:[I

    aget v6, v6, v7

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    sub-int/2addr v5, v6

    mul-int/2addr v4, v5

    iget-object v5, p0, Lc8/uWo;->input:[I

    aget v5, v5, v8

    iget-object v6, p0, Lc8/uWo;->input:[I

    aget v6, v6, v7

    sub-int/2addr v5, v6

    div-int/2addr v4, v5

    add-int v1, v3, v4

    .line 237
    .local v1, "g1":I
    iget-object v3, p0, Lc8/uWo;->output:[I

    aget v3, v3, v7

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    iget-object v4, p0, Lc8/uWo;->this$0:Lc8/wWo;

    invoke-virtual {v4}, Lc8/wWo;->getOffset()F

    move-result v4

    iget-object v5, p0, Lc8/uWo;->input:[I

    aget v5, v5, v7

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lc8/uWo;->output:[I

    aget v5, v5, v8

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    iget-object v6, p0, Lc8/uWo;->output:[I

    aget v6, v6, v7

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    sub-int/2addr v5, v6

    mul-int/2addr v4, v5

    iget-object v5, p0, Lc8/uWo;->input:[I

    aget v5, v5, v8

    iget-object v6, p0, Lc8/uWo;->input:[I

    aget v6, v6, v7

    sub-int/2addr v5, v6

    div-int/2addr v4, v5

    add-int v0, v3, v4

    .line 239
    .local v0, "b1":I
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WXParallax:getColor: r1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " g1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " b1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 242
    :cond_3
    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    goto/16 :goto_0
.end method
