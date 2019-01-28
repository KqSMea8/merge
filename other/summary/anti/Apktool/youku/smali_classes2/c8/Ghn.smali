.class public Lc8/Ghn;
.super Ljava/lang/Object;
.source "PreCacheAlarm.java"


# static fields
.field private static alarmManager:Landroid/app/AlarmManager;

.field private static pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dateToStamp(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 94
    .local v2, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 95
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 96
    .local v4, "ts":J
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "res":Ljava/lang/String;
    return-object v1
.end method

.method public static getCalendarLong(III)Ljava/lang/Long;
    .locals 4
    .param p0, "hour"    # I
    .param p1, "minute"    # I
    .param p2, "second"    # I

    .prologue
    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 72
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 73
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 74
    const/16 v1, 0xd

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 75
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 76
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public static getDayOfYear()I
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 84
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static isValidPush(J)Z
    .locals 4
    .param p0, "alarmtime"    # J

    .prologue
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 60
    .local v0, "currentTime":J
    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    .line 61
    const/4 v2, 0x1

    .line 63
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setAlarmSchedule()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 29
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lc8/Ghn;->alarmManager:Landroid/app/AlarmManager;

    .line 31
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 32
    .local v7, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "com.youku.service.push.action.PRE_CACHE_ACTION"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lc8/Ghn;->pendingIntent:Landroid/app/PendingIntent;

    .line 34
    const/4 v0, 0x7

    const/16 v4, 0x1e

    invoke-static {v0, v4, v1}, Lc8/Ghn;->getCalendarLong(III)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 35
    .local v2, "alarmtime":J
    invoke-static {v2, v3}, Lc8/Ghn;->isValidPush(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    sget-object v0, Lc8/Ghn;->alarmManager:Landroid/app/AlarmManager;

    const-wide/32 v4, 0x5265c00

    sget-object v6, Lc8/Ghn;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static stampToDate(Ljava/lang/Long;)Ljava/lang/String;
    .locals 6
    .param p0, "l"    # Ljava/lang/Long;

    .prologue
    .line 105
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 106
    .local v2, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 107
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "res":Ljava/lang/String;
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lc8/Ghn;->alarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Ghn;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lc8/Ghn;->alarmManager:Landroid/app/AlarmManager;

    sget-object v1, Lc8/Ghn;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 51
    :cond_0
    return-void
.end method
