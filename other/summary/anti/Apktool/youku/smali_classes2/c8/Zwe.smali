.class public Lc8/Zwe;
.super Ljava/lang/Object;
.source "AppInvokeCmdExecutor.java"

# interfaces
.implements Lc8/bxe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ywe;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/bxe",
        "<",
        "Lc8/Xwe;",
        ">;"
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0x2

.field private static final SHOW_NOTICIATION:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lc8/Ywe;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/Zwe;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lc8/Ywe;

    iget-object v1, p0, Lc8/Zwe;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc8/Ywe;-><init>(Lc8/Zwe;Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/Zwe;->mHandler:Lc8/Ywe;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lc8/Zwe;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/Zwe;

    .prologue
    .line 23
    iget-object v0, p0, Lc8/Zwe;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Lc8/Xwe;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lc8/Xwe;

    .prologue
    .line 23
    invoke-static {p0, p1}, Lc8/Zwe;->showNotification(Landroid/content/Context;Lc8/Xwe;)V

    return-void
.end method

.method private static buildInvokePendingIntent(Landroid/content/Context;Lc8/Xwe;)Landroid/app/PendingIntent;
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cmd"    # Lc8/Xwe;

    .prologue
    .line 79
    invoke-virtual {p1}, Lc8/Xwe;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "scheme":Ljava/lang/String;
    invoke-virtual {p1}, Lc8/Xwe;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 81
    .local v7, "url":Ljava/lang/String;
    invoke-virtual {p1}, Lc8/Xwe;->getAppPackage()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 84
    .local v3, "invokeIntent":Landroid/content/Intent;
    invoke-static {v6, v4}, Lc8/Zwe;->buildOpenSchemeIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 85
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 87
    .local v5, "pkg":Landroid/content/pm/PackageManager;
    const/high16 v8, 0x10000

    invoke-virtual {v5, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 90
    move-object v3, v2

    .line 94
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "pkg":Landroid/content/pm/PackageManager;
    :cond_0
    if-nez v3, :cond_1

    .line 95
    invoke-static {v7}, Lc8/Zwe;->buildOpenUrlIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 98
    :cond_1
    if-eqz v3, :cond_2

    .line 99
    const/high16 v8, 0x10000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    invoke-static {p0, v8, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 104
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static buildOpenSchemeIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 110
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 113
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static buildOpenUrlIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-object v0

    .line 123
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 124
    .local v2, "urlUri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "urlScheme":Ljava/lang/String;
    const-string/jumbo v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "https"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static showNotification(Landroid/content/Context;Lc8/Xwe;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cmd"    # Lc8/Xwe;

    .prologue
    .line 71
    invoke-static {}, Lc8/wye;->buildUpon()Lc8/wye;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lc8/Xwe;->getNotificationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/wye;->setNotificationContent(Ljava/lang/String;)Lc8/wye;

    move-result-object v0

    .line 73
    invoke-static {p0, p1}, Lc8/Zwe;->buildInvokePendingIntent(Landroid/content/Context;Lc8/Xwe;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/wye;->setNotificationPendingIntent(Landroid/app/PendingIntent;)Lc8/wye;

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Lc8/Xwe;->getNotificationTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/wye;->setNotificationTitle(Ljava/lang/String;)Lc8/wye;

    move-result-object v0

    invoke-virtual {p1}, Lc8/Xwe;->getNotificationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/wye;->setTickerText(Ljava/lang/String;)Lc8/wye;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p0}, Lc8/wye;->build(Landroid/content/Context;)Lc8/xye;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lc8/xye;->show(I)V

    .line 76
    return-void
.end method


# virtual methods
.method public doExecutor(Lc8/Xwe;)Z
    .locals 6
    .param p1, "cmd"    # Lc8/Xwe;

    .prologue
    const/4 v1, 0x1

    .line 58
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc8/Xwe;->getNotificationText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    invoke-virtual {p1}, Lc8/Xwe;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    :cond_0
    const/4 v1, 0x0

    .line 66
    :goto_0
    return v1

    .line 62
    :cond_1
    iget-object v2, p0, Lc8/Zwe;->mHandler:Lc8/Ywe;

    invoke-virtual {v2}, Lc8/Ywe;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 63
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 64
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    iget-object v2, p0, Lc8/Zwe;->mHandler:Lc8/Ywe;

    invoke-virtual {p1}, Lc8/Xwe;->getNotificationDelay()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lc8/Ywe;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public bridge synthetic doExecutor(Lc8/axe;)Z
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lc8/Xwe;

    invoke-virtual {p0, p1}, Lc8/Zwe;->doExecutor(Lc8/Xwe;)Z

    move-result v0

    return v0
.end method
