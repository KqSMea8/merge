.class public Lc8/uv;
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
    .line 6916
    iput-object p1, p0, Lc8/uv;->this$0:Lc8/xv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6929
    iget-object v0, p0, Lc8/uv;->this$0:Lc8/xv;

    invoke-virtual {v0, p1}, Lc8/xv;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 6919
    iget-object v0, p0, Lc8/uv;->this$0:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildEnd(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6952
    .line 6953
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/yv;

    .line 6954
    .local v0, "params":Lc8/yv;
    iget-object v1, p0, Lc8/uv;->this$0:Lc8/xv;

    invoke-virtual {v1, p1}, Lc8/xv;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lc8/yv;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getChildStart(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6945
    .line 6946
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/yv;

    .line 6947
    .local v0, "params":Lc8/yv;
    iget-object v1, p0, Lc8/uv;->this$0:Lc8/xv;

    invoke-virtual {v1, p1}, Lc8/xv;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lc8/yv;->topMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public getParent()Landroid/view/View;
    .locals 1

    .prologue
    .line 6924
    iget-object v0, p0, Lc8/uv;->this$0:Lc8/xv;

    iget-object v0, v0, Lc8/xv;->mRecyclerView:Lc8/Rv;

    return-object v0
.end method

.method public getParentEnd()I
    .locals 2

    .prologue
    .line 6939
    iget-object v0, p0, Lc8/uv;->this$0:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getHeight()I

    move-result v0

    iget-object v1, p0, Lc8/uv;->this$0:Lc8/xv;

    .line 6940
    invoke-virtual {v1}, Lc8/xv;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getParentStart()I
    .locals 1

    .prologue
    .line 6934
    iget-object v0, p0, Lc8/uv;->this$0:Lc8/xv;

    invoke-virtual {v0}, Lc8/xv;->getPaddingTop()I

    move-result v0

    return v0
.end method
