.class public Lcom/taobao/orange/service/OrangeApiService;
.super Landroid/app/Service;
.source "OrangeApiService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OrangeApiService"


# instance fields
.field private mBinder:Lc8/wtf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/orange/service/OrangeApiService;->mBinder:Lc8/wtf;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    const-string/jumbo v0, "OrangeApiService"

    const-string/jumbo v1, "onBind"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lcom/taobao/orange/service/OrangeApiService;->mBinder:Lc8/wtf;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lc8/ytf;

    invoke-direct {v0, p0}, Lc8/ytf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/orange/service/OrangeApiService;->mBinder:Lc8/wtf;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/taobao/orange/service/OrangeApiService;->mBinder:Lc8/wtf;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 35
    const-string/jumbo v0, "OrangeApiService"

    const-string/jumbo v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 37
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 41
    const-string/jumbo v0, "OrangeApiService"

    const-string/jumbo v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 43
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    const-string/jumbo v0, "OrangeApiService"

    const-string/jumbo v1, "onRebind"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "intent"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 49
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 53
    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    const-string/jumbo v0, "OrangeApiService"

    const-string/jumbo v1, "onUnbind"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
