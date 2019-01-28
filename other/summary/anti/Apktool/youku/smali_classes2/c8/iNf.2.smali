.class public final Lc8/iNf;
.super Ljava/lang/Object;
.source "DefaultLoginImpl.java"

# interfaces
.implements Lc8/jNf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/hNf;
    }
.end annotation


# static fields
.field private static final MTOP_API_REFERENCE:Ljava/lang/String; = "apiReferer"

.field private static final STATS_MODULE_MTOPRB:Ljava/lang/String; = "mtoprb"

.field private static final STATS_MONITOR_POINT_SESSION_INVALID:Ljava/lang/String; = "SessionInvalid"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.DefaultLoginImpl"

.field public static volatile instance:Lc8/iNf;

.field private static volatile isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mContext:Landroid/content/Context;

.field private static threadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lc8/hNf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkSessionValidMethod:Ljava/lang/reflect/Method;

.field private getNickMethod:Ljava/lang/reflect/Method;

.field private getSidMethod:Ljava/lang/reflect/Method;

.field private getUserIdMethod:Ljava/lang/reflect/Method;

.field private isLoginingMethod:Ljava/lang/reflect/Method;

.field private loginBroadcastHelperCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private loginCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private loginContext:Lc8/lNf;

.field private loginMethod:Ljava/lang/reflect/Method;

.field private loginStatusCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected receiver:Landroid/content/BroadcastReceiver;

.field private registerReceiverMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lc8/iNf;->threadLocal:Ljava/lang/ThreadLocal;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lc8/iNf;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lc8/iNf;->instance:Lc8/iNf;

    return-void
.end method

