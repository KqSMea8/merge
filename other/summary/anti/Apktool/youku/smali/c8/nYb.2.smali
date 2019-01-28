.class public Lc8/nYb;
.super Landroid/content/BroadcastReceiver;
.source "InternalTriggerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oYb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/oYb;


# direct methods
.method public constructor <init>(Lc8/oYb;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lc8/nYb;->this$0:Lc8/oYb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 219
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 224
    :try_start_0
    const-string/jumbo v4, "event"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "uri":Ljava/lang/String;
    const-string/jumbo v4, "param"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "param":Ljava/lang/String;
    const-string/jumbo v4, "extra_params"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "extraParam":Ljava/lang/String;
    const-string/jumbo v4, "InternalBroadcastReceiver.onReceive?uri=%s&param=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    .end local v1    # "extraParam":Ljava/lang/String;
    .end local v2    # "param":Ljava/lang/String;
    .end local v3    # "uri":Ljava/lang/String;
    :goto_0
    return-void

    .line 231
    .restart local v1    # "extraParam":Ljava/lang/String;
    .restart local v2    # "param":Ljava/lang/String;
    .restart local v3    # "uri":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lc8/nYb;->this$0:Lc8/oYb;

    invoke-virtual {v4}, Lc8/oYb;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 232
    const-string/jumbo v4, "InternalBroadcastReceiver.onReceive curActivity is empty."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    .end local v1    # "extraParam":Ljava/lang/String;
    .end local v2    # "param":Ljava/lang/String;
    .end local v3    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "InternalBroadcastReceiver.onReceive.fail"

    invoke-static {v4, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 235
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "extraParam":Ljava/lang/String;
    .restart local v2    # "param":Ljava/lang/String;
    .restart local v3    # "uri":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string/jumbo v4, "poplayerapp://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 236
    invoke-static {}, Lc8/uYb;->instance()Lc8/uYb;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lc8/uYb;->activeAccept(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_2
    const-string/jumbo v4, "poplayer://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 238
    invoke-static {}, Lc8/zYb;->instance()Lc8/zYb;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lc8/zYb;->activeAccept(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_3
    const-string/jumbo v4, "poplayerview://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 240
    invoke-static {}, Lc8/UYb;->instance()Lc8/UYb;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lc8/UYb;->activeAccept(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "clean"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 245
    invoke-static {}, Lc8/uYb;->instance()Lc8/uYb;

    move-result-object v4

    iget-object v5, p0, Lc8/nYb;->this$0:Lc8/oYb;

    invoke-virtual {v5}, Lc8/oYb;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lc8/nYb;->this$0:Lc8/oYb;

    invoke-virtual {v6}, Lc8/oYb;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lc8/oYb;->getActivityKeyCode(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lc8/uYb;->pageClean(Landroid/app/Activity;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lc8/zYb;->instance()Lc8/zYb;

    move-result-object v4

    iget-object v5, p0, Lc8/nYb;->this$0:Lc8/oYb;

    invoke-virtual {v5}, Lc8/oYb;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lc8/nYb;->this$0:Lc8/oYb;

    invoke-virtual {v6}, Lc8/oYb;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lc8/oYb;->getActivityKeyCode(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lc8/zYb;->pageClean(Landroid/app/Activity;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lc8/UYb;->instance()Lc8/UYb;

    move-result-object v4

    iget-object v5, p0, Lc8/nYb;->this$0:Lc8/oYb;

    invoke-virtual {v5}, Lc8/oYb;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lc8/nYb;->this$0:Lc8/oYb;

    invoke-virtual {v6}, Lc8/oYb;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lc8/oYb;->getActivityKeyCode(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lc8/UYb;->pageClean(Landroid/app/Activity;Ljava/lang/String;)V

    .line 250
    :cond_5
    invoke-static {}, Lc8/uYb;->instance()Lc8/uYb;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lc8/uYb;->activeAccept(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lc8/zYb;->instance()Lc8/zYb;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lc8/zYb;->activeAccept(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lc8/UYb;->instance()Lc8/UYb;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lc8/UYb;->activeAccept(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
