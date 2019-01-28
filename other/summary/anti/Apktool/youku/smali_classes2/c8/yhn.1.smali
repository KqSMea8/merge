.class public Lc8/yhn;
.super Ljava/lang/Object;
.source "PushCollectApi.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "YKPush.PushCollectApi"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCollectApiState(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-static {}, Lc8/Gin;->getInstance()Lc8/Gin;

    move-result-object v2

    const-string/jumbo v3, "first_install"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lc8/Gin;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 70
    invoke-static {}, Lc8/Gin;->getInstance()Lc8/Gin;

    move-result-object v2

    const-string/jumbo v3, "first_install"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/Gin;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 71
    invoke-static {}, Lc8/Gin;->getInstance()Lc8/Gin;

    move-result-object v2

    const-string/jumbo v3, "video_notifi_temp"

    invoke-static {p0}, Lc8/rZm;->getPushSwitch(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/Gin;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 72
    invoke-static {p0}, Lc8/yhn;->open(Landroid/content/Context;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-static {p0}, Lc8/rZm;->getPushSwitch(Landroid/content/Context;)Z

    move-result v0

    .line 77
    .local v0, "pushSwitch":Z
    invoke-static {}, Lc8/Gin;->getInstance()Lc8/Gin;

    move-result-object v2

    const-string/jumbo v3, "video_notifi_temp"

    .line 78
    invoke-static {p0}, Lc8/rZm;->getPushSwitch(Landroid/content/Context;)Z

    move-result v4

    .line 77
    invoke-virtual {v2, v3, v4}, Lc8/Gin;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 79
    .local v1, "tempPushSwitch":Z
    if-eq v0, v1, :cond_0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    invoke-static {p0}, Lc8/yhn;->open(Landroid/content/Context;)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-static {p0}, Lc8/yhn;->close(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static close(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const-string/jumbo v0, "DISABLED"

    invoke-static {p0, v0}, Lc8/yhn;->pushChangeCollect(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private static collect(I)V
    .locals 1
    .param p0, "actionType"    # I

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc8/yhn;->collect(ILjava/lang/String;)V

    .line 103
    return-void
.end method

.method private static collect(ILjava/lang/String;)V
    .locals 3
    .param p0, "actionType"    # I
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v1, Lc8/bJj;

    invoke-direct {v1}, Lc8/bJj;-><init>()V

    .line 108
    invoke-static {p0, p1}, Lc8/Uhn;->getPushCollectionURL(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/bJj;->url(Ljava/lang/String;)Lc8/bJj;

    move-result-object v1

    const-string/jumbo v2, "POST"

    .line 109
    invoke-virtual {v1, v2}, Lc8/bJj;->method(Ljava/lang/String;)Lc8/bJj;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lc8/bJj;->build()Lc8/cJj;

    move-result-object v0

    .line 111
    .local v0, "ykNetwork":Lc8/cJj;
    new-instance v1, Lc8/xhn;

    invoke-direct {v1}, Lc8/xhn;-><init>()V

    invoke-virtual {v0, v1}, Lc8/cJj;->asyncCall(Lc8/OIj;)V

    .line 117
    return-void
.end method

.method public static onLoginCollect()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x2

    invoke-static {v0}, Lc8/yhn;->collect(I)V

    .line 95
    return-void
.end method

.method public static onLogoutCollect()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x3

    invoke-static {v0}, Lc8/yhn;->collect(I)V

    .line 99
    return-void
.end method

.method public static onStartCollect()V
    .locals 2

    .prologue
    .line 90
    const/4 v1, 0x1

    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lc8/yhn;->collect(ILjava/lang/String;)V

    .line 91
    return-void

    .line 90
    :cond_0
    const-string/jumbo v0, "HIDDEN"

    goto :goto_0
.end method

.method public static open(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const-string/jumbo v0, "ENABLED"

    invoke-static {p0, v0}, Lc8/yhn;->pushChangeCollect(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method private static pushChangeCollect(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v1, Lc8/bJj;

    invoke-direct {v1}, Lc8/bJj;-><init>()V

    const/4 v2, 0x4

    .line 36
    invoke-static {v2, p1}, Lc8/Uhn;->getPushCollectionURL(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/bJj;->url(Ljava/lang/String;)Lc8/bJj;

    move-result-object v1

    const-string/jumbo v2, "POST"

    .line 37
    invoke-virtual {v1, v2}, Lc8/bJj;->method(Ljava/lang/String;)Lc8/bJj;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lc8/bJj;->build()Lc8/cJj;

    move-result-object v0

    .line 39
    .local v0, "ykNetwork":Lc8/cJj;
    new-instance v1, Lc8/whn;

    invoke-direct {v1, p1, p0}, Lc8/whn;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lc8/cJj;->asyncCall(Lc8/OIj;)V

    .line 60
    return-void
.end method
