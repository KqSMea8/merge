.class public Lc8/Wz;
.super Ljava/lang/Object;
.source "ActivityBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Vz;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public static execStartActivity(Landroid/content/Intent;Lc8/sz;)Landroid/app/Instrumentation$ActivityResult;
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "startActivityRunnable"    # Lc8/sz;

    .prologue
    const/4 v5, 0x0

    .line 27
    invoke-static {}, Lc8/Nz;->getInstance()Lc8/Nz;

    move-result-object v3

    invoke-virtual {v3, p0}, Lc8/Nz;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 28
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_1

    .line 29
    const/4 v4, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v4, v3}, Lc8/Oz;->getBridgeName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "delegateComponentName":Ljava/lang/String;
    invoke-static {p0, v0}, Lc8/Wz;->wrapperOriginalIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 31
    .local v2, "wrappIntent":Landroid/content/Intent;
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    sget-object v4, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v4}, Landroid/taobao/atlas/runtime/RuntimeVariables;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 32
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v3, v2}, Lc8/Wz;->handleActivityStack(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    .line 33
    invoke-virtual {p1, v2}, Lc8/sz;->execStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v3

    .line 44
    .end local v0    # "delegateComponentName":Ljava/lang/String;
    .end local v2    # "wrappIntent":Landroid/content/Intent;
    :goto_0
    return-object v3

    .line 35
    .restart local v0    # "delegateComponentName":Ljava/lang/String;
    .restart local v2    # "wrappIntent":Landroid/content/Intent;
    :cond_0
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v4, Lc8/Uz;

    invoke-direct {v4, p1}, Lc8/Uz;-><init>(Lc8/sz;)V

    invoke-static {v2, v3, v4}, Lc8/sA;->handleActivityStack(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lc8/Vz;)V

    .line 41
    const/4 v3, 0x0

    goto :goto_0

    .line 44
    .end local v0    # "delegateComponentName":Ljava/lang/String;
    .end local v2    # "wrappIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1, p0}, Lc8/sz;->execStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v3

    goto :goto_0
.end method

.method public static handleActivityStack(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V
    .locals 13
    .param p0, "info"    # Landroid/content/pm/ActivityInfo;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v11, 0x4000000

    const/high16 v12, 0x20000000

    .line 70
    iget v7, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 71
    .local v7, "launchMode":I
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    .line 72
    .local v2, "flag":I
    iget-object v6, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 74
    .local v6, "launchActivityName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 75
    .local v8, "prevActivityName":Ljava/lang/String;
    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    move-result-object v10

    invoke-virtual {v10}, Lc8/Oy;->getActivityList()Ljava/util/List;

    move-result-object v1

    .line 77
    .local v1, "activityList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 78
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    .line 79
    .local v5, "lastActivity":Landroid/app/Activity;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    .line 82
    .end local v5    # "lastActivity":Landroid/app/Activity;
    :cond_0
    invoke-static {v8, v6}, Lc8/aB;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    if-eq v7, v10, :cond_1

    and-int v10, v2, v12

    if-ne v10, v12, :cond_3

    .line 84
    :cond_1
    invoke-virtual {p1, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    :cond_2
    :goto_0
    return-void

    .line 85
    :cond_3
    const/4 v10, 0x2

    if-eq v7, v10, :cond_4

    const/4 v10, 0x3

    if-eq v7, v10, :cond_4

    and-int v10, v2, v11

    if-ne v10, v11, :cond_2

    .line 88
    :cond_4
    const/4 v4, 0x0

    .line 89
    .local v4, "isExist":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_5

    .line 90
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    .line 91
    .local v9, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 92
    const/4 v4, 0x1

    .line 96
    .end local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :cond_5
    if-eqz v4, :cond_2

    .line 97
    add-int/lit8 v10, v3, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v1, v10, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 98
    .local v0, "act":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 99
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 89
    .end local v0    # "act":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    .restart local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 102
    .end local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :cond_8
    add-int/lit8 v10, v3, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v1, v10, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 103
    invoke-virtual {p1, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static processActivityIntentIfNeed(Ljava/lang/Object;)V
    .locals 12
    .param p0, "activityclientrecord"    # Ljava/lang/Object;

    .prologue
    .line 50
    :try_start_0
    const-string/jumbo v7, "android.app.ActivityThread$ActivityClientRecord"

    invoke-static {v7}, Lc8/Wz;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 51
    .local v0, "ActivityClientRecord_Class":Ljava/lang/Class;
    const-string/jumbo v7, "intent"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 52
    .local v5, "intent_Field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 53
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 54
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "%s%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "android.taobao.atlas.runtime.newcomponent."

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "ATLASPROXY"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 55
    const-string/jumbo v7, "activityInfo"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 56
    .local v1, "activityInfo_Field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 57
    invoke-static {v4}, Lc8/Wz;->unWrapperOriginalIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    .line 58
    .local v6, "originalIntent":Landroid/content/Intent;
    invoke-static {}, Lc8/Nz;->getInstance()Lc8/Nz;

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    const-class v9, Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v8, v9}, Lc8/Nz;->getNewComponentInfo(Landroid/content/ComponentName;Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;

    .line 59
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    invoke-static {v1, p0, v3}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    invoke-static {v5, p0, v6}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "ActivityClientRecord_Class":Ljava/lang/Class;
    .end local v1    # "activityInfo_Field":Ljava/lang/reflect/Field;
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "intent_Field":Ljava/lang/reflect/Field;
    .end local v6    # "originalIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static unWrapperOriginalIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p0, "wrapper"    # Landroid/content/Intent;

    .prologue
    .line 117
    const-string/jumbo v0, "originalIntent"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method private static wrapperOriginalIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "origin"    # Landroid/content/Intent;
    .param p1, "delegatActivityname"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v0, "wrappIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string/jumbo v1, "originalIntent"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    return-object v0
.end method
