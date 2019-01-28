.class public Lc8/Fcf;
.super Ljava/lang/Object;
.source "LocalAidlServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;
    }
.end annotation


# static fields
.field private static final Service_attach:Ljava/lang/reflect/Method;

.field private static final TAG:Ljava/lang/String; = "LocalSvc"

.field private static final mConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ServiceConnection;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 208
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lc8/Fcf;->mServices:Ljava/util/Map;

    .line 209
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lc8/Fcf;->mConnectionMap:Ljava/util/HashMap;

    .line 216
    const/4 v2, 0x0

    .line 218
    .local v2, "method":Ljava/lang/reflect/Method;
    :try_start_0
    const-string/jumbo v3, "android.app.ActivityThread"

    invoke-static {v3}, Lc8/Fcf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 219
    .local v0, "ActivityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Landroid/app/Service;

    const-string/jumbo v4, "attach"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-class v7, Landroid/app/Application;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 221
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    .end local v0    # "ActivityThread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    sput-object v2, Lc8/Fcf;->Service_attach:Ljava/lang/reflect/Method;

    .line 228
    return-void

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v3, "LocalSvc"

    const-string/jumbo v4, "Incompatible ROM"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 224
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v3, "LocalSvc"

    const-string/jumbo v4, "Incompatible ROM"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
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

