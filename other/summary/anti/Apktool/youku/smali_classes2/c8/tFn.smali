.class public Lc8/tFn;
.super Landroid/content/BroadcastReceiver;
.source "HomePageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/ui/activity/HomePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/ui/activity/HomePageActivity;


# direct methods
.method public constructor <init>(Lcom/youku/ui/activity/HomePageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/ui/activity/HomePageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 118
    iput-object p1, p0, Lc8/tFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "action":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Broadcast Action : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    const/4 v7, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 158
    :cond_1
    :goto_1
    return-void

    .line 125
    :sswitch_0
    const-string/jumbo v9, "com.youku.action.LOGOUT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v7, v8

    goto :goto_0

    :sswitch_1
    const-string/jumbo v9, "com.youku.action.LOGIN"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v9, "com.youku.usercenter.action.message.UPDATE_STATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v7, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v9, "com.youku.action.IP_LOCATION_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v7, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v9, "yk_been_loginout_receiver"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v7, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v9, "GET_UPDATE_INFO_SUCCESS"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v7, 0x6

    goto :goto_0

    .line 128
    :pswitch_0
    iget-object v7, p0, Lc8/tFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    const-wide/16 v8, -0x2

    invoke-static {v7, v8, v9}, Lcom/youku/ui/activity/HomePageActivity;->access$000(Lcom/youku/ui/activity/HomePageActivity;J)V

    goto :goto_1

    .line 131
    :pswitch_1
    const-string/jumbo v7, "extra_message_id"

    const-wide/16 v8, -0x3

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 132
    .local v4, "msgId":J
    iget-object v7, p0, Lc8/tFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    invoke-static {v7, v4, v5}, Lcom/youku/ui/activity/HomePageActivity;->access$000(Lcom/youku/ui/activity/HomePageActivity;J)V

    .line 133
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "home page receive user center have msg readed, id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1

    .line 136
    .end local v4    # "msgId":J
    :pswitch_2
    const-string/jumbo v7, "isOverSeaEditon"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 137
    .local v2, "isOverseaEditon":Ljava/lang/Boolean;
    const-string/jumbo v7, "isOverseas"

    invoke-static {v7, v2}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    .line 141
    .end local v2    # "isOverseaEditon":Ljava/lang/Boolean;
    :pswitch_3
    invoke-static {}, Lc8/bzo;->hasInternet()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 142
    invoke-static {p1}, Lc8/yhn;->checkCollectApiState(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 146
    :pswitch_4
    const-class v7, Lc8/fhn;

    invoke-static {v7}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/fhn;

    invoke-interface {v7}, Lc8/fhn;->autoLogout()V

    goto/16 :goto_1

    .line 150
    :pswitch_5
    :try_start_0
    const-string/jumbo v7, "update_info"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "jsonData":Ljava/lang/String;
    const-class v7, Lcom/youku/data/UpdateInfoDTO;

    invoke-static {v3, v7}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/data/UpdateInfoDTO;

    .line 152
    .local v6, "update":Lcom/youku/data/UpdateInfoDTO;
    iget-object v7, p0, Lc8/tFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    invoke-static {v7, v6}, Lcom/youku/ui/activity/HomePageActivity;->access$100(Lcom/youku/ui/activity/HomePageActivity;Lcom/youku/data/UpdateInfoDTO;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 153
    .end local v3    # "jsonData":Ljava/lang/String;
    .end local v6    # "update":Lcom/youku/data/UpdateInfoDTO;
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "HomePageActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 125
    :sswitch_data_0
    .sparse-switch
        -0x75e65bdd -> :sswitch_5
        -0x64a2c981 -> :sswitch_6
        -0x45e5283a -> :sswitch_4
        -0x3810e4dd -> :sswitch_1
        0x2bafea7c -> :sswitch_3
        0x35f460f0 -> :sswitch_0
        0x4a2d8abe -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
