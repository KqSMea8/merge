.class public Lcom/taobao/accs/net/AlarmHeartBeatMgr;
.super Lcom/taobao/accs/net/HeartbeatManager;
.source "AlarmHeartBeatMgr.java"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/taobao/accs/net/HeartbeatManager;-><init>(Landroid/content/Context;)V

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/taobao/accs/net/AlarmHeartBeatMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/taobao/accs/net/AlarmHeartBeatMgr;->mAlarmManager:Landroid/app/AlarmManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "AlarmHeartBeatMgr"

    const-string/jumbo v2, "AlarmHeartBeatMgr"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected setInner(I)V
    .locals 7
    .param p1, "interval"    # I

    .prologue
    const/4 v6, 0x0

    .line 33
    iget-object v2, p0, Lcom/taobao/accs/net/AlarmHeartBeatMgr;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/taobao/accs/net/AlarmHeartBeatMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/taobao/accs/net/AlarmHeartBeatMgr;->mAlarmManager:Landroid/app/AlarmManager;

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/taobao/accs/net/AlarmHeartBeatMgr;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v2, :cond_1

    .line 38
    const-string/jumbo v2, "AlarmHeartBeatMgr"

    const-string/jumbo v3, "setInner null"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/taobao/accs/net/AlarmHeartBeatMgr;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_2

    .line 43
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 44
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/taobao/accs/net/AlarmHeartBeatMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string/jumbo v2, "com.taobao.accs.intent.action.COMMAND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string/jumbo v2, "command"

    const/16 v3, 0xc9

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    iget-object v2, p0, Lcom/taobao/accs/net/AlarmHeartBeatMgr;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/accs/net/AlarmHeartBeatMgr;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 49
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 50
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 51
    const/16 v2, 0xd

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 52
    iget-object v2, p0, Lcom/taobao/accs/net/AlarmHeartBeatMgr;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/taobao/accs/net/AlarmHeartBeatMgr;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
