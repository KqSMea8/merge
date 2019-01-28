.class public Lc8/tLn;
.super Ljava/lang/Object;
.source "UPasswordManager.java"


# static fields
.field private static sInstance:Lc8/tLn;


# instance fields
.field private final ACTIVITY_WELCOM:Ljava/lang/String;

.field private final HOMEPAGE_ACTIVITY:Ljava/lang/String;

.field private final HOMEPAGE_ENTRY:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private sCurrentActivityWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private uPasswordBroadcastReceiver:Lc8/wLn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lc8/tLn;

    invoke-direct {v0}, Lc8/tLn;-><init>()V

    sput-object v0, Lc8/tLn;->sInstance:Lc8/tLn;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string/jumbo v0, "UPasswordManager"

    iput-object v0, p0, Lc8/tLn;->TAG:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "ActivityWelcome"

    iput-object v0, p0, Lc8/tLn;->ACTIVITY_WELCOM:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "HomePageActivity"

    iput-object v0, p0, Lc8/tLn;->HOMEPAGE_ACTIVITY:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "HomePageEntry"

    iput-object v0, p0, Lc8/tLn;->HOMEPAGE_ENTRY:Ljava/lang/String;

    .line 38
    invoke-static {}, Lc8/DLn;->getInstance()Lc8/DLn;

    .line 39
    return-void
.end method

.method public static getInstance()Lc8/tLn;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lc8/tLn;->sInstance:Lc8/tLn;

    return-object v0
.end method


# virtual methods
.method public getCurrentActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "currentActivity":Landroid/app/Activity;
    iget-object v1, p0, Lc8/tLn;->sCurrentActivityWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lc8/tLn;->sCurrentActivityWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "currentActivity":Landroid/app/Activity;
    check-cast v0, Landroid/app/Activity;

    .line 56
    .restart local v0    # "currentActivity":Landroid/app/Activity;
    :cond_0
    return-object v0
.end method

.method public initUPasswordSDK()V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lc8/Myo;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lc8/vLn;

    invoke-direct {v1}, Lc8/vLn;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 49
    return-void
.end method

.method public isActivitiyWelcomPage()Z
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p0}, Lc8/tLn;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 120
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 122
    const-string/jumbo v1, "ActivityWelcome"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const/4 v1, 0x1

    .line 126
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registUPasswordBroadCastReceiver()V
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lc8/tLn;->uPasswordBroadcastReceiver:Lc8/wLn;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lc8/wLn;

    invoke-direct {v1}, Lc8/wLn;-><init>()V

    iput-object v1, p0, Lc8/tLn;->uPasswordBroadcastReceiver:Lc8/wLn;

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.youdo.xad.show.finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lc8/Myo;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lc8/tLn;->uPasswordBroadcastReceiver:Lc8/wLn;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public setCurrentActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/tLn;->sCurrentActivityWeakRef:Ljava/lang/ref/WeakReference;

    .line 61
    return-void
.end method
