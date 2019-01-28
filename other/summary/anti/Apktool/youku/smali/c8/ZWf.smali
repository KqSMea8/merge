.class public Lc8/ZWf;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lc8/Kgg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/YWf;
    }
.end annotation


# static fields
.field public static final ARGS:Ljava/lang/String; = "args"

.field public static final COMPONENT:Ljava/lang/String; = "component"

.field private static final CRASHREINIT:I = 0x32

.field public static final INITLOGFILE:Ljava/lang/String; = "/jsserver_start.log"

.field private static final INIT_FRAMEWORK_OK:I = 0x1

.field public static final KEY_ARGS:Ljava/lang/String; = "args"

.field public static final KEY_METHOD:Ljava/lang/String; = "method"

.field public static final KEY_PARAMS:Ljava/lang/String; = "params"

.field private static LOW_MEM_VALUE:J = 0x0L

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final METHOD_CALLBACK:Ljava/lang/String; = "callback"

.field public static final METHOD_CALL_JS:Ljava/lang/String; = "callJS"

.field public static final METHOD_CREATE_INSTANCE:Ljava/lang/String; = "createInstance"

.field public static final METHOD_DESTROY_INSTANCE:Ljava/lang/String; = "destroyInstance"

.field public static final METHOD_FIRE_EVENT:Ljava/lang/String; = "fireEvent"

.field public static final METHOD_NOTIFY_SERIALIZE_CODE_CACHE:Ljava/lang/String; = "notifySerializeCodeCache"

.field public static final METHOD_NOTIFY_TRIM_MEMORY:Ljava/lang/String; = "notifyTrimMemory"

.field public static final METHOD_REFRESH_INSTANCE:Ljava/lang/String; = "refreshInstance"

.field public static final METHOD_REGISTER_COMPONENTS:Ljava/lang/String; = "registerComponents"

.field public static final METHOD_REGISTER_MODULES:Ljava/lang/String; = "registerModules"

.field public static final METHOD_SET_TIMEOUT:Ljava/lang/String; = "setTimeoutCallback"

.field public static final MODULE:Ljava/lang/String; = "module"

.field private static final NON_CALLBACK:Ljava/lang/String; = "-1"

.field public static final OPTIONS:Ljava/lang/String; = "options"

.field public static final REF:Ljava/lang/String; = "ref"

.field private static final UNDEFINED:Ljava/lang/String; = "undefined"

.field private static crashUrl:Ljava/lang/String;

.field private static lastCrashTime:J

.field static volatile mBridgeManager:Lc8/ZWf;

.field private static volatile mInit:Z

.field private static volatile reInitCount:I


# instance fields
.field private mDestroyedInstanceId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitParams:Lc8/dXf;

.field private mInterceptor:Lc8/Ngg;

.field mJSHandler:Landroid/os/Handler;

.field private mJSThread:Lc8/VXf;

.field private mLodBuilder:Ljava/lang/StringBuilder;

.field private mMock:Z

.field private mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/bridge/WXHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/weex/bridge/WXHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mRegisterComponentFailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRegisterModuleFailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRegisterServiceFailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWXBridge:Lc8/wXf;

.field private mWxDebugProxy:Lc8/xXf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 139
    const-wide/16 v0, 0x78

    sput-wide v0, Lc8/ZWf;->LOW_MEM_VALUE:J

    .line 140
    const/4 v0, 0x1

    sput v0, Lc8/ZWf;->reInitCount:I

    .line 141
    const/4 v0, 0x0

    sput-object v0, Lc8/ZWf;->crashUrl:Ljava/lang/String;

    .line 142
    const-wide/16 v0, 0x0

    sput-wide v0, Lc8/ZWf;->lastCrashTime:J

    .line 147
    const/4 v0, 0x0

    sput-boolean v0, Lc8/ZWf;->mInit:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Lcom/taobao/weex/bridge/WXHashMap;

    invoke-direct {v0}, Lcom/taobao/weex/bridge/WXHashMap;-><init>()V

    iput-object v0, p0, Lc8/ZWf;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/ZWf;->mMock:Z

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc8/ZWf;->mRegisterComponentFailList:Ljava/util/List;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc8/ZWf;->mRegisterModuleFailList:Ljava/util/List;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc8/ZWf;->mRegisterServiceFailList:Ljava/util/List;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    .line 174
    sget-boolean v0, Lc8/UUf;->sRemoteDebugMode:Z

    invoke-direct {p0, v0}, Lc8/ZWf;->initWXBridge(Z)V

    .line 175
    new-instance v0, Lc8/VXf;

    const-string/jumbo v1, "WeexJSBridgeThread"

    invoke-direct {v0, v1, p0}, Lc8/VXf;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc8/ZWf;->mJSThread:Lc8/VXf;

    .line 176
    iget-object v0, p0, Lc8/ZWf;->mJSThread:Lc8/VXf;

    invoke-virtual {v0}, Lc8/VXf;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    .line 177
    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lc8/ZWf;)Lcom/taobao/weex/bridge/WXHashMap;
    .locals 1
    .param p0, "x0"    # Lc8/ZWf;

    .prologue
    .line 107
    iget-object v0, p0, Lc8/ZWf;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lc8/ZWf;Ljava/lang/String;Lc8/PXf;)V
    .locals 0
    .param p0, "x0"    # Lc8/ZWf;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lc8/PXf;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lc8/ZWf;->invokeRefreshInstance(Ljava/lang/String;Lc8/PXf;)V

    return-void
.end method

