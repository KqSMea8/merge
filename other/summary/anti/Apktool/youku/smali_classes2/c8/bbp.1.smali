.class public Lc8/bbp;
.super Lc8/kv;
.source "XRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hbp;


# direct methods
.method private constructor <init>(Lc8/hbp;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lc8/bbp;->this$0:Lc8/hbp;

    invoke-direct {p0}, Lc8/kv;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/hbp;Lc8/abp;)V
    .locals 0
    .param p1, "x0"    # Lc8/hbp;
    .param p2, "x1"    # Lc8/abp;

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lc8/bbp;-><init>(Lc8/hbp;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 394
    iget-object v2, p0, Lc8/bbp;->this$0:Lc8/hbp;

    invoke-virtual {v2}, Lc8/hbp;->getAdapter()Lc8/iv;

    move-result-object v0

    .line 395
    .local v0, "adapter":Lc8/iv;, "Landroid/support/v7/widget/RecyclerView$Adapter<*>;"
    if-eqz v0, :cond_2

    iget-object v2, p0, Lc8/bbp;->this$0:Lc8/hbp;

    invoke-static {v2}, Lc8/hbp;->access$300(Lc8/hbp;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 396
    const/4 v1, 0x0

    .line 397
    .local v1, "emptyCount":I
    iget-object v2, p0, Lc8/bbp;->this$0:Lc8/hbp;

    invoke-static {v2}, Lc8/hbp;->access$400(Lc8/hbp;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    add-int/lit8 v1, v1, 0x1

    .line 400
    :cond_0
    iget-object v2, p0, Lc8/bbp;->this$0:Lc8/hbp;

    invoke-static {v2}, Lc8/hbp;->access$500(Lc8/hbp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    add-int/lit8 v1, v1, 0x1

    .line 403
    :cond_1
    invoke-virtual {v0}, Lc8/iv;->getItemCount()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 404
    iget-object v2, p0, Lc8/bbp;->this$0:Lc8/hbp;

    invoke-static {v2}, Lc8/hbp;->access$300(Lc8/hbp;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-object v2, p0, Lc8/bbp;->this$0:Lc8/hbp;

    invoke-virtual {v2, v4}, Lc8/hbp;->setVisibility(I)V

    .line 411
    .end local v1    # "emptyCount":I
    :cond_2
    :goto_0
    iget-object v2, p0, Lc8/bbp;->this$0:Lc8/hbp;

    invoke-static {v2}, Lc8/hbp;->access$600(Lc8/hbp;)Lc8/iv;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 412
    iget-object v2, p0, Lc8/bbp;->this$0:Lc8/hbp;

    invoke-static {v2}, Lc8/hbp;->access$600(Lc8/hbp;)Lc8/iv;

    move-result-object v2

    invoke-virtual {v2}, Lc8/iv;->notifyDataSetChanged()V

    .line 414
    :cond_3
    return-void

    .line 407
    .restart local v1    # "emptyCount":I
    :cond_4
    iget-object v2, p0, Lc8/bbp;->this$0:Lc8/hbp;

    invoke-static {v2}, Lc8/hbp;->access$300(Lc8/hbp;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v2, p0, Lc8/bbp;->this$0:Lc8/hbp;

    invoke-virtual {v2, v3}, Lc8/hbp;->setVisibility(I)V

    goto :goto_0
.end method

.method public onItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc8/bbp;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 424
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 428
    iget-object v0, p0, Lc8/bbp;->this$0:Lc8/hbp;

    invoke-static {v0}, Lc8/hbp;->access$600(Lc8/hbp;)Lc8/iv;

    move-result-object v0

    iget-object v1, p0, Lc8/bbp;->this$0:Lc8/hbp;

    invoke-static {v1}, Lc8/hbp;->access$700(Lc8/hbp;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3}, Lc8/iv;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 429
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lc8/bbp;->this$0:Lc8/hbp;

    invoke-static {v0}, Lc8/hbp;->access$600(Lc8/hbp;)Lc8/iv;

    move-result-object v0

    iget-object v1, p0, Lc8/bbp;->this$0:Lc8/hbp;

    invoke-static {v1}, Lc8/hbp;->access$700(Lc8/hbp;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lc8/iv;->notifyItemRangeInserted(II)V

    .line 419
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 3
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 438
    iget-object v0, p0, Lc8/bbp;->this$0:Lc8/hbp;

    invoke-static {v0}, Lc8/hbp;->access$600(Lc8/hbp;)Lc8/iv;

    move-result-object v0

    iget-object v1, p0, Lc8/bbp;->this$0:Lc8/hbp;

    invoke-static {v1}, Lc8/hbp;->access$700(Lc8/hbp;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lc8/bbp;->this$0:Lc8/hbp;

    invoke-static {v2}, Lc8/hbp;->access$700(Lc8/hbp;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lc8/iv;->notifyItemMoved(II)V

    .line 439
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lc8/bbp;->this$0:Lc8/hbp;

    invoke-static {v0}, Lc8/hbp;->access$600(Lc8/hbp;)Lc8/iv;

    move-result-object v0

    iget-object v1, p0, Lc8/bbp;->this$0:Lc8/hbp;

    invoke-static {v1}, Lc8/hbp;->access$700(Lc8/hbp;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lc8/iv;->notifyItemRangeRemoved(II)V

    .line 434
    return-void
.end method
