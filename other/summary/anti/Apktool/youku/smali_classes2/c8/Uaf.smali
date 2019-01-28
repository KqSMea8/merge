.class public Lc8/Uaf;
.super Landroid/widget/FrameLayout;
.source "DFrameLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lc8/Uaf;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    new-instance v3, Lc8/Maf;

    invoke-direct {v3}, Lc8/Maf;-><init>()V

    .line 40
    .local v3, "setter":Lc8/Maf;
    invoke-virtual {v3, p1}, Lc8/Maf;->handleAttributeSet(Landroid/util/AttributeSet;)Lc8/Naf;

    move-result-object v0

    .line 41
    .local v0, "dinamicProperty":Lc8/Naf;
    iget-object v1, v0, Lc8/Naf;->fixedProperty:Ljava/util/Map;

    .line 42
    .local v1, "fixedProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lc8/Uaf;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lc8/Daf;->getViewSizeAndMargin(Landroid/content/Context;Ljava/util/Map;)[I

    move-result-object v4

    .line 44
    .local v4, "sizeAndMargin":[I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x0

    aget v5, v4, v5

    const/4 v6, 0x1

    aget v6, v4, v6

    invoke-direct {v2, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 46
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v5, 0x2

    aget v5, v4, v5

    const/4 v6, 0x3

    aget v6, v4, v6

    const/4 v7, 0x4

    aget v7, v4, v7

    const/4 v8, 0x5

    aget v8, v4, v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 49
    invoke-static {v1}, Lc8/Daf;->getLayoutGravity(Ljava/util/Map;)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 50
    return-object v2
.end method
