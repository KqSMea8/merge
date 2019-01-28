.class public Lc8/nGo;
.super Ljava/lang/Object;
.source "VipDataResponseModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private headers:Ljava/lang/String;

.field private httpStatusCode:I

.field private model:Ljava/lang/String;

.field private msgInfo:Ljava/lang/String;

.field private success:Z

.field private t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    iget-object v0, p0, Lc8/nGo;->headers:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .prologue
    .line 24
    .local p0, "this":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    iget v0, p0, Lc8/nGo;->httpStatusCode:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    iget-object v0, p0, Lc8/nGo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    iget-object v0, p0, Lc8/nGo;->msgInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getT()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    iget-object v0, p0, Lc8/nGo;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    iget-boolean v0, p0, Lc8/nGo;->success:Z

    return v0
.end method

.method public setHeaders(Ljava/lang/String;)V
    .locals 0
    .param p1, "headers"    # Ljava/lang/String;

    .prologue
    .line 36
    .local p0, "this":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    iput-object p1, p0, Lc8/nGo;->headers:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setHttpStatusCode(I)V
    .locals 0
    .param p1, "httpStatusCode"    # I

    .prologue
    .line 28
    .local p0, "this":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    iput p1, p0, Lc8/nGo;->httpStatusCode:I

    .line 29
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 44
    .local p0, "this":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    iput-object p1, p0, Lc8/nGo;->model:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setMsgInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgInfo"    # Ljava/lang/String;

    .prologue
    .line 60
    .local p0, "this":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    iput-object p1, p0, Lc8/nGo;->msgInfo:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 52
    .local p0, "this":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    iput-boolean p1, p0, Lc8/nGo;->success:Z

    .line 53
    return-void
.end method

.method public setT(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lc8/nGo;, "Lcom/youku/vip/lib/http/model/VipDataResponseModel<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lc8/nGo;->t:Ljava/lang/Object;

    .line 69
    return-void
.end method
