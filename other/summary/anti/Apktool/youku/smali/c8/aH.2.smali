.class public Lc8/aH;
.super Ljava/lang/Object;
.source "ConfigDataUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ZG;
    }
.end annotation


# static fields
.field private static ATTACH_ITEM_SPLIT:Ljava/lang/String;

.field private static ATTACH_SPLIT:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "ConfigDataUtils"

    sput-object v0, Lc8/aH;->TAG:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "||"

    sput-object v0, Lc8/aH;->ATTACH_SPLIT:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "|"

    sput-object v0, Lc8/aH;->ATTACH_ITEM_SPLIT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method public static parseConfig(Ljava/lang/String;ZZ)Lc8/ZG;
    .locals 7
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "valid"    # Z
    .param p2, "isAppRes"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 47
    if-nez p0, :cond_1

    move-object v1, v4

    .line 86
    :cond_0
    :goto_0
    return-object v1

    .line 50
    :cond_1
    new-instance v1, Lc8/ZG;

    new-instance v5, Lc8/aH;

    invoke-direct {v5}, Lc8/aH;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v5}, Lc8/ZG;-><init>(Lc8/aH;)V

    .line 51
    .local v1, "configData":Lc8/ZG;
    sget-object v5, Lc8/aH;->ATTACH_SPLIT:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 53
    .local v2, "indexConfig":I
    if-gtz v2, :cond_3

    .line 55
    if-eqz p1, :cond_2

    move-object v1, v4

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iput-object p0, v1, Lc8/ZG;->json:Ljava/lang/String;

    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lc8/ZG;->json:Ljava/lang/String;

    .line 63
    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "attach":Ljava/lang/String;
    sget-object v5, Lc8/aH;->ATTACH_ITEM_SPLIT:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 67
    .local v3, "indexToken":I
    if-gtz v3, :cond_5

    .line 69
    if-eqz p1, :cond_4

    move-object v1, v4

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    iput-object v0, v1, Lc8/ZG;->systemtime:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_5
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lc8/ZG;->systemtime:Ljava/lang/String;

    .line 75
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lc8/ZG;->tk:Ljava/lang/String;

    .line 77
    if-eqz p1, :cond_0

    iget-object v5, v1, Lc8/ZG;->json:Ljava/lang/String;

    iget-object v6, v1, Lc8/ZG;->tk:Ljava/lang/String;

    invoke-static {v5, v6}, Lc8/eH;->validConfigFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 78
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 79
    sget-object v5, Lc8/aH;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "parseConfig:SecurityUtils validConfigFile fail "

    invoke-static {v5, v6}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_6
    if-nez p2, :cond_7

    .line 82
    sget v5, Lc8/UG;->ERR_CHECK_CONFIG_APPS:I

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Lc8/KG;->error(ILjava/lang/String;)V

    :cond_7
    move-object v1, v4

    .line 84
    goto :goto_0
.end method

.method public static parseGlobalConfig(Ljava/lang/String;)Lc8/WG;
    .locals 7
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 97
    :try_start_0
    invoke-static {p0}, Lc8/fH;->parseString2GlobalConfig(Ljava/lang/String;)Lc8/WG;

    move-result-object v0

    .line 98
    .local v0, "appsConfigOb":Lc8/WG;
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lc8/AG;->readZcacheConfig(Z)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Lc8/fH;->parseZcacheConfig(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lc8/WG;->setZcacheResConfig(Ljava/util/Hashtable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0    # "appsConfigOb":Lc8/WG;
    .end local v1    # "data":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {}, Lc8/YF;->getConfigMonitor()Lc8/GF;

    move-result-object v3

    .line 103
    .local v3, "moniter":Lc8/GF;
    if-eqz v3, :cond_0

    .line 104
    const-string/jumbo v4, "package"

    sget-object v5, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UNKNOWN_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-virtual {v5}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->ordinal()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lc8/GF;->didOccurUpdateConfigError(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    :cond_0
    sget-object v4, Lc8/aH;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseGlobalConfig Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x0

    goto :goto_0
.end method
