.class public Lc8/pv;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field public bottom:I

.field public changeFlags:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12501
    return-void
.end method


# virtual methods
.method public setFrom(Lc8/Qv;)Lc8/pv;
    .locals 1
    .param p1, "holder"    # Lc8/Qv;

    .prologue
    .line 12511
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/pv;->setFrom(Lc8/Qv;I)Lc8/pv;

    move-result-object v0

    return-object v0
.end method

.method public setFrom(Lc8/Qv;I)Lc8/pv;
    .locals 2
    .param p1, "holder"    # Lc8/Qv;
    .param p2, "flags"    # I

    .prologue
    .line 12526
    iget-object v0, p1, Lc8/Qv;->itemView:Landroid/view/View;

    .line 12527
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lc8/pv;->left:I

    .line 12528
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lc8/pv;->top:I

    .line 12529
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, p0, Lc8/pv;->right:I

    .line 12530
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, p0, Lc8/pv;->bottom:I

    .line 12531
    return-object p0
.end method
