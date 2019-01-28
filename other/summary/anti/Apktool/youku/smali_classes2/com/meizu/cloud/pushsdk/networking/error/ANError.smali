.class public Lcom/meizu/cloud/pushsdk/networking/error/ANError;
.super Ljava/lang/Exception;
.source "ANError.java"


# instance fields
.field private errorBody:Ljava/lang/String;

.field private errorCode:I

.field private errorDetail:Ljava/lang/String;

.field private response:Lc8/JId;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->errorCode:I

    .line 39
    return-void
.end method

.method public constructor <init>(Lc8/JId;)V
    .locals 1
    .param p1, "response"    # Lc8/JId;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->errorCode:I

    .line 42
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->response:Lc8/JId;

    .line 43
    return-void
.end method

.method public constructor <init>(Lc8/JId;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "response"    # Lc8/JId;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->errorCode:I

    .line 65
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->response:Lc8/JId;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->errorCode:I

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lc8/JId;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "response"    # Lc8/JId;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->errorCode:I

    .line 51
    iput-object p2, p0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->response:Lc8/JId;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lc8/JId;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "response"    # Lc8/JId;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->errorCode:I

    .line 60
    iput-object p2, p0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->response:Lc8/JId;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->errorCode:I

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->errorCode:I

    .line 70
    return-void
.end method


# virtual methods
.method public getErrorBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->errorBody:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->errorCode:I

    return v0
.end method

.method public getErrorDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->errorDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Lc8/JId;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->response:Lc8/JId;

    return-object v0
.end method

.method public setCancellationMessageInError()V
    .locals 1

    .prologue
    .line 93
    const-string/jumbo v0, "requestCancelledError"

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->errorDetail:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setErrorBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorBody"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->errorBody:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->errorCode:I

    .line 86
    return-void
.end method

.method public setErrorDetail(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorDetail"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->errorDetail:Ljava/lang/String;

    .line 78
    return-void
.end method
