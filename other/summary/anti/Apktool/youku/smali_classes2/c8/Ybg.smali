.class public Lc8/Ybg;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/acg;->scrollBy(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/acg;

.field final synthetic val$smooth:Z

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lc8/acg;ZII)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lc8/Ybg;->this$0:Lc8/acg;

    iput-boolean p2, p0, Lc8/Ybg;->val$smooth:Z

    iput p3, p0, Lc8/Ybg;->val$y:I

    iput p4, p0, Lc8/Ybg;->val$x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 646
    iget-object v0, p0, Lc8/Ybg;->this$0:Lc8/acg;

    iget v0, v0, Lc8/acg;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 647
    iget-boolean v0, p0, Lc8/Ybg;->val$smooth:Z

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lc8/Ybg;->this$0:Lc8/acg;

    invoke-virtual {v0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lc8/xeg;

    iget v1, p0, Lc8/Ybg;->val$y:I

    invoke-virtual {v0, v2, v1}, Lc8/xeg;->smoothScrollBy(II)V

    .line 659
    :goto_0
    iget-object v0, p0, Lc8/Ybg;->this$0:Lc8/acg;

    invoke-virtual {v0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 660
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lc8/Ybg;->this$0:Lc8/acg;

    invoke-virtual {v0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lc8/xeg;

    iget v1, p0, Lc8/Ybg;->val$y:I

    invoke-virtual {v0, v2, v1}, Lc8/xeg;->scrollBy(II)V

    goto :goto_0

    .line 653
    :cond_1
    iget-boolean v0, p0, Lc8/Ybg;->val$smooth:Z

    if-eqz v0, :cond_2

    .line 654
    iget-object v0, p0, Lc8/Ybg;->this$0:Lc8/acg;

    invoke-virtual {v0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lc8/seg;

    iget v1, p0, Lc8/Ybg;->val$x:I

    invoke-virtual {v0, v1, v2}, Lc8/seg;->smoothScrollBy(II)V

    goto :goto_0

    .line 656
    :cond_2
    iget-object v0, p0, Lc8/Ybg;->this$0:Lc8/acg;

    invoke-virtual {v0}, Lc8/acg;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lc8/seg;

    iget v1, p0, Lc8/Ybg;->val$x:I

    invoke-virtual {v0, v1, v2}, Lc8/seg;->scrollBy(II)V

    goto :goto_0
.end method
