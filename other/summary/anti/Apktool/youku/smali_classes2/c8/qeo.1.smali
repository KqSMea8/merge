.class public Lc8/qeo;
.super Lc8/kv;
.source "XRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/veo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/veo;


# direct methods
.method private constructor <init>(Lc8/veo;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lc8/qeo;->this$0:Lc8/veo;

    invoke-direct {p0}, Lc8/kv;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/veo;Lc8/peo;)V
    .locals 0
    .param p1, "x0"    # Lc8/veo;
    .param p2, "x1"    # Lc8/peo;

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lc8/qeo;-><init>(Lc8/veo;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 463
    iget-object v2, p0, Lc8/qeo;->this$0:Lc8/veo;

    invoke-virtual {v2}, Lc8/veo;->getAdapter()Lc8/iv;

    move-result-object v0

    .line 464
    .local v0, "adapter":Lc8/iv;, "Landroid/support/v7/widget/RecyclerView$Adapter<*>;"
    if-eqz v0, :cond_2

    iget-object v2, p0, Lc8/qeo;->this$0:Lc8/veo;

    invoke-static {v2}, Lc8/veo;->access$100(Lc8/veo;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 465
    const/4 v1, 0x0

    .line 466
    .local v1, "emptyCount":I
    iget-object v2, p0, Lc8/qeo;->this$0:Lc8/veo;

    invoke-static {v2}, Lc8/veo;->access$200(Lc8/veo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    add-int/lit8 v1, v1, 0x1

    .line 469
    :cond_0
    iget-object v2, p0, Lc8/qeo;->this$0:Lc8/veo;

    invoke-static {v2}, Lc8/veo;->access$300(Lc8/veo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 470
    add-int/lit8 v1, v1, 0x1

    .line 472
    :cond_1
    invoke-virtual {v0}, Lc8/iv;->getItemCount()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 473
    iget-object v2, p0, Lc8/qeo;->this$0:Lc8/veo;

    invoke-static {v2}, Lc8/veo;->access$100(Lc8/veo;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object v2, p0, Lc8/qeo;->this$0:Lc8/veo;

    invoke-virtual {v2, v4}, Lc8/veo;->setVisibility(I)V

    .line 480
    .end local v1    # "emptyCount":I
    :cond_2
    :goto_0
    iget-object v2, p0, Lc8/qeo;->this$0:Lc8/veo;

    invoke-static {v2}, Lc8/veo;->access$400(Lc8/veo;)Lc8/ueo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 481
    iget-object v2, p0, Lc8/qeo;->this$0:Lc8/veo;

    invoke-static {v2}, Lc8/veo;->access$400(Lc8/veo;)Lc8/ueo;

    move-result-object v2

    invoke-virtual {v2}, Lc8/ueo;->notifyDataSetChanged()V

    .line 483
    :cond_3
    return-void

    .line 476
    .restart local v1    # "emptyCount":I
    :cond_4
    iget-object v2, p0, Lc8/qeo;->this$0:Lc8/veo;

    invoke-static {v2}, Lc8/veo;->access$100(Lc8/veo;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 477
    iget-object v2, p0, Lc8/qeo;->this$0:Lc8/veo;

    invoke-virtual {v2, v3}, Lc8/veo;->setVisibility(I)V

    goto :goto_0
.end method

.method public onItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 492
    iget-object v0, p0, Lc8/qeo;->this$0:Lc8/veo;

    invoke-static {v0}, Lc8/veo;->access$400(Lc8/veo;)Lc8/ueo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/ueo;->notifyItemRangeChanged(II)V

    .line 493
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 497
    iget-object v0, p0, Lc8/qeo;->this$0:Lc8/veo;

    invoke-static {v0}, Lc8/veo;->access$400(Lc8/veo;)Lc8/ueo;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lc8/ueo;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 498
    iget-object v0, p0, Lc8/qeo;->this$0:Lc8/veo;

    invoke-static {v0}, Lc8/veo;->access$500(Lc8/veo;)Lc8/kv;

    move-result-object v0

    invoke-virtual {v0}, Lc8/kv;->onChanged()V

    .line 499
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 487
    iget-object v0, p0, Lc8/qeo;->this$0:Lc8/veo;

    invoke-static {v0}, Lc8/veo;->access$400(Lc8/veo;)Lc8/ueo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/ueo;->notifyItemRangeInserted(II)V

    .line 488
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 508
    iget-object v0, p0, Lc8/qeo;->this$0:Lc8/veo;

    invoke-static {v0}, Lc8/veo;->access$400(Lc8/veo;)Lc8/ueo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/ueo;->notifyItemMoved(II)V

    .line 509
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 503
    iget-object v0, p0, Lc8/qeo;->this$0:Lc8/veo;

    invoke-static {v0}, Lc8/veo;->access$400(Lc8/veo;)Lc8/ueo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/ueo;->notifyItemRangeRemoved(II)V

    .line 504
    return-void
.end method
