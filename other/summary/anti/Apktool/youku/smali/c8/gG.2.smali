.class public Lc8/gG;
.super Ljava/lang/Object;
.source "WVPackageApp.java"


# static fields
.field private static PRELOAD_ZIP:Ljava/lang/String; = null

.field private static PackageUpdateListenerMaps:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/XG;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WVPackageApp"

.field private static isInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lc8/gG;->isInited:Z

    .line 32
    const-string/jumbo v0, "preload_packageapp.zip"

    sput-object v0, Lc8/gG;->PRELOAD_ZIP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPreunzipPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lc8/gG;->PRELOAD_ZIP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lc8/gG;->PRELOAD_ZIP:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "preload_packageapp.zip"

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checkupdate"    # Z

    .prologue
    .line 47
    const-class v2, Lc8/gG;

    monitor-enter v2

    if-nez p0, :cond_1

    .line 48
    :try_start_0
    const-string/jumbo v1, "WVPackageApp"

    const-string/jumbo v3, "init fail. context cannot be null"

    invoke-static {v1, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 51
    :cond_1
    :try_start_1
    sget-object v1, Lc8/xB;->context:Landroid/app/Application;

    if-nez v1, :cond_3

    .line 52
    instance-of v1, p0, Landroid/app/Application;

    if-nez v1, :cond_2

    .line 54
    const-string/jumbo v1, "WVPackageApp"

    const-string/jumbo v3, "init fail. context should be application"

    invoke-static {v1, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 57
    :cond_2
    :try_start_2
    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    move-object v1, v0

    sput-object v1, Lc8/xB;->context:Landroid/app/Application;

    .line 59
    :cond_3
    sget-boolean v1, Lc8/gG;->isInited:Z

    if-nez v1, :cond_0

    .line 60
    invoke-static {}, Lc8/sG;->getInstance()Lc8/sG;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lc8/sG;->init(Landroid/content/Context;Z)V

    .line 61
    const/4 v1, 0x1

    sput-boolean v1, Lc8/gG;->isInited:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected static declared-synchronized notifyPackageUpdateFinish(Ljava/lang/String;)V
    .locals 7
    .param p0, "appName"    # Ljava/lang/String;

    .prologue
    .line 131
    const-class v4, Lc8/gG;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    sget-object v3, Lc8/xB;->env:Landroid/taobao/windvane/config/EnvEnum;

    sget-object v5, Landroid/taobao/windvane/config/EnvEnum;->DAILY:Landroid/taobao/windvane/config/EnvEnum;

    if-ne v3, v5, :cond_0

    .line 133
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "appName \u4e0d\u80fd\u4e3a\u7a7a!"

    invoke-direct {v3, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 135
    :cond_0
    :try_start_1
    const-string/jumbo v3, "WVPackageApp"

    const-string/jumbo v5, "notify package update finish appName is null!"

    invoke-static {v3, v5}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_1
    const-string/jumbo v3, "WVPackageApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "appName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v3, Lc8/gG;->PackageUpdateListenerMaps:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_3

    .line 152
    :cond_2
    monitor-exit v4

    return-void

    .line 144
    :cond_3
    :try_start_2
    sget-object v3, Lc8/gG;->PackageUpdateListenerMaps:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 145
    .local v2, "packageUpdateListeners":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/packageapp/zipapp/update/WVPackageUpdateListener;>;"
    if-eqz v2, :cond_2

    .line 146
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/XG;

    .line 147
    .local v1, "listener":Lc8/XG;
    if-eqz v1, :cond_4

    .line 148
    invoke-interface {v1, p0}, Lc8/XG;->onPackageUpdateFinish(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized registerPackageUpdateListener(Ljava/lang/String;Lc8/XG;)V
    .locals 5
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "listener"    # Lc8/XG;

    .prologue
    .line 73
    const-class v2, Lc8/gG;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    sget-object v1, Lc8/xB;->env:Landroid/taobao/windvane/config/EnvEnum;

    sget-object v3, Landroid/taobao/windvane/config/EnvEnum;->DAILY:Landroid/taobao/windvane/config/EnvEnum;

    if-ne v1, v3, :cond_0

    .line 75
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "AppName \u4e0d\u53ef\u4ee5\u4e3a\u7a7a!"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 77
    :cond_0
    :try_start_1
    const-string/jumbo v1, "WVPackageApp"

    const-string/jumbo v3, "appName is null!"

    invoke-static {v1, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :goto_0
    monitor-exit v2

    return-void

    .line 82
    :cond_1
    if-nez p1, :cond_3

    .line 83
    :try_start_2
    sget-object v1, Lc8/xB;->env:Landroid/taobao/windvane/config/EnvEnum;

    sget-object v3, Landroid/taobao/windvane/config/EnvEnum;->DAILY:Landroid/taobao/windvane/config/EnvEnum;

    if-ne v1, v3, :cond_2

    .line 84
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "PackageUpdateListener \u4e0d\u53ef\u4ee5\u4e3a\u7a7a!"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_2
    const-string/jumbo v1, "WVPackageApp"

    const-string/jumbo v3, "packageUpdateListener is null!"

    invoke-static {v1, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_3
    const-string/jumbo v1, "WVPackageApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "appName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " listener:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v1, Lc8/gG;->PackageUpdateListenerMaps:Ljava/util/Map;

    if-nez v1, :cond_4

    .line 95
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lc8/gG;->PackageUpdateListenerMaps:Ljava/util/Map;

    .line 98
    :cond_4
    sget-object v1, Lc8/gG;->PackageUpdateListenerMaps:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 99
    .local v0, "packageUpdateListeners":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/packageapp/zipapp/update/WVPackageUpdateListener;>;"
    if-nez v0, :cond_5

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "packageUpdateListeners":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/packageapp/zipapp/update/WVPackageUpdateListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .restart local v0    # "packageUpdateListeners":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/packageapp/zipapp/update/WVPackageUpdateListener;>;"
    sget-object v1, Lc8/gG;->PackageUpdateListenerMaps:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static setPreunzipPackageName(Ljava/lang/String;)V
    .locals 0
    .param p0, "pacakageName"    # Ljava/lang/String;

    .prologue
    .line 39
    sput-object p0, Lc8/gG;->PRELOAD_ZIP:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public declared-synchronized unRegisterPackageUpdateListener(Ljava/lang/String;Lc8/XG;)V
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "listener"    # Lc8/XG;

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "WVPackageApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "appName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v1, Lc8/gG;->PackageUpdateListenerMaps:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 122
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 118
    :cond_1
    :try_start_1
    sget-object v1, Lc8/gG;->PackageUpdateListenerMaps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 119
    .local v0, "packageUpdateListeners":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/packageapp/zipapp/update/WVPackageUpdateListener;>;"
    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    .end local v0    # "packageUpdateListeners":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/packageapp/zipapp/update/WVPackageUpdateListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
