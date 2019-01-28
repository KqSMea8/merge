.class public Lc8/dHn;
.super Landroid/widget/RelativeLayout;
.source "RevealRelativeLayout.java"


# instance fields
.field mCenterX:F

.field mCenterY:F

.field mRadius:F

.field mRevealPath:Landroid/graphics/Path;

.field normal:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/dHn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/dHn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput-boolean v1, p0, Lc8/dHn;->normal:Z

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lc8/dHn;->setLayerType(ILandroid/graphics/Paint;)V

    .line 35
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lc8/dHn;->mRevealPath:Landroid/graphics/Path;

    .line 36
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 67
    iget-boolean v2, p0, Lc8/dHn;->normal:Z

    if-eqz v2, :cond_0

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 77
    :goto_0
    return v0

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 72
    .local v1, "state":I
    iget-object v2, p0, Lc8/dHn;->mRevealPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 73
    iget-object v2, p0, Lc8/dHn;->mRevealPath:Landroid/graphics/Path;

    iget v3, p0, Lc8/dHn;->mCenterX:F

    iget v4, p0, Lc8/dHn;->mCenterY:F

    iget v5, p0, Lc8/dHn;->mRadius:F

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 74
    iget-object v2, p0, Lc8/dHn;->mRevealPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 76
    .local v0, "isInvalided":Z
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public setCenter(FF)V
    .locals 0
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F

    .prologue
    .line 49
    iput p1, p0, Lc8/dHn;->mCenterX:F

    .line 50
    iput p2, p0, Lc8/dHn;->mCenterY:F

    .line 51
    return-void
.end method

.method public setNormal(Z)V
    .locals 0
    .param p1, "normal"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lc8/dHn;->normal:Z

    .line 41
    return-void
.end method

.method public setRevealRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 60
    iput p1, p0, Lc8/dHn;->mRadius:F

    .line 61
    invoke-virtual {p0}, Lc8/dHn;->invalidate()V

    .line 62
    return-void
.end method
