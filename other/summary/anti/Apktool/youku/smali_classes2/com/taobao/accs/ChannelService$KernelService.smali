.class public Lcom/taobao/accs/ChannelService$KernelService;
.super Landroid/app/Service;
.source "ChannelService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/ChannelService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelService"
.end annotation


# static fields
.field private static instance:Lcom/taobao/accs/ChannelService$KernelService;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/accs/ChannelService$KernelService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/ChannelService$KernelService;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/taobao/accs/ChannelService$KernelService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/taobao/accs/ChannelService$KernelService;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/taobao/accs/ChannelService$KernelService;->instance:Lcom/taobao/accs/ChannelService$KernelService;

    return-object v0
.end method

.method public static getInstance()Lcom/taobao/accs/ChannelService$KernelService;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/taobao/accs/ChannelService$KernelService;->instance:Lcom/taobao/accs/ChannelService$KernelService;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 115
    sput-object p0, Lcom/taobao/accs/ChannelService$KernelService;->instance:Lcom/taobao/accs/ChannelService$KernelService;

    .line 116
    invoke-virtual {p0}, Lcom/taobao/accs/ChannelService$KernelService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/ChannelService$KernelService;->mContext:Landroid/content/Context;

    .line 117
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 161
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/taobao/accs/ChannelService$KernelService;->stopForeground(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/taobao/accs/ChannelService$KernelService;->instance:Lcom/taobao/accs/ChannelService$KernelService;

    .line 167
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 168
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "ChannelService"

    const-string/jumbo v2, "onDestroy"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 124
    :try_start_0
    new-instance v1, Lcom/taobao/accs/ChannelService$KernelService$1;

    invoke-direct {v1, p0}, Lcom/taobao/accs/ChannelService$KernelService$1;-><init>(Lcom/taobao/accs/ChannelService$KernelService;)V

    invoke-static {v1}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "ChannelService"

    const-string/jumbo v2, " onStartCommand"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
