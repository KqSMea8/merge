.class public Lc8/yIf;
.super Ljava/lang/Object;
.source "MsgRouter.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/DIf;->onInitialized()V
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
.field final synthetic this$0:Lc8/DIf;


# direct methods
.method constructor <init>(Lc8/DIf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/DIf;

    .prologue
    .line 95
    iput-object p1, p0, Lc8/yIf;->this$0:Lc8/DIf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/RJf;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "p"    # Lc8/RJf;

    .prologue
    .line 98
    iget-object v0, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    instance-of v0, v0, Lcom/taobao/tao/messagekit/core/model/Ack;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    check-cast p1, Lc8/RJf;

    invoke-virtual {p0, p1}, Lc8/yIf;->call(Lc8/RJf;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
