.class public Lc8/OL;
.super Ljava/lang/Object;
.source "AppLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/NL;
    }
.end annotation


# static fields
.field public static volatile lastEnterBackgroundTime:J

.field private static listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lc8/NL;",
            ">;"
        }
    .end annotation
.end field

.field private static mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private static mComponentCallbacks2:Landroid/content/ComponentCallbacks2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lc8/OL;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 28
    const-wide/16 v0, 0x0

    sput-wide v0, Lc8/OL;->lastEnterBackgroundTime:J

    .line 67
    new-instance v0, Lc8/LL;

    invoke-direct {v0}, Lc8/LL;-><init>()V

    sput-object v0, Lc8/OL;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 102
    new-instance v0, Lc8/ML;

    invoke-direct {v0}, Lc8/ML;-><init>()V

    sput-object v0, Lc8/OL;->mComponentCallbacks2:Landroid/content/ComponentCallbacks2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize()V
    .locals 2

    .prologue
    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 32
    invoke-static {}, Lc8/TI;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sget-object v1, Lc8/OL;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 33
    invoke-static {}, Lc8/TI;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lc8/OL;->mComponentCallbacks2:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 35
    :cond_0
    return-void
.end method

.method public static onBackground()V
    .locals 4

    .prologue
    .line 58
    sget-boolean v2, Lc8/TI;->isBackground:Z

    if-nez v2, :cond_0

    .line 59
    const/4 v2, 0x1

    sput-boolean v2, Lc8/TI;->isBackground:Z

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lc8/OL;->lastEnterBackgroundTime:J

    .line 61
    sget-object v2, Lc8/OL;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/NL;

    .line 62
    .local v1, "listener":Lc8/NL;
    invoke-interface {v1}, Lc8/NL;->background()V

    goto :goto_0

    .line 65
    .end local v1    # "listener":Lc8/NL;
    :cond_0
    return-void
.end method

.method public static onForeground()V
    .locals 3

    .prologue
    .line 49
    sget-boolean v2, Lc8/TI;->isBackground:Z

    if-eqz v2, :cond_0

    .line 50
    const/4 v2, 0x0

    sput-boolean v2, Lc8/TI;->isBackground:Z

    .line 51
    sget-object v2, Lc8/OL;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/NL;

    .line 52
    .local v1, "listener":Lc8/NL;
    invoke-interface {v1}, Lc8/NL;->forground()V

    goto :goto_0

    .line 55
    .end local v1    # "listener":Lc8/NL;
    :cond_0
    return-void
.end method

.method public static registerLifecycleListener(Lc8/NL;)V
    .locals 1
    .param p0, "lifecycleListener"    # Lc8/NL;

    .prologue
    .line 39
    if-eqz p0, :cond_0

    .line 40
    sget-object v0, Lc8/OL;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    return-void
.end method

.method public static unregisterLifecycleListener(Lc8/NL;)V
    .locals 1
    .param p0, "lifecycleListener"    # Lc8/NL;

    .prologue
    .line 45
    sget-object v0, Lc8/OL;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method
