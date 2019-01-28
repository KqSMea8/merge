.class public Lc8/jAb;
.super Ljava/lang/Object;
.source "HardConfig.java"


# instance fields
.field private commonPersistentConfigWR:Lc8/kAb;

.field private configDir:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private resourceIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceIdentifier"    # Ljava/lang/String;
    .param p3, "configDir"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lc8/jAb;->context:Landroid/content/Context;

    .line 10
    iput-object v0, p0, Lc8/jAb;->resourceIdentifier:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lc8/jAb;->configDir:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lc8/jAb;->commonPersistentConfigWR:Lc8/kAb;

    .line 17
    iput-object p1, p0, Lc8/jAb;->context:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lc8/jAb;->resourceIdentifier:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lc8/jAb;->configDir:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static getDevicePersistentConfig(Landroid/content/Context;)Lc8/kAb;
    .locals 6
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 28
    if-eqz p0, :cond_0

    .line 29
    new-instance v0, Lc8/kAb;

    sget-object v2, Lc8/gAb;->GLOBAL_PERSISTENT_CONFIG_DIR:Ljava/lang/String;

    const-string/jumbo v3, "Alvin3"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lc8/kAb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 34
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNewDevicePersistentConfig(Landroid/content/Context;)Lc8/kAb;
    .locals 6
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 39
    if-eqz p0, :cond_0

    .line 40
    new-instance v0, Lc8/kAb;

    sget-object v2, Lc8/gAb;->GLOBAL_PERSISTENT_CONFIG_DIR:Ljava/lang/String;

    const-string/jumbo v3, "UTCommon"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lc8/kAb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 45
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCommonPersistentConfig()Lc8/kAb;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 49
    const/4 v6, 0x0

    .line 50
    .local v6, "pcTmp":Lc8/kAb;
    iget-object v1, p0, Lc8/jAb;->commonPersistentConfigWR:Lc8/kAb;

    if-eqz v1, :cond_0

    .line 51
    iget-object v6, p0, Lc8/jAb;->commonPersistentConfigWR:Lc8/kAb;

    .line 53
    :cond_0
    if-eqz v6, :cond_1

    .line 63
    .end local v6    # "pcTmp":Lc8/kAb;
    :goto_0
    return-object v6

    .line 56
    .restart local v6    # "pcTmp":Lc8/kAb;
    :cond_1
    iget-object v1, p0, Lc8/jAb;->context:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc8/jAb;->configDir:Ljava/lang/String;

    invoke-static {v1}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 60
    :cond_3
    new-instance v0, Lc8/kAb;

    iget-object v1, p0, Lc8/jAb;->context:Landroid/content/Context;

    iget-object v2, p0, Lc8/jAb;->configDir:Ljava/lang/String;

    const-string/jumbo v3, "UTCommon"

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lc8/kAb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 62
    .local v0, "commonPersistentConfig":Lc8/kAb;
    iput-object v0, p0, Lc8/jAb;->commonPersistentConfigWR:Lc8/kAb;

    move-object v6, v0

    .line 63
    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/jAb;->commonPersistentConfigWR:Lc8/kAb;

    .line 24
    return-void
.end method
