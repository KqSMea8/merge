.class public Lcom/ta/utdid2/device/UTDevice;
.super Ljava/lang/Object;
.source "UTDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16
    if-nez p0, :cond_0

    .line 17
    const-string/jumbo v0, "ffffffffffffffffffffffff"

    .line 25
    :goto_0
    return-object v0

    .line 20
    :cond_0
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/oVe;->initContext(Landroid/content/Context;)V

    .line 21
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/oVe;->getOldMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdidOld(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 24
    :cond_1
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/oVe;->init()V

    .line 25
    invoke-static {}, Lc8/FVe;->getInstance()Lc8/FVe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/FVe;->getUtdid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUtdidForUpdate(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    const-string/jumbo v0, "ffffffffffffffffffffffff"

    .line 43
    :goto_0
    return-object v0

    .line 38
    :cond_0
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/oVe;->initContext(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/oVe;->getOldMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdidForUpdateOld(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_1
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/oVe;->init()V

    .line 43
    invoke-static {}, Lc8/FVe;->getInstance()Lc8/FVe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/FVe;->getUtdidFromFile()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getUtdidForUpdateOld(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-static {p0}, Lc8/WWe;->instance(Landroid/content/Context;)Lc8/WWe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/WWe;->getValueForUpdate()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "utdid":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v0, "ffffffffffffffffffffffff"

    .end local v0    # "utdid":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static getUtdidOld(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-static {p0}, Lc8/VWe;->getDevice(Landroid/content/Context;)Lc8/UWe;

    move-result-object v0

    .line 49
    .local v0, "device":Lc8/UWe;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/UWe;->getUtdid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/JWe;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "ffffffffffffffffffffffff"

    .line 50
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lc8/UWe;->getUtdid()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
