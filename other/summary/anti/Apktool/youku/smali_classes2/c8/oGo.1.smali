.class public Lc8/oGo;
.super Ljava/lang/Object;
.source "VipGlobalResponseModel.java"


# instance fields
.field private api:Ljava/lang/String;

.field private isBusinessError:Z

.field private isErrorHandled:Z

.field private isNetError:Z

.field private isParseError:Z

.field private isSessionInvalid:Z

.field private isSystemError:Z

.field private retCode:Ljava/lang/String;

.field private retMsg:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v0, p0, Lc8/oGo;->isErrorHandled:Z

    .line 16
    iput-boolean v0, p0, Lc8/oGo;->isSessionInvalid:Z

    .line 17
    iput-boolean v0, p0, Lc8/oGo;->isNetError:Z

    .line 18
    iput-boolean v0, p0, Lc8/oGo;->isBusinessError:Z

    .line 19
    iput-boolean v0, p0, Lc8/oGo;->isSystemError:Z

    .line 20
    iput-boolean v0, p0, Lc8/oGo;->isParseError:Z

    return-void
.end method


# virtual methods
.method public getApi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lc8/oGo;->api:Ljava/lang/String;

    return-object v0
.end method

.method public getRetCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lc8/oGo;->retCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRetMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lc8/oGo;->retMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lc8/oGo;->v:Ljava/lang/String;

    return-object v0
.end method

.method public isBusinessError()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lc8/oGo;->isBusinessError:Z

    return v0
.end method

.method public isErrorHandled()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lc8/oGo;->isErrorHandled:Z

    return v0
.end method

.method public isNetError()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lc8/oGo;->isNetError:Z

    return v0
.end method

.method public isParseError()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lc8/oGo;->isParseError:Z

    return v0
.end method

.method public isSessionInvalid()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lc8/oGo;->isSessionInvalid:Z

    return v0
.end method

.method public isSystemError()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lc8/oGo;->isSystemError:Z

    return v0
.end method

.method public setApi(Ljava/lang/String;)V
    .locals 0
    .param p1, "api"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lc8/oGo;->api:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setBusinessError(Z)V
    .locals 0
    .param p1, "business"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lc8/oGo;->isBusinessError:Z

    .line 76
    return-void
.end method

.method public setErrorHandled(Z)V
    .locals 0
    .param p1, "errorHandled"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lc8/oGo;->isErrorHandled:Z

    .line 100
    return-void
.end method

.method public setNetError(Z)V
    .locals 0
    .param p1, "netError"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lc8/oGo;->isNetError:Z

    .line 68
    return-void
.end method

.method public setParseError(Z)V
    .locals 0
    .param p1, "parseError"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lc8/oGo;->isParseError:Z

    .line 92
    return-void
.end method

.method public setRetCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "retCode"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lc8/oGo;->retCode:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setRetMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "retMsg"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lc8/oGo;->retMsg:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setSessionInvalid(Z)V
    .locals 0
    .param p1, "sessionInvalid"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lc8/oGo;->isSessionInvalid:Z

    .line 60
    return-void
.end method

.method public setSystemError(Z)V
    .locals 0
    .param p1, "systemError"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lc8/oGo;->isSystemError:Z

    .line 84
    return-void
.end method

.method public setV(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lc8/oGo;->v:Ljava/lang/String;

    .line 52
    return-void
.end method
