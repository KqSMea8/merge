.class public Lcom/taobao/accs/ChannelService$KernelService$1;
.super Ljava/lang/Object;
.source "ChannelService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/ChannelService$KernelService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/ChannelService$KernelService;


# direct methods
.method constructor <init>(Lcom/taobao/accs/ChannelService$KernelService;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/taobao/accs/ChannelService$KernelService$1;->this$0:Lcom/taobao/accs/ChannelService$KernelService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 129
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/ChannelService;->getInstance()Lcom/taobao/accs/ChannelService;

    move-result-object v2

    .line 130
    .local v2, "realService":Lcom/taobao/accs/ChannelService;
    iget-object v4, p0, Lcom/taobao/accs/ChannelService$KernelService$1;->this$0:Lcom/taobao/accs/ChannelService$KernelService;

    invoke-static {v4}, Lcom/taobao/accs/ChannelService$KernelService;->access$000(Lcom/taobao/accs/ChannelService$KernelService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/accs/ChannelService$KernelService$1;->this$0:Lcom/taobao/accs/ChannelService$KernelService;

    invoke-virtual {v5}, Lcom/taobao/accs/ChannelService$KernelService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 132
    .local v1, "icon":I
    if-eqz v1, :cond_0

    .line 133
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/taobao/accs/ChannelService$KernelService$1;->this$0:Lcom/taobao/accs/ChannelService$KernelService;

    invoke-static {v4}, Lcom/taobao/accs/ChannelService$KernelService;->access$000(Lcom/taobao/accs/ChannelService$KernelService;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 136
    const/16 v4, 0x249b

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/taobao/accs/ChannelService;->startForeground(ILandroid/app/Notification;)V

    .line 138
    new-instance v0, Landroid/app/Notification$Builder;

    .end local v0    # "builder":Landroid/app/Notification$Builder;
    iget-object v4, p0, Lcom/taobao/accs/ChannelService$KernelService$1;->this$0:Lcom/taobao/accs/ChannelService$KernelService;

    invoke-static {v4}, Lcom/taobao/accs/ChannelService$KernelService;->access$000(Lcom/taobao/accs/ChannelService$KernelService;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    .restart local v0    # "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 141
    invoke-static {}, Lcom/taobao/accs/ChannelService$KernelService;->access$100()Lcom/taobao/accs/ChannelService$KernelService;

    move-result-object v4

    const/16 v5, 0x249b

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/taobao/accs/ChannelService$KernelService;->startForeground(ILandroid/app/Notification;)V

    .line 142
    invoke-static {}, Lcom/taobao/accs/ChannelService$KernelService;->access$100()Lcom/taobao/accs/ChannelService$KernelService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/taobao/accs/ChannelService$KernelService;->stopForeground(Z)V

    .line 144
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_0
    invoke-static {}, Lcom/taobao/accs/ChannelService$KernelService;->access$100()Lcom/taobao/accs/ChannelService$KernelService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/accs/ChannelService$KernelService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1    # "icon":I
    .end local v2    # "realService":Lcom/taobao/accs/ChannelService;
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v3

    .line 146
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "ChannelService"

    const-string/jumbo v5, " onStartCommand run"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
