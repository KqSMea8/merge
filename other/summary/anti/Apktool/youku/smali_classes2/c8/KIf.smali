.class public Lc8/KIf;
.super Ljava/lang/Object;
.source "BaseConnection.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/PIf;->onReceive(Lc8/OIf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Inq",
        "<",
        "Lc8/RJf;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/PIf;


# direct methods
.method constructor <init>(Lc8/PIf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/PIf;

    .prologue
    .line 116
    .local p0, "this":Lc8/KIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection$3;"
    iput-object p1, p0, Lc8/KIf;->this$0:Lc8/PIf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/RJf;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "p"    # Lc8/RJf;

    .prologue
    .local p0, "this":Lc8/KIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection$3;"
    const/4 v6, 0x0

    .line 119
    const-string/jumbo v1, "BaseConnection"

    invoke-static {v1, p1}, Lc8/ZJf;->d(Ljava/lang/String;Lc8/RJf;)V

    .line 120
    iget-object v1, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    instance-of v1, v1, Lcom/taobao/tao/messagekit/core/model/Ack;

    if-eqz v1, :cond_1

    .line 121
    invoke-static {}, Lc8/DIf;->getInstance()Lc8/DIf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/DIf;->getResponseManager()Lc8/GIf;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v3}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lc8/GIf;->pop(Ljava/lang/String;Ljava/lang/String;)Lc8/FIf;

    move-result-object v0

    .line 122
    .local v0, "ober":Lc8/FIf;
    if-eqz v0, :cond_0

    .line 123
    iget-object v1, v0, Lc8/FIf;->item:Lc8/RJf;

    iget-object v1, v1, Lc8/RJf;->context:Ljava/lang/Object;

    iput-object v1, p1, Lc8/RJf;->context:Ljava/lang/Object;

    .line 124
    invoke-static {p1}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Vlq;->subscribe(Lc8/Wlq;)Lc8/Pmq;

    .line 127
    :cond_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 133
    .end local v0    # "ober":Lc8/FIf;
    :goto_0
    return-object v1

    .line 128
    :cond_1
    iget-object v1, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v1}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->type()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 129
    invoke-static {p1}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v1

    invoke-static {}, Lc8/DIf;->getInstance()Lc8/DIf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/DIf;->getControlStream()Lc8/VJf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/Vlq;->subscribe(Lc8/Wlq;)Lc8/Pmq;

    .line 130
    const-string/jumbo v1, "MKT"

    const-string/jumbo v2, "cs"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v4, v5}, Lc8/dKf;->commitCount(Ljava/lang/String;Ljava/lang/String;D)V

    .line 131
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 133
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Lc8/KIf;, "Lcom/taobao/tao/messagekit/base/model/BaseConnection$3;"
    check-cast p1, Lc8/RJf;

    invoke-virtual {p0, p1}, Lc8/KIf;->call(Lc8/RJf;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
