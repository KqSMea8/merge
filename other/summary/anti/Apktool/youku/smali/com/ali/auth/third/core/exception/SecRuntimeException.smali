.class public Lcom/ali/auth/third/core/exception/SecRuntimeException;
.super Ljava/lang/RuntimeException;
.source "SecRuntimeException.java"


# static fields
.field private static final serialVersionUID:J = -0x21b5c2f0f8cf483cL


# instance fields
.field private secCode:I


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "secCode"    # I
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 10
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 11
    iput p1, p0, Lcom/ali/auth/third/core/exception/SecRuntimeException;->secCode:I

    .line 12
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/ali/auth/third/core/exception/SecRuntimeException;->secCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " secCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ali/auth/third/core/exception/SecRuntimeException;->secCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
