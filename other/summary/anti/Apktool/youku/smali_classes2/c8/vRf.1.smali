.class public Lc8/vRf;
.super Ljava/lang/Object;
.source "UpdateDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/yRf;->startUpdate(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/yRf;

.field final synthetic val$background:Z


# direct methods
.method constructor <init>(Lc8/yRf;Z)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lc8/vRf;->this$0:Lc8/yRf;

    iput-boolean p2, p0, Lc8/vRf;->val$background:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 415
    iget-object v5, p0, Lc8/vRf;->this$0:Lc8/yRf;

    iget-boolean v2, p0, Lc8/vRf;->val$background:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lc8/yRf;->getRecentData(Z)Lc8/pRf;

    move-result-object v1

    .line 416
    .local v1, "result":Lc8/pRf;, "Lcom/taobao/update/datasource/Result<Lcom/taobao/update/datasource/local/UpdateInfo;>;"
    if-eqz v1, :cond_2

    iget-object v2, v1, Lc8/pRf;->data:Ljava/lang/Object;

    if-eqz v2, :cond_2

    move v0, v3

    .line 418
    .local v0, "isHasData":Z
    :goto_1
    iget-object v3, p0, Lc8/vRf;->this$0:Lc8/yRf;

    if-eqz v0, :cond_3

    iget-object v2, v1, Lc8/pRf;->data:Ljava/lang/Object;

    check-cast v2, Lcom/taobao/update/datasource/local/UpdateInfo;

    :goto_2
    invoke-static {v3, v2}, Lc8/yRf;->access$500(Lc8/yRf;Lcom/taobao/update/datasource/local/UpdateInfo;)V

    .line 420
    if-eqz v0, :cond_0

    .line 421
    iget-object v3, p0, Lc8/vRf;->this$0:Lc8/yRf;

    iget-object v2, v1, Lc8/pRf;->data:Ljava/lang/Object;

    check-cast v2, Lcom/taobao/update/datasource/local/UpdateInfo;

    iget-boolean v5, p0, Lc8/vRf;->val$background:Z

    new-array v6, v4, [Ljava/lang/String;

    invoke-static {v3, v2, v5, v6}, Lc8/yRf;->access$200(Lc8/yRf;Lcom/taobao/update/datasource/local/UpdateInfo;Z[Ljava/lang/String;)V

    .line 424
    :cond_0
    iget-object v2, p0, Lc8/vRf;->this$0:Lc8/yRf;

    iput-boolean v4, v2, Lc8/yRf;->isUpdating:Z

    .line 426
    return-void

    .end local v0    # "isHasData":Z
    .end local v1    # "result":Lc8/pRf;, "Lcom/taobao/update/datasource/Result<Lcom/taobao/update/datasource/local/UpdateInfo;>;"
    :cond_1
    move v2, v4

    .line 415
    goto :goto_0

    .restart local v1    # "result":Lc8/pRf;, "Lcom/taobao/update/datasource/Result<Lcom/taobao/update/datasource/local/UpdateInfo;>;"
    :cond_2
    move v0, v4

    .line 416
    goto :goto_1

    .line 418
    .restart local v0    # "isHasData":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method
