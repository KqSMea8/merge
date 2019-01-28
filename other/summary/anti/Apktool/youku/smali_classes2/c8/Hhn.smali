.class public Lc8/Hhn;
.super Landroid/content/BroadcastReceiver;
.source "PreCacheBatteryReciver.java"


# static fields
.field public static batteryLevel:I

.field private static batteryReciver:Lc8/Hhn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput v0, Lc8/Hhn;->batteryLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lc8/Hhn;

    invoke-direct {v1}, Lc8/Hhn;-><init>()V

    sput-object v1, Lc8/Hhn;->batteryReciver:Lc8/Hhn;

    .line 51
    sget-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    sget-object v2, Lc8/Hhn;->batteryReciver:Lc8/Hhn;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    return-void
.end method

.method public static unregister()V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lc8/Hhn;->batteryReciver:Lc8/Hhn;

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    sget-object v1, Lc8/Hhn;->batteryReciver:Lc8/Hhn;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 20
    const-string/jumbo v5, "level"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 21
    .local v2, "rawlevel":I
    const-string/jumbo v5, "scale"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 22
    .local v3, "scale":I
    const-string/jumbo v5, "status"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 23
    .local v4, "status":I
    const-string/jumbo v5, "health"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 24
    .local v0, "health":I
    const/4 v1, -0x1

    .line 25
    .local v1, "level":I
    if-ltz v2, :cond_0

    if-lez v3, :cond_0

    .line 26
    mul-int/lit8 v5, v2, 0x64

    div-int v1, v5, v3

    .line 28
    :cond_0
    const/4 v5, 0x3

    if-ne v5, v0, :cond_1

    .line 29
    sput v1, Lc8/Hhn;->batteryLevel:I

    .line 44
    :goto_0
    return-void

    .line 31
    :cond_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 38
    :pswitch_0
    sput v1, Lc8/Hhn;->batteryLevel:I

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
