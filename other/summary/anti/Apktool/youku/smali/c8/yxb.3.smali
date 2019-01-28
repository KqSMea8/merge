.class public final Lc8/yxb;
.super Ljava/lang/Object;
.source "MtopHandler.java"

# interfaces
.implements Lc8/AMf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Bxb;->send(Ljava/lang/String;Lc8/zxb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lc8/zxb;


# direct methods
.method constructor <init>(Lc8/zxb;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lc8/yxb;->val$callback:Lc8/zxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 52
    iget-object v0, p0, Lc8/yxb;->val$callback:Lc8/zxb;

    const-string/jumbo v1, "MSG_FAILED"

    invoke-interface {v0, v1}, Lc8/zxb;->onError(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lc8/cOp;Ljava/lang/Object;)V
    .locals 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "arg2"    # Lc8/cOp;
    .param p4, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 58
    :try_start_0
    iget-object v2, p0, Lc8/yxb;->val$callback:Lc8/zxb;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "{}"

    :goto_0
    invoke-interface {v2, v1}, Lc8/zxb;->onSuccess(Ljava/lang/String;)V

    .line 63
    :goto_1
    return-void

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p2}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lc8/yxb;->val$callback:Lc8/zxb;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lc8/zxb;->onError(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 2
    .param p1, "requestType"    # I
    .param p2, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 47
    iget-object v0, p0, Lc8/yxb;->val$callback:Lc8/zxb;

    const-string/jumbo v1, "MSG_FAILED"

    invoke-interface {v0, v1}, Lc8/zxb;->onError(Ljava/lang/String;)V

    .line 48
    return-void
.end method
