.class public Lc8/Rcg;
.super Lc8/Cv;
.source "BasicListComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Xcg;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Xcg;


# direct methods
.method constructor <init>(Lc8/Xcg;)V
    .locals 0

    .prologue
    .line 270
    .local p0, "this":Lc8/Rcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent.2;"
    iput-object p1, p0, Lc8/Rcg;->this$0:Lc8/Xcg;

    invoke-direct {p0}, Lc8/Cv;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lc8/Rv;I)V
    .locals 7
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "newState"    # I

    .prologue
    .local p0, "this":Lc8/Rcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent.2;"
    const/4 v6, 0x0

    .line 273
    invoke-super {p0, p1, p2}, Lc8/Cv;->onScrollStateChanged(Lc8/Rv;I)V

    .line 275
    iget-object v5, p0, Lc8/Rcg;->this$0:Lc8/Xcg;

    invoke-virtual {v5}, Lc8/Xcg;->getInstance()Lc8/nVf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/nVf;->getWXScrollListeners()Ljava/util/List;

    move-result-object v2

    .line 276
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/common/OnWXScrollListener;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 277
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/AXf;

    .line 278
    .local v1, "listener":Lc8/AXf;
    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {p1, v6}, Lc8/Rv;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 280
    .local v3, "topView":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 281
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 282
    .local v4, "y":I
    invoke-interface {v1, p1, v6, v4, p2}, Lc8/AXf;->onScrollStateChanged(Landroid/view/View;III)V

    goto :goto_0

    .line 287
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lc8/AXf;
    .end local v3    # "topView":Landroid/view/View;
    .end local v4    # "y":I
    :cond_1
    return-void
.end method

.method public onScrolled(Lc8/Rv;II)V
    .locals 8
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 291
    .local p0, "this":Lc8/Rcg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent.2;"
    invoke-super {p0, p1, p2, p3}, Lc8/Cv;->onScrolled(Lc8/Rv;II)V

    .line 292
    iget-object v5, p0, Lc8/Rcg;->this$0:Lc8/Xcg;

    invoke-virtual {v5}, Lc8/Xcg;->getInstance()Lc8/nVf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/nVf;->getWXScrollListeners()Ljava/util/List;

    move-result-object v4

    .line 293
    .local v4, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/common/OnWXScrollListener;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 295
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/AXf;

    .line 296
    .local v3, "listener":Lc8/AXf;
    if-eqz v3, :cond_0

    .line 297
    instance-of v5, v3, Lc8/vXf;

    if-eqz v5, :cond_2

    .line 298
    move-object v0, v3

    check-cast v0, Lc8/vXf;

    move-object v5, v0

    iget-object v6, p0, Lc8/Rcg;->this$0:Lc8/Xcg;

    invoke-virtual {v6}, Lc8/Xcg;->getRef()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lc8/vXf;->isNeedScroller(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 299
    invoke-interface {v3, p1, p2, p3}, Lc8/AXf;->onScrolled(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Lc8/AXf;
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 302
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "listener":Lc8/AXf;
    :cond_2
    :try_start_1
    invoke-interface {v3, p1, p2, p3}, Lc8/AXf;->onScrolled(Landroid/view/View;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
