.class public Lc8/sJf;
.super Ljava/lang/Object;
.source "MtopConnection.java"

# interfaces
.implements Lc8/inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/wJf;->onResponse(Ljava/lang/String;ILjava/util/Map;)V
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
.field final synthetic this$0:Lc8/wJf;

.field final synthetic val$code:I

.field final synthetic val$dataId:Ljava/lang/String;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lc8/wJf;ILjava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/wJf;

    .prologue
    .line 92
    iput-object p1, p0, Lc8/sJf;->this$0:Lc8/wJf;

    iput p2, p0, Lc8/sJf;->val$code:I

    iput-object p3, p0, Lc8/sJf;->val$map:Ljava/util/Map;

    iput-object p4, p0, Lc8/sJf;->val$dataId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/FIf;)V
    .locals 8
    .param p1, "responseObserver"    # Lc8/FIf;

    .prologue
    const/4 v4, 0x0

    .line 95
    if-nez p1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v5, p0, Lc8/sJf;->this$0:Lc8/wJf;

    iget v6, p0, Lc8/sJf;->val$code:I

    iget-object v3, p0, Lc8/sJf;->val$map:Ljava/util/Map;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lc8/sJf;->val$map:Ljava/util/Map;

    const-string/jumbo v7, "re_msg"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_1
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Lc8/wJf;->transCode(ILjava/lang/String;)I

    move-result v2

    .line 98
    .local v2, "reCode":I
    iget-object v3, p0, Lc8/sJf;->this$0:Lc8/wJf;

    invoke-virtual {v3}, Lc8/wJf;->getConverter2Msg()Lc8/NIf;

    move-result-object v3

    iget-object v5, p0, Lc8/sJf;->val$map:Ljava/util/Map;

    invoke-interface {v3, v2, v5}, Lc8/NIf;->convertResponse(ILjava/util/Map;)Lcom/taobao/tao/messagekit/core/model/Ack;

    move-result-object v0

    .line 99
    .local v0, "ack":Lcom/taobao/tao/messagekit/core/model/Ack;
    if-nez v0, :cond_1

    .line 100
    invoke-static {}, Lcom/taobao/tao/messagekit/core/model/Ack;->create()Lcom/taobao/tao/messagekit/core/model/Ack;

    move-result-object v0

    .line 102
    :cond_1
    invoke-virtual {v0, v2}, Lcom/taobao/tao/messagekit/core/model/Ack;->setStatus(I)V

    .line 103
    iget-object v3, p0, Lc8/sJf;->val$dataId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/taobao/tao/messagekit/core/model/Ack;->setID(Ljava/lang/String;)V

    .line 104
    new-instance v1, Lc8/RJf;

    invoke-direct {v1, v0}, Lc8/RJf;-><init>(Lcom/taobao/tao/messagekit/core/model/IProtocol;)V

    .line 105
    .local v1, "p":Lc8/RJf;, "Lcom/taobao/tao/messagekit/core/model/Package<Lcom/taobao/tao/messagekit/core/model/Ack;>;"
    iget-object v3, p0, Lc8/sJf;->val$dataId:Ljava/lang/String;

    iput-object v3, v1, Lc8/RJf;->dataId:Ljava/lang/String;

    .line 106
    iget-object v3, p0, Lc8/sJf;->val$map:Ljava/util/Map;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lc8/sJf;->val$map:Ljava/util/Map;

    const-string/jumbo v5, "context"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_2
    iput-object v3, v1, Lc8/RJf;->context:Ljava/lang/Object;

    .line 108
    invoke-static {v1}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/Vlq;->subscribe(Lc8/Wlq;)Lc8/Pmq;

    .line 109
    const/16 v3, -0x7530

    if-eq v3, v2, :cond_2

    const/16 v3, 0x3e8

    if-ne v3, v2, :cond_5

    .line 110
    :cond_2
    iget-object v3, p0, Lc8/sJf;->this$0:Lc8/wJf;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lc8/wJf;->access$002(Lc8/wJf;I)I

    .line 111
    const-string/jumbo v3, "MKT"

    const-string/jumbo v4, "MKT_ACCS_RATE"

    invoke-static {v3, v4}, Lc8/dKf;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "ack":Lcom/taobao/tao/messagekit/core/model/Ack;
    .end local v1    # "p":Lc8/RJf;, "Lcom/taobao/tao/messagekit/core/model/Package<Lcom/taobao/tao/messagekit/core/model/Ack;>;"
    .end local v2    # "reCode":I
    :cond_3
    move-object v3, v4

    .line 97
    goto :goto_1

    .restart local v0    # "ack":Lcom/taobao/tao/messagekit/core/model/Ack;
    .restart local v1    # "p":Lc8/RJf;, "Lcom/taobao/tao/messagekit/core/model/Package<Lcom/taobao/tao/messagekit/core/model/Ack;>;"
    .restart local v2    # "reCode":I
    :cond_4
    move-object v3, v4

    .line 106
    goto :goto_2

    .line 113
    :cond_5
    iget-object v3, p0, Lc8/sJf;->this$0:Lc8/wJf;

    invoke-static {v3}, Lc8/wJf;->access$100(Lc8/wJf;)I

    move-result v3

    const/4 v5, 0x3

    if-ge v3, v5, :cond_6

    iget-object v3, p0, Lc8/sJf;->this$0:Lc8/wJf;

    invoke-static {v3}, Lc8/wJf;->access$204(Lc8/wJf;)I

    .line 114
    :cond_6
    const-string/jumbo v3, "MKT"

    const-string/jumbo v5, "MKT_ACCS_RATE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lc8/sJf;->val$code:I

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
    .line 92
    check-cast p1, Lc8/FIf;

    invoke-virtual {p0, p1}, Lc8/sJf;->call(Lc8/FIf;)V

    return-void
.end method
