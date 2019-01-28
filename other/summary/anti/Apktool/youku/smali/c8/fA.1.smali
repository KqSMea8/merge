.class public Lc8/fA;
.super Lc8/iA;
.source "BaseDelegateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/gA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceDispatcherImpl"
.end annotation


# instance fields
.field private mActivateServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lc8/bA;",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lc8/iA;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/fA;->mActivateServices:Ljava/util/HashMap;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/fA;->mMainHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lc8/fA;Landroid/content/ComponentName;)Lc8/bA;
    .locals 1
    .param p0, "x0"    # Lc8/fA;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lc8/fA;->retriveServiceByComponent(Landroid/content/ComponentName;)Lc8/bA;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lc8/fA;Landroid/content/ComponentName;)Lc8/bA;
    .locals 1
    .param p0, "x0"    # Lc8/fA;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lc8/fA;->handleCreateService(Landroid/content/ComponentName;)Lc8/bA;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lc8/fA;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lc8/fA;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Landroid/os/IBinder;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lc8/fA;->handleServiceArgs(Landroid/content/Intent;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$300(Lc8/fA;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/fA;

    .prologue
    .line 47
    iget-object v0, p0, Lc8/fA;->mActivateServices:Ljava/util/HashMap;

    return-object v0
.end method

