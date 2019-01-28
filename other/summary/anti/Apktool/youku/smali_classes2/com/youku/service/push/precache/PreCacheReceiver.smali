.class public Lcom/youku/service/push/precache/PreCacheReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PreCacheReceiver.java"


# static fields
.field public static final ACTION_PRE_CAHCHE:Ljava/lang/String; = "com.youku.service.push.action.PRE_CACHE_ACTION"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static startIntentService(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    new-instance v1, Lcom/youku/service/push/PushMsg;

    invoke-direct {v1}, Lcom/youku/service/push/PushMsg;-><init>()V

    .line 23
    .local v1, "msg":Lcom/youku/service/push/PushMsg;
    const/16 v2, 0x13

    iput v2, v1, Lcom/youku/service/push/PushMsg;->type:I

    .line 24
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 25
    .local v0, "i":Landroid/content/Intent;
    const/high16 v2, 0x34400000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 29
    const-string/jumbo v2, "PushMsg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 30
    const-string/jumbo v2, "from"

    const-string/jumbo v3, "push"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string/jumbo v2, "action"

    const-string/jumbo v3, "IMG"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string/jumbo v2, "owner"

    const-string/jumbo v3, "xiaomi"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-class v2, Lcom/youku/service/push/service/StartActivityService;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 35
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    invoke-static {p1}, Lcom/youku/service/push/precache/PreCacheReceiver;->startIntentService(Landroid/content/Context;)V

    .line 19
    return-void
.end method
