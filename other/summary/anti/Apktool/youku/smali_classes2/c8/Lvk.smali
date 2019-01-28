.class public Lc8/Lvk;
.super Lc8/Hvk;
.source "MobileMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mvk;->requestChinaMobileSatisfyFreeFlow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Mvk;


# direct methods
.method constructor <init>(Lc8/Mvk;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lc8/Lvk;->this$0:Lc8/Mvk;

    invoke-direct {p0}, Lc8/Hvk;-><init>()V

    return-void
.end method


# virtual methods
.method public onBreak(Ljava/lang/String;)V
    .locals 4
    .param p1, "breakInfo"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v1, p0, Lc8/Lvk;->this$0:Lc8/Mvk;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBreak:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lc8/Lvk;->this$0:Lc8/Mvk;

    invoke-virtual {v1}, Lc8/Mvk;->getCacheID()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "pcid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-static {v0, p0}, Lc8/jwk;->getMobileProductsAndRestData(Ljava/lang/String;Lc8/Ivk;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string/jumbo v1, "\u79fb\u52a8:\u7f13\u5b58\u4f2a\u7801\u4e3a\u7a7a"

    invoke-virtual {p0, v1}, Lc8/Lvk;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "failInfo"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lc8/Lvk;->this$0:Lc8/Mvk;

    invoke-virtual {v0, p1}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lc8/Lvk;->this$0:Lc8/Mvk;

    iget-object v1, p0, Lc8/Lvk;->this$0:Lc8/Mvk;

    invoke-static {v1}, Lc8/Mvk;->access$300(Lc8/Mvk;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/Lvk;->this$0:Lc8/Mvk;

    invoke-static {v2}, Lc8/Mvk;->access$400(Lc8/Mvk;)Lcom/youku/phone/freeflow/mobile/bean/Product;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/Mvk;->access$100(Lc8/Mvk;Ljava/lang/String;Lcom/youku/phone/freeflow/mobile/bean/Product;)V

    .line 99
    iget-object v0, p0, Lc8/Lvk;->this$0:Lc8/Mvk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/Mvk;->access$202(Lc8/Mvk;Z)Z

    .line 100
    return-void
.end method

.method public onPcidSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "pcid"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPhoneNumber mobile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/pwk;->errorLog(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lc8/Lvk;->this$0:Lc8/Mvk;

    invoke-static {v0, p1}, Lc8/Mvk;->access$500(Lc8/Mvk;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 7
    .param p1, "resultStr"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 76
    const-string/jumbo v1, ""

    .line 77
    .local v1, "id":Ljava/lang/String;
    const/4 v2, 0x0

    .line 79
    .local v2, "product":Lcom/youku/phone/freeflow/mobile/bean/Product;
    :try_start_0
    iget-object v4, p0, Lc8/Lvk;->this$0:Lc8/Mvk;

    const-string/jumbo v5, "requestChinaMobileSatisfyFreeFlow.success \u83b7\u53d6\u79fb\u52a8\u8ba2\u8d2d\u5173\u7cfb\u6210\u529f"

    invoke-virtual {v4, v5}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V

    .line 80
    const-class v4, Lcom/youku/phone/freeflow/mobile/bean/MobileProductsAndRestDataBean;

    invoke-static {p1, v4}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/phone/freeflow/mobile/bean/MobileProductsAndRestDataBean;

    .line 81
    .local v3, "requestDataBean":Lcom/youku/phone/freeflow/mobile/bean/MobileProductsAndRestDataBean;
    if-eqz v3, :cond_0

    .line 82
    iget-object v1, v3, Lcom/youku/phone/freeflow/mobile/bean/MobileProductsAndRestDataBean;->pseudocode:Ljava/lang/String;

    .line 83
    iget-object v4, p0, Lc8/Lvk;->this$0:Lc8/Mvk;

    iget-object v5, v3, Lcom/youku/phone/freeflow/mobile/bean/MobileProductsAndRestDataBean;->products:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lc8/Mvk;->access$000(Lc8/Mvk;Ljava/util/List;)Lcom/youku/phone/freeflow/mobile/bean/Product;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 90
    :cond_0
    iget-object v4, p0, Lc8/Lvk;->this$0:Lc8/Mvk;

    invoke-static {v4, v1, v2}, Lc8/Mvk;->access$100(Lc8/Mvk;Ljava/lang/String;Lcom/youku/phone/freeflow/mobile/bean/Product;)V

    .line 91
    iget-object v4, p0, Lc8/Lvk;->this$0:Lc8/Mvk;

    invoke-static {v4, v6}, Lc8/Mvk;->access$202(Lc8/Mvk;Z)Z

    .line 92
    .end local v3    # "requestDataBean":Lcom/youku/phone/freeflow/mobile/bean/MobileProductsAndRestDataBean;
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    iget-object v4, p0, Lc8/Lvk;->this$0:Lc8/Mvk;

    const-string/jumbo v5, "requestChinaMobileSatisfyFreeFlow.exception \u83b7\u53d6\u79fb\u52a8\u8ba2\u8d2d\u5173\u7cfb\u6210\u529f\uff0c\u6570\u636e\u89e3\u6790\u51fa\u73b0\u5f02\u5e38"

    invoke-virtual {v4, v5}, Lc8/Mvk;->debugLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    iget-object v4, p0, Lc8/Lvk;->this$0:Lc8/Mvk;

    invoke-static {v4, v1, v2}, Lc8/Mvk;->access$100(Lc8/Mvk;Ljava/lang/String;Lcom/youku/phone/freeflow/mobile/bean/Product;)V

    .line 91
    iget-object v4, p0, Lc8/Lvk;->this$0:Lc8/Mvk;

    invoke-static {v4, v6}, Lc8/Mvk;->access$202(Lc8/Mvk;Z)Z

    goto :goto_0

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lc8/Lvk;->this$0:Lc8/Mvk;

    invoke-static {v5, v1, v2}, Lc8/Mvk;->access$100(Lc8/Mvk;Ljava/lang/String;Lcom/youku/phone/freeflow/mobile/bean/Product;)V

    .line 91
    iget-object v5, p0, Lc8/Lvk;->this$0:Lc8/Mvk;

    invoke-static {v5, v6}, Lc8/Mvk;->access$202(Lc8/Mvk;Z)Z

    throw v4
.end method
