.class public Lc8/nNp;
.super Ljava/lang/Object;
.source "AntiAttackHandlerImpl.java"

# interfaces
.implements Lc8/kNp;


# static fields
.field private static final MTOPSDK_ANTI_ATTACK_ACTION:Ljava/lang/String; = "mtopsdk.mtop.antiattack.checkcode.validate.activity_action"

.field private static final MTOPSDK_ANTI_ATTACK_RESULT_ACTION:Ljava/lang/String; = "mtopsdk.extra.antiattack.result.notify.action"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.AntiAttackHandlerImpl"

.field private static final WAIT_RESULT_TIME_OUT:I = 0xafc8


# instance fields
.field final antiAttackReceiver:Landroid/content/BroadcastReceiver;

.field private final handler:Landroid/os/Handler;

.field private final intentFilter:Landroid/content/IntentFilter;

.field final isHandling:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mContext:Landroid/content/Context;

.field private final timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/nNp;->isHandling:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "mtopsdk.extra.antiattack.result.notify.action"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/nNp;->intentFilter:Landroid/content/IntentFilter;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/nNp;->handler:Landroid/os/Handler;

    .line 36
    new-instance v0, Lc8/lNp;

    invoke-direct {v0, p0}, Lc8/lNp;-><init>(Lc8/nNp;)V

    iput-object v0, p0, Lc8/nNp;->timeoutRunnable:Ljava/lang/Runnable;

    .line 51
    new-instance v0, Lc8/mNp;

    invoke-direct {v0, p0}, Lc8/mNp;-><init>(Lc8/nNp;)V

    iput-object v0, p0, Lc8/nNp;->antiAttackReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    iput-object p1, p0, Lc8/nNp;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lc8/nNp;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lc8/nNp;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/nNp;->timeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lc8/nNp;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/nNp;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/nNp;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "ext"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {p1}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "loc":Ljava/lang/String;
    invoke-static {}, Lc8/rQp;->isAppBackground()Z

    move-result v3

    .line 73
    .local v3, "isBackground":Z
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[handle]execute new 419 Strategy,"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "location="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo v5, ", isBackground="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v5, "mtopsdk.AntiAttackHandlerImpl"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    if-eqz v3, :cond_2

    .line 100
    .end local v3    # "isBackground":Z
    .end local v4    # "loc":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 83
    .restart local v3    # "isBackground":Z
    .restart local v4    # "loc":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lc8/nNp;->isHandling:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    iget-object v5, p0, Lc8/nNp;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lc8/nNp;->timeoutRunnable:Ljava/lang/Runnable;

    const-wide/32 v8, 0xafc8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v2, "in":Landroid/content/Intent;
    const-string/jumbo v5, "mtopsdk.mtop.antiattack.checkcode.validate.activity_action"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object v5, p0, Lc8/nNp;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    const-string/jumbo v5, "Location"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v5, p0, Lc8/nNp;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 95
    iget-object v5, p0, Lc8/nNp;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lc8/nNp;->antiAttackReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lc8/nNp;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v2    # "in":Landroid/content/Intent;
    .end local v3    # "isBackground":Z
    .end local v4    # "loc":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "mtopsdk.AntiAttackHandlerImpl"

    const-string/jumbo v6, "[handle] execute new 419 Strategy error."

    invoke-static {v5, v6, v1}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
