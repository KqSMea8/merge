.class public Lc8/ytf;
.super Lc8/wtf;
.source "OrangeApiServiceStub.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigCenter"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Lc8/wtf;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/ytf;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public addFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lc8/Jsf;->getInstance()Lc8/Jsf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Jsf;->addFail(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public enterForeground()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {}, Lc8/Jsf;->getInstance()Lc8/Jsf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Jsf;->enterForeground()V

    .line 60
    return-void
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {}, Lc8/Jsf;->getInstance()Lc8/Jsf;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lc8/Jsf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigs(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {}, Lc8/Jsf;->getInstance()Lc8/Jsf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Jsf;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public init(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "env"    # I
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "appversion"    # Ljava/lang/String;
    .param p4, "appSecret"    # Ljava/lang/String;
    .param p5, "authCode"    # Ljava/lang/String;
    .param p6, "userId"    # Ljava/lang/String;
    .param p7, "serverType"    # I
    .param p8, "indexUpdateMode"    # I
    .param p9, "probeHosts"    # [Ljava/lang/String;
    .param p10, "onlineHost"    # Ljava/lang/String;
    .param p11, "onlineAckHost"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {}, Lc8/Jsf;->getInstance()Lc8/Jsf;

    move-result-object v0

    iget-object v1, p0, Lc8/ytf;->mContext:Landroid/content/Context;

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v0 .. v12}, Lc8/Jsf;->init(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public registerListener([Ljava/lang/String;Lc8/Dtf;)V
    .locals 1
    .param p1, "groupnames"    # [Ljava/lang/String;
    .param p2, "listener"    # Lc8/Dtf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lc8/Jsf;->getInstance()Lc8/Jsf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/Jsf;->registerListener([Ljava/lang/String;Lc8/Dtf;)V

    .line 40
    return-void
.end method

.method public registerListenerV1([Ljava/lang/String;Lc8/Gtf;)V
    .locals 1
    .param p1, "groupnames"    # [Ljava/lang/String;
    .param p2, "listener"    # Lc8/Gtf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lc8/Jsf;->getInstance()Lc8/Jsf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/Jsf;->registerListenerV1([Ljava/lang/String;Lc8/Gtf;)V

    .line 45
    return-void
.end method

.method public setAppSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "appSecret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 69
    const-string/jumbo v0, "ConfigCenter"

    const-string/jumbo v1, "setUserId"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "userId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    sput-object p1, Lc8/Ksf;->mUserId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public unregisterListenerV1([Ljava/lang/String;Lc8/Gtf;)V
    .locals 1
    .param p1, "groupnames"    # [Ljava/lang/String;
    .param p2, "listener"    # Lc8/Gtf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Lc8/Jsf;->getInstance()Lc8/Jsf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/Jsf;->unregisterListenerV1([Ljava/lang/String;Lc8/Gtf;)V

    .line 50
    return-void
.end method

.method public unregisterListeners([Ljava/lang/String;)V
    .locals 1
    .param p1, "groupnames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Lc8/Jsf;->getInstance()Lc8/Jsf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Jsf;->unregisterListeners([Ljava/lang/String;)V

    .line 55
    return-void
.end method
