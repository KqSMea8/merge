.class public Lc8/dbp;
.super Lc8/lu;
.source "XRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/fbp;->onAttachedToRecyclerView(Lc8/Rv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/fbp;

.field final synthetic val$gridManager:Lc8/mu;


# direct methods
.method constructor <init>(Lc8/fbp;Lc8/mu;)V
    .locals 0
    .param p1, "this$1"    # Lc8/fbp;

    .prologue
    .line 472
    iput-object p1, p0, Lc8/dbp;->this$1:Lc8/fbp;

    iput-object p2, p0, Lc8/dbp;->val$gridManager:Lc8/mu;

    invoke-direct {p0}, Lc8/lu;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 475
    iget-object v3, p0, Lc8/dbp;->val$gridManager:Lc8/mu;

    invoke-virtual {v3}, Lc8/mu;->getSpanCount()I

    move-result v2

    .line 476
    .local v2, "spanSize":I
    iget-object v3, p0, Lc8/dbp;->this$1:Lc8/fbp;

    iget-object v3, v3, Lc8/fbp;->this$0:Lc8/hbp;

    invoke-static {v3}, Lc8/hbp;->access$800(Lc8/hbp;)Lc8/lu;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 477
    iget-object v3, p0, Lc8/dbp;->this$1:Lc8/fbp;

    invoke-virtual {v3}, Lc8/fbp;->getHeadersCount()I

    move-result v3

    sub-int v1, p1, v3

    .line 479
    .local v1, "adjPosition":I
    iget-object v3, p0, Lc8/dbp;->this$1:Lc8/fbp;

    invoke-static {v3}, Lc8/fbp;->access$900(Lc8/fbp;)Lc8/iv;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 480
    iget-object v3, p0, Lc8/dbp;->this$1:Lc8/fbp;

    invoke-static {v3}, Lc8/fbp;->access$900(Lc8/fbp;)Lc8/iv;

    move-result-object v3

    invoke-virtual {v3}, Lc8/iv;->getItemCount()I

    move-result v0

    .line 481
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 482
    iget-object v3, p0, Lc8/dbp;->this$1:Lc8/fbp;

    iget-object v3, v3, Lc8/fbp;->this$0:Lc8/hbp;

    invoke-static {v3}, Lc8/hbp;->access$800(Lc8/hbp;)Lc8/lu;

    move-result-object v3

    invoke-virtual {v3, v1}, Lc8/lu;->getSpanSize(I)I

    move-result v2

    .line 486
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :cond_0
    iget-object v3, p0, Lc8/dbp;->this$1:Lc8/fbp;

    invoke-virtual {v3, p1}, Lc8/fbp;->isHeader(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lc8/dbp;->this$1:Lc8/fbp;

    invoke-virtual {v3, p1}, Lc8/fbp;->isFooter(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    iget-object v3, p0, Lc8/dbp;->val$gridManager:Lc8/mu;

    .line 487
    invoke-virtual {v3}, Lc8/mu;->getSpanCount()I

    move-result v2

    .end local v2    # "spanSize":I
    :cond_2
    :goto_0
    return v2

    .restart local v2    # "spanSize":I
    :cond_3
    iget-object v3, p0, Lc8/dbp;->this$1:Lc8/fbp;

    iget-object v3, v3, Lc8/fbp;->this$0:Lc8/hbp;

    invoke-static {v3}, Lc8/hbp;->access$800(Lc8/hbp;)Lc8/lu;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0
.end method
