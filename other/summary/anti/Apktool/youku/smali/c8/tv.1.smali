.class public Lc8/tv;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lc8/qx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/xv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xv;


# direct methods
.method constructor <init>(Lc8/xv;)V
    .locals 0
    .param p1, "this$0"    # Lc8/xv;

    .prologue
    .line 6870
    iput-object p1, p0, Lc8/tv;->this$0:Lc8/xv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6883
    iget-object v0, p0, Lc8/tv;->this$0:Lc8/xv;

    invoke-virtual {v0, p1}, Lc8/xv;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 6873
    iget-object v0, p0, Lc8/tv;->this$0:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildEnd(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6905
    .line 6906
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/yv;

    .line 6907
    .local v0, "params":Lc8/yv;
    iget-object v1, p0, Lc8/tv;->this$0:Lc8/xv;

    invoke-virtual {v1, p1}, Lc8/xv;->getDecoratedRight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lc8/yv;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getChildStart(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6898
    .line 6899
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/yv;

    .line 6900
    .local v0, "params":Lc8/yv;
    iget-object v1, p0, Lc8/tv;->this$0:Lc8/xv;

    invoke-virtual {v1, p1}, Lc8/xv;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lc8/yv;->leftMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public getParent()Landroid/view/View;
    .locals 1

    .prologue
    .line 6878
    iget-object v0, p0, Lc8/tv;->this$0:Lc8/xv;

    iget-object v0, v0, Lc8/xv;->mRecyclerView:Lc8/Rv;

    return-object v0
.end method

.method public getParentEnd()I
    .locals 2

    .prologue
    .line 6893
    iget-object v0, p0, Lc8/tv;->this$0:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getWidth()I

    move-result v0

    iget-object v1, p0, Lc8/tv;->this$0:Lc8/xv;

    invoke-virtual {v1}, Lc8/xv;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getParentStart()I
    .locals 1

    .prologue
    .line 6888
    iget-object v0, p0, Lc8/tv;->this$0:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getPaddingLeft()I

    move-result v0

    return v0
.end method
