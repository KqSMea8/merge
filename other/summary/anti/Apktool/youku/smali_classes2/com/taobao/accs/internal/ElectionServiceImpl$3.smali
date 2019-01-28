.class public Lcom/taobao/accs/internal/ElectionServiceImpl$3;
.super Ljava/lang/Object;
.source "ElectionServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/internal/ElectionServiceImpl;->selectAppToElection(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/internal/ElectionServiceImpl;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/taobao/accs/internal/ElectionServiceImpl;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/taobao/accs/internal/ElectionServiceImpl$3;->this$0:Lcom/taobao/accs/internal/ElectionServiceImpl;

    iput-object p2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl$3;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 551
    :try_start_0
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl$3;->this$0:Lcom/taobao/accs/internal/ElectionServiceImpl;

    invoke-static {v2}, Lcom/taobao/accs/internal/ElectionServiceImpl;->access$500(Lcom/taobao/accs/internal/ElectionServiceImpl;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 552
    const/4 v2, 0x1

    sput-boolean v2, Lcom/taobao/accs/election/ElectionServiceUtil;->tryElectionFail:Z

    .line 553
    const-string/jumbo v2, "ElectionServiceImpl"

    const-string/jumbo v3, "wait app election time out"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 555
    .local v0, "startIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl$3;->val$mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.taobao.accs.ChannelService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    iget-object v2, p0, Lcom/taobao/accs/internal/ElectionServiceImpl$3;->val$mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    .end local v0    # "startIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 558
    :catch_0
    move-exception v1

    .line 559
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "ElectionServiceImpl"

    const-string/jumbo v3, "mSelectAppTimeOutTask"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
