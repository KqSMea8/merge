.class public Lc8/Saf;
.super Landroid/content/BroadcastReceiver;
.source "DCountDownTimerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Taf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Taf;


# direct methods
.method constructor <init>(Lc8/Taf;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lc8/Saf;->this$0:Lc8/Taf;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 241
    iget-object v1, p0, Lc8/Saf;->this$0:Lc8/Taf;

    invoke-static {v1}, Lc8/Taf;->access$100(Lc8/Taf;)Lc8/Waf;

    move-result-object v1

    if-nez v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    iget-object v1, p0, Lc8/Saf;->this$0:Lc8/Taf;

    invoke-static {v1}, Lc8/Taf;->access$100(Lc8/Taf;)Lc8/Waf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Waf;->stop()V

    goto :goto_0

    .line 247
    :cond_2
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lc8/Saf;->this$0:Lc8/Taf;

    invoke-virtual {v1}, Lc8/Taf;->isShown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    iget-object v1, p0, Lc8/Saf;->this$0:Lc8/Taf;

    invoke-static {v1}, Lc8/Taf;->access$100(Lc8/Taf;)Lc8/Waf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Waf;->start()V

    goto :goto_0

    .line 251
    :cond_3
    iget-object v1, p0, Lc8/Saf;->this$0:Lc8/Taf;

    invoke-static {v1}, Lc8/Taf;->access$100(Lc8/Taf;)Lc8/Waf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Waf;->stop()V

    goto :goto_0
.end method
