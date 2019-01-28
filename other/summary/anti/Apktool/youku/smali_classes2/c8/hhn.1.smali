.class public Lc8/hhn;
.super Ljava/lang/Object;
.source "LoginException.java"

# interfaces
.implements Lc8/ghn;


# instance fields
.field private errorCode:I

.field private errorInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lc8/hhn;->errorCode:I

    return v0
.end method

.method public getErrorInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lc8/hhn;->errorInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorCode(I)Lc8/hhn;
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 25
    iput p1, p0, Lc8/hhn;->errorCode:I

    .line 26
    return-object p0
.end method

.method public setErrorInfo(Ljava/lang/String;)Lc8/hhn;
    .locals 0
    .param p1, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lc8/hhn;->errorInfo:Ljava/lang/String;

    .line 31
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "errorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/hhn;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "   errorInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/hhn;->errorInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
