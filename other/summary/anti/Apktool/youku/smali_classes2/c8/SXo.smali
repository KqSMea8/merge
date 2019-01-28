.class public final Lc8/SXo;
.super Landroid/content/BroadcastReceiver;
.source "YoukuUserSystemModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/TXo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LogoutBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/TXo;


# direct methods
.method private constructor <init>(Lc8/TXo;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lc8/SXo;->this$0:Lc8/TXo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/TXo;Lc8/RXo;)V
    .locals 0
    .param p1, "x0"    # Lc8/TXo;
    .param p2, "x1"    # Lc8/RXo;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lc8/SXo;-><init>(Lc8/TXo;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    if-nez p2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.youku.action.LOGIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    iget-object v1, p0, Lc8/SXo;->this$0:Lc8/TXo;

    invoke-virtual {v1}, Lc8/TXo;->onLoginEvent()V

    goto :goto_0

    .line 101
    :cond_2
    const-string/jumbo v1, "com.youku.action.LOGOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lc8/SXo;->this$0:Lc8/TXo;

    invoke-virtual {v1}, Lc8/TXo;->onLogoutEvent()V

    goto :goto_0
.end method