.method static synthetic access$1000(Lc8/ZWf;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lc8/ZWf;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lc8/ZWf;->invokeExecJSService(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1100(Lc8/ZWf;)Z
    .locals 1
    .param p0, "x0"    # Lc8/ZWf;

    .prologue
    .line 107
    invoke-direct {p0}, Lc8/ZWf;->isJSFrameworkInit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lc8/ZWf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lc8/aXf;)V
    .locals 0
    .param p0, "x0"    # Lc8/ZWf;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [Lc8/aXf;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/ZWf;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lc8/aXf;)V

    return-void
.end method

.method static synthetic access$200(Lc8/ZWf;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/ZWf;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lc8/ZWf;->initFramework(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lc8/ZWf;Lc8/nVf;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/ZWf;
    .param p1, "x1"    # Lc8/nVf;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/Map;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/ZWf;->invokeCreateInstance(Lc8/nVf;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lc8/ZWf;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/ZWf;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lc8/ZWf;->removeTaskByInstance(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lc8/ZWf;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/ZWf;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lc8/ZWf;->invokeDestroyInstance(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lc8/ZWf;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/ZWf;

    .prologue
    .line 107
    iget-object v0, p0, Lc8/ZWf;->mRegisterComponentFailList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lc8/ZWf;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lc8/ZWf;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lc8/ZWf;->invokeRegisterModules(Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lc8/ZWf;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lc8/ZWf;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lc8/ZWf;->invokeRegisterComponents(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lc8/ZWf;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/ZWf;

    .prologue
    .line 107
    iget-object v0, p0, Lc8/ZWf;->mRegisterServiceFailList:Ljava/util/List;

    return-object v0
.end method

.method private varargs addJSEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1082
    .local p3, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Lc8/QWf;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc8/QWf;-><init>(Lc8/ZWf;[Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc8/ZWf;->post(Ljava/lang/Runnable;)V

    .line 1113
    return-void
.end method

.method private varargs addJSTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lc8/ZWf;->addJSEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    .line 1117
    return-void
.end method

.method private assembleDefaultOptions()Lc8/dXf;
    .locals 4

    .prologue
    .line 1686
    invoke-static {}, Lc8/UUf;->getConfig()Ljava/util/Map;

    move-result-object v1

    .line 1687
    .local v1, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lc8/dXf;

    invoke-direct {v2}, Lc8/dXf;-><init>()V

    .line 1688
    .local v2, "wxParams":Lc8/dXf;
    const-string/jumbo v3, "os"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc8/dXf;->setPlatform(Ljava/lang/String;)V

    .line 1689
    const-string/jumbo v3, "cacheDir"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc8/dXf;->setCacheDir(Ljava/lang/String;)V

    .line 1690
    const-string/jumbo v3, "sysVersion"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc8/dXf;->setOsVersion(Ljava/lang/String;)V

    .line 1691
    const-string/jumbo v3, "appVersion"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc8/dXf;->setAppVersion(Ljava/lang/String;)V

    .line 1692
    const-string/jumbo v3, "weexVersion"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc8/dXf;->setWeexVersion(Ljava/lang/String;)V

    .line 1693
    const-string/jumbo v3, "sysModel"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc8/dXf;->setDeviceModel(Ljava/lang/String;)V

    .line 1694
    const-string/jumbo v3, "infoCollect"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc8/dXf;->setShouldInfoCollect(Ljava/lang/String;)V

    .line 1695
    const-string/jumbo v3, "logLevel"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc8/dXf;->setLogLevel(Ljava/lang/String;)V

    .line 1696
    const-string/jumbo v3, "appName"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1697
    .local v0, "appName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1698
    invoke-virtual {v2, v0}, Lc8/dXf;->setAppName(Ljava/lang/String;)V

    .line 1700
    :cond_0
    const-string/jumbo v3, "deviceWidth"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lc8/UUf;->sApplication:Landroid/app/Application;

    invoke-static {v3}, Lc8/Jgg;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Lc8/dXf;->setDeviceWidth(Ljava/lang/String;)V

    .line 1701
    const-string/jumbo v3, "deviceHeight"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lc8/UUf;->sApplication:Landroid/app/Application;

    invoke-static {v3}, Lc8/Jgg;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Lc8/dXf;->setDeviceHeight(Ljava/lang/String;)V

    .line 1702
    invoke-static {}, Lc8/UUf;->getCustomOptions()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/dXf;->setOptions(Ljava/util/Map;)V

    .line 1703
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/pVf;->needInitV8()Z

    move-result v3

    invoke-virtual {v2, v3}, Lc8/dXf;->setNeedInitV8(Z)V

    .line 1704
    iput-object v2, p0, Lc8/ZWf;->mInitParams:Lc8/dXf;

    .line 1705
    return-object v2

    .line 1700
    :cond_1
    const-string/jumbo v3, "deviceWidth"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 1701
    :cond_2
    const-string/jumbo v3, "deviceHeight"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1
.end method

.method private checkMainThread()Z
    .locals 2

    .prologue
    .line 1187
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private execRegisterFailTask()V
    .locals 8

    .prologue
    .line 1714
    iget-object v7, p0, Lc8/ZWf;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 1715
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1716
    .local v3, "moduleReceiver":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v7, p0, Lc8/ZWf;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "moduleCount":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1717
    iget-object v7, p0, Lc8/ZWf;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-direct {p0, v7, v3}, Lc8/ZWf;->invokeRegisterModules(Ljava/util/Map;Ljava/util/List;)V

    .line 1716
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1719
    :cond_0
    iget-object v7, p0, Lc8/ZWf;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1720
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 1721
    iget-object v7, p0, Lc8/ZWf;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1725
    .end local v0    # "i":I
    .end local v2    # "moduleCount":I
    .end local v3    # "moduleReceiver":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_1
    iget-object v7, p0, Lc8/ZWf;->mRegisterComponentFailList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 1726
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1727
    .local v5, "receiver":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v7, p0, Lc8/ZWf;->mRegisterComponentFailList:Ljava/util/List;

    invoke-direct {p0, v7, v5}, Lc8/ZWf;->invokeRegisterComponents(Ljava/util/List;Ljava/util/List;)V

    .line 1728
    iget-object v7, p0, Lc8/ZWf;->mRegisterComponentFailList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1729
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 1730
    iget-object v7, p0, Lc8/ZWf;->mRegisterComponentFailList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1734
    .end local v5    # "receiver":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    iget-object v7, p0, Lc8/ZWf;->mRegisterServiceFailList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 1735
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1736
    .local v4, "receiver":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lc8/ZWf;->mRegisterServiceFailList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1737
    .local v6, "service":Ljava/lang/String;
    invoke-direct {p0, v6, v4}, Lc8/ZWf;->invokeExecJSService(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 1739
    .end local v6    # "service":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lc8/ZWf;->mRegisterServiceFailList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1740
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 1741
    iget-object v7, p0, Lc8/ZWf;->mRegisterServiceFailList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1744
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "receiver":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method public static getInstance()Lc8/ZWf;
    .locals 2

    .prologue
    .line 180
    sget-object v0, Lc8/ZWf;->mBridgeManager:Lc8/ZWf;

    if-nez v0, :cond_1

    .line 181
    const-class v1, Lc8/ZWf;

    monitor-enter v1

    .line 182
    :try_start_0
    sget-object v0, Lc8/ZWf;->mBridgeManager:Lc8/ZWf;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lc8/ZWf;

    invoke-direct {v0}, Lc8/ZWf;-><init>()V

    sput-object v0, Lc8/ZWf;->mBridgeManager:Lc8/ZWf;

    .line 185
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_1
    sget-object v0, Lc8/ZWf;->mBridgeManager:Lc8/ZWf;

    return-object v0

    .line 185
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getNextTick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;

    .prologue
    .line 1076
    const-string/jumbo v0, "callback"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "{}"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, p1, v1}, Lc8/ZWf;->addJSTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1077
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lc8/ZWf;->sendMessage(Ljava/lang/String;I)V

    .line 1078
    return-void
.end method

.method private initFramework(Ljava/lang/String;)V
    .locals 13
    .param p1, "framework"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 1563
    invoke-direct {p0}, Lc8/ZWf;->isJSFrameworkInit()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1564
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1566
    const-string/jumbo v5, "weex JS framework from assets"

    invoke-static {v5}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 1568
    const-string/jumbo v5, "main.js"

    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-static {v5, v8}, Lc8/qgg;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 1570
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1571
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lc8/ZWf;->setJSFrameworkInit(Z)V

    .line 1572
    const-string/jumbo v5, "jsFramework"

    sget-object v8, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_FRAMEWORK:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v9, "JS Framework is empty!"

    invoke-virtual {p0, v5, v8, v9}, Lc8/ZWf;->commitJSFrameworkAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    .line 1640
    :cond_1
    :goto_0
    return-void

    .line 1576
    :cond_2
    :try_start_0
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/pVf;->getWXStatisticsListener()Lc8/OUf;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1577
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/pVf;->getWXStatisticsListener()Lc8/OUf;

    move-result-object v5

    invoke-interface {v5}, Lc8/OUf;->onJsFrameworkStart()V

    .line 1580
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1581
    .local v6, "start":J
    const-string/jumbo v0, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1583
    .local v0, "crashFile":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 1587
    :goto_1
    const/4 v3, 0x1

    .line 1589
    .local v3, "pieSupport":Z
    :try_start_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v8, 0x10

    if-ge v5, v8, :cond_4

    .line 1590
    const/4 v3, 0x0

    .line 1595
    :cond_4
    :goto_2
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[WXBridgeManager] initFrameworkEnv crashFile:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " pieSupport:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 1597
    iget-object v5, p0, Lc8/ZWf;->mWXBridge:Lc8/wXf;

    invoke-direct {p0}, Lc8/ZWf;->assembleDefaultOptions()Lc8/dXf;

    move-result-object v8

    invoke-interface {v5, p1, v8, v0, v3}, Lc8/wXf;->initFrameworkEnv(Ljava/lang/String;Lc8/dXf;Ljava/lang/String;Z)I

    move-result v5

    if-ne v5, v12, :cond_7

    .line 1598
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    sput-wide v8, Lc8/UUf;->sJSLibInitTime:J

    .line 1599
    const-string/jumbo v5, "initFramework"

    sget-wide v8, Lc8/UUf;->sJSLibInitTime:J

    invoke-static {v5, v8, v9}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Lc8/UUf;->sSDKInitStart:J

    sub-long/2addr v8, v10

    sput-wide v8, Lc8/UUf;->sSDKInitTime:J

    .line 1601
    const-string/jumbo v5, "SDKInitTime"

    sget-wide v8, Lc8/UUf;->sSDKInitTime:J

    invoke-static {v5, v8, v9}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    .line 1602
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lc8/ZWf;->setJSFrameworkInit(Z)V

    .line 1604
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/pVf;->getWXStatisticsListener()Lc8/OUf;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1605
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/pVf;->getWXStatisticsListener()Lc8/OUf;

    move-result-object v5

    invoke-interface {v5}, Lc8/OUf;->onJsFrameworkReady()V

    .line 1608
    :cond_5
    invoke-direct {p0}, Lc8/ZWf;->execRegisterFailTask()V

    .line 1609
    const/4 v5, 0x1

    sput-boolean v5, Lc8/UUf;->JsFrameworkInit:Z

    .line 1610
    invoke-direct {p0}, Lc8/ZWf;->registerDomModule()V

    .line 1611
    const-string/jumbo v4, ""

    .line 1612
    .local v4, "reinitInfo":Ljava/lang/String;
    sget v5, Lc8/ZWf;->reInitCount:I

    if-le v5, v12, :cond_6

    .line 1613
    const-string/jumbo v4, "reinit Framework:"

    .line 1615
    :cond_6
    const-string/jumbo v5, "jsFramework"

    sget-object v8, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "success"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v5, v8, v9}, Lc8/ZWf;->commitJSFrameworkAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1627
    .end local v0    # "crashFile":Ljava/lang/String;
    .end local v3    # "pieSupport":Z
    .end local v4    # "reinitInfo":Ljava/lang/String;
    .end local v6    # "start":J
    :catch_0
    move-exception v1

    .line 1628
    .local v1, "e":Ljava/lang/Throwable;
    sget v5, Lc8/ZWf;->reInitCount:I

    if-le v5, v12, :cond_9

    .line 1629
    const-string/jumbo v5, "[WXBridgeManager] invokeInitFramework "

    invoke-static {v5, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1630
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[WXBridgeManager] invokeInitFramework reinit FrameWork exception!#"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1631
    .local v2, "err":Ljava/lang/String;
    const-string/jumbo v5, "jsFramework"

    sget-object v8, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_REINIT_FRAMEWORK:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {p0, v5, v8, v2}, Lc8/ZWf;->commitJSFrameworkAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1584
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "err":Ljava/lang/String;
    .restart local v0    # "crashFile":Ljava/lang/String;
    .restart local v6    # "start":J
    :catch_1
    move-exception v1

    .line 1585
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1592
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "pieSupport":Z
    :catch_2
    move-exception v1

    .line 1593
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1617
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    sget v5, Lc8/ZWf;->reInitCount:I

    if-le v5, v12, :cond_8

    .line 1618
    const-string/jumbo v5, "[WXBridgeManager] invokeReInitFramework  ExecuteJavaScript fail"

    invoke-static {v5}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 1619
    const-string/jumbo v2, "[WXBridgeManager] invokeReInitFramework  ExecuteJavaScript fail reinit FrameWork"

    .line 1620
    .restart local v2    # "err":Ljava/lang/String;
    const-string/jumbo v5, "jsFramework"

    sget-object v8, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_REINIT_FRAMEWORK:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {p0, v5, v8, v2}, Lc8/ZWf;->commitJSFrameworkAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1622
    .end local v2    # "err":Ljava/lang/String;
    :cond_8
    const-string/jumbo v5, "[WXBridgeManager] invokeInitFramework  ExecuteJavaScript fail"

    invoke-static {v5}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 1623
    const-string/jumbo v2, "[WXBridgeManager] invokeInitFramework  ExecuteJavaScript fail"

    .line 1624
    .restart local v2    # "err":Ljava/lang/String;
    const-string/jumbo v5, "jsFramework"

    sget-object v8, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_FRAMEWORK:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {p0, v5, v8, v2}, Lc8/ZWf;->commitJSFrameworkAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 1633
    .end local v0    # "crashFile":Ljava/lang/String;
    .end local v2    # "err":Ljava/lang/String;
    .end local v3    # "pieSupport":Z
    .end local v6    # "start":J
    .local v1, "e":Ljava/lang/Throwable;
    :cond_9
    const-string/jumbo v5, "[WXBridgeManager] invokeInitFramework "

    invoke-static {v5, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1634
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[WXBridgeManager] invokeInitFramework exception!#"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1635
    .restart local v2    # "err":Ljava/lang/String;
    const-string/jumbo v5, "jsFramework"

    sget-object v8, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_FRAMEWORK:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {p0, v5, v8, v2}, Lc8/ZWf;->commitJSFrameworkAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private initWXBridge(Z)V
    .locals 5
    .param p1, "remoteDebug"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    if-eqz p1, :cond_0

    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    sput-boolean v4, Lc8/UUf;->sDebugServerConnectable:Z

    .line 205
    :cond_0
    iget-object v2, p0, Lc8/ZWf;->mWxDebugProxy:Lc8/xXf;

    if-eqz v2, :cond_1

    .line 206
    iget-object v2, p0, Lc8/ZWf;->mWxDebugProxy:Lc8/xXf;

    invoke-interface {v2, v3}, Lc8/xXf;->stop(Z)V

    .line 208
    :cond_1
    sget-boolean v2, Lc8/UUf;->sDebugServerConnectable:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 209
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 211
    :try_start_0
    const-string/jumbo v2, "com.taobao.weex.devtools.debug.DebugServerProxy"

    invoke-static {v2}, Lc8/ZWf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 212
    .local v0, "clazz":Ljava/lang/Class;
    if-eqz v0, :cond_2

    .line 213
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lc8/ZWf;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 214
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v1, :cond_2

    .line 215
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/xXf;

    iput-object v2, p0, Lc8/ZWf;->mWxDebugProxy:Lc8/xXf;

    .line 217
    iget-object v2, p0, Lc8/ZWf;->mWxDebugProxy:Lc8/xXf;

    if-eqz v2, :cond_2

    .line 218
    iget-object v2, p0, Lc8/ZWf;->mWxDebugProxy:Lc8/xXf;

    invoke-interface {v2}, Lc8/xXf;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_2
    :goto_0
    invoke-static {}, Lc8/eXf;->execAllCacheJsService()V

    .line 231
    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    iget-object v2, p0, Lc8/ZWf;->mWxDebugProxy:Lc8/xXf;

    if-eqz v2, :cond_5

    .line 232
    iget-object v2, p0, Lc8/ZWf;->mWxDebugProxy:Lc8/xXf;

    invoke-interface {v2}, Lc8/xXf;->getWXBridge()Lc8/wXf;

    move-result-object v2

    iput-object v2, p0, Lc8/ZWf;->mWXBridge:Lc8/wXf;

    .line 236
    :goto_2
    return-void

    .line 227
    :cond_4
    const-string/jumbo v2, "WXBridgeManager"

    const-string/jumbo v3, "WXEnvironment.sApplication is null, skip init Inspector"

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string/jumbo v2, "WXBridgeManager"

    new-instance v3, Ljava/lang/Throwable;

    const-string/jumbo v4, "WXEnvironment.sApplication is null when init Inspector"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 234
    :cond_5
    new-instance v2, Lc8/LWf;

    invoke-direct {v2}, Lc8/LWf;-><init>()V

    iput-object v2, p0, Lc8/ZWf;->mWXBridge:Lc8/wXf;

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private invokeCallJSBatch(Landroid/os/Message;)V
    .locals 13
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1644
    iget-object v9, p0, Lc8/ZWf;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {v9}, Lcom/taobao/weex/bridge/WXHashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-direct {p0}, Lc8/ZWf;->isJSFrameworkInit()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1645
    :cond_0
    invoke-direct {p0}, Lc8/ZWf;->isJSFrameworkInit()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1646
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[WXBridgeManager] invokeCallJSBatch: framework.js uninitialized!!  message:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 1683
    :cond_1
    :goto_0
    return-void

    .line 1652
    :cond_2
    :try_start_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1654
    .local v5, "instanceId":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 1655
    .local v8, "task":Ljava/lang/Object;
    iget-object v9, p0, Lc8/ZWf;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {v9}, Lcom/taobao/weex/bridge/WXHashMap;->getInstanceStack()Ljava/util/Stack;

    move-result-object v6

    .line 1656
    .local v6, "instanceStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v7

    .line 1657
    .local v7, "size":I
    add-int/lit8 v4, v7, -0x1

    .end local v8    # "task":Ljava/lang/Object;
    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_4

    .line 1658
    invoke-virtual {v6, v4}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1659
    iget-object v9, p0, Lc8/ZWf;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {v9, v5}, Lcom/taobao/weex/bridge/WXHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1660
    .restart local v8    # "task":Ljava/lang/Object;
    if-eqz v8, :cond_3

    move-object v0, v8

    check-cast v0, Ljava/util/ArrayList;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1657
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .end local v8    # "task":Ljava/lang/Object;
    :cond_4
    move-object v9, v8

    .line 1664
    :goto_2
    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    .line 1666
    .local v8, "task":[Ljava/lang/Object;
    const/4 v9, 0x2

    new-array v1, v9, [Lc8/aXf;

    const/4 v9, 0x0

    new-instance v10, Lc8/aXf;

    const/4 v11, 0x2

    invoke-direct {v10, v11, v5}, Lc8/aXf;-><init>(ILjava/lang/Object;)V

    aput-object v10, v1, v9

    const/4 v9, 0x1

    new-instance v10, Lc8/aXf;

    const/4 v11, 0x3

    invoke-static {v8}, Lc8/ugg;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lc8/aXf;-><init>(ILjava/lang/Object;)V

    aput-object v10, v1, v9

    .line 1671
    .local v1, "args":[Lc8/aXf;
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string/jumbo v11, "callJS"

    invoke-direct {p0, v9, v10, v11, v1}, Lc8/ZWf;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lc8/aXf;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1680
    .end local v1    # "args":[Lc8/aXf;
    .end local v4    # "i":I
    .end local v5    # "instanceId":Ljava/lang/Object;
    .end local v6    # "instanceStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .end local v7    # "size":I
    .end local v8    # "task":[Ljava/lang/Object;
    :goto_3
    iget-object v9, p0, Lc8/ZWf;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {v9}, Lcom/taobao/weex/bridge/WXHashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1681
    iget-object v9, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1673
    :catch_0
    move-exception v2

    .line 1674
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "WXBridgeManager"

    invoke-static {v9, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1675
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "invokeCallJSBatch#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1676
    .local v3, "err":Ljava/lang/String;
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_EXECUTE:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {p0, v9, v10, v3}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    goto :goto_3

    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "err":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "instanceId":Ljava/lang/Object;
    .restart local v6    # "instanceStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .restart local v7    # "size":I
    .local v8, "task":Ljava/lang/Object;
    :cond_5
    move-object v9, v8

    goto :goto_2
.end method

.method private invokeCreateInstance(Lc8/nVf;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 13
    .param p1, "instance"    # Lc8/nVf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "template"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/nVf;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1410
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, ""

    invoke-direct {p0, v1}, Lc8/ZWf;->initFramework(Ljava/lang/String;)V

    .line 1412
    iget-boolean v1, p0, Lc8/ZWf;->mMock:Z

    if-eqz v1, :cond_0

    .line 1413
    invoke-virtual {p1}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lc8/ZWf;->mock(Ljava/lang/String;)V

    .line 1452
    .end local p4    # "data":Ljava/lang/String;
    :goto_0
    return-void

    .line 1415
    .restart local p4    # "data":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lc8/ZWf;->isJSFrameworkInit()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1416
    const-string/jumbo v1, "wx_create_instance_error"

    const-string/jumbo v2, "createInstance fail!"

    invoke-virtual {p1, v1, v2}, Lc8/nVf;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    const-string/jumbo v9, "[WXBridgeManager] invokeCreateInstance: framework.js uninitialized."

    .line 1419
    .local v9, "err":Ljava/lang/String;
    invoke-virtual {p1}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_INVOKE_NATIVE:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {p0, v1, v2, v9}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    .line 1420
    invoke-static {v9}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1424
    .end local v9    # "err":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createInstance >>>> instanceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", options:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Lc8/ugg;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 1430
    :cond_2
    new-instance v10, Lc8/aXf;

    const/4 v1, 0x2

    invoke-virtual {p1}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v1, v2}, Lc8/aXf;-><init>(ILjava/lang/Object;)V

    .line 1432
    .local v10, "instanceIdObj":Lc8/aXf;
    new-instance v11, Lc8/aXf;

    const/4 v1, 0x2

    invoke-direct {v11, v1, p2}, Lc8/aXf;-><init>(ILjava/lang/Object;)V

    .line 1434
    .local v11, "instanceObj":Lc8/aXf;
    new-instance v12, Lc8/aXf;

    const/4 v2, 0x3

    if-nez p3, :cond_4

    const-string/jumbo v1, "{}"

    :goto_1
    invoke-direct {v12, v2, v1}, Lc8/aXf;-><init>(ILjava/lang/Object;)V

    .line 1437
    .local v12, "optionsObj":Lc8/aXf;
    new-instance v7, Lc8/aXf;

    const/4 v1, 0x3

    if-nez p4, :cond_3

    const-string/jumbo p4, "{}"

    .end local p4    # "data":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p4

    invoke-direct {v7, v1, v0}, Lc8/aXf;-><init>(ILjava/lang/Object;)V

    .line 1439
    .local v7, "dataObj":Lc8/aXf;
    const/4 v1, 0x4

    new-array v5, v1, [Lc8/aXf;

    const/4 v1, 0x0

    aput-object v10, v5, v1

    const/4 v1, 0x1

    aput-object v11, v5, v1

    const/4 v1, 0x2

    aput-object v12, v5, v1

    const/4 v1, 0x3

    aput-object v7, v5, v1

    .line 1441
    .local v5, "args":[Lc8/aXf;
    invoke-virtual {p1, p2}, Lc8/nVf;->setTemplate(Ljava/lang/String;)V

    .line 1442
    invoke-virtual {p1}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "createInstance"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lc8/ZWf;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lc8/aXf;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1443
    .end local v5    # "args":[Lc8/aXf;
    .end local v7    # "dataObj":Lc8/aXf;
    .end local v10    # "instanceIdObj":Lc8/aXf;
    .end local v11    # "instanceObj":Lc8/aXf;
    .end local v12    # "optionsObj":Lc8/aXf;
    :catch_0
    move-exception v8

    .line 1444
    .local v8, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "wx_create_instance_error"

    const-string/jumbo v2, "createInstance failed!"

    invoke-virtual {p1, v1, v2}, Lc8/nVf;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[WXBridgeManager] invokeCreateInstance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lc8/nVf;->getTemplateInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1448
    .restart local v9    # "err":Ljava/lang/String;
    invoke-virtual {p1}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_INVOKE_NATIVE:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {p0, v1, v2, v9}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    .line 1449
    invoke-static {v9}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1434
    .end local v8    # "e":Ljava/lang/Throwable;
    .end local v9    # "err":Ljava/lang/String;
    .restart local v10    # "instanceIdObj":Lc8/aXf;
    .restart local v11    # "instanceObj":Lc8/aXf;
    .restart local p4    # "data":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static/range {p3 .. p3}, Lc8/ugg;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method private invokeDestroyInstance(Ljava/lang/String;)V
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 1483
    :try_start_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "destroyInstance >>>> instanceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 1486
    :cond_0
    new-instance v3, Lc8/aXf;

    const/4 v4, 0x2

    invoke-direct {v3, v4, p1}, Lc8/aXf;-><init>(ILjava/lang/Object;)V

    .line 1488
    .local v3, "instanceIdObj":Lc8/aXf;
    const/4 v4, 0x1

    new-array v0, v4, [Lc8/aXf;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 1489
    .local v0, "args":[Lc8/aXf;
    invoke-direct {p0}, Lc8/ZWf;->isJSFrameworkInit()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1490
    const/4 v4, 0x0

    const-string/jumbo v5, "destroyInstance"

    invoke-direct {p0, p1, v4, v5, v0}, Lc8/ZWf;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lc8/aXf;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    .end local v0    # "args":[Lc8/aXf;
    .end local v3    # "instanceIdObj":Lc8/aXf;
    :cond_1
    :goto_0
    return-void

    .line 1492
    :catch_0
    move-exception v1

    .line 1493
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[WXBridgeManager] invokeDestroyInstance "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1494
    .local v2, "err":Ljava/lang/String;
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_INVOKE_NATIVE:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {p0, p1, v4, v2}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    .line 1495
    invoke-static {v2}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lc8/aXf;)V
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "function"    # Ljava/lang/String;
    .param p4, "args"    # [Lc8/aXf;

    .prologue
    .line 1535
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lc8/ZWf;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lc8/aXf;Z)V

    .line 1536
    return-void
.end method

.method private invokeExecJSService(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1795
    .local p2, "receiver":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lc8/ZWf;->isJSFrameworkInit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1796
    const-string/jumbo v1, "[WXBridgeManager] invoke execJSService: framework.js uninitialized."

    invoke-static {v1}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 1797
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1805
    :goto_0
    return-void

    .line 1800
    :cond_0
    iget-object v1, p0, Lc8/ZWf;->mWXBridge:Lc8/wXf;

    invoke-interface {v1, p1}, Lc8/wXf;->execJSService(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1801
    :catch_0
    move-exception v0

    .line 1802
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "[WXBridgeManager] invokeRegisterService:"

    invoke-static {v1, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1803
    const-string/jumbo v1, "jsFramework"

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_EXECUTE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v3, "invokeRegisterService"

    invoke-virtual {p0, v1, v2, v3}, Lc8/ZWf;->commitJSFrameworkAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private invokeInitFramework(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1552
    const-string/jumbo v0, ""

    .line 1553
    .local v0, "framework":Ljava/lang/String;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1554
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "framework":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1557
    .restart local v0    # "framework":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v2

    sget-wide v4, Lc8/ZWf;->LOW_MEM_VALUE:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 1558
    invoke-direct {p0, v0}, Lc8/ZWf;->initFramework(Ljava/lang/String;)V

    .line 1560
    :cond_1
    return-void
.end method

.method private invokeRefreshInstance(Ljava/lang/String;Lc8/PXf;)V
    .locals 12
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "refreshData"    # Lc8/PXf;

    .prologue
    .line 1260
    :try_start_0
    invoke-direct {p0}, Lc8/ZWf;->isJSFrameworkInit()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1261
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v8

    invoke-virtual {v8, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v4

    .line 1262
    .local v4, "instance":Lc8/nVf;
    if-eqz v4, :cond_0

    .line 1263
    const-string/jumbo v8, "wx_create_instance_error"

    const-string/jumbo v9, "createInstance failed!"

    invoke-virtual {v4, v8, v9}, Lc8/nVf;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    :cond_0
    const-string/jumbo v3, "[WXBridgeManager] invokeRefreshInstance: framework.js uninitialized."

    .line 1267
    .local v3, "err":Ljava/lang/String;
    sget-object v8, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_INVOKE_NATIVE:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {p0, p1, v8, v3}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    .line 1268
    invoke-static {v3}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 1292
    .end local v3    # "err":Ljava/lang/String;
    .end local v4    # "instance":Lc8/nVf;
    :cond_1
    :goto_0
    return-void

    .line 1271
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1272
    .local v6, "start":J
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1273
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "refreshInstance >>>> instanceId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", data:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lc8/PXf;->data:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", isDirty:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p2, Lc8/PXf;->isDirty:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 1277
    :cond_3
    iget-boolean v8, p2, Lc8/PXf;->isDirty:Z

    if-nez v8, :cond_1

    .line 1280
    new-instance v5, Lc8/aXf;

    const/4 v8, 0x2

    invoke-direct {v5, v8, p1}, Lc8/aXf;-><init>(ILjava/lang/Object;)V

    .line 1282
    .local v5, "instanceIdObj":Lc8/aXf;
    new-instance v1, Lc8/aXf;

    const/4 v9, 0x3

    iget-object v8, p2, Lc8/PXf;->data:Ljava/lang/String;

    if-nez v8, :cond_4

    const-string/jumbo v8, "{}"

    :goto_1
    invoke-direct {v1, v9, v8}, Lc8/aXf;-><init>(ILjava/lang/Object;)V

    .line 1284
    .local v1, "dataObj":Lc8/aXf;
    const/4 v8, 0x2

    new-array v0, v8, [Lc8/aXf;

    const/4 v8, 0x0

    aput-object v5, v0, v8

    const/4 v8, 0x1

    aput-object v1, v0, v8

    .line 1285
    .local v0, "args":[Lc8/aXf;
    const/4 v8, 0x0

    const-string/jumbo v9, "refreshInstance"

    invoke-direct {p0, p1, v8, v9, v0}, Lc8/ZWf;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lc8/aXf;)V

    .line 1286
    const-string/jumbo v8, "invokeRefreshInstance"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-static {v8, v10, v11}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1287
    .end local v0    # "args":[Lc8/aXf;
    .end local v1    # "dataObj":Lc8/aXf;
    .end local v5    # "instanceIdObj":Lc8/aXf;
    .end local v6    # "start":J
    :catch_0
    move-exception v2

    .line 1288
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[WXBridgeManager] invokeRefreshInstance "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1289
    .restart local v3    # "err":Ljava/lang/String;
    sget-object v8, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_INVOKE_NATIVE:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {p0, p1, v8, v3}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    .line 1290
    invoke-static {v3}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1282
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "err":Ljava/lang/String;
    .restart local v5    # "instanceIdObj":Lc8/aXf;
    .restart local v6    # "start":J
    :cond_4
    :try_start_1
    iget-object v8, p2, Lc8/PXf;->data:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private invokeRegisterComponents(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1831
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .local p2, "failReceiver":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-ne p1, p2, :cond_0

    .line 1832
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Fail receiver should not use source."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1834
    :cond_0
    invoke-direct {p0}, Lc8/ZWf;->isJSFrameworkInit()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1835
    const-string/jumbo v4, "[WXBridgeManager] invokeRegisterComponents: framework.js uninitialized."

    invoke-static {v4}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 1837
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1838
    .local v1, "comp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1842
    .end local v1    # "comp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    if-nez p1, :cond_3

    .line 1854
    :cond_2
    :goto_1
    return-void

    .line 1846
    :cond_3
    const/4 v4, 0x1

    new-array v0, v4, [Lc8/aXf;

    const/4 v4, 0x0

    new-instance v5, Lc8/aXf;

    const/4 v6, 0x3

    invoke-static {p1}, Lc8/ugg;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lc8/aXf;-><init>(ILjava/lang/Object;)V

    aput-object v5, v0, v4

    .line 1849
    .local v0, "args":[Lc8/aXf;
    :try_start_0
    iget-object v4, p0, Lc8/ZWf;->mWXBridge:Lc8/wXf;

    const-string/jumbo v5, ""

    const/4 v6, 0x0

    const-string/jumbo v7, "registerComponents"

    invoke-interface {v4, v5, v6, v7, v0}, Lc8/wXf;->execJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lc8/aXf;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1850
    :catch_0
    move-exception v2

    .line 1851
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "[WXBridgeManager] invokeRegisterComponents "

    invoke-static {v4, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1852
    const-string/jumbo v4, "jsFramework"

    sget-object v5, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_EXECUTE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v6, "invokeRegisterComponents"

    invoke-virtual {p0, v4, v5, v6}, Lc8/ZWf;->commitJSFrameworkAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private invokeRegisterModules(Ljava/util/Map;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1812
    .local p1, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "failReceiver":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lc8/ZWf;->isJSFrameworkInit()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1813
    :cond_0
    invoke-direct {p0}, Lc8/ZWf;->isJSFrameworkInit()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1814
    const-string/jumbo v2, "[WXBridgeManager] invokeRegisterModules: framework.js uninitialized."

    invoke-static {v2}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 1816
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1828
    :goto_0
    return-void

    .line 1820
    :cond_2
    const/4 v2, 0x1

    new-array v0, v2, [Lc8/aXf;

    const/4 v2, 0x0

    new-instance v3, Lc8/aXf;

    const/4 v4, 0x3

    invoke-static {p1}, Lc8/ugg;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lc8/aXf;-><init>(ILjava/lang/Object;)V

    aput-object v3, v0, v2

    .line 1823
    .local v0, "args":[Lc8/aXf;
    :try_start_0
    iget-object v2, p0, Lc8/ZWf;->mWXBridge:Lc8/wXf;

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    const-string/jumbo v5, "registerModules"

    invoke-interface {v2, v3, v4, v5, v0}, Lc8/wXf;->execJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lc8/aXf;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1824
    :catch_0
    move-exception v1

    .line 1825
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "[WXBridgeManager] invokeRegisterModules:"

    invoke-static {v2, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1826
    const-string/jumbo v2, "jsFramework"

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_EXECUTE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v4, "invokeRegisterModules"

    invoke-virtual {p0, v2, v3, v4}, Lc8/ZWf;->commitJSFrameworkAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isJSFrameworkInit()Z
    .locals 1

    .prologue
    .line 193
    sget-boolean v0, Lc8/ZWf;->mInit:Z

    return v0
.end method

.method private isJSThread()Z
    .locals 4

    .prologue
    .line 1808
    iget-object v0, p0, Lc8/ZWf;->mJSThread:Lc8/VXf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ZWf;->mJSThread:Lc8/VXf;

    invoke-virtual {v0}, Lc8/VXf;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mock(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 1456
    return-void
.end method

.method private registerDomModule()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .prologue
    .line 1968
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1969
    .local v0, "domMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "dom"

    sget-object v2, Lc8/FYf;->METHODS:[Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1970
    invoke-virtual {p0, v0}, Lc8/ZWf;->registerModules(Ljava/util/Map;)V

    .line 1971
    return-void
.end method

.method private removeTaskByInstance(Ljava/lang/String;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 1478
    iget-object v0, p0, Lc8/ZWf;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/bridge/WXHashMap;->removeFromMapAndStack(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    return-void
.end method

.method private sendMessage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "what"    # I

    .prologue
    .line 1120
    iget-object v1, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1121
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1122
    iput p2, v0, Landroid/os/Message;->what:I

    .line 1123
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1124
    return-void
.end method

.method private setJSFrameworkInit(Z)V
    .locals 0
    .param p1, "init"    # Z

    .prologue
    .line 197
    sput-boolean p1, Lc8/ZWf;->mInit:Z

    .line 198
    return-void
.end method


# virtual methods
.method public callAddElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "dom"    # Ljava/lang/String;
    .param p4, "index"    # Ljava/lang/String;
    .param p5, "callback"    # Ljava/lang/String;

    .prologue
    .line 898
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 899
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[WXBridgeManager] callNative::callAddElement >>>> instanceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ref:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", dom:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", callback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 902
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 905
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 906
    const/4 v4, -0x1

    .line 935
    :goto_0
    return v4

    .line 910
    :cond_1
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 911
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 912
    .local v16, "start":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 913
    .local v14, "nanosTemp":J
    invoke-static/range {p3 .. p3}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 914
    .local v12, "domObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v14, v4, v14

    .line 916
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 917
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v16

    invoke-virtual {v4, v6, v7}, Lc8/nVf;->jsonParseTime(J)V

    .line 919
    :cond_2
    invoke-static/range {p1 .. p1}, Lc8/cXf;->getDomModule(Ljava/lang/String;)Lc8/FYf;

    move-result-object v11

    .line 920
    .local v11, "domModule":Lc8/FYf;
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v12, v0, v4}, Lc8/YYf;->getAddElement(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)Lc8/fYf;

    move-result-object v10

    .line 921
    .local v10, "addElementAction":Lc8/fYf;
    const/4 v4, 0x0

    invoke-virtual {v11, v10, v4}, Lc8/FYf;->postAction(Lc8/fYf;Z)V

    .line 923
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    instance-of v4, v10, Lc8/sZf;

    if-eqz v4, :cond_3

    move-object v4, v10

    .line 924
    check-cast v4, Lc8/sZf;

    iput-wide v14, v4, Lc8/sZf;->mParseJsonNanos:J

    move-object v4, v10

    .line 925
    check-cast v4, Lc8/sZf;

    move-wide/from16 v0, v16

    iput-wide v0, v4, Lc8/sZf;->mStartMillis:J

    move-object v4, v10

    .line 926
    check-cast v4, Lc8/sZf;

    const-string/jumbo v6, "addElement"

    const-string/jumbo v5, "ref"

    invoke-virtual {v12, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v5, "type"

    invoke-virtual {v12, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v5, p1

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lc8/sZf;->onStartDomExecute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    .end local v10    # "addElementAction":Lc8/fYf;
    .end local v11    # "domModule":Lc8/FYf;
    .end local v12    # "domObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "nanosTemp":J
    .end local v16    # "start":J
    :cond_3
    const-string/jumbo v4, "undefined"

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "-1"

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 931
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 934
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lc8/ZWf;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public callAddEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "callback"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 825
    iget-object v1, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[WXBridgeManager] callAddEvent >>>> instanceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ref:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    iget-object v1, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 829
    iget-object v1, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 832
    iget-object v1, p0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 833
    const/4 v1, -0x1

    .line 856
    :goto_0
    return v1

    .line 837
    :cond_0
    :try_start_0
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 838
    invoke-static {p1}, Lc8/cXf;->getDomModule(Ljava/lang/String;)Lc8/FYf;

    move-result-object v8

    .line 839
    .local v8, "domModule":Lc8/FYf;
    invoke-static {p2, p3}, Lc8/YYf;->getAddEvent(Ljava/lang/String;Ljava/lang/String;)Lc8/fYf;

    move-result-object v7

    .line 840
    .local v7, "action":Lc8/XYf;
    move-object v0, v7

    check-cast v0, Lc8/fYf;

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Lc8/FYf;->postAction(Lc8/fYf;Z)V

    .line 842
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v7, Lc8/sZf;

    if-eqz v1, :cond_1

    .line 843
    move-object v0, v7

    check-cast v0, Lc8/sZf;

    move-object v1, v0

    const-string/jumbo v3, "addEvent"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lc8/sZf;->onStartDomExecute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    .end local v7    # "action":Lc8/XYf;
    .end local v8    # "domModule":Lc8/FYf;
    :cond_1
    :goto_1
    const-string/jumbo v1, "undefined"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "-1"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, v10

    .line 852
    goto :goto_0

    .line 846
    :catch_0
    move-exception v9

    .line 847
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "[WXBridgeManager] callAddEvent exception: "

    invoke-static {v1, v9}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 848
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_ADDEVENT:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[WXBridgeManager] callAddEvent exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    goto :goto_1

    .line 855
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-direct {p0, p1, p4}, Lc8/ZWf;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public callCreateBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "tasks"    # Ljava/lang/String;
    .param p3, "callback"    # Ljava/lang/String;

    .prologue
    .line 500
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 502
    const-string/jumbo v4, "[WXBridgeManager] callCreateBody: call CreateBody tasks is null"

    invoke-static {v4}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 504
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_CREATEBODY:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v5, "[WXBridgeManager] callCreateBody: call CreateBody tasks is null"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    .line 505
    const/4 v4, 0x0

    .line 547
    :goto_0
    return v4

    .line 509
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[WXBridgeManager] callCreateBody >>>> instanceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", tasks:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", callback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 516
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 517
    const/4 v4, -0x1

    goto :goto_0

    .line 521
    :cond_1
    :try_start_0
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 523
    .local v16, "start":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 524
    .local v14, "nanosTemp":J
    invoke-static/range {p2 .. p2}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 525
    .local v12, "domObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v14, v4, v14

    .line 527
    invoke-static/range {p1 .. p1}, Lc8/cXf;->getDomModule(Ljava/lang/String;)Lc8/FYf;

    move-result-object v11

    .line 528
    .local v11, "domModule":Lc8/FYf;
    invoke-static {v12}, Lc8/YYf;->getCreateBody(Lcom/alibaba/fastjson/JSONObject;)Lc8/fYf;

    move-result-object v10

    .line 529
    .local v10, "action":Lc8/XYf;
    move-object v0, v10

    check-cast v0, Lc8/fYf;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v11, v4, v5}, Lc8/FYf;->postAction(Lc8/fYf;Z)V

    .line 531
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v4, v10, Lc8/sZf;

    if-eqz v4, :cond_2

    .line 532
    move-object v0, v10

    check-cast v0, Lc8/sZf;

    move-object v4, v0

    iput-wide v14, v4, Lc8/sZf;->mParseJsonNanos:J

    .line 533
    move-object v0, v10

    check-cast v0, Lc8/sZf;

    move-object v4, v0

    move-wide/from16 v0, v16

    iput-wide v0, v4, Lc8/sZf;->mStartMillis:J

    .line 534
    move-object v0, v10

    check-cast v0, Lc8/sZf;

    move-object v4, v0

    const-string/jumbo v6, "createBody"

    const-string/jumbo v7, "_root"

    const-string/jumbo v5, "type"

    invoke-virtual {v12, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v4 .. v9}, Lc8/sZf;->onStartDomExecute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    .end local v10    # "action":Lc8/XYf;
    .end local v11    # "domModule":Lc8/FYf;
    .end local v12    # "domObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "nanosTemp":J
    .end local v16    # "start":J
    :cond_2
    :goto_1
    const-string/jumbo v4, "undefined"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "-1"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 543
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 537
    :catch_0
    move-exception v13

    .line 538
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "[WXBridgeManager] callCreateBody exception: "

    invoke-static {v4, v13}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 539
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_CREATEBODY:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[WXBridgeManager] callCreateBody exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    goto :goto_1

    .line 546
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lc8/ZWf;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public callCreateFinish(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 586
    iget-object v4, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[WXBridgeManager] callCreateFinish >>>> instanceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", callback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    iget-object v4, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 589
    iget-object v4, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 592
    iget-object v4, p0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 593
    const/4 v3, -0x1

    .line 612
    :cond_0
    :goto_0
    return v3

    .line 597
    :cond_1
    :try_start_0
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v4

    invoke-virtual {v4, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 598
    invoke-static {p1}, Lc8/cXf;->getDomModule(Ljava/lang/String;)Lc8/FYf;

    move-result-object v1

    .line 599
    .local v1, "domModule":Lc8/FYf;
    invoke-static {}, Lc8/YYf;->getCreateFinish()Lc8/fYf;

    move-result-object v0

    .line 600
    .local v0, "action":Lc8/XYf;
    check-cast v0, Lc8/fYf;

    .end local v0    # "action":Lc8/XYf;
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lc8/FYf;->postAction(Lc8/fYf;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    .end local v1    # "domModule":Lc8/FYf;
    :cond_2
    :goto_1
    const-string/jumbo v4, "undefined"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "-1"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 611
    invoke-direct {p0, p1, p2}, Lc8/ZWf;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const/4 v3, 0x1

    goto :goto_0

    .line 602
    :catch_0
    move-exception v2

    .line 603
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "[WXBridgeManager] callCreateFinish exception: "

    invoke-static {v4, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 604
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_ERROR_DOM_CREATEFINISH:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[WXBridgeManager] callCreateFinish exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v4, v5}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "moduleStr"    # Ljava/lang/String;
    .param p3, "methodStr"    # Ljava/lang/String;
    .param p4, "args"    # Lcom/alibaba/fastjson/JSONArray;

    .prologue
    .line 245
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lc8/ZWf;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;
    .locals 8
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "moduleStr"    # Ljava/lang/String;
    .param p3, "methodStr"    # Ljava/lang/String;
    .param p4, "args"    # Lcom/alibaba/fastjson/JSONArray;
    .param p5, "options"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    const/4 v6, 0x0

    .line 249
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v1

    .line 251
    .local v1, "wxsdkInstance":Lc8/nVf;
    if-nez v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-object v6

    .line 254
    :cond_1
    invoke-virtual {v1}, Lc8/nVf;->isNeedValidate()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getValidateProcessor()Lc8/iXf;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 256
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getValidateProcessor()Lc8/iXf;

    move-result-object v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lc8/iXf;->onModuleValidate(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Lc8/hXf;

    move-result-object v7

    .line 259
    .local v7, "validateResult":Lc8/hXf;
    if-eqz v7, :cond_0

    .line 262
    iget-boolean v0, v7, Lc8/hXf;->isSuccess:Z

    if-eqz v0, :cond_2

    .line 263
    invoke-static {p1, p2, p3, p4}, Lc8/cXf;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 266
    :cond_2
    iget-object v6, v7, Lc8/hXf;->validateInfo:Lcom/alibaba/fastjson/JSONObject;

    .line 267
    .local v6, "validateInfo":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v6, :cond_0

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[WXBridgeManager] module validate fail. >>> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    .end local v6    # "validateInfo":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "validateResult":Lc8/hXf;
    :cond_3
    invoke-static {p1, p2, p3, p4}, Lc8/cXf;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0
.end method

.method public callMoveElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "parentref"    # Ljava/lang/String;
    .param p4, "index"    # Ljava/lang/String;
    .param p5, "callback"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 790
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 791
    iget-object v4, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[WXBridgeManager] callMoveElement >>>> instanceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", parentref:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ref:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    iget-object v4, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 796
    iget-object v4, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 799
    :cond_0
    iget-object v4, p0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 800
    const/4 v3, -0x1

    .line 819
    :cond_1
    :goto_0
    return v3

    .line 804
    :cond_2
    :try_start_0
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v4

    invoke-virtual {v4, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 805
    invoke-static {p1}, Lc8/cXf;->getDomModule(Ljava/lang/String;)Lc8/FYf;

    move-result-object v1

    .line 806
    .local v1, "domModule":Lc8/FYf;
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {p2, p3, v4}, Lc8/YYf;->getMoveElement(Ljava/lang/String;Ljava/lang/String;I)Lc8/fYf;

    move-result-object v0

    .line 807
    .local v0, "action":Lc8/XYf;
    check-cast v0, Lc8/fYf;

    .end local v0    # "action":Lc8/XYf;
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lc8/FYf;->postAction(Lc8/fYf;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    .end local v1    # "domModule":Lc8/FYf;
    :cond_3
    :goto_1
    const-string/jumbo v4, "undefined"

    invoke-virtual {v4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "-1"

    invoke-virtual {v4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 818
    invoke-direct {p0, p1, p5}, Lc8/ZWf;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const/4 v3, 0x1

    goto :goto_0

    .line 809
    :catch_0
    move-exception v2

    .line 810
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "[WXBridgeManager] callMoveElement exception: "

    invoke-static {v4, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 811
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_MOVEELEMENT:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[WXBridgeManager] callMoveElement exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v4, v5}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public callNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 21
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "tasks"    # Ljava/lang/String;
    .param p3, "callback"    # Ljava/lang/String;

    .prologue
    .line 431
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 432
    const-string/jumbo v4, "[WXBridgeManager] callNative: call Native tasks is null"

    invoke-static {v4}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 433
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_INVOKE_NATIVE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v5, "[WXBridgeManager] callNative: call Native tasks is null"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    .line 434
    const/4 v4, 0x0

    .line 495
    :goto_0
    return v4

    .line 437
    :cond_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 438
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[WXBridgeManager] callNative >>>> instanceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", tasks:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", callback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 444
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 445
    const/4 v4, -0x1

    goto :goto_0

    .line 449
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 450
    .local v18, "start":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 451
    .local v14, "parseNanos":J
    invoke-static/range {p2 .. p2}, Lc8/AIb;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v10

    .line 452
    .local v10, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v14, v4, v14

    .line 454
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 455
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v18

    invoke-virtual {v4, v6, v7}, Lc8/nVf;->jsonParseTime(J)V

    .line 458
    :cond_3
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v16

    .line 459
    .local v16, "size":I
    if-lez v16, :cond_6

    .line 462
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_6

    .line 463
    :try_start_0
    invoke-virtual {v10, v13}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/alibaba/fastjson/JSONObject;

    .line 464
    .local v20, "task":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v20, :cond_4

    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 465
    const-string/jumbo v4, "module"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 466
    .local v17, "target":Ljava/lang/Object;
    if-eqz v17, :cond_8

    .line 467
    const-string/jumbo v4, "dom"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 468
    invoke-static/range {p1 .. p1}, Lc8/cXf;->getDomModule(Ljava/lang/String;)Lc8/FYf;

    move-result-object v11

    .line 469
    .local v11, "dom":Lc8/FYf;
    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide v14, v4, v5

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v4}, Lc8/FYf;->callDomMethod(Lcom/alibaba/fastjson/JSONObject;[J)V

    .line 462
    .end local v11    # "dom":Lc8/FYf;
    .end local v17    # "target":Ljava/lang/Object;
    :cond_4
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 471
    .restart local v17    # "target":Ljava/lang/Object;
    :cond_5
    const-string/jumbo v4, "options"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 472
    .local v9, "optionObj":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    const-string/jumbo v4, "method"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v4, "args"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lc8/ZWf;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 484
    .end local v9    # "optionObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v17    # "target":Ljava/lang/Object;
    .end local v20    # "task":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v12

    .line 485
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "[WXBridgeManager] callNative exception: "

    invoke-static {v4, v12}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 486
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_INVOKE_NATIVE:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[WXBridgeManager] callNative exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    .line 490
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "i":I
    :cond_6
    const-string/jumbo v4, "undefined"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "-1"

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 491
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 475
    .restart local v13    # "i":I
    .restart local v17    # "target":Ljava/lang/Object;
    .restart local v20    # "task":Lcom/alibaba/fastjson/JSONObject;
    :cond_8
    :try_start_1
    const-string/jumbo v4, "component"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 477
    invoke-static/range {p1 .. p1}, Lc8/cXf;->getDomModule(Ljava/lang/String;)Lc8/FYf;

    move-result-object v11

    .line 478
    .restart local v11    # "dom":Lc8/FYf;
    const-string/jumbo v4, "ref"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "method"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v6, "args"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v11, v4, v5, v6}, Lc8/FYf;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    goto/16 :goto_2

    .line 480
    .end local v11    # "dom":Lc8/FYf;
    :cond_9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "unknown callNative"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 494
    .end local v13    # "i":I
    .end local v17    # "target":Ljava/lang/Object;
    .end local v20    # "task":Lcom/alibaba/fastjson/JSONObject;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lc8/ZWf;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public callNativeComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "componentRef"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "arguments"    # Lcom/alibaba/fastjson/JSONArray;
    .param p5, "options"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 405
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    iget-object v2, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[WXBridgeManager] callNativeComponent >>>> instanceId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", componentRef:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", method:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", arguments:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 408
    iget-object v2, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 413
    :cond_0
    :try_start_0
    invoke-static {p1}, Lc8/cXf;->getDomModule(Ljava/lang/String;)Lc8/FYf;

    move-result-object v0

    .line 414
    .local v0, "dom":Lc8/FYf;
    invoke-virtual {v0, p2, p3, p4}, Lc8/FYf;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    .end local v0    # "dom":Lc8/FYf;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 416
    :catch_0
    move-exception v1

    .line 417
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "[WXBridgeManager] callNative exception: "

    invoke-static {v2, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 418
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_INVOKE_NATIVE:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[WXBridgeManager] callNativeModule exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;
    .locals 5
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "arguments"    # Lcom/alibaba/fastjson/JSONArray;
    .param p5, "options"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 381
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    iget-object v2, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[WXBridgeManager] callNativeModule >>>> instanceId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", module:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", method:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", arguments:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    iget-object v2, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 389
    :cond_0
    :try_start_0
    const-string/jumbo v2, "dom"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 390
    invoke-static {p1}, Lc8/cXf;->getDomModule(Ljava/lang/String;)Lc8/FYf;

    move-result-object v0

    .line 391
    .local v0, "dom":Lc8/FYf;
    const/4 v2, 0x0

    new-array v2, v2, [J

    invoke-virtual {v0, p3, p4, v2}, Lc8/FYf;->callDomMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;[J)Ljava/lang/Object;

    move-result-object v2

    .line 401
    .end local v0    # "dom":Lc8/FYf;
    :goto_0
    return-object v2

    .line 393
    :cond_1
    invoke-virtual/range {p0 .. p5}, Lc8/ZWf;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 396
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "[WXBridgeManager] callNative exception: "

    invoke-static {v2, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_INVOKE_NATIVE:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[WXBridgeManager] callNativeModule exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    .line 401
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public callNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "arguments"    # Lcom/alibaba/fastjson/JSONArray;
    .param p5, "options"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 356
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[WXBridgeManager] callNativeModule >>>> instanceId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", module:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", method:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", arguments:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 359
    iget-object v2, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 360
    iget-object v2, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 364
    :cond_0
    :try_start_0
    const-string/jumbo v2, "dom"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    invoke-static {p1}, Lc8/cXf;->getDomModule(Ljava/lang/String;)Lc8/FYf;

    move-result-object v0

    .line 366
    .local v0, "dom":Lc8/FYf;
    const/4 v2, 0x0

    new-array v2, v2, [J

    invoke-virtual {v0, p3, p4, v2}, Lc8/FYf;->callDomMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;[J)Ljava/lang/Object;

    move-result-object v2

    .line 376
    .end local v0    # "dom":Lc8/FYf;
    :goto_0
    return-object v2

    .line 368
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/ZWf;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 371
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "[WXBridgeManager] callNative exception: "

    invoke-static {v2, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 373
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_INVOKE_NATIVE:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[WXBridgeManager] callNativeModule exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    .line 376
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public callRefreshFinish(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 618
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 619
    iget-object v4, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[WXBridgeManager] callRefreshFinish >>>> instanceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", callback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    iget-object v4, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 622
    iget-object v4, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 625
    :cond_0
    iget-object v4, p0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 626
    const/4 v3, -0x1

    .line 645
    :cond_1
    :goto_0
    return v3

    .line 630
    :cond_2
    :try_start_0
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v4

    invoke-virtual {v4, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 631
    invoke-static {p1}, Lc8/cXf;->getDomModule(Ljava/lang/String;)Lc8/FYf;

    move-result-object v1

    .line 632
    .local v1, "domModule":Lc8/FYf;
    invoke-static {}, Lc8/YYf;->getRefreshFinish()Lc8/fYf;

    move-result-object v0

    .line 633
    .local v0, "action":Lc8/XYf;
    check-cast v0, Lc8/fYf;

    .end local v0    # "action":Lc8/XYf;
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lc8/FYf;->postAction(Lc8/fYf;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    .end local v1    # "domModule":Lc8/FYf;
    :cond_3
    :goto_1
    const-string/jumbo v4, "undefined"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "-1"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 644
    invoke-direct {p0, p1, p2}, Lc8/ZWf;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const/4 v3, 0x1

    goto :goto_0

    .line 635
    :catch_0
    move-exception v2

    .line 636
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "[WXBridgeManager] callRefreshFinish exception: "

    invoke-static {v4, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 637
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_ERROR_DOM_REFRESHFINISH:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[WXBridgeManager] callRefreshFinish exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v4, v5}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public callRemoveElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "callback"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 753
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    iget-object v1, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[WXBridgeManager] callRemoveElement >>>> instanceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ref:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    iget-object v1, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 757
    iget-object v1, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 760
    :cond_0
    iget-object v1, p0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 761
    const/4 v1, -0x1

    .line 784
    :goto_0
    return v1

    .line 765
    :cond_1
    :try_start_0
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 766
    invoke-static {p1}, Lc8/cXf;->getDomModule(Ljava/lang/String;)Lc8/FYf;

    move-result-object v8

    .line 767
    .local v8, "domModule":Lc8/FYf;
    invoke-static {p2}, Lc8/YYf;->getRemoveElement(Ljava/lang/String;)Lc8/fYf;

    move-result-object v7

    .line 768
    .local v7, "action":Lc8/XYf;
    move-object v0, v7

    check-cast v0, Lc8/fYf;

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Lc8/FYf;->postAction(Lc8/fYf;Z)V

    .line 770
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v7, Lc8/sZf;

    if-eqz v1, :cond_2

    .line 771
    move-object v0, v7

    check-cast v0, Lc8/sZf;

    move-object v1, v0

    const-string/jumbo v3, "removeElement"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lc8/sZf;->onStartDomExecute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    .end local v7    # "action":Lc8/XYf;
    .end local v8    # "domModule":Lc8/FYf;
    :cond_2
    :goto_1
    const-string/jumbo v1, "undefined"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "-1"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v1, v10

    .line 780
    goto :goto_0

    .line 774
    :catch_0
    move-exception v9

    .line 775
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "[WXBridgeManager] callRemoveElement exception: "

    invoke-static {v1, v9}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 776
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_REMOVEELEMENT:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[WXBridgeManager] callRemoveElement exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    goto :goto_1

    .line 783
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0, p1, p3}, Lc8/ZWf;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public callRemoveEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "callback"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 861
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    iget-object v1, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[WXBridgeManager] callRemoveEvent >>>> instanceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ref:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    iget-object v1, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 866
    iget-object v1, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 869
    :cond_0
    iget-object v1, p0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 870
    const/4 v1, -0x1

    .line 893
    :goto_0
    return v1

    .line 874
    :cond_1
    :try_start_0
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 875
    invoke-static {p1}, Lc8/cXf;->getDomModule(Ljava/lang/String;)Lc8/FYf;

    move-result-object v8

    .line 876
    .local v8, "domModule":Lc8/FYf;
    invoke-static {p2, p3}, Lc8/YYf;->getRemoveEvent(Ljava/lang/String;Ljava/lang/String;)Lc8/fYf;

    move-result-object v7

    .line 877
    .local v7, "action":Lc8/XYf;
    move-object v0, v7

    check-cast v0, Lc8/fYf;

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Lc8/FYf;->postAction(Lc8/fYf;Z)V

    .line 879
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v7, Lc8/sZf;

    if-eqz v1, :cond_2

    .line 880
    move-object v0, v7

    check-cast v0, Lc8/sZf;

    move-object v1, v0

    const-string/jumbo v3, "removeEvent"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lc8/sZf;->onStartDomExecute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    .end local v7    # "action":Lc8/XYf;
    .end local v8    # "domModule":Lc8/FYf;
    :cond_2
    :goto_1
    const-string/jumbo v1, "undefined"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "-1"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v1, v10

    .line 889
    goto :goto_0

    .line 883
    :catch_0
    move-exception v9

    .line 884
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "[WXBridgeManager] callRemoveEvent exception: "

    invoke-static {v1, v9}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 885
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_REMOVEEVENT:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[WXBridgeManager] callRemoveEvent exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    goto :goto_1

    .line 892
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0, p1, p4}, Lc8/ZWf;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public callReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "crashFile"    # Ljava/lang/String;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 1001
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1002
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyyMMddHHmmss"

    invoke-direct {v1, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1003
    .local v1, "format":Ljava/text/DateFormat;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1004
    .local v6, "time":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1005
    .local v4, "origin_filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1006
    .local v3, "oldfile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1007
    .local v2, "newfile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1008
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1010
    :cond_0
    new-instance v5, Ljava/lang/Thread;

    new-instance v7, Lc8/PWf;

    invoke-direct {v7, p0, v4, p2, p3}, Lc8/PWf;-><init>(Lc8/ZWf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1071
    .local v5, "t":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 1073
    return-void
.end method

.method public callReportCrashReloadPage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "crashFile"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 941
    const/4 v5, 0x0

    .line 942
    .local v5, "url":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v7

    invoke-virtual {v7, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v3

    .line 943
    .local v3, "instance":Lc8/nVf;
    if-eqz v3, :cond_0

    .line 944
    invoke-virtual {v3}, Lc8/nVf;->getBundleUrl()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 947
    :cond_0
    :try_start_1
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 948
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p2

    .line 954
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {p0, p2, p1, v5}, Lc8/ZWf;->callReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    sget v7, Lc8/ZWf;->reInitCount:I

    const/16 v8, 0x32

    if-le v7, v8, :cond_4

    .line 983
    .end local v3    # "instance":Lc8/nVf;
    :cond_2
    :goto_1
    return v6

    .line 951
    .restart local v3    # "instance":Lc8/nVf;
    :catch_0
    move-exception v2

    .line 952
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 966
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "instance":Lc8/nVf;
    :catch_1
    move-exception v2

    .line 967
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "[WXBridgeManager] callReportCrashReloadPage exception: "

    invoke-static {v7, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 971
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_3
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v7

    invoke-virtual {v7, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 972
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v7

    invoke-virtual {v7, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v7

    invoke-virtual {v7}, Lc8/nVf;->getBundleUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lc8/ZWf;->shouReloadCurrentInstance(Ljava/lang/String;)Z

    move-result v4

    .line 974
    .local v4, "reloadThisInstance":Z
    invoke-static {p1}, Lc8/cXf;->getDomModule(Ljava/lang/String;)Lc8/FYf;

    move-result-object v1

    .line 975
    .local v1, "domModule":Lc8/FYf;
    invoke-static {p1, v4}, Lc8/YYf;->getReloadPage(Ljava/lang/String;Z)Lc8/fYf;

    move-result-object v0

    .line 976
    .local v0, "action":Lc8/XYf;
    check-cast v0, Lc8/fYf;

    .end local v0    # "action":Lc8/XYf;
    const/4 v7, 0x1

    invoke-virtual {v1, v0, v7}, Lc8/FYf;->postAction(Lc8/fYf;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 979
    .end local v1    # "domModule":Lc8/FYf;
    .end local v4    # "reloadThisInstance":Z
    :catch_2
    move-exception v2

    .line 980
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "[WXBridgeManager] callReloadPage exception: "

    invoke-static {v7, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 981
    sget-object v7, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_RELOAD_PAGE:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[WXBridgeManager] callReloadPage exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p1, v7, v8}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    goto :goto_1

    .line 958
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "instance":Lc8/nVf;
    :cond_4
    :try_start_4
    sget v7, Lc8/ZWf;->reInitCount:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lc8/ZWf;->reInitCount:I

    .line 960
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lc8/ZWf;->setJSFrameworkInit(Z)V

    .line 961
    const-string/jumbo v7, ""

    invoke-virtual {p0, v7}, Lc8/ZWf;->initScriptsFramework(Ljava/lang/String;)V

    .line 963
    iget-object v7, p0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v7

    if-eqz v7, :cond_3

    .line 964
    const/4 v6, -0x1

    goto :goto_1
.end method

.method public callUpdateAttrs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "task"    # Ljava/lang/String;
    .param p4, "callback"    # Ljava/lang/String;

    .prologue
    .line 651
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 652
    const-string/jumbo v4, "[WXBridgeManager] callUpdateAttrs: call UpdateAttrs tasks is null"

    invoke-static {v4}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 653
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_UPDATEATTRS:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v5, "[WXBridgeManager] callUpdateAttrs: call UpdateAttrs tasks is null"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    .line 654
    const/4 v4, 0x0

    .line 696
    :goto_0
    return v4

    .line 656
    :cond_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 657
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[WXBridgeManager] callUpdateAttrs >>>> instanceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ref:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", task:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", callback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 665
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 666
    const/4 v4, -0x1

    goto :goto_0

    .line 670
    :cond_2
    :try_start_0
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 671
    invoke-static/range {p1 .. p1}, Lc8/cXf;->getDomModule(Ljava/lang/String;)Lc8/FYf;

    move-result-object v11

    .line 672
    .local v11, "domModule":Lc8/FYf;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 673
    .local v16, "start":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 674
    .local v14, "parseNanos":J
    invoke-static/range {p3 .. p3}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 675
    .local v12, "domObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v14, v4, v14

    .line 677
    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lc8/YYf;->getUpdateAttrs(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lc8/fYf;

    move-result-object v10

    .line 678
    .local v10, "action":Lc8/XYf;
    move-object v0, v10

    check-cast v0, Lc8/fYf;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5}, Lc8/FYf;->postAction(Lc8/fYf;Z)V

    .line 680
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    instance-of v4, v10, Lc8/sZf;

    if-eqz v4, :cond_3

    .line 681
    move-object v0, v10

    check-cast v0, Lc8/sZf;

    move-object v4, v0

    move-wide/from16 v0, v16

    iput-wide v0, v4, Lc8/sZf;->mStartMillis:J

    .line 682
    move-object v0, v10

    check-cast v0, Lc8/sZf;

    move-object v4, v0

    iput-wide v14, v4, Lc8/sZf;->mParseJsonNanos:J

    .line 683
    move-object v0, v10

    check-cast v0, Lc8/sZf;

    move-object v4, v0

    const-string/jumbo v6, "updateAttrs"

    const-string/jumbo v5, "ref"

    invoke-virtual {v12, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v5, "type"

    invoke-virtual {v12, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v5, p1

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lc8/sZf;->onStartDomExecute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    .end local v10    # "action":Lc8/XYf;
    .end local v11    # "domModule":Lc8/FYf;
    .end local v12    # "domObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "parseNanos":J
    .end local v16    # "start":J
    :cond_3
    :goto_1
    const-string/jumbo v4, "undefined"

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "-1"

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 692
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 686
    :catch_0
    move-exception v13

    .line 687
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "[WXBridgeManager] callUpdateAttrs exception: "

    invoke-static {v4, v13}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 688
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_UPDATEATTRS:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[WXBridgeManager] callUpdateAttrs exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    goto :goto_1

    .line 695
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lc8/ZWf;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public callUpdateFinish(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 553
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 554
    iget-object v4, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[WXBridgeManager] callUpdateFinish >>>> instanceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", callback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    iget-object v4, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 557
    iget-object v4, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 560
    :cond_0
    iget-object v4, p0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 561
    const/4 v3, -0x1

    .line 580
    :cond_1
    :goto_0
    return v3

    .line 565
    :cond_2
    :try_start_0
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v4

    invoke-virtual {v4, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 566
    invoke-static {p1}, Lc8/cXf;->getDomModule(Ljava/lang/String;)Lc8/FYf;

    move-result-object v1

    .line 567
    .local v1, "domModule":Lc8/FYf;
    invoke-static {}, Lc8/YYf;->getUpdateFinish()Lc8/fYf;

    move-result-object v0

    .line 568
    .local v0, "action":Lc8/XYf;
    check-cast v0, Lc8/fYf;

    .end local v0    # "action":Lc8/XYf;
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lc8/FYf;->postAction(Lc8/fYf;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    .end local v1    # "domModule":Lc8/FYf;
    :cond_3
    :goto_1
    const-string/jumbo v4, "undefined"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "-1"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 579
    invoke-direct {p0, p1, p2}, Lc8/ZWf;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const/4 v3, 0x1

    goto :goto_0

    .line 570
    :catch_0
    move-exception v2

    .line 571
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "[WXBridgeManager] callUpdateFinish exception: "

    invoke-static {v4, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 572
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_INVOKE_NATIVE:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[WXBridgeManager] callUpdateFinish exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v4, v5}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public callUpdateStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "task"    # Ljava/lang/String;
    .param p4, "callback"    # Ljava/lang/String;

    .prologue
    .line 702
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 703
    const-string/jumbo v4, "[WXBridgeManager] callUpdateStyle: call UpdateStyle tasks is null"

    invoke-static {v4}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 704
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_UPDATESTYLE:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v5, "[WXBridgeManager] callUpdateStyle: call UpdateStyle tasks is null"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    .line 705
    const/4 v4, 0x0

    .line 747
    :goto_0
    return v4

    .line 707
    :cond_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 708
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[WXBridgeManager] callUpdateStyle >>>> instanceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ref:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", task:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", callback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 713
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 716
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 717
    const/4 v4, -0x1

    goto :goto_0

    .line 721
    :cond_2
    :try_start_0
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 722
    invoke-static/range {p1 .. p1}, Lc8/cXf;->getDomModule(Ljava/lang/String;)Lc8/FYf;

    move-result-object v11

    .line 723
    .local v11, "domModule":Lc8/FYf;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 724
    .local v16, "start":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 725
    .local v14, "nanosTemp":J
    invoke-static/range {p3 .. p3}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 726
    .local v12, "domObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v14, v4, v14

    .line 728
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12, v4}, Lc8/YYf;->getUpdateStyle(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Z)Lc8/fYf;

    move-result-object v10

    .line 729
    .local v10, "action":Lc8/XYf;
    move-object v0, v10

    check-cast v0, Lc8/fYf;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5}, Lc8/FYf;->postAction(Lc8/fYf;Z)V

    .line 731
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    instance-of v4, v10, Lc8/sZf;

    if-eqz v4, :cond_3

    .line 732
    move-object v0, v10

    check-cast v0, Lc8/sZf;

    move-object v4, v0

    iput-wide v14, v4, Lc8/sZf;->mParseJsonNanos:J

    .line 733
    move-object v0, v10

    check-cast v0, Lc8/sZf;

    move-object v4, v0

    move-wide/from16 v0, v16

    iput-wide v0, v4, Lc8/sZf;->mStartMillis:J

    .line 734
    move-object v0, v10

    check-cast v0, Lc8/sZf;

    move-object v4, v0

    const-string/jumbo v6, "updateStyle"

    const-string/jumbo v5, "type"

    invoke-virtual {v12, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lc8/sZf;->onStartDomExecute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    .end local v10    # "action":Lc8/XYf;
    .end local v11    # "domModule":Lc8/FYf;
    .end local v12    # "domObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "nanosTemp":J
    .end local v16    # "start":J
    :cond_3
    :goto_1
    const-string/jumbo v4, "undefined"

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "-1"

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 743
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 737
    :catch_0
    move-exception v13

    .line 738
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "[WXBridgeManager] callUpdateStyle exception: "

    invoke-static {v4, v13}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 739
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_UPDATESTYLE:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[WXBridgeManager] callUpdateStyle exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    goto :goto_1

    .line 746
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lc8/ZWf;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "keepAlive"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1221
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/ZWf;->callbackJavascript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1222
    return-void
.end method

.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1198
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/ZWf;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1199
    return-void
.end method

.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1207
    .local p3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/ZWf;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 1208
    return-void
.end method

.method callbackJavascript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 4
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "keepAlive"    # Z

    .prologue
    .line 1234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1239
    :cond_1
    const-string/jumbo v0, "callback"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, p1, v1}, Lc8/ZWf;->addJSTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1240
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lc8/ZWf;->sendMessage(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V
    .locals 7
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "errCode"    # Lcom/taobao/weex/common/WXErrorCode;
    .param p3, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 1295
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v6

    .line 1296
    .local v6, "instance":Lc8/nVf;
    if-eqz v6, :cond_0

    if-nez p2, :cond_1

    .line 1316
    .end local p3    # "errMsg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1304
    .restart local p3    # "errMsg":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/pVf;->getIWXUserTrackAdapter()Lc8/HVf;

    move-result-object v0

    .line 1305
    .local v0, "adapter":Lc8/HVf;
    if-eqz v0, :cond_0

    .line 1308
    new-instance v4, Lc8/OXf;

    invoke-direct {v4}, Lc8/OXf;-><init>()V

    .line 1309
    .local v4, "performance":Lc8/OXf;
    invoke-virtual {v6}, Lc8/nVf;->getBundleUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lc8/OXf;->args:Ljava/lang/String;

    .line 1310
    invoke-virtual {p2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lc8/OXf;->errCode:Ljava/lang/String;

    .line 1311
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    if-eq p2, v1, :cond_3

    .line 1312
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object p3

    .end local p3    # "errMsg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, p3}, Lc8/OXf;->appendErrMsg(Ljava/lang/CharSequence;)V

    .line 1313
    const-string/jumbo v1, "wx_monitor"

    invoke-virtual {v4}, Lc8/OXf;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    :cond_3
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "jsBridge"

    invoke-virtual {v6}, Lc8/nVf;->getUserTrackParams()Ljava/util/Map;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lc8/HVf;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/OXf;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public commitJSFrameworkAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "errorCode"    # Lcom/taobao/weex/common/WXErrorCode;
    .param p3, "errMsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1319
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 1339
    .end local p3    # "errMsg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1322
    .restart local p3    # "errMsg":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/pVf;->getWXStatisticsListener()Lc8/OUf;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1323
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/pVf;->getWXStatisticsListener()Lc8/OUf;

    move-result-object v3

    const-string/jumbo v5, "0"

    invoke-virtual {p2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {v3, v5, v6, v1}, Lc8/OUf;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    :cond_2
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/pVf;->getIWXUserTrackAdapter()Lc8/HVf;

    move-result-object v0

    .line 1329
    .local v0, "userTrackAdapter":Lc8/HVf;
    if-eqz v0, :cond_0

    .line 1332
    new-instance v4, Lc8/OXf;

    invoke-direct {v4}, Lc8/OXf;-><init>()V

    .line 1333
    .local v4, "performance":Lc8/OXf;
    invoke-virtual {p2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lc8/OXf;->errCode:Ljava/lang/String;

    .line 1334
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    if-eq p2, v1, :cond_4

    .line 1335
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object p3

    .end local p3    # "errMsg":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4, p3}, Lc8/OXf;->appendErrMsg(Ljava/lang/CharSequence;)V

    .line 1336
    const-string/jumbo v1, "wx_monitor"

    invoke-virtual {v4}, Lc8/OXf;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    :cond_4
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v1

    move-object v3, p1

    move-object v5, v2

    invoke-interface/range {v0 .. v5}, Lc8/HVf;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/OXf;Ljava/util/Map;)V

    goto :goto_0

    .end local v0    # "userTrackAdapter":Lc8/HVf;
    .end local v4    # "performance":Lc8/OXf;
    .restart local p3    # "errMsg":Ljava/lang/String;
    :cond_5
    move-object v1, p3

    .line 1323
    goto :goto_1
.end method

.method public commitJscCrashAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "errorCode"    # Lcom/taobao/weex/common/WXErrorCode;
    .param p3, "errMsg"    # Ljava/lang/String;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;

    .prologue
    .line 1344
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 1360
    :cond_0
    :goto_0
    return-void

    .line 1348
    :cond_1
    const-string/jumbo v4, "callReportCrash"

    .line 1349
    .local v4, "method":Ljava/lang/String;
    const-string/jumbo v5, "weexjsc process crash and restart exception"

    .line 1350
    .local v5, "exception":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1351
    .local v6, "extParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "jscCrashStack"

    invoke-interface {v6, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/pVf;->getIWXJSExceptionAdapter()Lc8/FVf;

    move-result-object v7

    .line 1353
    .local v7, "adapter":Lc8/FVf;
    if-eqz v7, :cond_0

    .line 1354
    new-instance v0, Lc8/KXf;

    invoke-virtual {p2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    move-object v1, p4

    move-object v2, p5

    invoke-direct/range {v0 .. v6}, Lc8/KXf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1355
    .local v0, "jsException":Lc8/KXf;
    invoke-interface {v7, v0}, Lc8/FVf;->onJSException(Lc8/KXf;)V

    .line 1357
    invoke-virtual {v0}, Lc8/KXf;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "template"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1367
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v2

    .line 1368
    .local v2, "instance":Lc8/nVf;
    if-nez v2, :cond_0

    .line 1369
    const-string/jumbo v0, "WXBridgeManager"

    const-string/jumbo v1, "createInstance failed, SDKInstance is not exist"

    invoke-static {v0, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    :goto_0
    return-void

    .line 1372
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 1374
    :cond_1
    const-string/jumbo v0, "wx_create_instance_error"

    const-string/jumbo v1, "createInstance fail!"

    invoke-virtual {v2, v0, v1}, Lc8/nVf;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1378
    :cond_2
    invoke-direct {p0}, Lc8/ZWf;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lc8/ZWf;->reInitCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    sget-boolean v0, Lc8/UUf;->sDebugServerConnectable:Z

    if-nez v0, :cond_3

    .line 1379
    const-string/jumbo v0, "wx_create_instance_error"

    const-string/jumbo v1, "createInstance fail!"

    invoke-virtual {v2, v0, v1}, Lc8/nVf;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    new-instance v0, Lc8/SWf;

    invoke-direct {v0, p0}, Lc8/SWf;-><init>(Lc8/ZWf;)V

    invoke-virtual {p0, v0, p1}, Lc8/ZWf;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0

    .line 1389
    :cond_3
    invoke-static {v2}, Lc8/cXf;->createDomModule(Lc8/nVf;)V

    .line 1390
    new-instance v0, Lc8/UWf;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/UWf;-><init>(Lc8/ZWf;Lc8/nVf;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lc8/ZWf;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 1857
    iget-object v0, p0, Lc8/ZWf;->mJSThread:Lc8/VXf;

    if-eqz v0, :cond_0

    .line 1858
    iget-object v0, p0, Lc8/ZWf;->mJSThread:Lc8/VXf;

    invoke-virtual {v0}, Lc8/VXf;->quit()Z

    .line 1860
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lc8/ZWf;->mBridgeManager:Lc8/ZWf;

    .line 1861
    iget-object v0, p0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1862
    iget-object v0, p0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1865
    :cond_1
    return-void
.end method

.method public destroyInstance(Ljava/lang/String;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 1459
    iget-object v0, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1475
    :cond_0
    :goto_0
    return-void

    .line 1463
    :cond_1
    iget-object v0, p0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1464
    iget-object v0, p0, Lc8/ZWf;->mDestroyedInstanceId:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1467
    :cond_2
    iget-object v0, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1468
    new-instance v0, Lc8/VWf;

    invoke-direct {v0, p0, p1}, Lc8/VWf;-><init>(Lc8/ZWf;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lc8/ZWf;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public execJSService(Ljava/lang/String;)V
    .locals 1
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 1785
    new-instance v0, Lc8/MWf;

    invoke-direct {v0, p0, p1}, Lc8/MWf;-><init>(Lc8/ZWf;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc8/ZWf;->post(Ljava/lang/Runnable;)V

    .line 1791
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1142
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lc8/ZWf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 1143
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1157
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p0 .. p5}, Lc8/ZWf;->fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 1158
    return-void
.end method

.method public fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1165
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lc8/ZWf;->fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    .line 1166
    return-void
.end method

.method public fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .locals 3
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1174
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p6, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1178
    :cond_1
    invoke-direct {p0}, Lc8/ZWf;->checkMainThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1179
    new-instance v0, Lcom/taobao/weex/common/WXRuntimeException;

    const-string/jumbo v1, "fireEvent must be called by main thread"

    invoke-direct {v0, v1}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1182
    :cond_2
    const-string/jumbo v0, "fireEvent"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    invoke-direct {p0, v0, p1, p6, v1}, Lc8/ZWf;->addJSEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    .line 1183
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lc8/ZWf;->sendMessage(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getInitParams()Lc8/dXf;
    .locals 1

    .prologue
    .line 1709
    iget-object v0, p0, Lc8/ZWf;->mInitParams:Lc8/dXf;

    return-object v0
.end method

.method public getJSLooper()Landroid/os/Looper;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1982
    const/4 v0, 0x0

    .line 1983
    .local v0, "ret":Landroid/os/Looper;
    iget-object v1, p0, Lc8/ZWf;->mJSThread:Lc8/VXf;

    if-eqz v1, :cond_0

    .line 1984
    iget-object v1, p0, Lc8/ZWf;->mJSThread:Lc8/VXf;

    invoke-virtual {v1}, Lc8/VXf;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1986
    :cond_0
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 1501
    if-nez p1, :cond_1

    .line 1531
    :cond_0
    :goto_0
    return v8

    .line 1505
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    .line 1506
    .local v4, "what":I
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 1514
    :sswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lc8/YWf;

    .line 1515
    .local v3, "timerInfo":Lc8/YWf;
    if-eqz v3, :cond_0

    .line 1518
    new-instance v2, Lc8/aXf;

    const/4 v5, 0x2

    iget-object v6, v3, Lc8/YWf;->callbackId:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Lc8/aXf;-><init>(ILjava/lang/Object;)V

    .line 1519
    .local v2, "obj":Lc8/aXf;
    const/4 v5, 0x1

    new-array v0, v5, [Lc8/aXf;

    aput-object v2, v0, v8

    .line 1520
    .local v0, "args":[Lc8/aXf;
    const-string/jumbo v5, ""

    const/4 v6, 0x0

    const-string/jumbo v7, "setTimeoutCallback"

    invoke-direct {p0, v5, v6, v7, v0}, Lc8/ZWf;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lc8/aXf;)V

    goto :goto_0

    .line 1508
    .end local v0    # "args":[Lc8/aXf;
    .end local v2    # "obj":Lc8/aXf;
    .end local v3    # "timerInfo":Lc8/YWf;
    :sswitch_1
    invoke-direct {p0, p1}, Lc8/ZWf;->invokeInitFramework(Landroid/os/Message;)V

    goto :goto_0

    .line 1511
    :sswitch_2
    invoke-direct {p0, p1}, Lc8/ZWf;->invokeCallJSBatch(Landroid/os/Message;)V

    goto :goto_0

    .line 1523
    :sswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 1524
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1525
    .local v1, "filename":Ljava/lang/String;
    iget-object v5, p0, Lc8/ZWf;->mWXBridge:Lc8/wXf;

    invoke-interface {v5, v1}, Lc8/wXf;->takeHeapSnapshot(Ljava/lang/String;)V

    goto :goto_0

    .line 1506
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
        0xd -> :sswitch_3
    .end sparse-switch
.end method

.method public declared-synchronized initScriptsFramework(Ljava/lang/String;)V
    .locals 2
    .param p1, "framework"    # Ljava/lang/String;

    .prologue
    .line 1132
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1133
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1134
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1135
    iget-object v1, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1136
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1137
    monitor-exit p0

    return-void

    .line 1132
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lc8/aXf;Z)V
    .locals 3
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "function"    # Ljava/lang/String;
    .param p4, "args"    # [Lc8/aXf;
    .param p5, "logTaskDetail"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1541
    iget-object v0, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "callJS >>>> instanceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "function:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    if-eqz p5, :cond_0

    .line 1544
    iget-object v0, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, " tasks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Lc8/ugg;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    :cond_0
    iget-object v0, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 1546
    iget-object v0, p0, Lc8/ZWf;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1548
    iget-object v0, p0, Lc8/ZWf;->mWXBridge:Lc8/wXf;

    invoke-interface {v0, p1, p2, p3, p4}, Lc8/wXf;->execJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lc8/aXf;)I

    .line 1549
    return-void
.end method

.method public notifySerializeCodeCache()V
    .locals 1

    .prologue
    .line 1990
    new-instance v0, Lc8/NWf;

    invoke-direct {v0, p0}, Lc8/NWf;-><init>(Lc8/ZWf;)V

    invoke-virtual {p0, v0}, Lc8/ZWf;->post(Ljava/lang/Runnable;)V

    .line 1999
    return-void
.end method

.method public notifyTrimMemory()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1977
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 301
    iget-object v0, p0, Lc8/ZWf;->mInterceptor:Lc8/Ngg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/ZWf;->mInterceptor:Lc8/Ngg;

    invoke-interface {v0, p1}, Lc8/Ngg;->take(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    invoke-static {p1}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "token"    # Ljava/lang/Object;

    .prologue
    .line 318
    iget-object v1, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 325
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v1, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    invoke-static {p1}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 323
    .local v0, "m":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 324
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public refreshInstance(Ljava/lang/String;Lc8/PXf;)V
    .locals 4
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "jsonData"    # Lc8/PXf;

    .prologue
    .line 1247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 1256
    :cond_0
    :goto_0
    return-void

    .line 1250
    :cond_1
    iget-object v0, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    new-instance v1, Lc8/RWf;

    invoke-direct {v1, p0, p1, p2}, Lc8/RWf;-><init>(Lc8/ZWf;Ljava/lang/String;Lc8/PXf;)V

    invoke-static {v1}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public registerComponents(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1772
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1782
    :cond_0
    :goto_0
    return-void

    .line 1776
    :cond_1
    new-instance v0, Lc8/XWf;

    invoke-direct {v0, p0, p1}, Lc8/XWf;-><init>(Lc8/ZWf;Ljava/util/List;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/ZWf;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public registerModules(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1754
    .local p1, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1755
    invoke-direct {p0}, Lc8/ZWf;->isJSThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1756
    iget-object v0, p0, Lc8/ZWf;->mRegisterModuleFailList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lc8/ZWf;->invokeRegisterModules(Ljava/util/Map;Ljava/util/List;)V

    .line 1766
    :cond_0
    :goto_0
    return-void

    .line 1758
    :cond_1
    new-instance v0, Lc8/WWf;

    invoke-direct {v0, p0, p1}, Lc8/WWf;-><init>(Lc8/ZWf;Ljava/util/Map;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/ZWf;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 347
    iget-object v0, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ZWf;->mJSThread:Lc8/VXf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ZWf;->mJSThread:Lc8/VXf;

    invoke-virtual {v0}, Lc8/VXf;->isWXThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ZWf;->mJSThread:Lc8/VXf;

    invoke-virtual {v0}, Lc8/VXf;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public reportJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 26
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/String;

    .prologue
    .line 1872
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reportJSException >>>> instanceId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", exception function:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 1875
    const/16 v20, 0x0

    .line 1876
    .local v20, "instance":Lc8/nVf;
    if-eqz p1, :cond_3

    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 1879
    const-string/jumbo v7, "createInstance"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1881
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lc8/ZWf;->isJSFrameworkInit()Z

    move-result v7

    if-eqz v7, :cond_1

    sget v7, Lc8/ZWf;->reInitCount:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_1

    invoke-virtual/range {v20 .. v20}, Lc8/nVf;->isNeedReLoad()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1883
    invoke-static/range {p1 .. p1}, Lc8/cXf;->getDomModule(Ljava/lang/String;)Lc8/FYf;

    move-result-object v14

    .line 1884
    .local v14, "domModule":Lc8/FYf;
    const/4 v7, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lc8/YYf;->getReloadPage(Ljava/lang/String;Z)Lc8/fYf;

    move-result-object v11

    .line 1885
    .local v11, "action":Lc8/XYf;
    check-cast v11, Lc8/fYf;

    .end local v11    # "action":Lc8/XYf;
    const/4 v7, 0x1

    invoke-virtual {v14, v11, v7}, Lc8/FYf;->postAction(Lc8/fYf;Z)V

    .line 1886
    const/4 v7, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lc8/nVf;->setNeedLoad(Z)V

    .line 1964
    .end local v14    # "domModule":Lc8/FYf;
    :cond_0
    :goto_0
    return-void

    .line 1889
    :cond_1
    const-string/jumbo v7, "wx_create_instance_error"

    const-string/jumbo v8, "createInstance fail!"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v8}, Lc8/nVf;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1892
    :catch_0
    move-exception v15

    .line 1893
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 1896
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v20 .. v20}, Lc8/nVf;->getTemplateInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1897
    sget-object v7, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_EXECUTE:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v7}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v7, v1, v2}, Lc8/nVf;->onJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "function:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "#exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1900
    .local v16, "err":Ljava/lang/String;
    sget-object v7, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_EXECUTE:Lcom/taobao/weex/common/WXErrorCode;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v7, v2}, Lc8/ZWf;->commitJSBridgeAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    .line 1903
    .end local v16    # "err":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v7

    invoke-virtual {v7}, Lc8/pVf;->getIWXJSExceptionAdapter()Lc8/FVf;

    move-result-object v12

    .line 1904
    .local v12, "adapter":Lc8/FVf;
    if-eqz v12, :cond_0

    .line 1906
    move-object/from16 v5, p1

    .line 1908
    .local v5, "exceptionId":Ljava/lang/String;
    const-string/jumbo v7, ""

    move-object/from16 v0, p1

    if-eq v0, v7, :cond_4

    if-nez p1, :cond_5

    .line 1909
    :cond_4
    const-string/jumbo v5, "instanceIdisNull"

    .line 1912
    :cond_5
    if-nez v20, :cond_b

    .line 1913
    const-string/jumbo v7, "initFramework"

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1914
    const-string/jumbo v6, "jsExceptionBeforeRenderInstanceNull"

    .line 1915
    .local v6, "bundleUrl":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1917
    .local v17, "exceptionExt":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 1918
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/jsserver_start.log"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v19

    .line 1920
    .local v19, "fileName":Ljava/lang/String;
    :try_start_2
    new-instance v18, Ljava/io/File;

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1921
    .local v18, "file":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1922
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v24, 0x0

    cmp-long v7, v8, v24

    if-lez v7, :cond_6

    .line 1923
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1925
    .local v22, "result":Ljava/lang/StringBuilder;
    :try_start_3
    new-instance v21, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string/jumbo v8, "UTF-8"

    move-object/from16 v0, v21

    invoke-direct {v0, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1926
    .local v21, "read":Ljava/io/InputStreamReader;
    new-instance v13, Ljava/io/BufferedReader;

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1928
    .local v13, "br":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v23

    .local v23, "s":Ljava/lang/String;
    if-eqz v23, :cond_8

    .line 1929
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1933
    .end local v13    # "br":Ljava/io/BufferedReader;
    .end local v21    # "read":Ljava/io/InputStreamReader;
    .end local v23    # "s":Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 1934
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 1937
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v22    # "result":Ljava/lang/StringBuilder;
    :cond_6
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 1946
    .end local v18    # "file":Ljava/io/File;
    .end local v19    # "fileName":Ljava/lang/String;
    :cond_7
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1947
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reportJSException:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 1958
    .end local v17    # "exceptionExt":Ljava/lang/String;
    :goto_4
    new-instance v4, Lc8/KXf;

    sget-object v7, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_EXECUTE:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v7}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v10}, Lc8/KXf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1959
    .local v4, "jsException":Lc8/KXf;
    invoke-interface {v12, v4}, Lc8/FVf;->onJSException(Lc8/KXf;)V

    .line 1960
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1961
    invoke-virtual {v4}, Lc8/KXf;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/xgg;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1931
    .end local v4    # "jsException":Lc8/KXf;
    .restart local v13    # "br":Ljava/io/BufferedReader;
    .restart local v17    # "exceptionExt":Ljava/lang/String;
    .restart local v18    # "file":Ljava/io/File;
    .restart local v19    # "fileName":Ljava/lang/String;
    .restart local v21    # "read":Ljava/io/InputStreamReader;
    .restart local v22    # "result":Ljava/lang/StringBuilder;
    .restart local v23    # "s":Ljava/lang/String;
    :cond_8
    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1932
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .end local v13    # "br":Ljava/io/BufferedReader;
    .end local v18    # "file":Ljava/io/File;
    .end local v21    # "read":Ljava/io/InputStreamReader;
    .end local v22    # "result":Ljava/lang/StringBuilder;
    .end local v23    # "s":Ljava/lang/String;
    :catch_2
    move-exception v7

    goto :goto_3

    .line 1943
    .end local v19    # "fileName":Ljava/lang/String;
    :catch_3
    move-exception v15

    .line 1944
    .local v15, "e":Ljava/lang/Throwable;
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 1949
    .end local v6    # "bundleUrl":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/Throwable;
    .end local v17    # "exceptionExt":Ljava/lang/String;
    :cond_9
    if-nez p2, :cond_a

    .line 1950
    const-string/jumbo v6, "jsExceptionInstanceAndFunctionNull"

    .restart local v6    # "bundleUrl":Ljava/lang/String;
    goto :goto_4

    .line 1952
    .end local v6    # "bundleUrl":Ljava/lang/String;
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "jsExceptionInstanceNull"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "bundleUrl":Ljava/lang/String;
    goto :goto_4

    .line 1955
    .end local v6    # "bundleUrl":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {v20 .. v20}, Lc8/nVf;->getBundleUrl()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "bundleUrl":Ljava/lang/String;
    goto :goto_4
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/ZWf;->setJSFrameworkInit(Z)V

    .line 281
    sget-boolean v0, Lc8/UUf;->sRemoteDebugMode:Z

    invoke-direct {p0, v0}, Lc8/ZWf;->initWXBridge(Z)V

    .line 282
    return-void
.end method

.method public sendMessageDelayed(Landroid/os/Message;J)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "delayMillis"    # J

    .prologue
    .line 339
    if-eqz p1, :cond_0

    iget-object v0, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ZWf;->mJSThread:Lc8/VXf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ZWf;->mJSThread:Lc8/VXf;

    invoke-virtual {v0}, Lc8/VXf;->isWXThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ZWf;->mJSThread:Lc8/VXf;

    invoke-virtual {v0}, Lc8/VXf;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public setInterceptor(Lc8/Ngg;)V
    .locals 0
    .param p1, "interceptor"    # Lc8/Ngg;

    .prologue
    .line 314
    iput-object p1, p0, Lc8/ZWf;->mInterceptor:Lc8/Ngg;

    .line 315
    return-void
.end method

.method public declared-synchronized setStackTopInstance(Ljava/lang/String;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    new-instance v0, Lc8/OWf;

    invoke-direct {v0, p0, p1}, Lc8/OWf;-><init>(Lc8/ZWf;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lc8/ZWf;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setTimeout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "callbackId"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    .line 328
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 329
    .local v0, "message":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 330
    new-instance v1, Lc8/YWf;

    invoke-direct {v1}, Lc8/YWf;-><init>()V

    .line 331
    .local v1, "timerInfo":Lc8/YWf;
    iput-object p1, v1, Lc8/YWf;->callbackId:Ljava/lang/String;

    .line 332
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-long v2, v2

    iput-wide v2, v1, Lc8/YWf;->time:J

    .line 333
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 335
    iget-object v2, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    iget-wide v4, v1, Lc8/YWf;->time:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 336
    return-void
.end method

.method public shouReloadCurrentInstance(Ljava/lang/String;)Z
    .locals 6
    .param p1, "aUrl"    # Ljava/lang/String;

    .prologue
    .line 987
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 988
    .local v0, "time":J
    sget-object v2, Lc8/ZWf;->crashUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lc8/ZWf;->crashUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lc8/ZWf;->crashUrl:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-wide v2, Lc8/ZWf;->lastCrashTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 991
    :cond_1
    sput-object p1, Lc8/ZWf;->crashUrl:Ljava/lang/String;

    .line 992
    sput-wide v0, Lc8/ZWf;->lastCrashTime:J

    .line 993
    const/4 v2, 0x1

    .line 996
    :goto_0
    return v2

    .line 995
    :cond_2
    sput-wide v0, Lc8/ZWf;->lastCrashTime:J

    .line 996
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public stopRemoteDebug()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lc8/ZWf;->mWxDebugProxy:Lc8/xXf;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lc8/ZWf;->mWxDebugProxy:Lc8/xXf;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lc8/xXf;->stop(Z)V

    .line 242
    :cond_0
    return-void
.end method

.method public takeJSHeapSnapshot(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 2002
    iget-object v1, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2003
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2004
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2005
    iget-object v1, p0, Lc8/ZWf;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 2006
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2007
    return-void
.end method
