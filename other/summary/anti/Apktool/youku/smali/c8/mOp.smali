.class public Lc8/mOp;
.super Ljava/lang/Object;
.source "SDKConfig.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.SDKConfig"

.field private static final config:Lc8/mOp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lc8/mOp;

    invoke-direct {v0}, Lc8/mOp;-><init>()V

    sput-object v0, Lc8/mOp;->config:Lc8/mOp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getInstance()Lc8/mOp;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lc8/mOp;->config:Lc8/mOp;

    return-object v0
.end method


# virtual methods
.method public getGlobalAppKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-virtual {v0}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v0

    iget-object v0, v0, Lc8/kOp;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalAppVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-virtual {v0}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v0

    iget-object v0, v0, Lc8/kOp;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalAuthCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-virtual {v0}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v0

    iget-object v0, v0, Lc8/kOp;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-virtual {v0}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v0

    iget-object v0, v0, Lc8/kOp;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getGlobalDailyAppKeyIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-virtual {v0}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v0

    iget v0, v0, Lc8/kOp;->dailyAppkeyIndex:I

    return v0
.end method

.method public getGlobalDeviceId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-virtual {v0}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v0

    iget-object v0, v0, Lc8/kOp;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalEnvMode()Lmtopsdk/mtop/domain/EnvModeEnum;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-virtual {v0}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v0

    iget-object v0, v0, Lc8/kOp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    return-object v0
.end method

.method public getGlobalOnlineAppKeyIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-virtual {v0}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v0

    iget v0, v0, Lc8/kOp;->onlineAppKeyIndex:I

    return v0
.end method

.method public getGlobalTtid()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-virtual {v0}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v0

    iget-object v0, v0, Lc8/kOp;->ttid:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalUtdid()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-virtual {v0}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v0

    iget-object v0, v0, Lc8/kOp;->utdid:Ljava/lang/String;

    return-object v0
.end method
