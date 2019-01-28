.class public Lcom/taobao/orange/receiver/OrangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OrangeReceiver.java"


# static fields
.field private static final CONNECTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    if-nez p2, :cond_1

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    new-instance v1, Lc8/Jtf;

    invoke-direct {v1, p0}, Lc8/Jtf;-><init>(Lcom/taobao/orange/receiver/OrangeReceiver;)V

    invoke-static {v1}, Lc8/btf;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