.method private static attach(Landroid/content/Context;Ljava/lang/Class;Landroid/app/Service;Landroid/app/Application;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/Service;
    .param p3, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;",
            "Landroid/app/Service;",
            "Landroid/app/Application;",
            ")V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "service_class":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    sget-object v1, Lc8/Fcf;->Service_attach:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 190
    :cond_0
    :try_start_0
    sget-object v1, Lc8/Fcf;->Service_attach:Ljava/lang/reflect/Method;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p3, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-static {v1, p2, v2}, Lc8/Fcf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v1, "LocalSvc"

    const-string/jumbo v2, "Unexpected exception when attaching service."

    invoke-static {v1, v2, v0}, Lc8/Nbf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 193
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service_intent"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 38
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 40
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_2

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, p1, v6}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 42
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_1

    .line 62
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    :goto_0
    return v6

    .line 43
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v0    # "component":Landroid/content/ComponentName;
    :cond_2
    sget-object v7, Lc8/Fcf;->mServices:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;

    .line 47
    .local v3, "service_record":Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;
    if-nez v3, :cond_3

    .line 48
    invoke-static {p0, p1, v0}, Lc8/Fcf;->createAndBindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ComponentName;)Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;

    move-result-object v3

    .line 49
    if-eqz v3, :cond_0

    .line 50
    sget-object v6, Lc8/Fcf;->mServices:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_3
    invoke-virtual {v3, p2}, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v6, Lc8/Fcf;->mConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v4

    .line 57
    .local v4, "start":J
    iget-object v6, v3, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->binder:Landroid/os/IBinder;

    invoke-interface {p2, v0, v6}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 58
    const-wide/32 v6, 0x1e8480

    add-long/2addr v6, v4

    const-string/jumbo v8, ".onServiceConnected()"

    invoke-static {v6, v7, p2, v8}, Lc8/Fcf;->logExcessiveElapse(JLjava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v4    # "start":J
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "LocalSvc"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".onServiceConnected()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static checkConnectionExist(Landroid/content/ServiceConnection;)Z
    .locals 1
    .param p0, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 67
    sget-object v0, Lc8/Fcf;->mConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createAndBindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ComponentName;)Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lc8/Fcf;->loadServiceClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 75
    .local v4, "service_class":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    if-nez v4, :cond_0

    const/4 v5, 0x0

    .line 124
    :goto_0
    return-object v5

    .line 77
    :cond_0
    const-class v5, Lc8/Ecf;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    .line 81
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v6

    .line 82
    .local v6, "start":J
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Service;

    .line 83
    .local v3, "service":Landroid/app/Service;
    const-wide/32 v8, 0x1e8480

    add-long/2addr v8, v6

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "()"

    invoke-static {v8, v9, v5, v10}, Lc8/Fcf;->logExcessiveElapse(JLjava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    invoke-static {p0}, Lc8/Fcf;->getApplication(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    .line 93
    .local v0, "application":Landroid/app/Application;
    invoke-static {p0, v4, v3, v0}, Lc8/Fcf;->attach(Landroid/content/Context;Ljava/lang/Class;Landroid/app/Service;Landroid/app/Application;)V

    .line 95
    :try_start_1
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v6

    .line 96
    invoke-virtual {v3}, Landroid/app/Service;->onCreate()V

    .line 97
    const-wide/32 v8, 0x4c4b40

    add-long/2addr v8, v6

    const-string/jumbo v5, ".onCreate()"

    invoke-static {v8, v9, v3, v5}, Lc8/Fcf;->logExcessiveElapse(JLjava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 102
    :goto_1
    const/4 v1, 0x0

    .line 104
    .local v1, "binder":Landroid/os/IBinder;
    :try_start_2
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v6

    .line 105
    invoke-virtual {v3, p1}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v1

    .line 106
    const-wide/32 v8, 0x1e8480

    add-long/2addr v8, v6

    const-string/jumbo v5, ".onBind()"

    invoke-static {v8, v9, v3, v5}, Lc8/Fcf;->logExcessiveElapse(JLjava/lang/Object;Ljava/lang/String;)V

    .line 107
    if-nez v1, :cond_2

    const-string/jumbo v5, "LocalSvc"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".onBind() should never return null."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 111
    :cond_2
    :goto_2
    if-nez v1, :cond_3

    .line 113
    :try_start_3
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v6

    .line 114
    invoke-virtual {v3}, Landroid/app/Service;->onDestroy()V

    .line 115
    const-wide/32 v8, 0x4c4b40

    add-long/2addr v8, v6

    const-string/jumbo v5, ".onDestroy()"

    invoke-static {v8, v9, v3, v5}, Lc8/Fcf;->logExcessiveElapse(JLjava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    .line 119
    :goto_3
    const/4 v5, 0x0

    goto :goto_0

    .line 84
    .end local v0    # "application":Landroid/app/Application;
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v3    # "service":Landroid/app/Service;
    .end local v6    # "start":J
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/InstantiationException;
    const-string/jumbo v5, "LocalSvc"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to instantiate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v2}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 87
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v5, "LocalSvc"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Constructor of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is inaccessible"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v2}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 98
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v0    # "application":Landroid/app/Application;
    .restart local v3    # "service":Landroid/app/Service;
    .restart local v6    # "start":J
    :catch_2
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "LocalSvc"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".onCreate()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v2}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 108
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "binder":Landroid/os/IBinder;
    :catch_3
    move-exception v2

    .line 109
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "LocalSvc"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".onBind()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v2}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 116
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v2

    .line 117
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "LocalSvc"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".onDestroy()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v2}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 122
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_3
    invoke-static {v0, v3}, Lc8/Fcf;->registerComponentCallbacks(Landroid/app/Application;Landroid/content/ComponentCallbacks;)V

    .line 124
    new-instance v5, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;

    invoke-direct {v5, v0, p1, v1, v3}, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;-><init>(Landroid/app/Application;Landroid/content/Intent;Landroid/os/IBinder;Landroid/app/Service;)V

    goto/16 :goto_0
.end method

.method private static getApplication(Landroid/content/Context;)Landroid/app/Application;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 204
    .restart local p0    # "context":Landroid/content/Context;
    :goto_0
    return-object v0

    .line 200
    :cond_0
    instance-of v1, p0, Landroid/app/Service;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/app/Service;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    .line 201
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 202
    .local v0, "app_context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Application;

    goto :goto_0

    .line 203
    :cond_2
    const-string/jumbo v1, "LocalSvc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot discover application from context "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadServiceClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 177
    :try_start_0
    invoke-static {}, Lc8/Jcf;->getSystemClassloader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/Jcf;->getSystemClassloader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 177
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    const-string/jumbo v0, "LocalSvc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not a Service derived class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Nbf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logExcessiveElapse(JLjava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .param p0, "deadline"    # J
    .param p2, "procedure"    # Ljava/lang/Object;
    .param p3, "postfix"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v2

    sub-long v0, v2, p0

    .line 129
    .local v0, "excess":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 131
    .end local p3    # "postfix":Ljava/lang/String;
    :goto_0
    return-void

    .line 130
    .restart local p3    # "postfix":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_1

    .end local p3    # "postfix":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " exceed the deadline "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/32 v4, 0xf4240

    div-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms (thread CPU time)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .restart local p3    # "postfix":Ljava/lang/String;
    :cond_1
    const-string/jumbo p3, ""

    goto :goto_1
.end method

.method private static registerComponentCallbacks(Landroid/app/Application;Landroid/content/ComponentCallbacks;)V
    .locals 2
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "callbacks"    # Landroid/content/ComponentCallbacks;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_0
.end method

.method public static unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    const/4 v3, 0x0

    .line 134
    sget-object v4, Lc8/Fcf;->mConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    .local v0, "classname":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v3

    .line 136
    :cond_1
    sget-object v4, Lc8/Fcf;->mServices:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;

    .line 137
    .local v2, "record":Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;
    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {v2, p1}, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 139
    const-string/jumbo v3, "LocalSvc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Internal inconsistency, please report this to the corresponding dev team: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Nbf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_2
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->service:Landroid/app/Service;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_1
    invoke-virtual {v2}, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 147
    sget-object v3, Lc8/Fcf;->mServices:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v3, v2, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->app:Landroid/app/Application;

    iget-object v4, v2, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->service:Landroid/app/Service;

    invoke-static {v3, v4}, Lc8/Fcf;->unregisterComponentCallbacks(Landroid/app/Application;Landroid/content/ComponentCallbacks;)V

    .line 150
    :try_start_1
    iget-object v3, v2, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->service:Landroid/app/Service;

    iget-object v4, v2, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    :goto_2
    :try_start_2
    iget-object v3, v2, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->service:Landroid/app/Service;

    invoke-virtual {v3}, Landroid/app/Service;->onDestroy()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 160
    :cond_3
    :goto_3
    const/4 v3, 0x1

    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "LocalSvc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".onServiceDisconnected()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 151
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 152
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "LocalSvc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->service:Landroid/app/Service;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".onUnbind()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 156
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 157
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "LocalSvc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->service:Landroid/app/Service;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".onDestroy()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lc8/Nbf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static unregisterComponentCallbacks(Landroid/app/Application;Landroid/content/ComponentCallbacks;)V
    .locals 2
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "callbacks"    # Landroid/content/ComponentCallbacks;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 171
    if-eqz p0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_0
.end method
