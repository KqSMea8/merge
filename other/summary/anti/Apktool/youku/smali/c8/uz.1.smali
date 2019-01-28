.class public Lc8/uz;
.super Ljava/lang/Object;
.source "PackageManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/tz;
    }
.end annotation


# static fields
.field private static mBaseContext:Landroid/content/Context;

.field private static mPackageManagerProxyhandler:Lc8/tz;

.field private static mProxyPm:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 238
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

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lc8/uz;->mBaseContext:Landroid/content/Context;

    return-object v0
.end method

.method public static delegatepackageManager(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    .line 247
    :try_start_0
    sput-object p0, Lc8/uz;->mBaseContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 248
    .local v3, "manager":Landroid/content/pm/PackageManager;
    sget-object v5, Lc8/uz;->mProxyPm:Ljava/lang/Object;

    if-nez v5, :cond_2

    .line 249
    const-string/jumbo v5, "android.app.ApplicationPackageManager"

    invoke-static {v5}, Lc8/uz;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 250
    .local v0, "ApplicationPackageManager":Ljava/lang/Class;
    const-string/jumbo v5, "mPM"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 251
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 253
    .local v4, "rawPm":Ljava/lang/Object;
    const-string/jumbo v5, "android.content.pm.IPackageManager"

    invoke-static {v5}, Lc8/uz;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 254
    .local v1, "IPackageManagerClass":Ljava/lang/Class;
    if-eqz v4, :cond_1

    .line 255
    sget-object v5, Lc8/uz;->mPackageManagerProxyhandler:Lc8/tz;

    if-nez v5, :cond_0

    .line 256
    new-instance v5, Lc8/tz;

    invoke-direct {v5, v4}, Lc8/tz;-><init>(Ljava/lang/Object;)V

    sput-object v5, Lc8/uz;->mPackageManagerProxyhandler:Lc8/tz;

    .line 258
    :cond_0
    sget-object v5, Lc8/uz;->mBaseContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    sget-object v7, Lc8/uz;->mPackageManagerProxyhandler:Lc8/tz;

    invoke-static {v5, v6, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v5

    sput-object v5, Lc8/uz;->mProxyPm:Ljava/lang/Object;

    .line 260
    :cond_1
    sget-object v5, Lc8/uz;->mProxyPm:Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v0    # "ApplicationPackageManager":Ljava/lang/Class;
    .end local v1    # "IPackageManagerClass":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "manager":Landroid/content/pm/PackageManager;
    .end local v4    # "rawPm":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v5

    goto :goto_0
.end method
