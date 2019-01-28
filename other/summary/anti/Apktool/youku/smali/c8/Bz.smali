.class public Lc8/Bz;
.super Ljava/lang/Object;
.source "SecurityHandler.java"

# interfaces
.implements Lc8/Teq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Az;,
        Lc8/zz;,
        Lc8/yz;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SecurityBundleListner"


# instance fields
.field private isSecurityCheckFailed:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field shutdownProcessHandler:Lc8/zz;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Bz;->mHandlerThread:Landroid/os/HandlerThread;

    .line 234
    new-instance v0, Lc8/zz;

    invoke-direct {v0}, Lc8/zz;-><init>()V

    iput-object v0, p0, Lc8/Bz;->shutdownProcessHandler:Lc8/zz;

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Bz;->isSecurityCheckFailed:Z

    .line 238
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Check bundle security"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/Bz;->mHandlerThread:Landroid/os/HandlerThread;

    .line 239
    iget-object v0, p0, Lc8/Bz;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 240
    new-instance v0, Lc8/yz;

    iget-object v1, p0, Lc8/Bz;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc8/yz;-><init>(Lc8/Bz;Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/Bz;->mHandler:Landroid/os/Handler;

    .line 241
    return-void
.end method

.method static synthetic access$000(Lc8/Bz;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Bz;

    .prologue
    .line 230
    iget-boolean v0, p0, Lc8/Bz;->isSecurityCheckFailed:Z

    return v0
.end method

.method static synthetic access$002(Lc8/Bz;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/Bz;
    .param p1, "x1"    # Z

    .prologue
    .line 230
    iput-boolean p1, p0, Lc8/Bz;->isSecurityCheckFailed:Z

    return p1
.end method

.method static synthetic access$200(Lc8/Bz;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Bz;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lc8/Bz;->isRunningForeground(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isRunningForeground(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 326
    const-string/jumbo v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 327
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 328
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "currentPackageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 334
    :goto_0
    return v3

    :cond_0
    move v3, v5

    goto :goto_0
.end method


# virtual methods
.method public bundleChanged(Lorg/osgi/framework/BundleEvent;)V
    .locals 4
    .param p1, "event"    # Lorg/osgi/framework/BundleEvent;

    .prologue
    .line 245
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 248
    :sswitch_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 249
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getBundle()Lc8/Seq;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 250
    iget-object v1, p0, Lc8/Bz;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 245
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
