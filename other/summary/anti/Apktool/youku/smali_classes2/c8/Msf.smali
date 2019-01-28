.class public Lc8/Msf;
.super Ljava/lang/Object;
.source "OConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nsf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appKey:Ljava/lang/String;

.field private appSecret:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private authCode:Ljava/lang/String;

.field private env:I

.field private indexUpdateMode:I

.field private onlineAckHost:Ljava/lang/String;

.field private onlineHost:Ljava/lang/String;

.field private probeHosts:[Ljava/lang/String;

.field private serverType:I

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public build()Lc8/Nsf;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Lc8/Nsf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/Nsf;-><init>(Lc8/Lsf;)V

    .line 160
    .local v0, "config":Lc8/Nsf;
    iget v1, p0, Lc8/Msf;->env:I

    iput v1, v0, Lc8/Nsf;->env:I

    .line 161
    iget-object v1, p0, Lc8/Msf;->appKey:Ljava/lang/String;

    iput-object v1, v0, Lc8/Nsf;->appKey:Ljava/lang/String;

    .line 162
    iget-object v1, p0, Lc8/Msf;->appSecret:Ljava/lang/String;

    iput-object v1, v0, Lc8/Nsf;->appSecret:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lc8/Msf;->authCode:Ljava/lang/String;

    iput-object v1, v0, Lc8/Nsf;->authCode:Ljava/lang/String;

    .line 164
    iget-object v1, p0, Lc8/Msf;->userId:Ljava/lang/String;

    iput-object v1, v0, Lc8/Nsf;->userId:Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lc8/Msf;->appVersion:Ljava/lang/String;

    iput-object v1, v0, Lc8/Nsf;->appVersion:Ljava/lang/String;

    .line 166
    iget v1, p0, Lc8/Msf;->serverType:I

    iput v1, v0, Lc8/Nsf;->serverType:I

    .line 167
    iget v1, p0, Lc8/Msf;->indexUpdateMode:I

    iput v1, v0, Lc8/Nsf;->indexUpdateMode:I

    .line 168
    iget-object v1, p0, Lc8/Msf;->probeHosts:[Ljava/lang/String;

    iput-object v1, v0, Lc8/Nsf;->probeHosts:[Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lc8/Msf;->onlineHost:Ljava/lang/String;

    iput-object v1, v0, Lc8/Nsf;->onlineHost:Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lc8/Msf;->onlineAckHost:Ljava/lang/String;

    iput-object v1, v0, Lc8/Nsf;->onlineAckHost:Ljava/lang/String;

    .line 171
    return-object v0
.end method

.method public setAppKey(Ljava/lang/String;)Lc8/Msf;
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lc8/Msf;->appKey:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public setAppSecret(Ljava/lang/String;)Lc8/Msf;
    .locals 0
    .param p1, "appSecret"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lc8/Msf;->appSecret:Ljava/lang/String;

    .line 92
    return-object p0
.end method

.method public setAppVersion(Ljava/lang/String;)Lc8/Msf;
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lc8/Msf;->appVersion:Ljava/lang/String;

    .line 83
    return-object p0
.end method

.method public setAuthCode(Ljava/lang/String;)Lc8/Msf;
    .locals 0
    .param p1, "authCode"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lc8/Msf;->authCode:Ljava/lang/String;

    .line 101
    return-object p0
.end method

.method public setEnv(I)Lc8/Msf;
    .locals 0
    .param p1, "env"    # I

    .prologue
    .line 64
    iput p1, p0, Lc8/Msf;->env:I

    .line 65
    return-object p0
.end method

.method public setIndexUpdateMode(I)Lc8/Msf;
    .locals 0
    .param p1, "indexUpdateMode"    # I

    .prologue
    .line 127
    iput p1, p0, Lc8/Msf;->indexUpdateMode:I

    .line 128
    return-object p0
.end method

.method public setOnlineAckHost(Ljava/lang/String;)Lc8/Msf;
    .locals 0
    .param p1, "onlineAckHost"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lc8/Msf;->onlineAckHost:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public setOnlineHost(Ljava/lang/String;)Lc8/Msf;
    .locals 0
    .param p1, "onlineHost"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lc8/Msf;->onlineHost:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public setProbeHosts([Ljava/lang/String;)Lc8/Msf;
    .locals 0
    .param p1, "probeHosts"    # [Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lc8/Msf;->probeHosts:[Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public setServerType(I)Lc8/Msf;
    .locals 0
    .param p1, "serverType"    # I

    .prologue
    .line 118
    iput p1, p0, Lc8/Msf;->serverType:I

    .line 119
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lc8/Msf;
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lc8/Msf;->userId:Ljava/lang/String;

    .line 110
    return-object p0
.end method
