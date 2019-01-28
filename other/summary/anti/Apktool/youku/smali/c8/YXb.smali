.class public Lc8/YXb;
.super Ljava/lang/Object;
.source "AppLayerNotify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/VXb;,
        Lc8/WXb;,
        Lc8/XXb;
    }
.end annotation


# static fields
.field private static final APP_IN_BACKGROUND_CHECK_INTERVAL:I = 0x3e8

.field private static final APP_IN_BACKGROUND_START_CHECK_MILLIS:I = 0x1388

.field private static final MAX_TOLERANCE_TRANSFORM_MILLIS:I = 0xc8

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mApplication:Landroid/app/Application;

.field private mHandler:Lc8/XXb;

.field private mNotify:Lc8/WXb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lc8/YXb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/YXb;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Lc8/WXb;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "notify"    # Lc8/WXb;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lc8/YXb;->mApplication:Landroid/app/Application;

    .line 51
    iput-object p2, p0, Lc8/YXb;->mNotify:Lc8/WXb;

    .line 52
    const-string/jumbo v0, "activity"

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lc8/YXb;->mActivityManager:Landroid/app/ActivityManager;

    .line 53
    new-instance v0, Lc8/XXb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/XXb;-><init>(Lc8/YXb;Lc8/VXb;)V

    iput-object v0, p0, Lc8/YXb;->mHandler:Lc8/XXb;

    .line 54
    return-void
.end method


# virtual methods
.method handleBackgroundCheck()V
    .locals 4

    .prologue
    .line 82
    invoke-virtual {p0}, Lc8/YXb;->isAppIntoBackgroundByProcessInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/YXb;->isAppIntoBackgroundByTask()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    :cond_0
    iget-object v0, p0, Lc8/YXb;->mHandler:Lc8/XXb;

    const/16 v1, 0xa

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lc8/XXb;->sendEmptyMessageDelayed(IJ)Z

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lc8/YXb;->mNotify:Lc8/WXb;

    invoke-interface {v0}, Lc8/WXb;->onKeepInBackground()V

    goto :goto_0
.end method

.method handleIntoBackground()V
    .locals 4

    .prologue
    const/16 v1, 0xa

    .line 72
    iget-object v0, p0, Lc8/YXb;->mNotify:Lc8/WXb;

    invoke-interface {v0}, Lc8/WXb;->onQuicklyIntoBackground()V

    .line 74
    iget-object v0, p0, Lc8/YXb;->mHandler:Lc8/XXb;

    invoke-virtual {v0, v1}, Lc8/XXb;->removeMessages(I)V

    .line 75
    iget-object v0, p0, Lc8/YXb;->mHandler:Lc8/XXb;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lc8/XXb;->sendEmptyMessageDelayed(IJ)Z

    .line 78
    return-void
.end method

.method isAppIntoBackgroundByProcessInfo()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 118
    iget-object v5, p0, Lc8/YXb;->mApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lc8/YXb;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 120
    .local v1, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v4

    .line 123
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 124
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-eq v5, v6, :cond_3

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_2

    .line 127
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method isAppIntoBackgroundByTask()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 135
    iget-object v2, p0, Lc8/YXb;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 136
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 138
    .local v1, "topActivity":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lc8/YXb;->mApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 142
    .end local v1    # "topActivity":Landroid/content/ComponentName;
    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method pause()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lc8/YXb;->mHandler:Lc8/XXb;

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lc8/XXb;->sendEmptyMessageDelayed(IJ)Z

    .line 62
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lc8/YXb;->mHandler:Lc8/XXb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/XXb;->removeMessages(I)V

    .line 58
    return-void
.end method

.method stopNotify()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lc8/YXb;->mHandler:Lc8/XXb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/XXb;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 67
    return-void
.end method
