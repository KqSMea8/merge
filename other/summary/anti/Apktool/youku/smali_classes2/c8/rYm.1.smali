.class public Lc8/rYm;
.super Ljava/lang/Object;
.source "ConfigService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/qYm;
    }
.end annotation


# static fields
.field private static mInstance:Lc8/rYm;


# instance fields
.field private isStart:Z

.field private mApplication:Landroid/app/Application;

.field private mConfigCallback:Lc8/qYm;

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/rYm;->mHandler:Landroid/os/Handler;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/rYm;->isStart:Z

    .line 162
    new-instance v0, Lc8/pYm;

    invoke-direct {v0, p0}, Lc8/pYm;-><init>(Lc8/rYm;)V

    iput-object v0, p0, Lc8/rYm;->mRunnable:Ljava/lang/Runnable;

    .line 36
    return-void
.end method

.method static synthetic access$100(Lc8/rYm;)V
    .locals 0
    .param p0, "x0"    # Lc8/rYm;

    .prologue
    .line 23
    invoke-direct {p0}, Lc8/rYm;->startTimer()V

    return-void
.end method

.method static synthetic access$200(Lc8/rYm;)V
    .locals 0
    .param p0, "x0"    # Lc8/rYm;

    .prologue
    .line 23
    invoke-direct {p0}, Lc8/rYm;->stopTimer()V

    return-void
.end method

.method static synthetic access$300(Lc8/rYm;)Landroid/app/Application;
    .locals 1
    .param p0, "x0"    # Lc8/rYm;

    .prologue
    .line 23
    iget-object v0, p0, Lc8/rYm;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$400(Lc8/rYm;)Lc8/qYm;
    .locals 1
    .param p0, "x0"    # Lc8/rYm;

    .prologue
    .line 23
    iget-object v0, p0, Lc8/rYm;->mConfigCallback:Lc8/qYm;

    return-object v0
.end method

.method static synthetic access$500(Lc8/rYm;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/rYm;

    .prologue
    .line 23
    iget-object v0, p0, Lc8/rYm;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lc8/rYm;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lc8/rYm;->mInstance:Lc8/rYm;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lc8/rYm;

    invoke-direct {v0}, Lc8/rYm;-><init>()V

    sput-object v0, Lc8/rYm;->mInstance:Lc8/rYm;

    .line 42
    :cond_0
    sget-object v0, Lc8/rYm;->mInstance:Lc8/rYm;

    return-object v0
.end method

.method private startTimer()V
    .locals 4

    .prologue
    .line 152
    invoke-direct {p0}, Lc8/rYm;->stopTimer()V

    .line 153
    iget-object v0, p0, Lc8/rYm;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lc8/rYm;->mRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    return-void
.end method

.method private stopTimer()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lc8/rYm;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lc8/rYm;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method


# virtual methods
.method public bind(Landroid/content/Context;Lcom/alibaba/poplayer/PopLayer;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "poplayer"    # Lcom/alibaba/poplayer/PopLayer;

    .prologue
    .line 46
    iget-boolean v0, p0, Lc8/rYm;->isStart:Z

    if-eqz v0, :cond_0

    .line 58
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 49
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/rYm;->isStart:Z

    .line 50
    check-cast p1, Landroid/app/Application;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lc8/rYm;->mApplication:Landroid/app/Application;

    .line 52
    new-instance v0, Lc8/qYm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/qYm;-><init>(Lc8/rYm;Lc8/pYm;)V

    iput-object v0, p0, Lc8/rYm;->mConfigCallback:Lc8/qYm;

    .line 53
    iget-object v0, p0, Lc8/rYm;->mApplication:Landroid/app/Application;

    iget-object v1, p0, Lc8/rYm;->mConfigCallback:Lc8/qYm;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 55
    invoke-static {}, Lc8/AYm;->getInstance()Lc8/AYm;

    move-result-object v0

    invoke-virtual {v0, p2}, Lc8/AYm;->updateConfig(Lcom/alibaba/poplayer/PopLayer;)V

    .line 57
    invoke-direct {p0}, Lc8/rYm;->startTimer()V

    goto :goto_0
.end method
