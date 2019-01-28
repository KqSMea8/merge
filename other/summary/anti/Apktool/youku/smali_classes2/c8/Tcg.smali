.class public Lc8/Tcg;
.super Ljava/lang/Object;
.source "BasicListComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Xcg;->addChild(Lc8/tbg;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Xcg;

.field final synthetic val$view:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lc8/Xcg;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 655
    .local p0, "this":Lc8/Tcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent.4;"
    iput-object p1, p0, Lc8/Tcg;->this$0:Lc8/Xcg;

    iput-object p2, p0, Lc8/Tcg;->val$view:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .local p0, "this":Lc8/Tcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent.4;"
    const/4 v4, 0x0

    .line 658
    iget-object v2, p0, Lc8/Tcg;->this$0:Lc8/Xcg;

    invoke-static {v2}, Lc8/Xcg;->access$100(Lc8/Xcg;)Lc8/tbg;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 659
    iget-object v2, p0, Lc8/Tcg;->this$0:Lc8/Xcg;

    iget-object v3, p0, Lc8/Tcg;->this$0:Lc8/Xcg;

    invoke-static {v3}, Lc8/Xcg;->access$100(Lc8/Xcg;)Lc8/tbg;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/Xcg;->indexOf(Lc8/tbg;)I

    move-result v0

    .line 660
    .local v0, "keepPosition":I
    const/4 v1, 0x0

    .line 661
    .local v1, "offset":I
    iget-object v2, p0, Lc8/Tcg;->this$0:Lc8/Xcg;

    invoke-static {v2}, Lc8/Xcg;->access$100(Lc8/Xcg;)Lc8/tbg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 662
    iget-object v2, p0, Lc8/Tcg;->this$0:Lc8/Xcg;

    invoke-static {v2}, Lc8/Xcg;->access$100(Lc8/Xcg;)Lc8/tbg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 664
    :cond_0
    if-lez v1, :cond_2

    .line 665
    iget-object v2, p0, Lc8/Tcg;->val$view:Landroid/view/ViewGroup;

    check-cast v2, Lc8/ddg;

    invoke-interface {v2}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/efg;->getLayoutManager()Lc8/xv;

    move-result-object v2

    check-cast v2, Lc8/wu;

    invoke-virtual {v2, v0, v1}, Lc8/wu;->scrollToPositionWithOffset(II)V

    .line 670
    :goto_0
    iget-object v2, p0, Lc8/Tcg;->val$view:Landroid/view/ViewGroup;

    check-cast v2, Lc8/ddg;

    invoke-interface {v2}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc8/efg;->setLayoutFrozen(Z)V

    .line 671
    iget-object v2, p0, Lc8/Tcg;->this$0:Lc8/Xcg;

    invoke-static {v2, v4}, Lc8/Xcg;->access$102(Lc8/Xcg;Lc8/tbg;)Lc8/tbg;

    .line 672
    iget-object v2, p0, Lc8/Tcg;->this$0:Lc8/Xcg;

    invoke-static {v2, v4}, Lc8/Xcg;->access$202(Lc8/Xcg;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 674
    .end local v0    # "keepPosition":I
    .end local v1    # "offset":I
    :cond_1
    return-void

    .line 667
    .restart local v0    # "keepPosition":I
    .restart local v1    # "offset":I
    :cond_2
    iget-object v2, p0, Lc8/Tcg;->val$view:Landroid/view/ViewGroup;

    check-cast v2, Lc8/ddg;

    invoke-interface {v2}, Lc8/ddg;->getInnerView()Lc8/efg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/efg;->getLayoutManager()Lc8/xv;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc8/xv;->scrollToPosition(I)V

    goto :goto_0
.end method
