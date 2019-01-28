.class public Lcom/taobao/phenix/decode/DecodeException;
.super Ljava/lang/Throwable;
.source "DecodeException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/phenix/decode/DecodeException$DecodedError;
    }
.end annotation


# instance fields
.field private mDataFromDisk:Z

.field private mDecodedError:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

.field private misLocalUri:Z


# direct methods
.method public constructor <init>(Lcom/taobao/phenix/decode/DecodeException$DecodedError;)V
    .locals 0
    .param p1, "decodedError"    # Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/taobao/phenix/decode/DecodeException;->mDecodedError:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/taobao/phenix/decode/DecodeException$DecodedError;Ljava/lang/String;)V
    .locals 0
    .param p1, "decodedError"    # Lcom/taobao/phenix/decode/DecodeException$DecodedError;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/taobao/phenix/decode/DecodeException;->mDecodedError:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/taobao/phenix/decode/DecodeException$DecodedError;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "decodedError"    # Lcom/taobao/phenix/decode/DecodeException$DecodedError;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    .line 38
    iput-object p1, p0, Lcom/taobao/phenix/decode/DecodeException;->mDecodedError:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    .line 39
    return-void
.end method


# virtual methods
.method public dataFromDisk(Z)V
    .locals 0
    .param p1, "dataFromDisk"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/taobao/phenix/decode/DecodeException;->mDataFromDisk:Z

    .line 51
    return-void
.end method

.method public getDecodedError()Lcom/taobao/phenix/decode/DecodeException$DecodedError;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/taobao/phenix/decode/DecodeException;->mDecodedError:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    return-object v0
.end method

.method public isDataFromDisk()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/taobao/phenix/decode/DecodeException;->mDataFromDisk:Z

    return v0
.end method

.method public isLocalUri()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/taobao/phenix/decode/DecodeException;->misLocalUri:Z

    return v0
.end method

.method public setLocalUri(Z)V
    .locals 0
    .param p1, "isLocalUri"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/taobao/phenix/decode/DecodeException;->misLocalUri:Z

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DecodeException:type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/phenix/decode/DecodeException;->mDecodedError:Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " localUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/taobao/phenix/decode/DecodeException;->misLocalUri:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " fromDisk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/taobao/phenix/decode/DecodeException;->mDataFromDisk:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " throwable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/phenix/decode/DecodeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
