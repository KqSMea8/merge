.class public final Lc8/Oib;
.super Landroid/content/BroadcastReceiver;
.source "LoginStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Pib;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    if-eqz p2, :cond_0

    invoke-static {}, Lc8/Shb;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "currentProcess"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-static {}, Lc8/Pib;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const-string/jumbo v1, "isLogining"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 56
    :cond_0
    return-void
.end method
