.class public Lc8/IWo;
.super Ljava/lang/Object;
.source "Html.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/style/LineBackgroundSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UWo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomQuoteSpan"
.end annotation


# instance fields
.field public final backgroundColor:I

.field public final gap:F

.field public final stripeColor:I

.field public final stripeWidth:F

.field final synthetic this$0:Lc8/UWo;


# direct methods
.method public constructor <init>(Lc8/UWo;IIFF)V
    .locals 0
    .param p2, "backgroundColor"    # I
    .param p3, "stripeColor"    # I
    .param p4, "stripeWidth"    # F
    .param p5, "gap"    # F

    .prologue
    .line 837
    iput-object p1, p0, Lc8/IWo;->this$0:Lc8/UWo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    iput p2, p0, Lc8/IWo;->backgroundColor:I

    .line 839
    iput p3, p0, Lc8/IWo;->stripeColor:I

    .line 840
    iput p4, p0, Lc8/IWo;->stripeWidth:F

    .line 841
    iput p5, p0, Lc8/IWo;->gap:F

    .line 842
    return-void
.end method

.method public constructor <init>(Lc8/UWo;Lc8/IWo;)V
    .locals 1
    .param p2, "other"    # Lc8/IWo;

    .prologue
    .line 844
    iput-object p1, p0, Lc8/IWo;->this$0:Lc8/UWo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    iget v0, p2, Lc8/IWo;->backgroundColor:I

    iput v0, p0, Lc8/IWo;->backgroundColor:I

    .line 846
    iget v0, p2, Lc8/IWo;->stripeColor:I

    iput v0, p0, Lc8/IWo;->stripeColor:I

    .line 847
    iget v0, p2, Lc8/IWo;->stripeWidth:F

    iput v0, p0, Lc8/IWo;->stripeWidth:F

    .line 848
    iget v0, p2, Lc8/IWo;->gap:F

    iput v0, p0, Lc8/IWo;->gap:F

    .line 849
    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "lnum"    # I

    .prologue
    .line 873
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 874
    .local v6, "paintColor":I
    iget v0, p0, Lc8/IWo;->backgroundColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 875
    int-to-float v1, p3

    int-to-float v2, p5

    int-to-float v3, p4

    int-to-float v4, p7

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 876
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 877
    return-void
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "x"    # I
    .param p4, "dir"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "first"    # Z
    .param p12, "layout"    # Landroid/text/Layout;

    .prologue
    .line 859
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    .line 860
    .local v7, "style":Landroid/graphics/Paint$Style;
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    .line 862
    .local v6, "paintColor":I
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 863
    iget v0, p0, Lc8/IWo;->stripeColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 865
    int-to-float v1, p3

    int-to-float v2, p5

    int-to-float v0, p3

    int-to-float v3, p4

    iget v4, p0, Lc8/IWo;->stripeWidth:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    int-to-float v4, p7

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 867
    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 868
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 869
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 2
    .param p1, "first"    # Z

    .prologue
    .line 853
    iget v0, p0, Lc8/IWo;->stripeWidth:F

    iget v1, p0, Lc8/IWo;->gap:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
