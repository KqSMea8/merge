.class public final Lc8/SYf;
.super Ljava/lang/Object;
.source "WXTextDomObject.java"

# interfaces
.implements Lc8/BZf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UYf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public measure(Lc8/CZf;FLc8/HZf;)V
    .locals 6
    .param p1, "node"    # Lc8/CZf;
    .param p2, "width"    # F
    .param p3, "measureOutput"    # Lc8/HZf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    move-object v1, p1

    check-cast v1, Lc8/UYf;

    .line 100
    .local v1, "textDomObject":Lc8/UYf;
    invoke-static {p2}, Lc8/yZf;->isUndefined(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p1, Lc8/CZf;->cssstyle:Lc8/DZf;

    iget p2, v2, Lc8/DZf;->maxWidth:F

    .line 103
    :cond_0
    const/4 v0, 0x0

    .line 104
    .local v0, "forceWidth":Z
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 105
    invoke-virtual {p1}, Lc8/CZf;->getParent()Lc8/CZf;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lc8/UYf;->access$000(Lc8/UYf;)Landroid/text/Layout$Alignment;

    move-result-object v2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_1

    .line 106
    invoke-virtual {p1}, Lc8/CZf;->getParent()Lc8/CZf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/CZf;->getLayoutWidth()F

    move-result v2

    invoke-static {p2, v2}, Lc8/FZf;->floatsEqual(FF)Z

    move-result v0

    .line 109
    :cond_1
    invoke-static {v1, v5}, Lc8/UYf;->access$102(Lc8/UYf;Z)Z

    .line 110
    invoke-static {v1}, Lc8/UYf;->access$200(Lc8/UYf;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1, v2, p2, v0}, Lc8/UYf;->getTextWidth(Landroid/text/TextPaint;FZ)F

    move-result p2

    .line 111
    cmpl-float v2, p2, v4

    if-lez v2, :cond_2

    invoke-static {v1}, Lc8/UYf;->access$300(Lc8/UYf;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 112
    const/4 v2, 0x0

    invoke-static {v1, p2, v5, v2}, Lc8/UYf;->access$500(Lc8/UYf;FZLandroid/text/Layout;)Landroid/text/Layout;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/UYf;->access$402(Lc8/UYf;Landroid/text/Layout;)Landroid/text/Layout;

    .line 113
    invoke-static {v1}, Lc8/UYf;->access$400(Lc8/UYf;)Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lc8/UYf;->access$602(Lc8/UYf;F)F

    .line 114
    invoke-static {v1}, Lc8/UYf;->access$400(Lc8/UYf;)Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p3, Lc8/HZf;->height:F

    .line 115
    invoke-static {v1}, Lc8/UYf;->access$600(Lc8/UYf;)F

    move-result v2

    iput v2, p3, Lc8/HZf;->width:F

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_2
    iput v4, p3, Lc8/HZf;->height:F

    .line 118
    iput v4, p3, Lc8/HZf;->width:F

    goto :goto_0
.end method
