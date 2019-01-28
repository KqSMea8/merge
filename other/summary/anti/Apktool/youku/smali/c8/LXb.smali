.class public Lc8/LXb;
.super Landroid/widget/FrameLayout;
.source "Canvas.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method


# virtual methods
.method public addViewByLevel(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "level"    # I

    .prologue
    .line 37
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lc8/LXb;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 38
    invoke-virtual {p0, v1}, Lc8/LXb;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$id;->layermanager_canvas_innerview_id:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 39
    .local v0, "curLevel":I
    if-ne v0, p2, :cond_0

    .line 51
    .end local v0    # "curLevel":I
    :goto_1
    return-void

    .line 43
    .restart local v0    # "curLevel":I
    :cond_0
    if-le v0, p2, :cond_1

    .line 44
    sget v2, Lcom/youku/phone/R$id;->layermanager_canvas_innerview_id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 45
    invoke-virtual {p0, p1, v1}, Lc8/LXb;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 37
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "curLevel":I
    :cond_2
    sget v2, Lcom/youku/phone/R$id;->layermanager_canvas_innerview_id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 50
    invoke-virtual {p0}, Lc8/LXb;->getChildCount()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lc8/LXb;->addView(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public all()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lc8/LXb;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 73
    invoke-virtual {p0, v1}, Lc8/LXb;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-object v0
.end method

.method public contains(Landroid/view/View;)Z
    .locals 2
    .param p1, "webView"    # Landroid/view/View;

    .prologue
    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lc8/LXb;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 64
    invoke-virtual {p0, v0}, Lc8/LXb;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 65
    const/4 v1, 0x1

    .line 68
    :goto_1
    return v1

    .line 63
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public findViewByLevel(I)Landroid/view/View;
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 54
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lc8/LXb;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 55
    invoke-virtual {p0, v1}, Lc8/LXb;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$id;->layermanager_canvas_innerview_id:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 56
    .local v0, "curLevel":I
    if-ne v0, p1, :cond_0

    .line 57
    invoke-virtual {p0, v1}, Lc8/LXb;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 59
    .end local v0    # "curLevel":I
    :goto_1
    return-object v2

    .line 54
    .restart local v0    # "curLevel":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "curLevel":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
