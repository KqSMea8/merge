.class public Lc8/Pib;
.super Ljava/lang/Object;
.source "LoginStatus.java"


# static fields
.field private static final CURRENT_PROCESS:Ljava/lang/String; = "currentProcess"

.field private static final IS_LOGIGING:Ljava/lang/String; = "isLogining"

.field private static final NOTIFY_LOGIN_STATUS_CHANGE:Ljava/lang/String; = "NOTIFY_LOGIN_STATUS_CHANGE"

.field public static final TAG:Ljava/lang/String; = "login.LoginStatus"

.field private static isLogining:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mContext:Landroid/content/Context;

.field private static mStatusReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lc8/Pib;->isLogining:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lc8/Pib;->isLogining:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static declared-synchronized compareAndSetLogining(ZZ)Z
    .locals 3
    .param p0, "expect"    # Z
    .param p1, "update"    # Z

    .prologue
    .line 83
    const-class v2, Lc8/Pib;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lc8/Pib;->isLogining:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 84
    .local v0, "result":Z
    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 85
    :cond_0
    invoke-static {}, Lc8/Pib;->notifyStatusChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_1
    monitor-exit v2

    return v0

    .line 83
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    sput-object p0, Lc8/Pib;->mContext:Landroid/content/Context;

    .line 46
    new-instance v1, Lc8/Oib;

    invoke-direct {v1}, Lc8/Oib;-><init>()V

    sput-object v1, Lc8/Pib;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "NOTIFY_LOGIN_STATUS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lc8/Pib;->mContext:Landroid/content/Context;

    sget-object v2, Lc8/Pib;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method public static isLogining()Z
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lc8/Pib;->isLogining:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private static notifyStatusChange()V
    .locals 3

    .prologue
    .line 63
    sget-object v1, Lc8/Pib;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Pib;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "NOTIFY_LOGIN_STATUS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "currentProcess"

    invoke-static {}, Lc8/Shb;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string/jumbo v1, "isLogining"

    sget-object v2, Lc8/Pib;->isLogining:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    sget-object v1, Lc8/Pib;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    sget-object v1, Lc8/Pib;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    :cond_0
    return-void
.end method

.method public static resetLoginFlag()V
    .locals 4

    .prologue
    .line 92
    const-string/jumbo v1, "login.LoginStatus"

    const-string/jumbo v2, "reset login status"

    invoke-static {v1, v2}, Lc8/Jhb;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v1, Lc8/Pib;->isLogining:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 95
    .local v0, "resetLogin":Z
    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lc8/Pib;->notifyStatusChange()V

    .line 98
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lc8/Bgb;->sOneTimeAuthOption:Lcom/ali/auth/third/core/config/AuthOption;

    .line 99
    return-void
.end method
