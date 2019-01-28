.class public Lc8/QIf;
.super Ljava/lang/Object;
.source "IMsgRouter.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/RIf;->init()V
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
.field final synthetic this$0:Lc8/RIf;


# direct methods
.method constructor <init>(Lc8/RIf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/RIf;

    .prologue
    .line 34
    iput-object p1, p0, Lc8/QIf;->this$0:Lc8/RIf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/RJf;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "p"    # Lc8/RJf;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    const-string/jumbo v0, "IMsgRouter"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "distribute to:"

    aput-object v2, v1, v4

    iget v2, p1, Lc8/RJf;->sysCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v3, "biz:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v3}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->bizCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "topic:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v3}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->topic()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lc8/QIf;->this$0:Lc8/RIf;

    invoke-virtual {v0}, Lc8/RIf;->returnCode()I

    move-result v0

    iget v1, p1, Lc8/RJf;->sysCode:I

    if-eq v0, v1, :cond_0

    .line 39
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lc8/RJf;

    invoke-virtual {p0, p1}, Lc8/QIf;->call(Lc8/RJf;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
