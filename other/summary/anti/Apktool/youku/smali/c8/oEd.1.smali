.class public final Lc8/oEd;
.super Landroid/content/BroadcastReceiver;
.source "APS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/pEd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lc8/pEd;


# direct methods
.method constructor <init>(Lc8/pEd;)V
    .locals 0

    iput-object p1, p0, Lc8/oEd;->a:Lc8/pEd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lc8/oEd;->a:Lc8/pEd;

    iget-object v0, v0, Lc8/pEd;->c:Lc8/LEd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/oEd;->a:Lc8/pEd;

    iget-object v0, v0, Lc8/pEd;->c:Lc8/LEd;

    invoke-virtual {v0}, Lc8/LEd;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "onReceive"

    invoke-static {v0, v1, v2}, Lc8/cFd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lc8/oEd;->a:Lc8/pEd;

    iget-object v0, v0, Lc8/pEd;->c:Lc8/LEd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/oEd;->a:Lc8/pEd;

    iget-object v0, v0, Lc8/pEd;->c:Lc8/LEd;

    invoke-virtual {v0}, Lc8/LEd;->e()V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lc8/oEd;->a:Lc8/pEd;

    iget-object v0, v0, Lc8/pEd;->f:Lc8/JEd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/oEd;->a:Lc8/pEd;

    iget-object v0, v0, Lc8/pEd;->f:Lc8/JEd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/JEd;->a(Z)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lc8/oEd;->a:Lc8/pEd;

    iget-object v0, v0, Lc8/pEd;->f:Lc8/JEd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/oEd;->a:Lc8/pEd;

    iget-object v0, v0, Lc8/pEd;->f:Lc8/JEd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/JEd;->a(Z)V

    iget-object v0, p0, Lc8/oEd;->a:Lc8/pEd;

    iget-object v0, v0, Lc8/pEd;->f:Lc8/JEd;

    invoke-virtual {v0}, Lc8/JEd;->c()V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/oEd;->a:Lc8/pEd;

    iget-object v0, v0, Lc8/pEd;->f:Lc8/JEd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/oEd;->a:Lc8/pEd;

    iget-object v0, v0, Lc8/pEd;->f:Lc8/JEd;

    invoke-virtual {v0}, Lc8/JEd;->d()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
