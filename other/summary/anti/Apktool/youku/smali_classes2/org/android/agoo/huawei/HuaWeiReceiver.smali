.class public Lorg/android/agoo/huawei/HuaWeiReceiver;
.super Lc8/Dsd;
.source "HuaWeiReceiver.java"


# static fields
.field private static final HUAWEI_TOKEN:Ljava/lang/String; = "HW_TOKEN"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private agooFactory:Lc8/QWp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lc8/Dsd;-><init>()V

    .line 19
    const-string/jumbo v0, "accs.HuaWeiReceiver"

    iput-object v0, p0, Lorg/android/agoo/huawei/HuaWeiReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onPushMsg(Landroid/content/Context;[BLjava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # [B
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    .line 25
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 26
    .local v1, "msgContent":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPushMsg content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    new-instance v2, Lc8/QWp;

    invoke-direct {v2}, Lc8/QWp;-><init>()V

    iput-object v2, p0, Lorg/android/agoo/huawei/HuaWeiReceiver;->agooFactory:Lc8/QWp;

    .line 28
    iget-object v2, p0, Lorg/android/agoo/huawei/HuaWeiReceiver;->agooFactory:Lc8/QWp;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lc8/QWp;->init(Landroid/content/Context;Lc8/UWp;Lc8/dXp;)V

    .line 29
    iget-object v2, p0, Lorg/android/agoo/huawei/HuaWeiReceiver;->agooFactory:Lc8/QWp;

    const-string/jumbo v3, "huawei"

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v3, v4}, Lc8/QWp;->msgRecevie([BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v1    # "msgContent":Ljava/lang/String;
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "accs.HuaWeiReceiver"

    const-string/jumbo v3, "onPushMsg error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 43
    :try_start_0
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 44
    const-string/jumbo v2, "accs.HuaWeiReceiver"

    const-string/jumbo v3, "donnt report huawei token, HuaWeiReceiver should declare in main process"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onToken token:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    new-instance v1, Lc8/UWp;

    invoke-direct {v1}, Lc8/UWp;-><init>()V

    .line 52
    .local v1, "notifyManager":Lc8/UWp;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/UWp;->init(Landroid/content/Context;)V

    .line 53
    const-string/jumbo v2, "HW_TOKEN"

    invoke-virtual {v1, p2, v2}, Lc8/UWp;->reportThirdPushToken(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v1    # "notifyManager":Lc8/UWp;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "accs.HuaWeiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onToken error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
