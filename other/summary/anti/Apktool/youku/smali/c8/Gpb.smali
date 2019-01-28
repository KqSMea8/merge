.class public Lc8/Gpb;
.super Ljava/lang/Object;
.source "WXParallax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ipb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackgroundColorCreator"
.end annotation


# instance fields
.field input:[I

.field output:[I

.field final synthetic this$0:Lc8/Ipb;


# direct methods
.method private constructor <init>(Lc8/Ipb;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lc8/Gpb;->this$0:Lc8/Ipb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Ipb;Lc8/Fpb;)V
    .locals 0
    .param p1, "x0"    # Lc8/Ipb;
    .param p2, "x1"    # Lc8/Fpb;

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lc8/Gpb;-><init>(Lc8/Ipb;)V

    return-void
.end method


# virtual methods
.method getColor(II)I
    .locals 10
    .param p1, "XDelta"    # I
    .param p2, "YDelta"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 175
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WXParallax:getColor: XDelta"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " YDelta:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mOffsetY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/Gpb;->this$0:Lc8/Ipb;

    invoke-static {v5}, Lc8/Ipb;->access$100(Lc8/Ipb;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 180
    :cond_0
    iget-object v4, p0, Lc8/Gpb;->this$0:Lc8/Ipb;

    invoke-static {v4}, Lc8/Ipb;->access$100(Lc8/Ipb;)F

    move-result v4

    iget-object v5, p0, Lc8/Gpb;->input:[I

    aget v5, v5, v9

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 181
    iget-object v4, p0, Lc8/Gpb;->output:[I

    aget v4, v4, v9

    .line 196
    :goto_0
    return v4

    .line 184
    :cond_1
    iget-object v4, p0, Lc8/Gpb;->this$0:Lc8/Ipb;

    invoke-static {v4}, Lc8/Ipb;->access$100(Lc8/Ipb;)F

    move-result v4

    iget-object v5, p0, Lc8/Gpb;->input:[I

    aget v5, v5, v8

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 185
    iget-object v4, p0, Lc8/Gpb;->output:[I

    aget v4, v4, v8

    goto :goto_0

    .line 188
    :cond_2
    iget-object v4, p0, Lc8/Gpb;->output:[I

    aget v4, v4, v8

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    iget-object v5, p0, Lc8/Gpb;->this$0:Lc8/Ipb;

    invoke-static {v5}, Lc8/Ipb;->access$100(Lc8/Ipb;)F

    move-result v5

    iget-object v6, p0, Lc8/Gpb;->input:[I

    aget v6, v6, v8

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lc8/Gpb;->output:[I

    aget v6, v6, v9

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    iget-object v7, p0, Lc8/Gpb;->output:[I

    aget v7, v7, v8

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v7

    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    iget-object v6, p0, Lc8/Gpb;->input:[I

    aget v6, v6, v9

    iget-object v7, p0, Lc8/Gpb;->input:[I

    aget v7, v7, v8

    sub-int/2addr v6, v7

    div-int/2addr v5, v6

    add-int v3, v4, v5

    .line 189
    .local v3, "r1":I
    iget-object v4, p0, Lc8/Gpb;->output:[I

    aget v4, v4, v8

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    iget-object v5, p0, Lc8/Gpb;->this$0:Lc8/Ipb;

    invoke-static {v5}, Lc8/Ipb;->access$100(Lc8/Ipb;)F

    move-result v5

    iget-object v6, p0, Lc8/Gpb;->input:[I

    aget v6, v6, v8

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lc8/Gpb;->output:[I

    aget v6, v6, v9

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    iget-object v7, p0, Lc8/Gpb;->output:[I

    aget v7, v7, v8

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    iget-object v6, p0, Lc8/Gpb;->input:[I

    aget v6, v6, v9

    iget-object v7, p0, Lc8/Gpb;->input:[I

    aget v7, v7, v8

    sub-int/2addr v6, v7

    div-int/2addr v5, v6

    add-int v2, v4, v5

    .line 190
    .local v2, "g1":I
    iget-object v4, p0, Lc8/Gpb;->output:[I

    aget v4, v4, v8

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    iget-object v5, p0, Lc8/Gpb;->this$0:Lc8/Ipb;

    invoke-static {v5}, Lc8/Ipb;->access$100(Lc8/Ipb;)F

    move-result v5

    iget-object v6, p0, Lc8/Gpb;->input:[I

    aget v6, v6, v8

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lc8/Gpb;->output:[I

    aget v6, v6, v9

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    iget-object v7, p0, Lc8/Gpb;->output:[I

    aget v7, v7, v8

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    iget-object v6, p0, Lc8/Gpb;->input:[I

    aget v6, v6, v9

    iget-object v7, p0, Lc8/Gpb;->input:[I

    aget v7, v7, v8

    sub-int/2addr v6, v7

    div-int/2addr v5, v6

    add-int v1, v4, v5

    .line 191
    .local v1, "b1":I
    iget-object v4, p0, Lc8/Gpb;->output:[I

    aget v4, v4, v8

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    iget-object v5, p0, Lc8/Gpb;->this$0:Lc8/Ipb;

    invoke-static {v5}, Lc8/Ipb;->access$100(Lc8/Ipb;)F

    move-result v5

    iget-object v6, p0, Lc8/Gpb;->input:[I

    aget v6, v6, v8

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lc8/Gpb;->output:[I

    aget v6, v6, v9

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    iget-object v7, p0, Lc8/Gpb;->output:[I

    aget v7, v7, v8

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    iget-object v6, p0, Lc8/Gpb;->input:[I

    aget v6, v6, v9

    iget-object v7, p0, Lc8/Gpb;->input:[I

    aget v7, v7, v8

    sub-int/2addr v6, v7

    div-int/2addr v5, v6

    add-int v0, v4, v5

    .line 193
    .local v0, "a1":I
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WXParallax:getColor: r1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " g1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " b1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 196
    :cond_3
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    goto/16 :goto_0
.end method
