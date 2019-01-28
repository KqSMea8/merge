.class public Lcom/taobao/phenix/loader/network/NetworkResponseException;
.super Ljava/lang/RuntimeException;
.source "NetworkResponseException.java"


# instance fields
.field private final mExtraCode:I

.field private final mHttpCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "httpCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/taobao/phenix/loader/network/NetworkResponseException;-><init>(ILjava/lang/String;ILjava/lang/Throwable;)V

    .line 15
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "httpCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "extraCode"    # I
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 8
    invoke-direct {p0, p2, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    iput p1, p0, Lcom/taobao/phenix/loader/network/NetworkResponseException;->mHttpCode:I

    .line 10
    iput p3, p0, Lcom/taobao/phenix/loader/network/NetworkResponseException;->mExtraCode:I

    .line 11
    return-void
.end method


# virtual methods
.method public getExtraCode()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/taobao/phenix/loader/network/NetworkResponseException;->mExtraCode:I

    return v0
.end method

.method public getHttpCode()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/taobao/phenix/loader/network/NetworkResponseException;->mHttpCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "httpCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/phenix/loader/network/NetworkResponseException;->mHttpCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", extraCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/phenix/loader/network/NetworkResponseException;->mExtraCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/phenix/loader/network/NetworkResponseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
