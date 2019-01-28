.class public Lc8/Vrf;
.super Landroid/content/BroadcastReceiver;
.source "OnLineMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/msf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/msf;


# direct methods
.method constructor <init>(Lc8/msf;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 702
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    iput-wide v2, v1, Lc8/msf;->mCheckAnrTime:J

    .line 704
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 705
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    const-string/jumbo v2, "level"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lc8/msf;->mBatteryPercent:I

    .line 706
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    const-string/jumbo v2, "voltage"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lc8/msf;->mBatteryV:I

    .line 707
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    const-string/jumbo v2, "temperature"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, v1, Lc8/msf;->mBatteryTemp:D

    .line 708
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    const-string/jumbo v2, "status"

    invoke-virtual {p2, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lc8/msf;->mBatteryStatus:I

    .line 709
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    const-string/jumbo v2, "health"

    invoke-virtual {p2, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lc8/msf;->mBatteryHealth:I

    .line 710
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget v1, v1, Lc8/msf;->mInitBatteryPercent:I

    if-gez v1, :cond_0

    .line 711
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget-object v2, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget v2, v2, Lc8/msf;->mBatteryPercent:I

    iput v2, v1, Lc8/msf;->mInitBatteryPercent:I

    .line 716
    :cond_0
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget v1, v1, Lc8/msf;->mBatteryStatus:I

    if-eq v1, v8, :cond_1

    .line 718
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget v1, v1, Lc8/msf;->mBatteryPercent:I

    const/16 v2, 0xf

    if-gt v1, v2, :cond_1

    .line 719
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget-boolean v1, v1, Lc8/msf;->mBatteryLowStat:Z

    if-nez v1, :cond_5

    .line 720
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iput-boolean v7, v1, Lc8/msf;->mBatteryLowStat:Z

    .line 721
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    const-string/jumbo v2, "\u7535\u6c60\u7535\u91cf\u4f4e!"

    invoke-virtual {v1, v2}, Lc8/msf;->showMessage(Ljava/lang/String;)V

    .line 722
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lc8/msf;->notifyOnlineRuntimeStat(I)V

    .line 728
    :cond_1
    :goto_0
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v1, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->batteryInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$BatteryInfo;

    iget v1, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$BatteryInfo;->batteryStatus:I

    iget-object v2, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget v2, v2, Lc8/msf;->mBatteryStatus:I

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget v1, v1, Lc8/msf;->mBatteryStatus:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 731
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget v1, v1, Lc8/msf;->mBatteryStatus:I

    if-ne v1, v8, :cond_6

    .line 732
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    const-string/jumbo v2, "\u7535\u6c60\u5145\u7535\u4e2d!"

    invoke-virtual {v1, v2}, Lc8/msf;->showMessage(Ljava/lang/String;)V

    .line 737
    :goto_1
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Lc8/msf;->notifyOnlineRuntimeStat(I)V

    .line 739
    :cond_2
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v1, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->batteryInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$BatteryInfo;

    iget v1, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$BatteryInfo;->batteryHealth:I

    iget-object v2, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget v2, v2, Lc8/msf;->mBatteryHealth:I

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget v1, v1, Lc8/msf;->mBatteryHealth:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 742
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    const-string/jumbo v2, "\u7535\u6c60\u8fc7\u70ed!"

    invoke-virtual {v1, v2}, Lc8/msf;->showMessage(Ljava/lang/String;)V

    .line 743
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Lc8/msf;->notifyOnlineRuntimeStat(I)V

    .line 745
    :cond_3
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v1, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->batteryInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$BatteryInfo;

    iget-object v2, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget v2, v2, Lc8/msf;->mBatteryPercent:I

    iput v2, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$BatteryInfo;->batteryPercent:I

    .line 746
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v1, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->batteryInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$BatteryInfo;

    iget-object v2, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget v2, v2, Lc8/msf;->mBatteryStatus:I

    iput v2, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$BatteryInfo;->batteryStatus:I

    .line 747
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v1, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->batteryInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$BatteryInfo;

    iget-object v2, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget v2, v2, Lc8/msf;->mBatteryV:I

    iput v2, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$BatteryInfo;->batteryV:I

    .line 748
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v1, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->batteryInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$BatteryInfo;

    iget-object v2, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget v2, v2, Lc8/msf;->mBatteryHealth:I

    iput v2, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$BatteryInfo;->batteryHealth:I

    .line 749
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v1, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->batteryInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$BatteryInfo;

    iget-object v2, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iget-wide v2, v2, Lc8/msf;->mBatteryTemp:D

    iput-wide v2, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$BatteryInfo;->batteryTemp:D

    .line 751
    :cond_4
    return-void

    .line 724
    :cond_5
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    iput-boolean v6, v1, Lc8/msf;->mBatteryLowStat:Z

    goto/16 :goto_0

    .line 734
    :cond_6
    iget-object v1, p0, Lc8/Vrf;->this$0:Lc8/msf;

    const-string/jumbo v2, "\u7535\u6c60\u672a\u5145\u7535!"

    invoke-virtual {v1, v2}, Lc8/msf;->showMessage(Ljava/lang/String;)V

    goto :goto_1
.end method
