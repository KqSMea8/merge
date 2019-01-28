.class public Lcom/taobao/accs/internal/AccsJobService;
.super Landroid/app/job/JobService;
.source "AccsJobService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccsJobService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .prologue
    .line 23
    move-object v0, p1

    .line 24
    .local v0, "params":Landroid/app/job/JobParameters;
    const-string/jumbo v1, "AccsJobService"

    const-string/jumbo v2, "onStartJob"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    new-instance v1, Lcom/taobao/accs/internal/AccsJobService$1;

    invoke-direct {v1, p0, v0}, Lcom/taobao/accs/internal/AccsJobService$1;-><init>(Lcom/taobao/accs/internal/AccsJobService;Landroid/app/job/JobParameters;)V

    invoke-static {v1}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    .line 50
    const/4 v1, 0x1

    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 6
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v5, 0x0

    .line 56
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/taobao/accs/internal/AccsJobService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string/jumbo v2, "com.taobao.accs.intent.action.COMMAND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string/jumbo v2, "command"

    const/16 v3, 0xc9

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0}, Lcom/taobao/accs/internal/AccsJobService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.taobao.accs.ChannelService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v0}, Lcom/taobao/accs/internal/AccsJobService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v5

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "AccsJobService"

    const-string/jumbo v3, "onStopJob"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
