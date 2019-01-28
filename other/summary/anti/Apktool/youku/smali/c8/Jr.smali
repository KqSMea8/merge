.class public Lc8/Jr;
.super Lc8/Ds;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lc8/Or;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field private final mTempPts:[F

.field final synthetic this$0:Lc8/Nr;


# direct methods
.method public constructor <init>(Lc8/Nr;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 642
    iput-object p1, p0, Lc8/Jr;->this$0:Lc8/Nr;

    .line 643
    const/4 v0, 0x0

    sget v1, Lcom/youku/phone/R$attr;->actionOverflowButtonStyle:I

    invoke-direct {p0, p2, v0, v1}, Lc8/Ds;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 640
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lc8/Jr;->mTempPts:[F

    .line 645
    invoke-virtual {p0, v2}, Lc8/Jr;->setClickable(Z)V

    .line 646
    invoke-virtual {p0, v2}, Lc8/Jr;->setFocusable(Z)V

    .line 647
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Jr;->setVisibility(I)V

    .line 648
    invoke-virtual {p0, v2}, Lc8/Jr;->setEnabled(Z)V

    .line 650
    new-instance v0, Lc8/Ir;

    invoke-direct {v0, p0, p0, p1}, Lc8/Ir;-><init>(Lc8/Jr;Landroid/view/View;Lc8/Nr;)V

    invoke-virtual {p0, v0}, Lc8/Jr;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 679
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 699
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 694
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 683
    invoke-super {p0}, Lc8/Ds;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    :goto_0
    return v1

    .line 687
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Jr;->playSoundEffect(I)V

    .line 688
    iget-object v0, p0, Lc8/Jr;->this$0:Lc8/Nr;

    invoke-virtual {v0}, Lc8/Nr;->showOverflowMenu()Z

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 14
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 704
    invoke-super/range {p0 .. p4}, Lc8/Ds;->setFrame(IIII)Z

    move-result v3

    .line 707
    .local v3, "changed":Z
    invoke-virtual {p0}, Lc8/Jr;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 708
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lc8/Jr;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 709
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {p0}, Lc8/Jr;->getWidth()I

    move-result v9

    .line 711
    .local v9, "width":I
    invoke-virtual {p0}, Lc8/Jr;->getHeight()I

    move-result v6

    .line 712
    .local v6, "height":I
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    div-int/lit8 v5, v10, 0x2

    .line 713
    .local v5, "halfEdge":I
    invoke-virtual {p0}, Lc8/Jr;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p0}, Lc8/Jr;->getPaddingRight()I

    move-result v11

    sub-int v7, v10, v11

    .line 714
    .local v7, "offsetX":I
    invoke-virtual {p0}, Lc8/Jr;->getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, Lc8/Jr;->getPaddingBottom()I

    move-result v11

    sub-int v8, v10, v11

    .line 715
    .local v8, "offsetY":I
    add-int v10, v9, v7

    div-int/lit8 v1, v10, 0x2

    .line 716
    .local v1, "centerX":I
    add-int v10, v6, v8

    div-int/lit8 v2, v10, 0x2

    .line 717
    .local v2, "centerY":I
    sub-int v10, v1, v5

    sub-int v11, v2, v5

    add-int v12, v1, v5

    add-int v13, v2, v5

    invoke-static {v0, v10, v11, v12, v13}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 721
    .end local v1    # "centerX":I
    .end local v2    # "centerY":I
    .end local v5    # "halfEdge":I
    .end local v6    # "height":I
    .end local v7    # "offsetX":I
    .end local v8    # "offsetY":I
    .end local v9    # "width":I
    :cond_0
    return v3
.end method