.method private constructor <init>()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v1, p0, Lc8/iNf;->loginCls:Ljava/lang/Class;

    .line 41
    iput-object v1, p0, Lc8/iNf;->loginBroadcastHelperCls:Ljava/lang/Class;

    .line 42
    iput-object v1, p0, Lc8/iNf;->loginStatusCls:Ljava/lang/Class;

    .line 50
    new-instance v0, Lc8/lNf;

    invoke-direct {v0}, Lc8/lNf;-><init>()V

    iput-object v0, p0, Lc8/iNf;->loginContext:Lc8/lNf;

    .line 51
    iput-object v1, p0, Lc8/iNf;->receiver:Landroid/content/BroadcastReceiver;

    .line 96
    :try_start_0
    const-string/jumbo v0, "com.taobao.login4android.Login"

    invoke-static {v0}, Lc8/iNf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lc8/iNf;->loginCls:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    iget-object v0, p0, Lc8/iNf;->loginCls:Ljava/lang/Class;

    const-string/jumbo v1, "login"

    new-array v2, v6, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lc8/iNf;->loginMethod:Ljava/lang/reflect/Method;

    .line 101
    iget-object v0, p0, Lc8/iNf;->loginCls:Ljava/lang/Class;

    const-string/jumbo v1, "checkSessionValid"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lc8/iNf;->checkSessionValidMethod:Ljava/lang/reflect/Method;

    .line 102
    iget-object v0, p0, Lc8/iNf;->loginCls:Ljava/lang/Class;

    const-string/jumbo v1, "getSid"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lc8/iNf;->getSidMethod:Ljava/lang/reflect/Method;

    .line 103
    iget-object v0, p0, Lc8/iNf;->loginCls:Ljava/lang/Class;

    const-string/jumbo v1, "getUserId"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lc8/iNf;->getUserIdMethod:Ljava/lang/reflect/Method;

    .line 104
    iget-object v0, p0, Lc8/iNf;->loginCls:Ljava/lang/Class;

    const-string/jumbo v1, "getNick"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lc8/iNf;->getNickMethod:Ljava/lang/reflect/Method;

    .line 106
    const-string/jumbo v0, "com.taobao.login4android.constants.LoginStatus"

    invoke-static {v0}, Lc8/iNf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lc8/iNf;->loginStatusCls:Ljava/lang/Class;

    .line 107
    iget-object v0, p0, Lc8/iNf;->loginStatusCls:Ljava/lang/Class;

    const-string/jumbo v1, "isLogining"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lc8/iNf;->isLoginingMethod:Ljava/lang/reflect/Method;

    .line 109
    const-string/jumbo v0, "com.taobao.login4android.broadcast.LoginBroadcastHelper"

    invoke-static {v0}, Lc8/iNf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lc8/iNf;->loginBroadcastHelperCls:Ljava/lang/Class;

    .line 110
    iget-object v0, p0, Lc8/iNf;->loginBroadcastHelperCls:Ljava/lang/Class;

    const-string/jumbo v1, "registerLoginReceiver"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    const-class v3, Landroid/content/BroadcastReceiver;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lc8/iNf;->registerReceiverMethod:Ljava/lang/reflect/Method;

    .line 112
    invoke-direct {p0}, Lc8/iNf;->registerReceiver()V

    .line 113
    const-string/jumbo v0, "mtopsdk.DefaultLoginImpl"

    const-string/jumbo v1, "register login event receiver"

    invoke-static {v0, v1}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void

    .line 98
    :catch_0
    move-exception v0

    const-string/jumbo v0, "com.taobao.login4android.api.Login"

    invoke-static {v0}, Lc8/iNf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lc8/iNf;->loginCls:Ljava/lang/Class;

    goto/16 :goto_0
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static _2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lc8/iNf;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private commitSessionInvalidEvent(Lc8/hNf;)V
    .locals 7
    .param p1, "event"    # Lc8/hNf;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 226
    sget-object v1, Lc8/iNf;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    invoke-static {v4}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v1

    invoke-virtual {v1}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v1

    iget-object v0, v1, Lc8/kOp;->uploadStats:Lc8/aPp;

    .line 228
    .local v0, "uploadStats":Lc8/aPp;
    if-nez v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 233
    .local v3, "dimSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "long_nick"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    const-string/jumbo v1, "apiName"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    const-string/jumbo v1, "apiV"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    const-string/jumbo v1, "msgCode"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    const-string/jumbo v1, "S_STATUS"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    const-string/jumbo v1, "processName"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    const-string/jumbo v1, "appBackGround"

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    const-string/jumbo v1, "mtoprb"

    const-string/jumbo v2, "SessionInvalid"

    invoke-interface/range {v0 .. v5}, Lc8/aPp;->onRegister(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Z)V

    .line 243
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    const-string/jumbo v1, "mtopsdk.DefaultLoginImpl"

    const-string/jumbo v2, "onRegister called. module=mtoprb,monitorPoint=SessionInvalid"

    invoke-static {v1, v2}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .end local v0    # "uploadStats":Lc8/aPp;
    .end local v3    # "dimSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    invoke-static {v4}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v1

    invoke-virtual {v1}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v1

    iget-object v0, v1, Lc8/kOp;->uploadStats:Lc8/aPp;

    .line 249
    .restart local v0    # "uploadStats":Lc8/aPp;
    if-eqz v0, :cond_0

    .line 252
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v6, "dimMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "long_nick"

    iget-object v2, p1, Lc8/hNf;->long_nick:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string/jumbo v1, "apiName"

    iget-object v2, p1, Lc8/hNf;->apiName:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string/jumbo v1, "apiV"

    iget-object v2, p1, Lc8/hNf;->v:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string/jumbo v1, "msgCode"

    iget-object v2, p1, Lc8/hNf;->msgCode:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string/jumbo v1, "S_STATUS"

    iget-object v2, p1, Lc8/hNf;->S_STATUS:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string/jumbo v1, "processName"

    iget-object v2, p1, Lc8/hNf;->processName:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string/jumbo v2, "appBackGround"

    iget-boolean v1, p1, Lc8/hNf;->appBackGround:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "1"

    :goto_1
    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string/jumbo v1, "mtoprb"

    const-string/jumbo v2, "SessionInvalid"

    invoke-interface {v0, v1, v2, v6, v4}, Lc8/aPp;->onCommit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 259
    :cond_3
    const-string/jumbo v1, "0"

    goto :goto_1
.end method

