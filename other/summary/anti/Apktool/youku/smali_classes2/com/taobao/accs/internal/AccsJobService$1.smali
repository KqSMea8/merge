.class public Lcom/taobao/accs/internal/AccsJobService$1;
.super Ljava/lang/Object;
.source "AccsJobService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/internal/AccsJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/internal/AccsJobService;

.field final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/taobao/accs/internal/AccsJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/taobao/accs/internal/AccsJobService$1;->this$0:Lcom/taobao/accs/internal/AccsJobService;

    iput-object p2, p0, Lcom/taobao/accs/internal/AccsJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 29
    :try_start_0
    iget-object v3, p0, Lcom/taobao/accs/internal/AccsJobService$1;->this$0:Lcom/taobao/accs/internal/AccsJobService;

    invoke-virtual {v3}, Lcom/taobao/accs/internal/AccsJobService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "packageName":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string/jumbo v3, "com.taobao.accs.intent.action.COMMAND"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string/jumbo v3, "command"

    const/16 v4, 0xc9

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    const-string/jumbo v3, "com.taobao.accs.ChannelService"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    iget-object v3, p0, Lcom/taobao/accs/internal/AccsJobService$1;->this$0:Lcom/taobao/accs/internal/AccsJobService;

    invoke-virtual {v3, v0}, Lcom/taobao/accs/internal/AccsJobService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 36
    iget-object v3, p0, Lcom/taobao/accs/internal/AccsJobService$1;->this$0:Lcom/taobao/accs/internal/AccsJobService;

    iget-object v4, p0, Lcom/taobao/accs/internal/AccsJobService$1;->val$params:Landroid/app/job/JobParameters;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/internal/AccsJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v2

    .line 38
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "AccsJobService"

    const-string/jumbo v4, "onStartJob"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
