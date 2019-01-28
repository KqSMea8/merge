.class public Lc8/sgb;
.super Ljava/lang/Object;
.source "MemberSDK.java"


# static fields
.field private static final USER_SERVICE_FILTER:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static env:Lcom/ali/auth/third/core/config/Environment;

.field public static ttid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-string/jumbo v0, "$isv_scope$"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lc8/sgb;->USER_SERVICE_FILTER:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/Bgb;->serviceRegistry:Lc8/ehb;

    sget-object v1, Lc8/sgb;->USER_SERVICE_FILTER:Ljava/util/Map;

    invoke-interface {v0, p0, v1}, Lc8/ehb;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Lc8/wgb;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "initResultCallback"    # Lc8/wgb;

    .prologue
    .line 37
    invoke-static {p0, p1}, Lc8/sgb;->internalAsyncInit(Landroid/content/Context;Lc8/wgb;)Lc8/Hhb;

    .line 38
    return-void
.end method

.method private static internalAsyncInit(Landroid/content/Context;Lc8/wgb;)Lc8/Hhb;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "initResultCallback"    # Lc8/wgb;

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lc8/Bgb;->context:Landroid/content/Context;

    .line 42
    sget-object v1, Lc8/sgb;->env:Lcom/ali/auth/third/core/config/Environment;

    if-nez v1, :cond_0

    .line 43
    sget-object v1, Lcom/ali/auth/third/core/config/Environment;->ONLINE:Lcom/ali/auth/third/core/config/Environment;

    sput-object v1, Lc8/sgb;->env:Lcom/ali/auth/third/core/config/Environment;

    .line 45
    :cond_0
    new-instance v0, Lc8/Hhb;

    sget-object v1, Lc8/sgb;->env:Lcom/ali/auth/third/core/config/Environment;

    invoke-virtual {v1}, Lcom/ali/auth/third/core/config/Environment;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lc8/Hhb;-><init>(Lc8/wgb;Ljava/lang/Integer;)V

    .line 46
    .local v0, "initTask":Lc8/Hhb;
    sget-object v1, Lc8/Bgb;->executorService:Lc8/shb;

    invoke-interface {v1, v0}, Lc8/shb;->postHandlerTask(Ljava/lang/Runnable;)V

    .line 47
    return-object v0
.end method

.method public static setAuthOption(Lcom/ali/auth/third/core/config/AuthOption;)V
    .locals 0
    .param p0, "authOption"    # Lcom/ali/auth/third/core/config/AuthOption;

    .prologue
    .line 78
    sput-object p0, Lc8/Bgb;->authOption:Lcom/ali/auth/third/core/config/AuthOption;

    .line 79
    return-void
.end method

.method public static setEnvironment(Lcom/ali/auth/third/core/config/Environment;)V
    .locals 0
    .param p0, "env"    # Lcom/ali/auth/third/core/config/Environment;

    .prologue
    .line 33
    sput-object p0, Lc8/sgb;->env:Lcom/ali/auth/third/core/config/Environment;

    .line 34
    return-void
.end method

.method public static setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 82
    sput-object p0, Lc8/Bgb;->packageName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public static setResources(Landroid/content/res/Resources;)V
    .locals 0
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 86
    sput-object p0, Lc8/Bgb;->resources:Landroid/content/res/Resources;

    .line 87
    return-void
.end method

.method public static setTtid(Ljava/lang/String;)V
    .locals 0
    .param p0, "ttid"    # Ljava/lang/String;

    .prologue
    .line 29
    sput-object p0, Lc8/sgb;->ttid:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static setUUID(Ljava/lang/String;)V
    .locals 0
    .param p0, "uuid"    # Ljava/lang/String;

    .prologue
    .line 74
    sput-object p0, Lc8/Bgb;->UUID:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static turnOffDebug()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 62
    return-void
.end method

.method public static turnOnDebug()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lc8/zgb;->DEBUG:Z

    .line 55
    return-void
.end method
