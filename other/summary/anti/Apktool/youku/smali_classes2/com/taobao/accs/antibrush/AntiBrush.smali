.class public Lcom/taobao/accs/antibrush/AntiBrush;
.super Ljava/lang/Object;
.source "AntiBrush.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/antibrush/AntiBrush$AntiReceiver;
    }
.end annotation


# static fields
.field private static final ANTI_ATTACK_ACTION:Ljava/lang/String; = "mtopsdk.mtop.antiattack.checkcode.validate.activity_action"

.field private static final ANTI_ATTACK_RESULT_ACTION:Ljava/lang/String; = "mtopsdk.extra.antiattack.result.notify.action"

.field public static final STATUS_BRUSH:I = 0x1a3

.field private static final TAG:Ljava/lang/String; = "AntiBrush"

.field private static mHost:Ljava/lang/String;

.field private static volatile mIsInCheckCodeActivity:Z

.field private static mTimeoutTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mAntiAttackReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/accs/antibrush/AntiBrush;->mIsInCheckCodeActivity:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/accs/antibrush/AntiBrush;->mAntiAttackReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/antibrush/AntiBrush;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/accs/antibrush/AntiBrush;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/antibrush/AntiBrush;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/taobao/accs/antibrush/AntiBrush;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleantiBrush(Ljava/lang/String;)V
    .locals 8
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 111
    sget-boolean v2, Lcom/taobao/accs/antibrush/AntiBrush;->mIsInCheckCodeActivity:Z

    if-eqz v2, :cond_0

    .line 112
    const-string/jumbo v2, "AntiBrush"

    const-string/jumbo v3, "handleantiBrush return"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "mIsInCheckCodeActivity"

    aput-object v5, v4, v6

    sget-boolean v5, Lcom/taobao/accs/antibrush/AntiBrush;->mIsInCheckCodeActivity:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :goto_0
    return-void

    .line 118
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v0, "in":Landroid/content/Intent;
    const-string/jumbo v2, "mtopsdk.mtop.antiattack.checkcode.validate.activity_action"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v2, p0, Lcom/taobao/accs/antibrush/AntiBrush;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    const-string/jumbo v2, "Location"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string/jumbo v2, "AntiBrush"

    const-string/jumbo v3, "handleAntiBrush:"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object v2, p0, Lcom/taobao/accs/antibrush/AntiBrush;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 125
    const/4 v2, 0x1

    sput-boolean v2, Lcom/taobao/accs/antibrush/AntiBrush;->mIsInCheckCodeActivity:Z

    .line 126
    iget-object v2, p0, Lcom/taobao/accs/antibrush/AntiBrush;->mAntiAttackReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    .line 127
    new-instance v2, Lcom/taobao/accs/antibrush/AntiBrush$AntiReceiver;

    invoke-direct {v2}, Lcom/taobao/accs/antibrush/AntiBrush$AntiReceiver;-><init>()V

    iput-object v2, p0, Lcom/taobao/accs/antibrush/AntiBrush;->mAntiAttackReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/taobao/accs/antibrush/AntiBrush;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/taobao/accs/antibrush/AntiBrush;->mAntiAttackReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "mtopsdk.extra.antiattack.result.notify.action"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v0    # "in":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 132
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "AntiBrush"

    const-string/jumbo v3, "handleantiBrush"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static onResult(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Z

    .prologue
    .line 93
    const/4 v2, 0x0

    sput-boolean v2, Lcom/taobao/accs/antibrush/AntiBrush;->mIsInCheckCodeActivity:Z

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string/jumbo v2, "command"

    const/16 v3, 0x68

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    const-string/jumbo v2, "anti_brush_ret"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    invoke-static {p0, v0}, Lcom/taobao/accs/data/MsgDistribute;->distribMessage(Landroid/content/Context;Landroid/content/Intent;)V

    .line 99
    sget-object v2, Lcom/taobao/accs/antibrush/AntiBrush;->mTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_0

    .line 100
    sget-object v2, Lcom/taobao/accs/antibrush/AntiBrush;->mTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 101
    const/4 v2, 0x0

    sput-object v2, Lcom/taobao/accs/antibrush/AntiBrush;->mTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    .line 103
    :cond_0
    sget-object v2, Lcom/taobao/accs/antibrush/AntiBrush;->mHost:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 104
    sget-object v2, Lcom/taobao/accs/antibrush/AntiBrush;->mHost:Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/accs/antibrush/CookieMgr;->getCookieSec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "sec":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/taobao/accs/utl/UtilityImpl;->storeCookie(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    .end local v1    # "sec":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public checkAntiBrush(Ljava/net/URL;Ljava/util/Map;)Z
    .locals 11
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 41
    const/4 v1, 0x0

    .line 43
    .local v1, "result":Z
    if-eqz p2, :cond_1

    :try_start_0
    iget-object v7, p0, Lcom/taobao/accs/antibrush/AntiBrush;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/taobao/accs/utl/UtilityImpl;->isForeground(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 44
    sget-object v7, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_STATUS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v7}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 45
    .local v3, "statusStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v6

    .line 46
    .local v2, "status":I
    :goto_0
    const/16 v7, 0x1a3

    if-ne v2, v7, :cond_1

    .line 47
    sget-object v7, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_LOCATION:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v7}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    .local v0, "location":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 49
    const-string/jumbo v7, "AntiBrush"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "start anti bursh location:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-direct {p0, v0}, Lcom/taobao/accs/antibrush/AntiBrush;->handleantiBrush(Ljava/lang/String;)V

    .line 51
    sget-object v7, Lcom/taobao/accs/antibrush/AntiBrush;->mTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v7, :cond_0

    .line 52
    sget-object v7, Lcom/taobao/accs/antibrush/AntiBrush;->mTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 53
    const/4 v7, 0x0

    sput-object v7, Lcom/taobao/accs/antibrush/AntiBrush;->mTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    .line 55
    :cond_0
    new-instance v7, Lcom/taobao/accs/antibrush/AntiBrush$1;

    invoke-direct {v7, p0}, Lcom/taobao/accs/antibrush/AntiBrush$1;-><init>(Lcom/taobao/accs/antibrush/AntiBrush;)V

    const-wide/32 v8, 0xea60

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v7, v8, v9, v10}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v7

    sput-object v7, Lcom/taobao/accs/antibrush/AntiBrush;->mTimeoutTask:Ljava/util/concurrent/ScheduledFuture;

    .line 64
    if-nez p1, :cond_4

    :goto_1
    sput-object v5, Lcom/taobao/accs/antibrush/AntiBrush;->mHost:Ljava/lang/String;

    .line 65
    const/4 v1, 0x1

    .line 71
    .end local v0    # "location":Ljava/lang/String;
    .end local v2    # "status":I
    .end local v3    # "statusStr":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/taobao/accs/client/GlobalClientInfo;->mCookieSec:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/taobao/accs/antibrush/AntiBrush;->mHost:Ljava/lang/String;

    invoke-static {v5}, Lcom/taobao/accs/antibrush/CookieMgr;->getCookieSec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    const-string/jumbo v5, "AntiBrush"

    const-string/jumbo v7, "cookie invalid, clear"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v5, p0, Lcom/taobao/accs/antibrush/AntiBrush;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/taobao/accs/utl/UtilityImpl;->clearCookie(Landroid/content/Context;)V

    .line 80
    :cond_2
    :goto_2
    return v1

    .line 45
    .restart local v3    # "statusStr":Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_0

    .line 64
    .restart local v0    # "location":Ljava/lang/String;
    .restart local v2    # "status":I
    :cond_4
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 76
    .end local v0    # "location":Ljava/lang/String;
    .end local v2    # "status":I
    .end local v3    # "statusStr":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 77
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "AntiBrush"

    const-string/jumbo v7, "checkAntiBrush error"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v7, v4, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2
.end method