.method private handleCreateService(Landroid/content/ComponentName;)Lc8/bA;
    .locals 17
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 163
    :try_start_0
    sget-object v12, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateClassLoader:Lc8/Yy;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lc8/Yy;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 164
    .local v11, "serviceClazz":Ljava/lang/Class;
    invoke-virtual {v11}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/Service;

    .line 167
    .local v10, "service":Landroid/app/Service;
    invoke-static {}, Lc8/wy;->getActivityThread()Ljava/lang/Object;

    move-result-object v3

    .line 168
    .local v3, "activityThread":Ljava/lang/Object;
    sget-object v12, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    sget-object v13, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v13}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v3, v13}, Lc8/wy;->getLoadedApk(Landroid/app/Application;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 170
    .local v8, "loadedApk":Ljava/lang/Object;
    sget-object v12, Lc8/xy;->ContextImpl:Lc8/Ay;

    const-string/jumbo v13, "createAppContext"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    sget-object v16, Lc8/xy;->ActivityThread:Lc8/Ay;

    invoke-virtual/range {v16 .. v16}, Lc8/Ay;->getmClass()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Lc8/xy;->LoadedApk:Lc8/Ay;

    invoke-virtual/range {v16 .. v16}, Lc8/Ay;->getmClass()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lc8/Ay;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/Dy;

    move-result-object v1

    .line 171
    .local v1, "ContextImpl_createAppContext":Lc8/Dy;
    invoke-virtual {v1}, Lc8/Dy;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 172
    sget-object v12, Lc8/xy;->ContextImpl:Lc8/Ay;

    invoke-virtual {v12}, Lc8/Ay;->getmClass()Ljava/lang/Class;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    const/4 v14, 0x1

    aput-object v8, v13, v14

    invoke-virtual {v1, v12, v13}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 181
    .local v4, "contextImpl":Ljava/lang/Object;
    :goto_0
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x19

    if-gt v12, v13, :cond_0

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x19

    if-ne v12, v13, :cond_2

    sget v12, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-lez v12, :cond_2

    .line 182
    :cond_0
    sget-object v12, Lc8/xy;->ActivityManager_IActivityManagerSingleton:Lc8/Cy;

    sget-object v13, Lc8/xy;->ActivityManager:Lc8/Ay;

    invoke-virtual {v13}, Lc8/Ay;->getmClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 186
    .local v6, "gDefault":Ljava/lang/Object;
    :goto_1
    sget-object v12, Lc8/xy;->Singleton_mInstance:Lc8/Cy;

    invoke-virtual {v12, v6}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 187
    sget-object v12, Lc8/xy;->ContextImpl_setOuterContext:Lc8/Dy;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    invoke-virtual {v12, v4, v13}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v7, Lc8/Xy;

    check-cast v4, Landroid/content/Context;

    .end local v4    # "contextImpl":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-direct {v7, v4, v12}, Lc8/Xy;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    .line 191
    .local v7, "hook":Lc8/Xy;
    new-instance v9, Lc8/bA;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lc8/bA;-><init>(Landroid/content/ComponentName;)V

    .line 192
    .local v9, "record":Lc8/bA;
    sget-object v12, Lc8/xy;->Service_attach:Lc8/Dy;

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    const/4 v14, 0x2

    invoke-static {v11}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    aput-object v9, v13, v14

    const/4 v14, 0x4

    sget-object v15, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    aput-object v15, v13, v14

    const/4 v14, 0x5

    aput-object v6, v13, v14

    invoke-virtual {v12, v10, v13}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {v10}, Landroid/app/Service;->onCreate()V

    .line 195
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/fA;->mActivateServices:Ljava/util/HashMap;

    invoke-virtual {v12, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .end local v1    # "ContextImpl_createAppContext":Lc8/Dy;
    .end local v3    # "activityThread":Ljava/lang/Object;
    .end local v6    # "gDefault":Ljava/lang/Object;
    .end local v7    # "hook":Lc8/Xy;
    .end local v8    # "loadedApk":Ljava/lang/Object;
    .end local v9    # "record":Lc8/bA;
    .end local v10    # "service":Landroid/app/Service;
    .end local v11    # "serviceClazz":Ljava/lang/Class;
    :goto_2
    return-object v9

    .line 174
    .restart local v1    # "ContextImpl_createAppContext":Lc8/Dy;
    .restart local v3    # "activityThread":Ljava/lang/Object;
    .restart local v8    # "loadedApk":Ljava/lang/Object;
    .restart local v10    # "service":Landroid/app/Service;
    .restart local v11    # "serviceClazz":Ljava/lang/Class;
    :cond_1
    sget-object v12, Lc8/xy;->ContextImpl:Lc8/Ay;

    const-string/jumbo v13, "init"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    sget-object v16, Lc8/xy;->LoadedApk:Lc8/Ay;

    invoke-virtual/range {v16 .. v16}, Lc8/Ay;->getmClass()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-class v16, Landroid/os/IBinder;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    sget-object v16, Lc8/xy;->ActivityThread:Lc8/Ay;

    invoke-virtual/range {v16 .. v16}, Lc8/Ay;->getmClass()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lc8/Ay;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/Dy;

    move-result-object v2

    .line 175
    .local v2, "ContextImpl_init":Lc8/Dy;
    sget-object v12, Lc8/xy;->ContextImpl:Lc8/Ay;

    invoke-virtual {v12}, Lc8/Ay;->getmClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 176
    .restart local v4    # "contextImpl":Ljava/lang/Object;
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object v3, v12, v13

    invoke-virtual {v2, v4, v12}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 197
    .end local v1    # "ContextImpl_createAppContext":Lc8/Dy;
    .end local v2    # "ContextImpl_init":Lc8/Dy;
    .end local v3    # "activityThread":Ljava/lang/Object;
    .end local v4    # "contextImpl":Ljava/lang/Object;
    .end local v8    # "loadedApk":Ljava/lang/Object;
    .end local v10    # "service":Landroid/app/Service;
    .end local v11    # "serviceClazz":Ljava/lang/Class;
    :catch_0
    move-exception v5

    .line 198
    .local v5, "e":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 199
    const/4 v9, 0x0

    goto :goto_2

    .line 184
    .end local v5    # "e":Ljava/lang/Throwable;
    .restart local v1    # "ContextImpl_createAppContext":Lc8/Dy;
    .restart local v3    # "activityThread":Ljava/lang/Object;
    .restart local v4    # "contextImpl":Ljava/lang/Object;
    .restart local v8    # "loadedApk":Ljava/lang/Object;
    .restart local v10    # "service":Landroid/app/Service;
    .restart local v11    # "serviceClazz":Ljava/lang/Class;
    :cond_2
    :try_start_1
    sget-object v12, Lc8/xy;->ActivityManagerNative_gDefault:Lc8/Cy;

    sget-object v13, Lc8/xy;->ActivityManagerNative:Lc8/Ay;

    invoke-virtual {v13}, Lc8/Ay;->getmClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .restart local v6    # "gDefault":Ljava/lang/Object;
    goto/16 :goto_1
.end method

.method private handleServiceArgs(Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "serviceIntent"    # Landroid/content/Intent;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 204
    iget-object v1, p0, Lc8/fA;->mActivateServices:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    .line 205
    .local v0, "service":Landroid/app/Service;
    if-eqz v0, :cond_1

    .line 206
    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {v0}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 209
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 211
    :cond_1
    return-void
.end method

.method private retriveServiceByComponent(Landroid/content/ComponentName;)Lc8/bA;
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 214
    iget-object v3, p0, Lc8/fA;->mActivateServices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 215
    .local v1, "iter":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 217
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/taobao/atlas/runtime/newcomponent/service/BaseDelegateService$AdditionalServiceRecord;Landroid/app/Service;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/bA;

    .line 218
    .local v2, "tmpRecord":Lc8/bA;
    iget-object v3, v2, Lc8/bA;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/taobao/atlas/runtime/newcomponent/service/BaseDelegateService$AdditionalServiceRecord;Landroid/app/Service;>;"
    .end local v2    # "tmpRecord":Lc8/bA;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/os/IBinder;Landroid/app/IServiceConnection;)Landroid/os/IBinder;
    .locals 2
    .param p1, "serviceIntent"    # Landroid/content/Intent;
    .param p2, "activityToken"    # Landroid/os/IBinder;
    .param p3, "conn"    # Landroid/app/IServiceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    const-string/jumbo v0, "BaseDelegateService"

    const-string/jumbo v1, "bindService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lc8/fA;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lc8/dA;

    invoke-direct {v1, p0, p1, p3}, Lc8/dA;-><init>(Lc8/fA;Landroid/content/Intent;Landroid/app/IServiceConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleActivityStack(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {p2, p1}, Lc8/Wz;->handleActivityStack(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    .line 148
    return-object p1
.end method

.method public handleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lc8/fA;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lc8/eA;

    invoke-direct {v1, p0, p1, p2}, Lc8/eA;-><init>(Lc8/fA;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    return-void
.end method

.method public startService(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;)Landroid/os/IBinder;
    .locals 2
    .param p1, "serviceIntent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    const-string/jumbo v0, "BaseDelegateService"

    const-string/jumbo v1, "startService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lc8/fA;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lc8/cA;

    invoke-direct {v1, p0, p1}, Lc8/cA;-><init>(Lc8/fA;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public stopService(Landroid/content/Intent;)I
    .locals 3
    .param p1, "serviceIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    const-string/jumbo v1, "BaseDelegateService"

    const-string/jumbo v2, "stopService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, Lc8/fA;->retriveServiceByComponent(Landroid/content/ComponentName;)Lc8/bA;

    move-result-object v0

    .line 135
    .local v0, "record":Lc8/bA;
    if-eqz v0, :cond_0

    .line 136
    iget-object v1, v0, Lc8/bA;->activeConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 137
    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/bA;->delayStop:Z

    .line 142
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 139
    :cond_1
    iget-object v1, p0, Lc8/fA;->mActivateServices:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    invoke-virtual {v1}, Landroid/app/Service;->onDestroy()V

    goto :goto_0
.end method

.method public unbindService(Landroid/app/IServiceConnection;)Z
    .locals 7
    .param p1, "conn"    # Landroid/app/IServiceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    const-string/jumbo v5, "BaseDelegateService"

    const-string/jumbo v6, "unbindService"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v5, p0, Lc8/fA;->mActivateServices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 107
    .local v1, "iter":Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 108
    .local v2, "record":Lc8/bA;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/taobao/atlas/runtime/newcomponent/service/BaseDelegateService$AdditionalServiceRecord;Landroid/app/Service;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/bA;

    .line 111
    .local v4, "tmpRecord":Lc8/bA;
    iget-object v5, v4, Lc8/bA;->activeConnections:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    move-object v2, v4

    .line 117
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/taobao/atlas/runtime/newcomponent/service/BaseDelegateService$AdditionalServiceRecord;Landroid/app/Service;>;"
    .end local v4    # "tmpRecord":Lc8/bA;
    :cond_1
    if-eqz v2, :cond_3

    .line 118
    iget-object v5, v2, Lc8/bA;->activeConnections:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 119
    iget-object v5, v2, Lc8/bA;->activeConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 120
    iget-boolean v5, v2, Lc8/bA;->calledStart:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v2, Lc8/bA;->calledStart:Z

    if-eqz v5, :cond_3

    iget-boolean v5, v2, Lc8/bA;->delayStop:Z

    if-eqz v5, :cond_3

    .line 122
    :cond_2
    iget-object v5, p0, Lc8/fA;->mActivateServices:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Service;

    .line 123
    .local v3, "service":Landroid/app/Service;
    invoke-virtual {v3}, Landroid/app/Service;->onDestroy()V

    .line 124
    const/4 v5, 0x1

    .line 128
    .end local v3    # "service":Landroid/app/Service;
    :goto_0
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method
