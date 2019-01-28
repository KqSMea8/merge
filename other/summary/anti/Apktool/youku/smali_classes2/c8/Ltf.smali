.class public abstract Lc8/Ltf;
.super Ljava/lang/Object;
.source "BaseRequest.java"


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
.field protected mErrorCode:I

.field protected mErrorMsg:Ljava/lang/String;

.field protected mRetryMaxNum:I


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .param p1, "retryMaxNum"    # I

    .prologue
    .line 14
    .local p0, "this":Lc8/Ltf;, "Lcom/taobao/orange/request/BaseRequest<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x1f45

    iput v0, p0, Lc8/Ltf;->mErrorCode:I

    .line 11
    const-string/jumbo v0, "empty"

    iput-object v0, p0, Lc8/Ltf;->mErrorMsg:Ljava/lang/String;

    .line 15
    iput p1, p0, Lc8/Ltf;->mRetryMaxNum:I

    .line 16
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lc8/Ltf;, "Lcom/taobao/orange/request/BaseRequest<TT;>;"
    iget v0, p0, Lc8/Ltf;->mErrorCode:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lc8/Ltf;, "Lcom/taobao/orange/request/BaseRequest<TT;>;"
    iget-object v0, p0, Lc8/Ltf;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 33
    .local p0, "this":Lc8/Ltf;, "Lcom/taobao/orange/request/BaseRequest<TT;>;"
    iget v0, p0, Lc8/Ltf;->mErrorCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRetryMaxNum(I)V
    .locals 0
    .param p1, "retryMaxNum"    # I

    .prologue
    .line 21
    .local p0, "this":Lc8/Ltf;, "Lcom/taobao/orange/request/BaseRequest<TT;>;"
    iput p1, p0, Lc8/Ltf;->mRetryMaxNum:I

    .line 22
    return-void
.end method

.method public abstract syncRequest()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
