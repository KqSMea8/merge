.class public final Lc8/aKf;
.super Landroid/support/v4/util/ArrayMap;
.source "MsgMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dKf;->commitMonitor(Lc8/RJf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/ArrayMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$p:Lc8/RJf;


# direct methods
.method constructor <init>(Lc8/RJf;)V
    .locals 3

    .prologue
    .line 31
    iput-object p1, p0, Lc8/aKf;->val$p:Lc8/RJf;

    invoke-direct {p0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 33
    const-string/jumbo v0, "MKT_DIMENS_BIZ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/aKf;->val$p:Lc8/RJf;

    iget-object v2, v2, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v2}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->bizCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/aKf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string/jumbo v0, "MKT_DIMENS_DUP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/aKf;->val$p:Lc8/RJf;

    iget-object v2, v2, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v2}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->needACK()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/aKf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string/jumbo v0, "MKT_DIMENS_MQTT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/aKf;->val$p:Lc8/RJf;

    iget-object v2, v2, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v2}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->msgType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/aKf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string/jumbo v0, "MKT_DIMENS_TYPE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/aKf;->val$p:Lc8/RJf;

    iget-object v2, v2, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v2}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->type()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/aKf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string/jumbo v0, "MKT_DIMENS_SUBTYPE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/aKf;->val$p:Lc8/RJf;

    iget-object v2, v2, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v2}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->subType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/aKf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string/jumbo v0, "MKT_DIMENS_TOPIC"

    iget-object v1, p0, Lc8/aKf;->val$p:Lc8/RJf;

    iget-object v1, v1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v1}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->topic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/aKf;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method
