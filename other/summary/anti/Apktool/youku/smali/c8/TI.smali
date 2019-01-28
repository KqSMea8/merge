.class public Lc8/TI;
.super Ljava/lang/Object;
.source "GlobalAppRuntimeInfo.java"


# static fields
.field private static context:Landroid/content/Context;

.field private static currentProcess:Ljava/lang/String;

.field private static env:Lanet/channel/entity/ENV;

.field public static volatile isBackground:Z

.field public static mConnToken:Ljava/lang/String;

.field private static volatile proxySetting:Lc8/YL;

.field private static sp:Landroid/content/SharedPreferences;

.field private static targetProcess:Ljava/lang/String;

.field private static ttid:Ljava/lang/String;

.field private static userId:Ljava/lang/String;

.field private static utdid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    sget-object v0, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    sput-object v0, Lc8/TI;->env:Lanet/channel/entity/ENV;

    .line 33
    const-string/jumbo v0, ""

    sput-object v0, Lc8/TI;->targetProcess:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, ""

    sput-object v0, Lc8/TI;->currentProcess:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lc8/TI;->isBackground:Z

    .line 45
    sput-object v1, Lc8/TI;->mConnToken:Ljava/lang/String;

    .line 47
    sput-object v1, Lc8/TI;->proxySetting:Lc8/YL;

    .line 49
    sput-object v1, Lc8/TI;->sp:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lc8/TI;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getCurrentProcess()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lc8/TI;->currentProcess:Ljava/lang/String;

    return-object v0
.end method

.method public static getEnv()Lanet/channel/entity/ENV;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lc8/TI;->env:Lanet/channel/entity/ENV;

    return-object v0
.end method

.method public static getProxySetting()Lc8/YL;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lc8/TI;->proxySetting:Lc8/YL;

    return-object v0
.end method

.method public static getTtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lc8/TI;->ttid:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lc8/TI;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public static getUtdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lc8/TI;->utdid:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lc8/TI;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lc8/TI;->context:Landroid/content/Context;

    invoke-static {v0}, Lc8/eM;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/TI;->utdid:Ljava/lang/String;

    .line 133
    :cond_0
    sget-object v0, Lc8/TI;->utdid:Ljava/lang/String;

    return-object v0
.end method

.method public static isAppBackground()Z
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lc8/TI;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lc8/TI;->isBackground:Z

    goto :goto_0
.end method

.method public static isTargetProcess()Z
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lc8/TI;->targetProcess:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lc8/TI;->currentProcess:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lc8/TI;->targetProcess:Ljava/lang/String;

    sget-object v1, Lc8/TI;->currentProcess:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setBackground(Z)V
    .locals 0
    .param p0, "isBackground"    # Z

    .prologue
    .line 137
    sput-boolean p0, Lc8/TI;->isBackground:Z

    .line 138
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 52
    sput-object p0, Lc8/TI;->context:Landroid/content/Context;

    .line 53
    if-eqz p0, :cond_3

    .line 54
    sget-object v0, Lc8/TI;->currentProcess:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {p0, v0}, Lc8/eM;->getProcessName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/TI;->currentProcess:Ljava/lang/String;

    .line 58
    :cond_0
    sget-object v0, Lc8/TI;->targetProcess:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-static {p0}, Lc8/eM;->getMainProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/TI;->targetProcess:Ljava/lang/String;

    .line 63
    :cond_1
    sget-object v0, Lc8/TI;->sp:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 64
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    sput-object v0, Lc8/TI;->sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "UserId"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/TI;->userId:Ljava/lang/String;

    .line 68
    :cond_2
    const-string/jumbo v0, "awcn.GlobalAppRuntimeInfo"

    const-string/jumbo v1, ""

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "CurrentProcess"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lc8/TI;->currentProcess:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "TargetProcess"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lc8/TI;->targetProcess:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v5, v2}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :cond_3
    return-void
.end method

.method public static setEnv(Lanet/channel/entity/ENV;)V
    .locals 0
    .param p0, "env"    # Lanet/channel/entity/ENV;

    .prologue
    .line 96
    sput-object p0, Lc8/TI;->env:Lanet/channel/entity/ENV;

    .line 97
    return-void
.end method

.method public static setTtid(Ljava/lang/String;)V
    .locals 0
    .param p0, "ttid"    # Ljava/lang/String;

    .prologue
    .line 104
    sput-object p0, Lc8/TI;->ttid:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 2
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 112
    sget-object v0, Lc8/TI;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/TI;->userId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    sput-object p0, Lc8/TI;->userId:Ljava/lang/String;

    .line 114
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v0

    invoke-static {}, Lc8/nL;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/MK;->forceRefreshStrategy(Ljava/lang/String;)V

    .line 115
    sget-object v0, Lc8/TI;->sp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 116
    sget-object v0, Lc8/TI;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "UserId"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    :cond_1
    return-void
.end method
