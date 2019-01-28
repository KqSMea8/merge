.class public Lc8/rof;
.super Ljava/lang/Object;
.source "DefaultMtopAdapter.java"

# interfaces
.implements Lc8/AMf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sof;->sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/xof;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/sof;

.field final synthetic val$listener:Lc8/xof;


# direct methods
.method constructor <init>(Lc8/sof;Lc8/xof;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lc8/rof;->this$0:Lc8/sof;

    iput-object p2, p0, Lc8/rof;->val$listener:Lc8/xof;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 2
    .param p1, "requestType"    # I
    .param p2, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 45
    iget-object v0, p0, Lc8/rof;->val$listener:Lc8/xof;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 46
    iget-object v0, p0, Lc8/rof;->val$listener:Lc8/xof;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/xof;->onError(Lorg/json/JSONObject;)V

    .line 48
    :cond_0
    return-void
.end method

.method public onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lc8/cOp;Ljava/lang/Object;)V
    .locals 2
    .param p1, "requestType"    # I
    .param p2, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "pojo"    # Lc8/cOp;
    .param p4, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 52
    iget-object v0, p0, Lc8/rof;->val$listener:Lc8/xof;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 53
    iget-object v0, p0, Lc8/rof;->val$listener:Lc8/xof;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/xof;->onSuccess(Lorg/json/JSONObject;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 2
    .param p1, "requestType"    # I
    .param p2, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 68
    iget-object v0, p0, Lc8/rof;->val$listener:Lc8/xof;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 69
    iget-object v0, p0, Lc8/rof;->val$listener:Lc8/xof;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/xof;->onError(Lorg/json/JSONObject;)V

    .line 71
    :cond_0
    return-void
.end method
