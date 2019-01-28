.class public Lc8/rPg;
.super Ljava/lang/Object;
.source "AntiTheftChainParam.java"


# instance fields
.field private antiTheftChainClientType:Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

.field private authCode:Ljava/lang/String;

.field private ccode:Ljava/lang/String;

.field private clientIP:Ljava/lang/String;

.field private clientTs:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private serverEnv:I

.field private utid:Ljava/lang/String;

.field private vid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;->Unknown:Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    iput-object v0, p0, Lc8/rPg;->antiTheftChainClientType:Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lc8/rPg;->serverEnv:I

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/rPg;->context:Landroid/content/Context;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/rPg;->clientIP:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/rPg;->clientTs:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/rPg;->vid:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/rPg;->ccode:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/rPg;->utid:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "mwua"

    iput-object v0, p0, Lc8/rPg;->authCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAntiTheftChainClientType()Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lc8/rPg;->antiTheftChainClientType:Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    return-object v0
.end method

.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lc8/rPg;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lc8/rPg;->ccode:Ljava/lang/String;

    return-object v0
.end method

.method public getClientIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lc8/rPg;->clientIP:Ljava/lang/String;

    return-object v0
.end method

.method public getClientTs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lc8/rPg;->clientTs:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lc8/rPg;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getServerEnv()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lc8/rPg;->serverEnv:I

    return v0
.end method

.method public getUtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lc8/rPg;->utid:Ljava/lang/String;

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lc8/rPg;->vid:Ljava/lang/String;

    return-object v0
.end method

.method public setAntiTheftChainClientType(Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;)V
    .locals 0
    .param p1, "antiTheftChainClientType"    # Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    .prologue
    .line 27
    iput-object p1, p0, Lc8/rPg;->antiTheftChainClientType:Lcom/youku/antitheftchain/interfaces/AntiTheftChainClientType;

    .line 28
    return-void
.end method

.method public setCcode(Ljava/lang/String;)V
    .locals 0
    .param p1, "ccode"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lc8/rPg;->ccode:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setClientIP(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientIP"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lc8/rPg;->clientIP:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setClientTs(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientTs"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lc8/rPg;->clientTs:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    iput-object p1, p0, Lc8/rPg;->context:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public setServerEnv(I)V
    .locals 0
    .param p1, "serverEnv"    # I

    .prologue
    .line 51
    iput p1, p0, Lc8/rPg;->serverEnv:I

    .line 52
    return-void
.end method

.method public setUtid(Ljava/lang/String;)V
    .locals 0
    .param p1, "utid"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lc8/rPg;->utid:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lc8/rPg;->vid:Ljava/lang/String;

    .line 84
    return-void
.end method
