.class public Lc8/IIf;
.super Ljava/lang/Object;
.source "BaseConnection.java"

# interfaces
.implements Lc8/inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/PIf;->onResponse(Ljava/lang/String;ILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/inq",
        "<",
        "Lc8/FIf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/PIf;

.field final synthetic val$code:I

.field final synthetic val$dataId:Ljava/lang/String;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lc8/PIf;ILjava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/PIf;

    .prologue
    .line 74
    .local p0, "this":Lc8/IIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection$1;"
    iput-object p1, p0, Lc8/IIf;->this$0:Lc8/PIf;

    iput p2, p0, Lc8/IIf;->val$code:I

    iput-object p3, p0, Lc8/IIf;->val$map:Ljava/util/Map;

    iput-object p4, p0, Lc8/IIf;->val$dataId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/FIf;)V
    .locals 8
    .param p1, "responseObserver"    # Lc8/FIf;

    .prologue
    .local p0, "this":Lc8/IIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection$1;"
    const/4 v4, 0x0

    .line 77
    if-nez p1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v0, Lcom/taobao/tao/messagekit/core/model/Ack;

    iget-object v3, p1, Lc8/FIf;->item:Lc8/RJf;

    iget-object v3, v3, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-direct {v0, v3}, Lcom/taobao/tao/messagekit/core/model/Ack;-><init>(Lcom/taobao/tao/messagekit/core/model/IProtocol;)V

    .line 80
    .local v0, "ack":Lcom/taobao/tao/messagekit/core/model/Ack;
    iget-object v5, p0, Lc8/IIf;->this$0:Lc8/PIf;

    iget v6, p0, Lc8/IIf;->val$code:I

    iget-object v3, p0, Lc8/IIf;->val$map:Ljava/util/Map;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lc8/IIf;->val$map:Ljava/util/Map;

    const-string/jumbo v7, "re_msg"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_1
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Lc8/PIf;->transCode(ILjava/lang/String;)I

    move-result v2

    .line 81
    .local v2, "reCode":I
    invoke-virtual {v0, v2}, Lcom/taobao/tao/messagekit/core/model/Ack;->setStatus(I)V

    .line 82
    new-instance v1, Lc8/RJf;

    invoke-direct {v1, v0}, Lc8/RJf;-><init>(Lcom/taobao/tao/messagekit/core/model/IProtocol;)V

    .line 83
    .local v1, "p":Lc8/RJf;
    iget-object v3, p0, Lc8/IIf;->val$dataId:Ljava/lang/String;

    iput-object v3, v1, Lc8/RJf;->dataId:Ljava/lang/String;

    .line 84
    iget-object v3, p1, Lc8/FIf;->item:Lc8/RJf;

    iget-object v3, v3, Lc8/RJf;->context:Ljava/lang/Object;

    iput-object v3, v1, Lc8/RJf;->context:Ljava/lang/Object;

    .line 85
    invoke-static {v1}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/Vlq;->subscribe(Lc8/Wlq;)Lc8/Pmq;

    .line 88
    const/16 v3, -0x7530

    if-eq v3, v2, :cond_1

    const/16 v3, 0x3e8

    if-ne v3, v2, :cond_3

    .line 89
    :cond_1
    iget-object v3, p0, Lc8/IIf;->this$0:Lc8/PIf;

    const/4 v4, 0x0

    iput v4, v3, Lc8/PIf;->status:I

    .line 90
    const-string/jumbo v3, "MKT"

    const-string/jumbo v4, "MKT_ACCS_RATE"

    invoke-static {v3, v4}, Lc8/dKf;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "p":Lc8/RJf;
    .end local v2    # "reCode":I
    :cond_2
    move-object v3, v4

    .line 80
    goto :goto_1

    .line 92
    .restart local v1    # "p":Lc8/RJf;
    .restart local v2    # "reCode":I
    :cond_3
    iget-object v3, p0, Lc8/IIf;->this$0:Lc8/PIf;

    iget v3, v3, Lc8/PIf;->status:I

    const/4 v5, 0x3

    if-ge v3, v5, :cond_4

    iget-object v3, p0, Lc8/IIf;->this$0:Lc8/PIf;

    iget v5, v3, Lc8/PIf;->status:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lc8/PIf;->status:I

    .line 93
    :cond_4
    const-string/jumbo v3, "MKT"

    const-string/jumbo v5, "MKT_ACCS_RATE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lc8/IIf;->val$code:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6, v4}, Lc8/dKf;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    .local p0, "this":Lc8/IIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection$1;"
    check-cast p1, Lc8/FIf;

    invoke-virtual {p0, p1}, Lc8/IIf;->call(Lc8/FIf;)V

    return-void
.end method
