.class public Lc8/Svk;
.super Lc8/Evk;
.source "UnicomMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Xvk;->queryAliCard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Evk",
        "<",
        "Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Xvk;


# direct methods
.method constructor <init>(Lc8/Xvk;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lc8/Svk;->this$0:Lc8/Xvk;

    invoke-direct {p0}, Lc8/Evk;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "resp"    # Ljava/lang/String;

    .prologue
    .line 131
    return-void
.end method

.method public onSuccess(Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;Ljava/lang/String;)V
    .locals 1
    .param p1, "bean"    # Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;
    .param p2, "resp"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;->getData()Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;->getData()Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/phone/freeflow/unicom/bean/UnicomFreeflowResult;->getFreeFlowStatus()I

    .line 126
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 120
    check-cast p1, Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/Svk;->onSuccess(Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;Ljava/lang/String;)V

    return-void
.end method
