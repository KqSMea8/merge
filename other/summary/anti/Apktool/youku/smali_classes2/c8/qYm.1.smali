.class public Lc8/qYm;
.super Ljava/lang/Object;
.source "ConfigService.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/rYm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigActivityLifecycleCallbacks"
.end annotation


# instance fields
.field private preRequestTime:J

.field private startActivityCount:I

.field final synthetic this$0:Lc8/rYm;

.field public updateTimeInterval:J


# direct methods
.method private constructor <init>(Lc8/rYm;)V
    .locals 4

    .prologue
    .line 60
    iput-object p1, p0, Lc8/qYm;->this$0:Lc8/rYm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lc8/qYm;->updateTimeInterval:J

    .line 67
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lc8/qYm;->updateTimeInterval:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lc8/qYm;->preRequestTime:J

    return-void
.end method

.method synthetic constructor <init>(Lc8/rYm;Lc8/pYm;)V
    .locals 0
    .param p1, "x0"    # Lc8/rYm;
    .param p2, "x1"    # Lc8/pYm;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lc8/qYm;-><init>(Lc8/rYm;)V

    return-void
.end method


# virtual methods
.method public getStartActivityCount()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lc8/qYm;->startActivityCount:I

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 147
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 143
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    if-nez p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    sget-boolean v2, Lc8/uXb;->sAllowPopOnParentActivity:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 95
    .local v0, "curRequestTime":J
    iget-wide v2, p0, Lc8/qYm;->preRequestTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lc8/qYm;->updateTimeInterval:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 101
    invoke-static {}, Lc8/AYm;->getInstance()Lc8/AYm;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/AYm;->updateConfig(Lcom/alibaba/poplayer/PopLayer;)V

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lc8/qYm;->preRequestTime:J

    .line 106
    const/4 v2, 0x1

    iget v3, p0, Lc8/qYm;->startActivityCount:I

    if-ne v2, v3, :cond_0

    .line 107
    invoke-static {}, Lc8/VYm;->onSetup()V

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 71
    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget v0, p0, Lc8/qYm;->startActivityCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/qYm;->startActivityCount:I

    .line 77
    const/4 v0, 0x1

    iget v1, p0, Lc8/qYm;->startActivityCount:I

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lc8/qYm;->this$0:Lc8/rYm;

    invoke-static {v0}, Lc8/rYm;->access$100(Lc8/rYm;)V

    goto :goto_0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 113
    if-nez p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget v0, p0, Lc8/qYm;->startActivityCount:I

    if-lez v0, :cond_2

    .line 117
    iget v0, p0, Lc8/qYm;->startActivityCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc8/qYm;->startActivityCount:I

    .line 119
    :cond_2
    iget v0, p0, Lc8/qYm;->startActivityCount:I

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lc8/qYm;->this$0:Lc8/rYm;

    invoke-static {v0}, Lc8/rYm;->access$200(Lc8/rYm;)V

    goto :goto_0
.end method

.method public resetStartActivityCount()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lc8/qYm;->startActivityCount:I

    .line 131
    return-void
.end method