.method public static getDefaultLoginImpl(Landroid/content/Context;)Lc8/iNf;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    sget-object v2, Lc8/iNf;->instance:Lc8/iNf;

    if-nez v2, :cond_4

    .line 60
    const-class v3, Lc8/iNf;

    monitor-enter v3

    .line 61
    :try_start_0
    sget-object v2, Lc8/iNf;->instance:Lc8/iNf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    .line 63
    if-nez p0, :cond_2

    .line 65
    :try_start_1
    invoke-static {}, Lc8/uMp;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 66
    if-nez p0, :cond_2

    .line 67
    const-string/jumbo v2, "mtopsdk.DefaultLoginImpl"

    const-string/jumbo v4, "context can\'t be null.reflect context is still null."

    invoke-static {v2, v4}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v2, "INNER"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v1

    .line 70
    .local v1, "mtopInstance":Lc8/AOp;
    invoke-virtual {v1}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v2

    iget-object v2, v2, Lc8/kOp;->context:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 71
    const-string/jumbo v2, "mtopsdk.DefaultLoginImpl"

    const-string/jumbo v4, "context can\'t be null.wait INNER mtopInstance init."

    invoke-static {v2, v4}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Lc8/AOp;->checkMtopSDKInit()Z

    .line 74
    :cond_0
    invoke-virtual {v1}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v2

    iget-object p0, v2, Lc8/kOp;->context:Landroid/content/Context;

    .line 75
    if-nez p0, :cond_1

    .line 76
    const-string/jumbo v2, "mtopsdk.DefaultLoginImpl"

    const-string/jumbo v4, "context can\'t be null.wait INNER mtopInstance init finish,context is still null"

    invoke-static {v2, v4}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v2, Lc8/iNf;->instance:Lc8/iNf;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .end local v1    # "mtopInstance":Lc8/AOp;
    :goto_0
    return-object v2

    .line 79
    .restart local v1    # "mtopInstance":Lc8/AOp;
    :cond_1
    :try_start_3
    const-string/jumbo v2, "mtopsdk.DefaultLoginImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "context can\'t be null.wait INNER mtopInstance init finish.context="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v1    # "mtopInstance":Lc8/AOp;
    :cond_2
    sput-object p0, Lc8/iNf;->mContext:Landroid/content/Context;

    .line 84
    new-instance v2, Lc8/iNf;

    invoke-direct {v2}, Lc8/iNf;-><init>()V

    sput-object v2, Lc8/iNf;->instance:Lc8/iNf;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    :cond_3
    :goto_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    :cond_4
    sget-object v2, Lc8/iNf;->instance:Lc8/iNf;

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v2, "mtopsdk.DefaultLoginImpl"

    const-string/jumbo v4, "get DefaultLoginImpl instance error"

    invoke-static {v2, v4, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2
.end method

.method private varargs invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 164
    :try_start_0
    iget-object v1, p0, Lc8/iNf;->loginCls:Ljava/lang/Class;

    invoke-static {p1, v1, p2}, Lc8/iNf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 169
    :goto_0
    return-object v1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "mtopsdk.DefaultLoginImpl"

    const-string/jumbo v2, "invokeMethod error"

    invoke-static {v1, v2, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 5

    .prologue
    .line 117
    iget-object v0, p0, Lc8/iNf;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lc8/iNf;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 119
    const-string/jumbo v0, "mtopsdk.DefaultLoginImpl"

    const-string/jumbo v1, "Context is null, register receiver fail."

    invoke-static {v0, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const-class v1, Lc8/iNf;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v0, p0, Lc8/iNf;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    .line 125
    new-instance v0, Lc8/gNf;

    invoke-direct {v0, p0}, Lc8/gNf;-><init>(Lc8/iNf;)V

    iput-object v0, p0, Lc8/iNf;->receiver:Landroid/content/BroadcastReceiver;

    .line 146
    iget-object v0, p0, Lc8/iNf;->registerReceiverMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lc8/iNf;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lc8/iNf;->receiver:Landroid/content/BroadcastReceiver;

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lc8/iNf;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getLoginContext()Lc8/lNf;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v1, p0, Lc8/iNf;->loginContext:Lc8/lNf;

    iget-object v0, p0, Lc8/iNf;->getSidMethod:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lc8/iNf;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lc8/lNf;->sid:Ljava/lang/String;

    .line 219
    iget-object v1, p0, Lc8/iNf;->loginContext:Lc8/lNf;

    iget-object v0, p0, Lc8/iNf;->getUserIdMethod:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lc8/iNf;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lc8/lNf;->userId:Ljava/lang/String;

    .line 220
    iget-object v1, p0, Lc8/iNf;->loginContext:Lc8/lNf;

    iget-object v0, p0, Lc8/iNf;->getNickMethod:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lc8/iNf;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lc8/lNf;->nickname:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lc8/iNf;->loginContext:Lc8/lNf;

    return-object v0
.end method

.method public isLogining()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v2, p0, Lc8/iNf;->isLoginingMethod:Ljava/lang/reflect/Method;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lc8/iNf;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 210
    .local v0, "ret":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 213
    :cond_0
    return v1
.end method

.method public isSessionValid()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v2, p0, Lc8/iNf;->checkSessionValidMethod:Ljava/lang/reflect/Method;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lc8/iNf;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 201
    .local v0, "ret":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 204
    :cond_0
    return v1
.end method

.method public login(Lc8/oNf;Z)V
    .locals 8
    .param p1, "listener"    # Lc8/oNf;
    .param p2, "bShowLoginUI"    # Z

    .prologue
    .line 174
    const-string/jumbo v4, "mtopsdk.DefaultLoginImpl"

    const-string/jumbo v5, "call login"

    invoke-static {v4, v5}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, "bundle":Landroid/os/Bundle;
    sget-object v4, Lc8/iNf;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/hNf;

    .line 177
    .local v3, "sessionInvalidEvent":Lc8/hNf;
    if-eqz v3, :cond_1

    .line 179
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local v1    # "bundle":Landroid/os/Bundle;
    .local v2, "bundle":Landroid/os/Bundle;
    :try_start_1
    invoke-virtual {v3}, Lc8/hNf;->toJSONString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "apiRefer":Ljava/lang/String;
    sget-object v4, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v4}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    const-string/jumbo v4, "mtopsdk.DefaultLoginImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "apiRefer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    const-string/jumbo v4, "apiReferer"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0, v3}, Lc8/iNf;->commitSessionInvalidEvent(Lc8/hNf;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    sget-object v4, Lc8/iNf;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->remove()V

    move-object v1, v2

    .line 194
    .end local v0    # "apiRefer":Ljava/lang/String;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lc8/iNf;->registerReceiver()V

    .line 195
    iget-object v4, p0, Lc8/iNf;->loginMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-direct {p0, v4, v5}, Lc8/iNf;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void

    .line 190
    :catch_0
    move-exception v4

    :goto_1
    sget-object v4, Lc8/iNf;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_2
    sget-object v5, Lc8/iNf;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->remove()V

    throw v4

    .end local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    goto :goto_2

    .end local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    goto :goto_1
.end method

.method public setSessionInvalid(Ljava/lang/Object;)V
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 154
    instance-of v0, p1, Lmtopsdk/mtop/domain/MtopResponse;

    if-eqz v0, :cond_1

    .line 155
    sget-object v1, Lc8/iNf;->threadLocal:Ljava/lang/ThreadLocal;

    new-instance v2, Lc8/hNf;

    check-cast p1, Lmtopsdk/mtop/domain/MtopResponse;

    .end local p1    # "arg":Ljava/lang/Object;
    iget-object v0, p0, Lc8/iNf;->getNickMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v3}, Lc8/iNf;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, p1, v0}, Lc8/hNf;-><init>(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    .restart local p1    # "arg":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lc8/iNf;->threadLocal:Ljava/lang/ThreadLocal;

    new-instance v1, Lc8/hNf;

    check-cast p1, Lmtopsdk/mtop/domain/MtopRequest;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lc8/hNf;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method
