.class public Lc8/uDh;
.super Ljava/lang/Object;
.source "AdHotStartConfigInfo.java"


# instance fields
.field private backgroundWaitSeconds:I

.field private blackList:Ljava/lang/String;

.field private fetchServerConfigPeriodSeconds:I

.field private isHotStartEnabled:Z

.field private periodSeconds:I

.field private whiteList:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/uDh;->isHotStartEnabled:Z

    .line 9
    const/4 v0, 0x5

    iput v0, p0, Lc8/uDh;->backgroundWaitSeconds:I

    .line 10
    const/16 v0, 0x384

    iput v0, p0, Lc8/uDh;->periodSeconds:I

    .line 11
    const-string/jumbo v0, "*"

    iput-object v0, p0, Lc8/uDh;->whiteList:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/uDh;->blackList:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lc8/uDh;->fetchServerConfigPeriodSeconds:I

    return-void
.end method


# virtual methods
.method public getBackgroundWaitSeconds()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lc8/uDh;->backgroundWaitSeconds:I

    return v0
.end method

.method public getBlackList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lc8/uDh;->blackList:Ljava/lang/String;

    return-object v0
.end method

.method public getFetchServerConfigPeriodSeconds()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lc8/uDh;->fetchServerConfigPeriodSeconds:I

    return v0
.end method

.method public getIsHotStartEnabled()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lc8/uDh;->isHotStartEnabled:Z

    return v0
.end method

.method public getPeriodSeconds()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lc8/uDh;->periodSeconds:I

    return v0
.end method

.method public getWhiteList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lc8/uDh;->whiteList:Ljava/lang/String;

    return-object v0
.end method

.method public setBackgroundWaitSeconds(I)V
    .locals 0
    .param p1, "backgroundWaitSeconds"    # I

    .prologue
    .line 28
    iput p1, p0, Lc8/uDh;->backgroundWaitSeconds:I

    .line 29
    return-void
.end method

.method public setBlackList(Ljava/lang/String;)V
    .locals 0
    .param p1, "blackList"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lc8/uDh;->blackList:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setFetchServerConfigPeriodSeconds(I)V
    .locals 0
    .param p1, "fetchServerConfigPeriodSeconds"    # I

    .prologue
    .line 60
    iput p1, p0, Lc8/uDh;->fetchServerConfigPeriodSeconds:I

    .line 61
    return-void
.end method

.method public setIsHotStartEnabled(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "hotStartEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 20
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lc8/uDh;->isHotStartEnabled:Z

    .line 21
    return-void
.end method

.method public setPeriodSeconds(I)V
    .locals 0
    .param p1, "periodSeconds"    # I

    .prologue
    .line 36
    iput p1, p0, Lc8/uDh;->periodSeconds:I

    .line 37
    return-void
.end method

.method public setWhiteList(Ljava/lang/String;)V
    .locals 0
    .param p1, "whiteList"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lc8/uDh;->whiteList:Ljava/lang/String;

    .line 45
    return-void
.end method
