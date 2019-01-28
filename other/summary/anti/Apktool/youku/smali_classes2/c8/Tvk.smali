.class public Lc8/Tvk;
.super Ljava/lang/Object;
.source "UnicomMgr.java"

# interfaces
.implements Lc8/Ivk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Xvk;->queryRelateShip(Ljava/lang/String;Lc8/Ivk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Xvk;

.field final synthetic val$netCallBack:Lc8/Ivk;

.field final synthetic val$numberStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Xvk;Lc8/Ivk;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lc8/Tvk;->this$0:Lc8/Xvk;

    iput-object p2, p0, Lc8/Tvk;->val$netCallBack:Lc8/Ivk;

    iput-object p3, p0, Lc8/Tvk;->val$numberStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "failInfo"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, Lc8/Tvk;->this$0:Lc8/Xvk;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unicom.queryRelateShip.fail: \u8054\u901a: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Xvk;->debugLog(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lc8/Tvk;->val$netCallBack:Lc8/Ivk;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lc8/Tvk;->val$netCallBack:Lc8/Ivk;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lc8/Ivk;->onFail(Ljava/lang/String;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lc8/Tvk;->this$0:Lc8/Xvk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/Xvk;->access$402(Lc8/Xvk;Z)Z

    .line 190
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 8
    .param p1, "successMessage"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 148
    :try_start_0
    iget-object v4, p0, Lc8/Tvk;->this$0:Lc8/Xvk;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "queryRelateShip.success \u8054\u901a: \u67e5\u8be2\u8ba2\u8d2d\u5173\u7cfb\u6210\u529f: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/Xvk;->debugLog(Ljava/lang/String;)V

    .line 149
    iget-object v4, p0, Lc8/Tvk;->this$0:Lc8/Xvk;

    invoke-static {v4, p1}, Lc8/Xvk;->access$100(Lc8/Xvk;Ljava/lang/String;)Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;

    move-result-object v2

    .line 150
    .local v2, "queryOrder":Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;
    const/4 v1, 0x0

    .line 151
    .local v1, "orderProd":Lcom/youku/phone/freeflow/unicom/bean/OrderProd;
    if-eqz v2, :cond_0

    const-string/jumbo v4, "0"

    iget-object v5, v2, Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;->returnCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "\u6210\u529f"

    iget-object v5, v2, Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;->returnMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;->orderProdList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;->orderProdList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 154
    iget-object v4, p0, Lc8/Tvk;->this$0:Lc8/Xvk;

    iget-object v5, v2, Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;->orderProdList:Ljava/util/List;

    invoke-static {v4, v5}, Lc8/Xvk;->access$200(Lc8/Xvk;Ljava/util/List;)Lcom/youku/phone/freeflow/unicom/bean/OrderProd;

    move-result-object v1

    .line 157
    :cond_0
    if-eqz v1, :cond_3

    .line 158
    iget-object v4, p0, Lc8/Tvk;->val$netCallBack:Lc8/Ivk;

    if-eqz v4, :cond_1

    .line 159
    iget-object v4, p0, Lc8/Tvk;->val$netCallBack:Lc8/Ivk;

    const-string/jumbo v5, ""

    invoke-interface {v4, v5}, Lc8/Ivk;->onSuccess(Ljava/lang/String;)V

    .line 169
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 170
    iput-object v1, v2, Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;->prdeProd:Lcom/youku/phone/freeflow/unicom/bean/OrderProd;

    .line 174
    :cond_2
    iget-object v4, p0, Lc8/Tvk;->this$0:Lc8/Xvk;

    iget-object v5, p0, Lc8/Tvk;->val$numberStr:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lc8/Xvk;->access$300(Lc8/Xvk;Ljava/lang/String;Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iget-object v4, p0, Lc8/Tvk;->this$0:Lc8/Xvk;

    invoke-static {v4, v7}, Lc8/Xvk;->access$402(Lc8/Xvk;Z)Z

    .line 180
    .end local v1    # "orderProd":Lcom/youku/phone/freeflow/unicom/bean/OrderProd;
    .end local v2    # "queryOrder":Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;
    :goto_1
    return-void

    .line 162
    .restart local v1    # "orderProd":Lcom/youku/phone/freeflow/unicom/bean/OrderProd;
    .restart local v2    # "queryOrder":Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;
    :cond_3
    :try_start_1
    const-string/jumbo v3, "null"

    .line 163
    .local v3, "xxx":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 164
    invoke-virtual {v2}, Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u63a5\u53e3\u8fd4\u56de\u65e0\u6709\u6548\u7684\u8ba2\u8d2d\u5173\u7cfb: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lc8/Tvk;->onFail(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 175
    .end local v1    # "orderProd":Lcom/youku/phone/freeflow/unicom/bean/OrderProd;
    .end local v2    # "queryOrder":Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;
    .end local v3    # "xxx":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    const-string/jumbo v4, "\u8ba2\u8d2d\u5173\u7cfb\u6570\u636e\u5904\u7406\u51fa\u9519"

    invoke-virtual {p0, v4}, Lc8/Tvk;->onFail(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    iget-object v4, p0, Lc8/Tvk;->this$0:Lc8/Xvk;

    invoke-static {v4, v7}, Lc8/Xvk;->access$402(Lc8/Xvk;Z)Z

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lc8/Tvk;->this$0:Lc8/Xvk;

    invoke-static {v5, v7}, Lc8/Xvk;->access$402(Lc8/Xvk;Z)Z

    throw v4
.end method
