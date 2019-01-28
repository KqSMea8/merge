.class public Lc8/qzk;
.super Landroid/content/BroadcastReceiver;
.source "PhenixUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/phenix/PhenixUtil;->registerWIFIListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/phenix/PhenixUtil;


# direct methods
.method public constructor <init>(Lcom/youku/phone/phenix/PhenixUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/phone/phenix/PhenixUtil;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lc8/qzk;->this$0:Lcom/youku/phone/phenix/PhenixUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    const-string/jumbo v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 81
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lc8/qzk;->this$0:Lcom/youku/phone/phenix/PhenixUtil;

    invoke-static {v2, v5}, Lcom/youku/phone/phenix/PhenixUtil;->access$202(Lcom/youku/phone/phenix/PhenixUtil;Z)Z

    .line 84
    sget-object v2, Lcom/youku/phone/phenix/PhenixUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "wifi\u7f51\u7edc\u8fde\u63a5\u65ad\u5f00"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    iget-object v2, p0, Lc8/qzk;->this$0:Lcom/youku/phone/phenix/PhenixUtil;

    invoke-static {v2, v6}, Lcom/youku/phone/phenix/PhenixUtil;->access$202(Lcom/youku/phone/phenix/PhenixUtil;Z)Z

    .line 90
    sget-object v2, Lcom/youku/phone/phenix/PhenixUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u8fde\u63a5\u5230wifi\u7f51\u7edc"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    return-void

    .line 92
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    const-string/jumbo v2, "wifi_state"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 95
    .local v1, "wifiState":I
    if-ne v1, v6, :cond_3

    .line 96
    iget-object v2, p0, Lc8/qzk;->this$0:Lcom/youku/phone/phenix/PhenixUtil;

    invoke-static {v2, v5}, Lcom/youku/phone/phenix/PhenixUtil;->access$202(Lcom/youku/phone/phenix/PhenixUtil;Z)Z

    .line 98
    sget-object v2, Lcom/youku/phone/phenix/PhenixUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u7cfb\u7edf\u5173\u95edwifi"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 102
    iget-object v2, p0, Lc8/qzk;->this$0:Lcom/youku/phone/phenix/PhenixUtil;

    invoke-static {v2, v6}, Lcom/youku/phone/phenix/PhenixUtil;->access$202(Lcom/youku/phone/phenix/PhenixUtil;Z)Z

    .line 104
    sget-object v2, Lcom/youku/phone/phenix/PhenixUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u7cfb\u7edf\u5f00\u542fwifi"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
