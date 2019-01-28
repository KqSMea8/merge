.class public Lc8/HYm;
.super Ljava/lang/Object;
.source "OrangeManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHttpsSwitchOpen()Z
    .locals 5

    .prologue
    .line 37
    const-string/jumbo v0, "1"

    .line 38
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v1

    const-string/jumbo v2, "youku_poplayer_config_switch"

    const-string/jumbo v3, "https_switch"

    const-string/jumbo v4, "1"

    invoke-virtual {v1, v2, v3, v4}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isOrangeSwitchOpen()Z
    .locals 5

    .prologue
    .line 27
    const-string/jumbo v0, "0"

    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v1

    const-string/jumbo v2, "youku_poplayer_config_switch"

    const-string/jumbo v3, "orange_switch"

    const-string/jumbo v4, "0"

    .line 28
    invoke-virtual {v1, v2, v3, v4}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUCSwitchOpen()Z
    .locals 5

    .prologue
    .line 57
    const-string/jumbo v0, "1"

    .line 58
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v1

    const-string/jumbo v2, "youku_poplayer_config_switch"

    const-string/jumbo v3, "popUC"

    const-string/jumbo v4, "1"

    invoke-virtual {v1, v2, v3, v4}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isWindvaneSwitchOpen()Z
    .locals 5

    .prologue
    .line 47
    const-string/jumbo v0, "1"

    .line 48
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v1

    const-string/jumbo v2, "youku_poplayer_config_switch"

    const-string/jumbo v3, "popWV"

    const-string/jumbo v4, "1"

    invoke-virtual {v1, v2, v3, v4}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
