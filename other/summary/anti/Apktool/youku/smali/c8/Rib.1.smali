.class public Lc8/Rib;
.super Ljava/lang/Object;
.source "MTOPWrapper.java"

# interfaces
.implements Lc8/AMf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Sib;->remoteBusiness(Lc8/Xgb;Ljava/lang/Class;Lc8/Ygb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Sib;

.field final synthetic val$resultType:Ljava/lang/Class;

.field final synthetic val$rpcRequestCallback:Lc8/Ygb;


# direct methods
.method constructor <init>(Lc8/Sib;Lc8/Ygb;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Sib;

    .prologue
    .line 181
    iput-object p1, p0, Lc8/Rib;->this$0:Lc8/Sib;

    iput-object p2, p0, Lc8/Rib;->val$rpcRequestCallback:Lc8/Ygb;

    iput-object p3, p0, Lc8/Rib;->val$resultType:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 4
    .param p1, "requestType"    # I
    .param p2, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 190
    const-string/jumbo v0, "-1"

    .line 191
    .local v0, "errorCode":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 192
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_0
    iget-object v1, p0, Lc8/Rib;->val$rpcRequestCallback:Lc8/Ygb;

    iget-object v2, p0, Lc8/Rib;->this$0:Lc8/Sib;

    iget-object v3, p0, Lc8/Rib;->val$resultType:Ljava/lang/Class;

    invoke-static {v2, p2, v3}, Lc8/Sib;->access$000(Lc8/Sib;Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lc8/Zgb;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lc8/Ygb;->onError(Ljava/lang/String;Lc8/Zgb;)V

    .line 195
    return-void
.end method

.method public onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lc8/cOp;Ljava/lang/Object;)V
    .locals 3
    .param p1, "requestType"    # I
    .param p2, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "pojo"    # Lc8/cOp;
    .param p4, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 185
    iget-object v0, p0, Lc8/Rib;->val$rpcRequestCallback:Lc8/Ygb;

    iget-object v1, p0, Lc8/Rib;->this$0:Lc8/Sib;

    iget-object v2, p0, Lc8/Rib;->val$resultType:Ljava/lang/Class;

    invoke-static {v1, p2, v2}, Lc8/Sib;->access$000(Lc8/Sib;Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lc8/Zgb;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/Ygb;->onSuccess(Lc8/Zgb;)V

    .line 186
    return-void
.end method

.method public onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 4
    .param p1, "requestType"    # I
    .param p2, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 199
    const-string/jumbo v0, "-1"

    .line 200
    .local v0, "errorCode":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 201
    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    .line 204
    :cond_0
    :try_start_0
    iget-object v1, p0, Lc8/Rib;->val$rpcRequestCallback:Lc8/Ygb;

    iget-object v2, p0, Lc8/Rib;->this$0:Lc8/Sib;

    iget-object v3, p0, Lc8/Rib;->val$resultType:Ljava/lang/Class;

    invoke-static {v2, p2, v3}, Lc8/Sib;->access$000(Lc8/Sib;Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lc8/Zgb;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lc8/Ygb;->onSystemError(Ljava/lang/String;Lc8/Zgb;)V
    :try_end_0
    .catch Lcom/ali/auth/third/core/rpc/protocol/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v1

    iget-object v1, p0, Lc8/Rib;->val$rpcRequestCallback:Lc8/Ygb;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lc8/Ygb;->onSystemError(Ljava/lang/String;Lc8/Zgb;)V

    goto :goto_0
.end method
