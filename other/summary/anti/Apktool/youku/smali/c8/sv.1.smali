.class public abstract Lc8/sv;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Rv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemDecoration"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILc8/Rv;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "itemPosition"    # I
    .param p3, "parent"    # Lc8/Rv;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 9985
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 9986
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lc8/Rv;Lc8/Nv;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lc8/Rv;
    .param p4, "state"    # Lc8/Nv;

    .prologue
    .line 10009
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/yv;

    invoke-virtual {v0}, Lc8/yv;->getViewLayoutPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lc8/sv;->getItemOffsets(Landroid/graphics/Rect;ILc8/Rv;)V

    .line 10011
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lc8/Rv;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lc8/Rv;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 9955
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lc8/Rv;Lc8/Nv;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lc8/Rv;
    .param p3, "state"    # Lc8/Nv;

    .prologue
    .line 9946
    invoke-virtual {p0, p1, p2}, Lc8/sv;->onDraw(Landroid/graphics/Canvas;Lc8/Rv;)V

    .line 9947
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lc8/Rv;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lc8/Rv;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 9976
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lc8/Rv;Lc8/Nv;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lc8/Rv;
    .param p3, "state"    # Lc8/Nv;

    .prologue
    .line 9967
    invoke-virtual {p0, p1, p2}, Lc8/sv;->onDrawOver(Landroid/graphics/Canvas;Lc8/Rv;)V

    .line 9968
    return-void
.end method
