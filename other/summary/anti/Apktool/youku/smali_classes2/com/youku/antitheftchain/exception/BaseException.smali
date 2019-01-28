.class public Lcom/youku/antitheftchain/exception/BaseException;
.super Ljava/lang/Exception;
.source "BaseException.java"


# static fields
.field private static final serialVersionUID:J = 0x491f9093eca76dc0L


# instance fields
.field private errorCode:I

.field private errorInfo:Ljava/lang/String;

.field private exceptionErrorCode:Lc8/oPg;

.field private subErrorCode:I


# direct methods
.method public constructor <init>(Lc8/oPg;ILjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Lc8/oPg;
    .param p2, "externalErrorCode"    # I
    .param p3, "errorInfo"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lc8/oPg;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ErrorCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ErrorInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 9
    iput v2, p0, Lcom/youku/antitheftchain/exception/BaseException;->errorCode:I

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/antitheftchain/exception/BaseException;->errorInfo:Ljava/lang/String;

    .line 11
    iput v2, p0, Lcom/youku/antitheftchain/exception/BaseException;->subErrorCode:I

    .line 31
    iput-object p3, p0, Lcom/youku/antitheftchain/exception/BaseException;->errorInfo:Ljava/lang/String;

    .line 32
    iput p2, p0, Lcom/youku/antitheftchain/exception/BaseException;->errorCode:I

    .line 33
    iput-object p1, p0, Lcom/youku/antitheftchain/exception/BaseException;->exceptionErrorCode:Lc8/oPg;

    .line 34
    return-void
.end method

.method public constructor <init>(Lc8/oPg;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Lc8/oPg;
    .param p2, "errorInfo"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lc8/oPg;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ErrorCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lc8/oPg;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ErrorInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 9
    iput v2, p0, Lcom/youku/antitheftchain/exception/BaseException;->errorCode:I

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/antitheftchain/exception/BaseException;->errorInfo:Ljava/lang/String;

    .line 11
    iput v2, p0, Lcom/youku/antitheftchain/exception/BaseException;->subErrorCode:I

    .line 39
    iput-object p2, p0, Lcom/youku/antitheftchain/exception/BaseException;->errorInfo:Ljava/lang/String;

    .line 40
    invoke-interface {p1}, Lc8/oPg;->getErrorCode()I

    move-result v0

    iput v0, p0, Lcom/youku/antitheftchain/exception/BaseException;->errorCode:I

    .line 41
    iput-object p1, p0, Lcom/youku/antitheftchain/exception/BaseException;->exceptionErrorCode:Lc8/oPg;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/youku/antitheftchain/exception/BaseException;Lc8/oPg;Ljava/lang/String;)V
    .locals 3
    .param p1, "subException"    # Lcom/youku/antitheftchain/exception/BaseException;
    .param p2, "errorCode"    # Lc8/oPg;
    .param p3, "errorInfo"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lc8/oPg;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ErrorCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lc8/oPg;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", SubErrorCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lcom/youku/antitheftchain/exception/BaseException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ErrorInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 9
    iput v2, p0, Lcom/youku/antitheftchain/exception/BaseException;->errorCode:I

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/antitheftchain/exception/BaseException;->errorInfo:Ljava/lang/String;

    .line 11
    iput v2, p0, Lcom/youku/antitheftchain/exception/BaseException;->subErrorCode:I

    .line 68
    invoke-virtual {p0, p1}, Lcom/youku/antitheftchain/exception/BaseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 69
    iput-object p3, p0, Lcom/youku/antitheftchain/exception/BaseException;->errorInfo:Ljava/lang/String;

    .line 70
    invoke-interface {p2}, Lc8/oPg;->getErrorCode()I

    move-result v0

    iput v0, p0, Lcom/youku/antitheftchain/exception/BaseException;->errorCode:I

    .line 71
    invoke-virtual {p1}, Lcom/youku/antitheftchain/exception/BaseException;->getErrorCode()I

    move-result v0

    iput v0, p0, Lcom/youku/antitheftchain/exception/BaseException;->subErrorCode:I

    .line 72
    iput-object p2, p0, Lcom/youku/antitheftchain/exception/BaseException;->exceptionErrorCode:Lc8/oPg;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lc8/oPg;ILjava/lang/String;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "errorCode"    # Lc8/oPg;
    .param p3, "externalErrorCode"    # I
    .param p4, "errorInfo"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lc8/oPg;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ErrorCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ErrorInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 9
    iput v2, p0, Lcom/youku/antitheftchain/exception/BaseException;->errorCode:I

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/antitheftchain/exception/BaseException;->errorInfo:Ljava/lang/String;

    .line 11
    iput v2, p0, Lcom/youku/antitheftchain/exception/BaseException;->subErrorCode:I

    .line 59
    invoke-virtual {p0, p1}, Lcom/youku/antitheftchain/exception/BaseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 60
    iput-object p4, p0, Lcom/youku/antitheftchain/exception/BaseException;->errorInfo:Ljava/lang/String;

    .line 61
    iput p3, p0, Lcom/youku/antitheftchain/exception/BaseException;->errorCode:I

    .line 62
    iput-object p2, p0, Lcom/youku/antitheftchain/exception/BaseException;->exceptionErrorCode:Lc8/oPg;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lc8/oPg;Ljava/lang/String;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "errorCode"    # Lc8/oPg;
    .param p3, "errorInfo"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lc8/oPg;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ErrorCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lc8/oPg;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ErrorInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 9
    iput v2, p0, Lcom/youku/antitheftchain/exception/BaseException;->errorCode:I

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/antitheftchain/exception/BaseException;->errorInfo:Ljava/lang/String;

    .line 11
    iput v2, p0, Lcom/youku/antitheftchain/exception/BaseException;->subErrorCode:I

    .line 48
    invoke-virtual {p0, p1}, Lcom/youku/antitheftchain/exception/BaseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 49
    iput-object p3, p0, Lcom/youku/antitheftchain/exception/BaseException;->errorInfo:Ljava/lang/String;

    .line 50
    invoke-interface {p2}, Lc8/oPg;->getErrorCode()I

    move-result v0

    iput v0, p0, Lcom/youku/antitheftchain/exception/BaseException;->errorCode:I

    .line 51
    iput-object p2, p0, Lcom/youku/antitheftchain/exception/BaseException;->exceptionErrorCode:Lc8/oPg;

    .line 53
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/youku/antitheftchain/exception/BaseException;->errorCode:I

    return v0
.end method

.method public getErrorInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/youku/antitheftchain/exception/BaseException;->errorInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionErrorCode()Lc8/oPg;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/youku/antitheftchain/exception/BaseException;->exceptionErrorCode:Lc8/oPg;

    return-object v0
.end method

.method public getSubErrorCode()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/youku/antitheftchain/exception/BaseException;->subErrorCode:I

    return v0
.end method
