.class public Lc8/Ein;
.super Landroid/os/Handler;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/service/update/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/service/update/UpdateService;


# direct methods
.method public constructor <init>(Lcom/youku/service/update/UpdateService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/service/update/UpdateService;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 83
    iput-object p1, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/16 v13, 0x64

    const/4 v6, 0x0

    .line 86
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v7, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    iget-object v8, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v7, v8}, Lcom/youku/service/update/UpdateService;->access$002(Lcom/youku/service/update/UpdateService;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 89
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 90
    .local v4, "msge":Landroid/os/Message;
    const/4 v7, 0x5

    iput v7, v4, Landroid/os/Message;->what:I

    .line 91
    iget-object v7, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v7}, Lcom/youku/service/update/UpdateService;->access$100(Lcom/youku/service/update/UpdateService;)Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_1
    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 92
    invoke-static {}, Lcom/youku/service/update/UpdateService;->access$200()Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "service is downing send to client"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    :try_start_0
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v5}, Lcom/youku/service/update/UpdateService;->access$000(Lcom/youku/service/update/UpdateService;)Landroid/os/Messenger;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_2
    invoke-static {}, Lcom/youku/service/update/UpdateService;->access$200()Ljava/lang/String;

    goto :goto_0

    :cond_0
    move v5, v6

    .line 91
    goto :goto_1

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "msge":Landroid/os/Message;
    :pswitch_1
    invoke-static {}, Lcom/youku/service/update/UpdateService;->access$200()Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v7, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    const-string/jumbo v8, "apk_url"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/youku/service/update/UpdateService;->access$302(Lcom/youku/service/update/UpdateService;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    iget-object v7, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    const-string/jumbo v8, "apk_version"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/youku/service/update/UpdateService;->access$402(Lcom/youku/service/update/UpdateService;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    iget-object v7, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    const-string/jumbo v8, "apk_content"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/youku/service/update/UpdateService;->access$502(Lcom/youku/service/update/UpdateService;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    iget-object v7, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    const-string/jumbo v8, "apk_type"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/youku/service/update/UpdateService;->access$602(Lcom/youku/service/update/UpdateService;I)I

    .line 107
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    const-class v8, Lcom/youku/ui/activity/UpdateActivity;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v2, "i":Landroid/content/Intent;
    const-string/jumbo v7, "updateurl"

    iget-object v8, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v8}, Lcom/youku/service/update/UpdateService;->access$300(Lcom/youku/service/update/UpdateService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string/jumbo v7, "updateversion"

    iget-object v8, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v8}, Lcom/youku/service/update/UpdateService;->access$400(Lcom/youku/service/update/UpdateService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string/jumbo v7, "updatecontent"

    iget-object v8, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v8}, Lcom/youku/service/update/UpdateService;->access$500(Lcom/youku/service/update/UpdateService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string/jumbo v7, "updateType"

    iget-object v8, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v8}, Lcom/youku/service/update/UpdateService;->access$600(Lcom/youku/service/update/UpdateService;)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    iget-object v7, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    iget-object v8, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v8}, Lcom/youku/service/update/UpdateService;->access$800(Lcom/youku/service/update/UpdateService;)Lc8/yin;

    move-result-object v8

    iget-object v9, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-virtual {v9}, Lcom/youku/service/update/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v10}, Lcom/youku/service/update/UpdateService;->access$700(Lcom/youku/service/update/UpdateService;)I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\u6b63\u5728\u4e0b\u8f7d\u65b0\u7248\u672c\uff1av"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v12}, Lcom/youku/service/update/UpdateService;->access$400(Lcom/youku/service/update/UpdateService;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11, v2}, Lc8/yin;->generateNotification(Landroid/content/Context;ILjava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v8

    iput-object v8, v7, Lcom/youku/service/update/UpdateService;->notification:Landroid/app/Notification;

    .line 113
    iget-object v7, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    iget-object v7, v7, Lcom/youku/service/update/UpdateService;->notification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v8, Lcom/youku/phone/R$id;->update_progress_bar:I

    iget-object v9, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v9}, Lcom/youku/service/update/UpdateService;->access$700(Lcom/youku/service/update/UpdateService;)I

    move-result v9

    invoke-virtual {v7, v8, v13, v9, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 114
    iget-object v7, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    iget-object v7, v7, Lcom/youku/service/update/UpdateService;->notification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v8, Lcom/youku/phone/R$id;->update_progress_text:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v10}, Lcom/youku/service/update/UpdateService;->access$700(Lcom/youku/service/update/UpdateService;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 115
    iget-object v7, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v7}, Lcom/youku/service/update/UpdateService;->access$900(Lcom/youku/service/update/UpdateService;)Landroid/app/NotificationManager;

    move-result-object v7

    iget-object v8, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v8}, Lcom/youku/service/update/UpdateService;->access$300(Lcom/youku/service/update/UpdateService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    iget-object v9, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    iget-object v9, v9, Lcom/youku/service/update/UpdateService;->notification:Landroid/app/Notification;

    invoke-virtual {v7, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 117
    iget-object v7, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v7}, Lcom/youku/service/update/UpdateService;->access$1000(Lcom/youku/service/update/UpdateService;)Lc8/Fin;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 118
    invoke-static {}, Lcom/youku/service/update/UpdateService;->access$200()Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "service handler down thread is alive "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v8}, Lcom/youku/service/update/UpdateService;->access$1000(Lcom/youku/service/update/UpdateService;)Lc8/Fin;

    move-result-object v8

    invoke-virtual {v8}, Lc8/Fin;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_3

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    :goto_4
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v5}, Lcom/youku/service/update/UpdateService;->access$1000(Lcom/youku/service/update/UpdateService;)Lc8/Fin;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v5}, Lcom/youku/service/update/UpdateService;->access$1000(Lcom/youku/service/update/UpdateService;)Lc8/Fin;

    move-result-object v5

    invoke-virtual {v5}, Lc8/Fin;->isAlive()Z

    move-result v5

    if-nez v5, :cond_2

    .line 124
    :cond_1
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    new-instance v6, Lc8/Fin;

    iget-object v7, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    iget-object v8, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v8}, Lcom/youku/service/update/UpdateService;->access$300(Lcom/youku/service/update/UpdateService;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lc8/Fin;-><init>(Lcom/youku/service/update/UpdateService;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/youku/service/update/UpdateService;->access$1002(Lcom/youku/service/update/UpdateService;Lc8/Fin;)Lc8/Fin;

    .line 125
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v5}, Lcom/youku/service/update/UpdateService;->access$1000(Lcom/youku/service/update/UpdateService;)Lc8/Fin;

    move-result-object v5

    invoke-virtual {v5}, Lc8/Fin;->start()V

    .line 126
    invoke-static {}, Lcom/youku/service/update/UpdateService;->access$200()Ljava/lang/String;

    .line 129
    :cond_2
    invoke-static {}, Lcom/youku/service/update/UpdateService;->access$200()Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    move v5, v6

    .line 118
    goto :goto_3

    .line 120
    :cond_4
    invoke-static {}, Lcom/youku/service/update/UpdateService;->access$200()Ljava/lang/String;

    goto :goto_4

    .line 133
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "i":Landroid/content/Intent;
    :pswitch_2
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_1
    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 134
    .local v3, "message":Landroid/os/Message;
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v5}, Lcom/youku/service/update/UpdateService;->access$700(Lcom/youku/service/update/UpdateService;)I

    move-result v5

    iput v5, v3, Landroid/os/Message;->arg1:I

    .line 135
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    iget-object v5, v5, Lcom/youku/service/update/UpdateService;->notification:Landroid/app/Notification;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v5}, Lcom/youku/service/update/UpdateService;->access$900(Lcom/youku/service/update/UpdateService;)Landroid/app/NotificationManager;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 136
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    iget-object v5, v5, Lcom/youku/service/update/UpdateService;->notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v6, Lcom/youku/phone/R$id;->update_progress_bar:I

    const/16 v7, 0x64

    iget-object v8, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v8}, Lcom/youku/service/update/UpdateService;->access$700(Lcom/youku/service/update/UpdateService;)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 137
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    iget-object v5, v5, Lcom/youku/service/update/UpdateService;->notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v6, Lcom/youku/phone/R$id;->update_progress_text:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v8}, Lcom/youku/service/update/UpdateService;->access$700(Lcom/youku/service/update/UpdateService;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 138
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v5}, Lcom/youku/service/update/UpdateService;->access$900(Lcom/youku/service/update/UpdateService;)Landroid/app/NotificationManager;

    move-result-object v5

    iget-object v6, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v6}, Lcom/youku/service/update/UpdateService;->access$300(Lcom/youku/service/update/UpdateService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    iget-object v7, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    iget-object v7, v7, Lcom/youku/service/update/UpdateService;->notification:Landroid/app/Notification;

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 139
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v5}, Lcom/youku/service/update/UpdateService;->access$700(Lcom/youku/service/update/UpdateService;)I

    move-result v5

    if-ne v13, v5, :cond_5

    .line 140
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    iget-object v5, v5, Lcom/youku/service/update/UpdateService;->notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v6, Lcom/youku/phone/R$id;->update_title:I

    const-string/jumbo v7, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 141
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v5}, Lcom/youku/service/update/UpdateService;->access$900(Lcom/youku/service/update/UpdateService;)Landroid/app/NotificationManager;

    move-result-object v5

    iget-object v6, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v6}, Lcom/youku/service/update/UpdateService;->access$300(Lcom/youku/service/update/UpdateService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 144
    :cond_5
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v5}, Lcom/youku/service/update/UpdateService;->access$000(Lcom/youku/service/update/UpdateService;)Landroid/os/Messenger;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 145
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v5}, Lcom/youku/service/update/UpdateService;->access$000(Lcom/youku/service/update/UpdateService;)Landroid/os/Messenger;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    .end local v3    # "message":Landroid/os/Message;
    :cond_6
    :goto_5
    invoke-static {}, Lcom/youku/service/update/UpdateService;->access$200()Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "service hander update "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v6}, Lcom/youku/service/update/UpdateService;->access$700(Lcom/youku/service/update/UpdateService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 147
    :catch_1
    move-exception v1

    .line 148
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 153
    .end local v1    # "e":Landroid/os/RemoteException;
    :pswitch_3
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v5, v8}, Lcom/youku/service/update/UpdateService;->access$1002(Lcom/youku/service/update/UpdateService;Lc8/Fin;)Lc8/Fin;

    .line 154
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v5, v13}, Lcom/youku/service/update/UpdateService;->access$702(Lcom/youku/service/update/UpdateService;I)I

    .line 155
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v5, v6}, Lcom/youku/service/update/UpdateService;->access$1102(Lcom/youku/service/update/UpdateService;Z)Z

    .line 157
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/youku/service/update/UpdateService;->access$1200(Lcom/youku/service/update/UpdateService;I)V

    .line 158
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v5}, Lcom/youku/service/update/UpdateService;->access$1300(Lcom/youku/service/update/UpdateService;)V

    .line 160
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-virtual {v5}, Lcom/youku/service/update/UpdateService;->stopSelf()V

    .line 161
    invoke-static {}, Lcom/youku/service/update/UpdateService;->access$200()Ljava/lang/String;

    goto/16 :goto_0

    .line 164
    :pswitch_4
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v5, v6}, Lcom/youku/service/update/UpdateService;->access$1102(Lcom/youku/service/update/UpdateService;Z)Z

    .line 165
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    iget-object v5, v5, Lcom/youku/service/update/UpdateService;->notification:Landroid/app/Notification;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v5}, Lcom/youku/service/update/UpdateService;->access$900(Lcom/youku/service/update/UpdateService;)Landroid/app/NotificationManager;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 166
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    iget-object v5, v5, Lcom/youku/service/update/UpdateService;->notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v7, Lcom/youku/phone/R$id;->update_progress_bar:I

    iget-object v8, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v8}, Lcom/youku/service/update/UpdateService;->access$700(Lcom/youku/service/update/UpdateService;)I

    move-result v8

    invoke-virtual {v5, v7, v13, v8, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 167
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    iget-object v5, v5, Lcom/youku/service/update/UpdateService;->notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v6, Lcom/youku/phone/R$id;->update_title:I

    const-string/jumbo v7, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 168
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v5}, Lcom/youku/service/update/UpdateService;->access$900(Lcom/youku/service/update/UpdateService;)Landroid/app/NotificationManager;

    move-result-object v5

    iget-object v6, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-static {v6}, Lcom/youku/service/update/UpdateService;->access$300(Lcom/youku/service/update/UpdateService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 170
    :cond_7
    invoke-static {}, Lcom/youku/service/update/UpdateService;->access$200()Ljava/lang/String;

    .line 171
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/youku/service/update/UpdateService;->access$1200(Lcom/youku/service/update/UpdateService;I)V

    .line 172
    iget-object v5, p0, Lc8/Ein;->this$0:Lcom/youku/service/update/UpdateService;

    invoke-virtual {v5}, Lcom/youku/service/update/UpdateService;->stopSelf()V

    goto/16 :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
