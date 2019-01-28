.class public Lc8/eXe;
.super Ljava/lang/Object;
.source "BaseNotifyClickActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/gXe;->buildMessage(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/gXe;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lc8/gXe;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lc8/eXe;->this$0:Lc8/gXe;

    iput-object p2, p0, Lc8/eXe;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 78
    const/4 v4, 0x0

    .line 80
    .local v4, "msgIntent":Landroid/content/Intent;
    :try_start_0
    iget-object v7, p0, Lc8/eXe;->val$intent:Landroid/content/Intent;

    if-eqz v7, :cond_2

    .line 83
    iget-object v7, p0, Lc8/eXe;->this$0:Lc8/gXe;

    iget-object v8, p0, Lc8/eXe;->val$intent:Landroid/content/Intent;

    invoke-static {v7, v8}, Lc8/gXe;->access$000(Lc8/gXe;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "msg":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lc8/eXe;->this$0:Lc8/gXe;

    invoke-static {v7}, Lc8/gXe;->access$100(Lc8/gXe;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 86
    iget-object v7, p0, Lc8/eXe;->this$0:Lc8/gXe;

    invoke-static {v7}, Lc8/gXe;->access$200(Lc8/gXe;)Lc8/UWp;

    move-result-object v7

    if-nez v7, :cond_0

    .line 87
    iget-object v7, p0, Lc8/eXe;->this$0:Lc8/gXe;

    new-instance v8, Lc8/UWp;

    invoke-direct {v8}, Lc8/UWp;-><init>()V

    invoke-static {v7, v8}, Lc8/gXe;->access$202(Lc8/gXe;Lc8/UWp;)Lc8/UWp;

    .line 89
    :cond_0
    iget-object v7, p0, Lc8/eXe;->this$0:Lc8/gXe;

    invoke-static {v7}, Lc8/gXe;->access$300(Lc8/gXe;)Lc8/QWp;

    move-result-object v7

    if-nez v7, :cond_1

    .line 90
    iget-object v7, p0, Lc8/eXe;->this$0:Lc8/gXe;

    new-instance v8, Lc8/QWp;

    invoke-direct {v8}, Lc8/QWp;-><init>()V

    invoke-static {v7, v8}, Lc8/gXe;->access$302(Lc8/gXe;Lc8/QWp;)Lc8/QWp;

    .line 91
    iget-object v7, p0, Lc8/eXe;->this$0:Lc8/gXe;

    invoke-static {v7}, Lc8/gXe;->access$300(Lc8/gXe;)Lc8/QWp;

    move-result-object v7

    iget-object v8, p0, Lc8/eXe;->this$0:Lc8/gXe;

    invoke-virtual {v8}, Lc8/gXe;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lc8/eXe;->this$0:Lc8/gXe;

    invoke-static {v9}, Lc8/gXe;->access$200(Lc8/gXe;)Lc8/UWp;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lc8/QWp;->init(Landroid/content/Context;Lc8/UWp;Lc8/dXp;)V

    .line 93
    :cond_1
    iget-object v7, p0, Lc8/eXe;->this$0:Lc8/gXe;

    invoke-static {v7}, Lc8/gXe;->access$300(Lc8/gXe;)Lc8/QWp;

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-virtual {v3, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    iget-object v9, p0, Lc8/eXe;->this$0:Lc8/gXe;

    invoke-static {v9}, Lc8/gXe;->access$100(Lc8/gXe;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lc8/QWp;->msgReceiverPreHandler([BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;Z)Landroid/os/Bundle;

    move-result-object v1

    .line 94
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v7, "body"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "body":Ljava/lang/String;
    const-string/jumbo v7, "accs.BaseNotifyClickActivity"

    const-string/jumbo v8, "begin parse EncryptedMsg"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v7, p0, Lc8/eXe;->this$0:Lc8/gXe;

    invoke-static {v7}, Lc8/gXe;->access$300(Lc8/gXe;)Lc8/QWp;

    invoke-static {v0}, Lc8/QWp;->parseEncryptedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "decodebody":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 98
    const-string/jumbo v7, "body"

    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v4    # "msgIntent":Landroid/content/Intent;
    .local v5, "msgIntent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {v5, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 104
    iget-object v7, p0, Lc8/eXe;->this$0:Lc8/gXe;

    invoke-static {v7}, Lc8/gXe;->access$300(Lc8/gXe;)Lc8/QWp;

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-virtual {v3, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const-string/jumbo v9, "2"

    invoke-virtual {v7, v8, v9}, Lc8/QWp;->saveMsg([BLjava/lang/String;)V

    .line 105
    iget-object v7, p0, Lc8/eXe;->this$0:Lc8/gXe;

    invoke-static {v7, v5}, Lc8/gXe;->access$400(Lc8/gXe;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v5

    .line 114
    .end local v0    # "body":Ljava/lang/String;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "decodebody":Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    .end local v5    # "msgIntent":Landroid/content/Intent;
    .restart local v4    # "msgIntent":Landroid/content/Intent;
    :cond_2
    :goto_1
    :try_start_2
    iget-object v7, p0, Lc8/eXe;->this$0:Lc8/gXe;

    invoke-virtual {v7, v4}, Lc8/gXe;->onMessage(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 119
    :goto_2
    return-void

    .line 100
    .restart local v0    # "body":Ljava/lang/String;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "decodebody":Ljava/lang/String;
    .restart local v3    # "msg":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string/jumbo v7, "accs.BaseNotifyClickActivity"

    const-string/jumbo v8, "parse EncryptedMsg fail, empty"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 110
    .end local v0    # "body":Ljava/lang/String;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "decodebody":Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 111
    .local v6, "t":Ljava/lang/Throwable;
    :goto_3
    :try_start_4
    const-string/jumbo v7, "accs.BaseNotifyClickActivity"

    const-string/jumbo v8, "buildMessage"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v6, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 114
    :try_start_5
    iget-object v7, p0, Lc8/eXe;->this$0:Lc8/gXe;

    invoke-virtual {v7, v4}, Lc8/gXe;->onMessage(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 115
    :catch_1
    move-exception v6

    .line 116
    const-string/jumbo v7, "accs.BaseNotifyClickActivity"

    const-string/jumbo v8, "onMessage"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v7, v8, v6, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 107
    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v3    # "msg":Ljava/lang/String;
    :cond_4
    :try_start_6
    const-string/jumbo v7, "accs.BaseNotifyClickActivity"

    const-string/jumbo v8, "parseMsgFromNotifyListener null!!"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "source"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lc8/eXe;->this$0:Lc8/gXe;

    invoke-static {v11}, Lc8/gXe;->access$100(Lc8/gXe;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 113
    .end local v3    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v7

    .line 114
    :goto_4
    :try_start_7
    iget-object v8, p0, Lc8/eXe;->this$0:Lc8/gXe;

    invoke-virtual {v8, v4}, Lc8/gXe;->onMessage(Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 117
    :goto_5
    throw v7

    .line 115
    :catch_2
    move-exception v6

    .line 116
    .restart local v6    # "t":Ljava/lang/Throwable;
    const-string/jumbo v7, "accs.BaseNotifyClickActivity"

    const-string/jumbo v8, "onMessage"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v7, v8, v6, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 115
    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_3
    move-exception v6

    .line 116
    .restart local v6    # "t":Ljava/lang/Throwable;
    const-string/jumbo v8, "accs.BaseNotifyClickActivity"

    const-string/jumbo v9, "onMessage"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v8, v9, v6, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_5

    .line 113
    .end local v4    # "msgIntent":Landroid/content/Intent;
    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v0    # "body":Ljava/lang/String;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "decodebody":Ljava/lang/String;
    .restart local v3    # "msg":Ljava/lang/String;
    .restart local v5    # "msgIntent":Landroid/content/Intent;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "msgIntent":Landroid/content/Intent;
    .restart local v4    # "msgIntent":Landroid/content/Intent;
    goto :goto_4

    .line 110
    .end local v4    # "msgIntent":Landroid/content/Intent;
    .restart local v5    # "msgIntent":Landroid/content/Intent;
    :catch_4
    move-exception v6

    move-object v4, v5

    .end local v5    # "msgIntent":Landroid/content/Intent;
    .restart local v4    # "msgIntent":Landroid/content/Intent;
    goto :goto_3
.end method
