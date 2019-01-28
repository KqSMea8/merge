.class public Lc8/tqb;
.super Lc8/MXf;
.source "GeolocationModule.java"

# interfaces
.implements Lc8/uXf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/sqb;
    }
.end annotation


# instance fields
.field private mGeolocationThread:Landroid/os/HandlerThread;

.field private mHandler:Landroid/os/Handler;

.field private mILocatable:Lc8/sub;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    .line 33
    iget-object v0, p0, Lc8/tqb;->mWXSDKInstance:Lc8/nVf;

    invoke-static {v0}, Lc8/tub;->getLocationProvider(Lc8/nVf;)Lc8/sub;

    move-result-object v0

    iput-object v0, p0, Lc8/tqb;->mILocatable:Lc8/sub;

    .line 34
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Geolocation"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/tqb;->mGeolocationThread:Landroid/os/HandlerThread;

    .line 35
    iget-object v0, p0, Lc8/tqb;->mGeolocationThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lc8/tqb;->mGeolocationThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/tqb;->mHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lc8/tqb;)Z
    .locals 1
    .param p0, "x0"    # Lc8/tqb;

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/tqb;->checkPermission()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lc8/tqb;)Lc8/sub;
    .locals 1
    .param p0, "x0"    # Lc8/tqb;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/tqb;->mILocatable:Lc8/sub;

    return-object v0
.end method

.method static synthetic access$200(Lc8/tqb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lc8/tqb;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/tqb;->requestPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private checkPermission()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lc8/tqb;->mWXSDKInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/tqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/pub;->checkSelfPermission(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "successCallback"    # Ljava/lang/String;
    .param p2, "errorCallback"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;
    .param p4, "requestCurPermissionCode"    # I

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Lc8/tqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v1, v2

    invoke-static {v0, v1, p4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 122
    iget-object v0, p0, Lc8/tqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    new-instance v0, Lc8/sqb;

    iget-object v1, p0, Lc8/tqb;->mWXSDKInstance:Lc8/nVf;

    .line 123
    invoke-virtual {v1}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/tqb;->mILocatable:Lc8/sub;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lc8/sqb;-><init>(Ljava/lang/String;Lc8/sub;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "actionRequestPermissionsResult"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public clearWatch(Ljava/lang/String;)V
    .locals 2
    .param p1, "registerID"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lc8/tqb;->mILocatable:Lc8/sub;

    iget-object v1, p0, Lc8/tqb;->mWXSDKInstance:Lc8/nVf;

    invoke-interface {v0, v1}, Lc8/sub;->setWXSDKInstance(Lc8/nVf;)V

    .line 100
    iget-object v0, p0, Lc8/tqb;->mHandler:Landroid/os/Handler;

    new-instance v1, Lc8/rqb;

    invoke-direct {v1, p0, p1}, Lc8/rqb;-><init>(Lc8/tqb;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lc8/tqb;->mILocatable:Lc8/sub;

    invoke-interface {v0}, Lc8/sub;->destroy()V

    .line 112
    iget-object v0, p0, Lc8/tqb;->mGeolocationThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lc8/tqb;->mGeolocationThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/tqb;->mGeolocationThread:Landroid/os/HandlerThread;

    .line 116
    :cond_0
    return-void
.end method

.method public getCurrentPosition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "successCallback"    # Ljava/lang/String;
    .param p2, "errorCallback"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lc8/tqb;->mWXSDKInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/tqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lc8/tqb;->mILocatable:Lc8/sub;

    iget-object v1, p0, Lc8/tqb;->mWXSDKInstance:Lc8/nVf;

    invoke-interface {v0, v1}, Lc8/sub;->setWXSDKInstance(Lc8/nVf;)V

    .line 53
    iget-object v0, p0, Lc8/tqb;->mHandler:Landroid/os/Handler;

    new-instance v1, Lc8/pqb;

    invoke-direct {v1, p0, p1, p2, p3}, Lc8/pqb;-><init>(Lc8/tqb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public watchPosition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "successCallback"    # Ljava/lang/String;
    .param p2, "errorCallback"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lc8/tqb;->mWXSDKInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/tqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lc8/tqb;->mILocatable:Lc8/sub;

    iget-object v1, p0, Lc8/tqb;->mWXSDKInstance:Lc8/nVf;

    invoke-interface {v0, v1}, Lc8/sub;->setWXSDKInstance(Lc8/nVf;)V

    .line 80
    iget-object v0, p0, Lc8/tqb;->mHandler:Landroid/os/Handler;

    new-instance v1, Lc8/qqb;

    invoke-direct {v1, p0, p1, p2, p3}, Lc8/qqb;-><init>(Lc8/tqb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
