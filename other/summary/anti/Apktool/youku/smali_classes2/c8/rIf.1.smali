.class public Lc8/rIf;
.super Ljava/lang/Object;
.source "TaskStatusRequest.java"

# interfaces
.implements Lc8/dOp;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, "mtop.alibaba.motu.remote.traceStatus"

    iput-object v0, p0, Lc8/rIf;->API_NAME:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lc8/rIf;->VERSION:Ljava/lang/String;

    .line 30
    iput-boolean v2, p0, Lc8/rIf;->NEED_ECODE:Z

    .line 36
    iput-boolean v2, p0, Lc8/rIf;->NEED_SESSION:Z

    .line 42
    iput-object v1, p0, Lc8/rIf;->appVersion:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lc8/rIf;->data:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lc8/rIf;->appKey:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lc8/rIf;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lc8/rIf;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lc8/rIf;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lc8/rIf;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lc8/rIf;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lc8/rIf;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lc8/rIf;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lc8/rIf;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lc8/rIf;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0
    .param p1, "API_NAME"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lc8/rIf;->API_NAME:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lc8/rIf;->appKey:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lc8/rIf;->appVersion:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lc8/rIf;->data:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0
    .param p1, "NEED_ECODE"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lc8/rIf;->NEED_ECODE:Z

    .line 114
    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0
    .param p1, "NEED_SESSION"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lc8/rIf;->NEED_SESSION:Z

    .line 132
    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0
    .param p1, "VERSION"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lc8/rIf;->VERSION:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lc8/rIf;->version:Ljava/lang/String;

    .line 204
    return-void
.end method
