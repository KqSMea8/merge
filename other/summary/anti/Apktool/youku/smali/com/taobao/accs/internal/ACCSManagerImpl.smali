.class public Lcom/taobao/accs/internal/ACCSManagerImpl;
.super Ljava/lang/Object;
.source "ACCSManagerImpl.java"

# interfaces
.implements Lcom/taobao/accs/IACCSManager;


# instance fields
.field private TAG:Ljava/lang/String;

.field private baseDataId:I

.field private mConfigTag:Ljava/lang/String;

.field public mConnection:Lcom/taobao/accs/net/BaseConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configTag"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->baseDataId:I

    .line 51
    const-string/jumbo v0, "ACCSMgrImpl_"

    iput-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/taobao/accs/net/InAppConnection;

    sget-object v1, Lcom/taobao/accs/client/GlobalClientInfo;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p2}, Lcom/taobao/accs/net/InAppConnection;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    .line 56
    iput-object p2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConfigTag:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    iget-object v1, v1, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private getIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "command"    # I

    .prologue
    .line 621
    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getServiceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIntent null command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " serviceEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getServiceEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "error":Ljava/lang/String;
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 627
    const/4 v1, 0x0

    .line 654
    .end local v0    # "error":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 631
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 632
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.taobao.accs.intent.action.COMMAND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.taobao.accs.ChannelService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    const-string/jumbo v2, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    const-string/jumbo v2, "command"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    const-string/jumbo v2, "appKey"

    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    iget-object v3, v3, Lcom/taobao/accs/net/BaseConnection;->mAppkey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    const-string/jumbo v2, "configTag"

    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConfigTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendAppNotBind(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "command"    # I
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "dataId"    # Ljava/lang/String;

    .prologue
    .line 679
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 680
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    const-string/jumbo v1, "command"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 682
    const-string/jumbo v1, "serviceId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    const-string/jumbo v1, "dataId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    const-string/jumbo v1, "appKey"

    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    iget-object v2, v2, Lcom/taobao/accs/net/BaseConnection;->mAppkey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    const-string/jumbo v1, "configTag"

    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConfigTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    const-string/jumbo v2, "errorCode"

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const/16 v1, 0xc8

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 687
    invoke-static {p1, v0}, Lcom/taobao/accs/data/MsgDistribute;->distribMessage(Landroid/content/Context;Landroid/content/Intent;)V

    .line 689
    return-void

    .line 686
    :cond_0
    const/16 v1, 0x12c

    goto :goto_0
.end method

.method private sendControlMessage(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/taobao/accs/data/Message;
    .param p3, "command"    # I
    .param p4, "isForceBind"    # Z

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0xc8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 159
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v1}, Lcom/taobao/accs/net/BaseConnection;->start()V

    .line 160
    if-nez p2, :cond_1

    .line 161
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "message is null"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/taobao/accs/data/Message;->buildParameterError(Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object p2

    .line 164
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    const/4 v2, -0x2

    invoke-virtual {v1, p2, v2}, Lcom/taobao/accs/net/BaseConnection;->onResult(Lcom/taobao/accs/data/Message;I)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    const/4 v0, 0x1

    .line 167
    .local v0, "needSend":Z
    packed-switch p3, :pswitch_data_0

    .line 194
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 195
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendControlMessage"

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "command"

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v1, p2, v6}, Lcom/taobao/accs/net/BaseConnection;->send(Lcom/taobao/accs/data/Message;Z)V

    goto :goto_0

    .line 169
    :pswitch_0
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v1}, Lcom/taobao/accs/net/BaseConnection;->getClientManager()Lcom/taobao/accs/client/ClientManager;

    move-result-object v1

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/accs/client/ClientManager;->isAppBinded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p4, :cond_2

    .line 171
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isAppBinded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v1, p2, v7}, Lcom/taobao/accs/net/BaseConnection;->onResult(Lcom/taobao/accs/data/Message;I)V

    .line 173
    const/4 v0, 0x0

    goto :goto_1

    .line 177
    :pswitch_1
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v1}, Lcom/taobao/accs/net/BaseConnection;->getClientManager()Lcom/taobao/accs/client/ClientManager;

    move-result-object v1

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/accs/client/ClientManager;->isAppUnbinded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isAppUnbinded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v1, p2, v7}, Lcom/taobao/accs/net/BaseConnection;->onResult(Lcom/taobao/accs/data/Message;I)V

    .line 181
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 185
    :pswitch_2
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v1}, Lcom/taobao/accs/net/BaseConnection;->getClientManager()Lcom/taobao/accs/client/ClientManager;

    move-result-object v1

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/accs/client/ClientManager;->isUserBinded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p4, :cond_2

    .line 187
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isUserBinded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "isForceBind"

    aput-object v4, v3, v5

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v1, p2, v7}, Lcom/taobao/accs/net/BaseConnection;->onResult(Lcom/taobao/accs/data/Message;I)V

    .line 190
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "ttid"    # Ljava/lang/String;
    .param p4, "appCallback"    # Lcom/taobao/accs/IAppReceiver;

    .prologue
    .line 63
    const-string/jumbo v3, "accs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/internal/ACCSManagerImpl;->bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    .line 65
    return-void
.end method

.method public bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "appSecret"    # Ljava/lang/String;
    .param p4, "ttid"    # Ljava/lang/String;
    .param p5, "appCallback"    # Lcom/taobao/accs/IAppReceiver;

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 68
    if-nez p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v7, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bindApp APPKEY:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/taobao/accs/data/Message;->buildParameterError(Ljava/lang/String;I)Lcom/taobao/accs/data/Message;

    move-result-object v4

    .line 75
    .local v4, "paramErrorMsg":Lcom/taobao/accs/data/Message;
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 76
    iget-object v7, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "accs disabled, try enable"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->focusEnableService(Landroid/content/Context;)V

    .line 80
    :cond_2
    iget-object v7, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v7}, Lcom/taobao/accs/net/BaseConnection;->isSecurityOff()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    iget-object v7, v7, Lcom/taobao/accs/net/BaseConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v7}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 81
    iget-object v6, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    const/16 v7, -0xf

    invoke-virtual {v6, v4, v7}, Lcom/taobao/accs/net/BaseConnection;->onResult(Lcom/taobao/accs/data/Message;I)V

    goto :goto_0

    .line 90
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 91
    iget-object v6, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    const/16 v7, -0xe

    invoke-virtual {v6, v4, v7}, Lcom/taobao/accs/net/BaseConnection;->onResult(Lcom/taobao/accs/data/Message;I)V

    goto :goto_0

    .line 94
    :cond_4
    iget-object v7, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    iput-object p4, v7, Lcom/taobao/accs/net/BaseConnection;->mTtid:Ljava/lang/String;

    .line 95
    iget-object v7, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    iput-object p2, v7, Lcom/taobao/accs/net/BaseConnection;->mAppkey:Ljava/lang/String;

    .line 96
    iget-object v7, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    iget-object v7, v7, Lcom/taobao/accs/net/BaseConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v7}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, p2, v7}, Lcom/taobao/accs/utl/UtilityImpl;->saveAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    if-eqz p5, :cond_5

    .line 99
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v7

    iget-object v8, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConfigTag:Ljava/lang/String;

    invoke-virtual {v7, v8, p5}, Lcom/taobao/accs/client/GlobalClientInfo;->setAppReceiver(Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    .line 107
    :cond_5
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->enableService(Landroid/content/Context;)V

    .line 108
    invoke-direct {p0, p1, v2}, Lcom/taobao/accs/internal/ACCSManagerImpl;->getIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 109
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 115
    :try_start_0
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/accs/client/GlobalClientInfo;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 116
    .local v0, "appVersion":Ljava/lang/String;
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->appVersionChanged(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string/jumbo v7, "ACCS_SDK"

    invoke-static {v7, p1}, Lcom/taobao/accs/utl/UtilityImpl;->utdidChanged(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 117
    .local v2, "isforceBind":Z
    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    .line 118
    const-string/jumbo v7, "fouce_bind"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    :cond_7
    const-string/jumbo v7, "appKey"

    invoke-virtual {v1, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string/jumbo v7, "ttid"

    invoke-virtual {v1, v7, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string/jumbo v7, "appVersion"

    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string/jumbo v7, "app_sercet"

    iget-object v8, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    iget-object v8, v8, Lcom/taobao/accs/net/BaseConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v8}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 125
    iget-object v7, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-static {v7, p1, v1}, Lcom/taobao/accs/data/Message;->buildBindApp(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object v3

    .line 126
    .local v3, "message":Lcom/taobao/accs/data/Message;
    const/4 v7, 0x1

    invoke-direct {p0, p1, v3, v7, v2}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendControlMessage(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    .line 132
    .end local v3    # "message":Lcom/taobao/accs/data/Message;
    :cond_8
    iget-object v7, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/taobao/accs/net/BaseConnection;->startChannelService(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    const/4 v7, 0x1

    :try_start_1
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "accs"

    aput-object v9, v7, v8

    new-instance v8, Lcom/taobao/accs/utl/OrangeAdapter$OrangeListener;

    invoke-direct {v8}, Lcom/taobao/accs/utl/OrangeAdapter$OrangeListener;-><init>()V

    invoke-static {v7, v8}, Lcom/taobao/accs/utl/OrangeAdapter;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 136
    invoke-static {}, Lcom/taobao/accs/utl/OrangeAdapter;->checkAccsEnabled()V

    .line 137
    invoke-static {}, Lcom/taobao/accs/utl/OrangeAdapter;->getConfigForAccs()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 139
    :catch_0
    move-exception v7

    :try_start_2
    iget-object v7, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "no orange sdk"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 142
    .end local v0    # "appVersion":Ljava/lang/String;
    .end local v2    # "isforceBind":Z
    :catch_1
    move-exception v5

    .line 143
    .local v5, "t":Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "bindApp exception"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v8, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v0    # "appVersion":Ljava/lang/String;
    :cond_9
    move v2, v6

    .line 116
    goto :goto_1
.end method

.method public bindService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x5

    .line 304
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 310
    invoke-direct {p0, p1, v4}, Lcom/taobao/accs/internal/ACCSManagerImpl;->getIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 311
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_2

    .line 312
    const/4 v3, 0x0

    invoke-direct {p0, p1, v4, p2, v3}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendAppNotBind(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_2
    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v3}, Lcom/taobao/accs/net/BaseConnection;->getAppkey()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 319
    const-string/jumbo v3, "appKey"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string/jumbo v3, "serviceId"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 323
    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-static {v3, p1, v1}, Lcom/taobao/accs/data/Message;->buildBindService(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object v2

    .line 324
    .local v2, "message":Lcom/taobao/accs/data/Message;
    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v4, v3}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendControlMessage(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    .line 329
    .end local v2    # "message":Lcom/taobao/accs/data/Message;
    :cond_3
    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/taobao/accs/net/BaseConnection;->startChannelService(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public bindUser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->bindUser(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 227
    return-void
.end method

.method public bindUser(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "force"    # Z

    .prologue
    const/4 v10, 0x0

    .line 231
    :try_start_0
    iget-object v5, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "bindUser"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "userId"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    move v2, p3

    .line 233
    .local v2, "isForce":Z
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 234
    iget-object v5, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "accs disabled"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    .end local v2    # "isForce":Z
    :goto_0
    return-void

    .line 238
    .restart local v2    # "isForce":Z
    :cond_0
    const/4 v5, 0x3

    invoke-direct {p0, p1, v5}, Lcom/taobao/accs/internal/ACCSManagerImpl;->getIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 239
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 240
    iget-object v5, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "intent null"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, p1, v5, v6, v7}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendAppNotBind(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isForce":Z
    :catch_0
    move-exception v4

    .line 270
    .local v4, "t":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "bindUser"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 244
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "isForce":Z
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v5}, Lcom/taobao/accs/net/BaseConnection;->getAppkey()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 246
    iget-object v5, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "appKey null"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 249
    :cond_2
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->appVersionChanged(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v2, :cond_4

    .line 250
    :cond_3
    iget-object v5, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "force bind User"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    const/4 v2, 0x1

    .line 252
    const-string/jumbo v5, "fouce_bind"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 254
    :cond_4
    const-string/jumbo v5, "appKey"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string/jumbo v5, "userInfo"

    invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 258
    iget-object v5, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-static {v5, p1, v1}, Lcom/taobao/accs/data/Message;->buildBindUser(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object v3

    .line 259
    .local v3, "message":Lcom/taobao/accs/data/Message;
    const/4 v5, 0x3

    invoke-direct {p0, p1, v3, v5, v2}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendControlMessage(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    .line 264
    .end local v3    # "message":Lcom/taobao/accs/data/Message;
    :cond_5
    iget-object v5, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/taobao/accs/net/BaseConnection;->startChannelService(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public cancel(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataId"    # Ljava/lang/String;

    .prologue
    .line 737
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v0, p2}, Lcom/taobao/accs/net/BaseConnection;->cancel(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearLoginInfo(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 732
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/client/GlobalClientInfo;->clearLoginInfoImpl()V

    .line 733
    return-void
.end method

.method public forceDisableService(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 659
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->focusDisableService(Landroid/content/Context;)V

    .line 660
    return-void
.end method

.method public forceEnableService(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 664
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->focusEnableService(Landroid/content/Context;)V

    .line 665
    return-void
.end method

.method public forceReConnectChannel()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 776
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    iget-object v0, v0, Lcom/taobao/accs/net/BaseConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/SessionCenter;->getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/SessionCenter;->forceRecreateAccsSession()V

    .line 777
    invoke-virtual {p0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->getChannelState()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getChannelState()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/32 v10, 0xea60

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 748
    invoke-virtual {p0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->getUserUnit()Ljava/lang/String;

    move-result-object v3

    .line 749
    .local v3, "unitHost":Ljava/lang/String;
    iget-object v5, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/taobao/accs/net/BaseConnection;->getHost(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, "centerHost":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 752
    .local v2, "channelState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    iget-object v5, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    iget-object v5, v5, Lcom/taobao/accs/net/BaseConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v5}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lanet/channel/SessionCenter;->getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;

    move-result-object v5

    invoke-virtual {v5, v0, v10, v11}, Lanet/channel/SessionCenter;->getThrowsException(Ljava/lang/String;J)Lanet/channel/Session;

    move-result-object v1

    .line 756
    .local v1, "centerSession":Lanet/channel/Session;
    iget-object v5, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    iget-object v5, v5, Lcom/taobao/accs/net/BaseConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v5}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lanet/channel/SessionCenter;->getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;

    move-result-object v5

    invoke-virtual {v5, v3, v10, v11}, Lanet/channel/SessionCenter;->getThrowsException(Ljava/lang/String;J)Lanet/channel/Session;

    move-result-object v4

    .line 758
    .local v4, "unitSession":Lanet/channel/Session;
    if-eqz v1, :cond_0

    .line 759
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    :cond_0
    if-eqz v4, :cond_1

    .line 762
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    :cond_1
    iget-object v5, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getChannelState "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    return-object v2
.end method

.method public getUserUnit()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 788
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 789
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 790
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "context is null"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    const/4 v1, 0x0

    .line 802
    :cond_0
    :goto_0
    return-object v1

    .line 793
    :cond_1
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v3

    invoke-static {v0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    iget-object v5, v5, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/taobao/accs/client/GlobalClientInfo;->getUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lc8/MK;->getUnitPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/taobao/accs/net/BaseConnection;->getHost(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 799
    .local v1, "host":Ljava/lang/String;
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 800
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUserUnit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isChannelError(I)Z
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 813
    invoke-static {p1}, Lcom/taobao/accs/ErrorCode;->isChannelError(I)Z

    move-result v0

    return v0
.end method

.method public isNetworkReachable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 617
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public registerDataListener(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/taobao/accs/base/AccsAbstractDataListener;

    .prologue
    .line 845
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/taobao/accs/client/GlobalClientInfo;->registerListener(Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V

    .line 846
    return-void
.end method

.method public registerSerivce(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "serviceClassName"    # Ljava/lang/String;

    .prologue
    .line 825
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/taobao/accs/client/GlobalClientInfo;->registerService(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    return-void
.end method

.method public sendBusinessAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SLjava/lang/String;Ljava/util/Map;)V
    .locals 9
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "dataId"    # Ljava/lang/String;
    .param p4, "flags"    # S
    .param p5, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 859
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/taobao/accs/data/Message;->buildPushAck(Lcom/taobao/accs/net/BaseConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZSLjava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;

    move-result-object v8

    .line 860
    .local v8, "ack":Lcom/taobao/accs/data/Message;
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v0, v8, v4}, Lcom/taobao/accs/net/BaseConnection;->send(Lcom/taobao/accs/data/Message;Z)V

    .line 861
    return-void
.end method

.method public sendData(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataInfo"    # Lcom/taobao/accs/ACCSManager$AccsRequest;

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 378
    :try_start_0
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v1

    .line 380
    .local v1, "disable":Z
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 381
    iget-object v5, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "send data not in mainprocess"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    .end local v1    # "disable":Z
    :goto_0
    return-object v4

    .line 385
    .restart local v1    # "disable":Z
    :cond_0
    if-nez v1, :cond_1

    if-nez p2, :cond_3

    .line 387
    :cond_1
    if-eqz v1, :cond_2

    .line 388
    const-string/jumbo v5, "accs"

    const-string/jumbo v6, "send_fail"

    iget-object v7, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string/jumbo v8, "1"

    const-string/jumbo v9, "accs disable"

    invoke-static {v5, v6, v7, v8, v9}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :goto_1
    iget-object v5, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "send data dataInfo null or disable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    .end local v1    # "disable":Z
    :catch_0
    move-exception v3

    .line 417
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "accs"

    const-string/jumbo v5, "send_fail"

    iget-object v6, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string/jumbo v7, "1"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "data "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v4, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "send data dataid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 421
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_2
    iget-object v4, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    goto :goto_0

    .line 390
    .restart local v1    # "disable":Z
    :cond_2
    :try_start_1
    const-string/jumbo v5, "accs"

    const-string/jumbo v6, "send_fail"

    const-string/jumbo v7, ""

    const-string/jumbo v8, "1"

    const-string/jumbo v9, "data null"

    invoke-static {v5, v6, v7, v8, v9}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 396
    :cond_3
    iget-object v5, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 397
    const-class v5, Lcom/taobao/accs/internal/ACCSManagerImpl;

    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 398
    :try_start_2
    iget v6, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->baseDataId:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->baseDataId:I

    .line 399
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->baseDataId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    .line 400
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    :cond_4
    :try_start_3
    iget-object v5, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v5}, Lcom/taobao/accs/net/BaseConnection;->getAppkey()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 405
    const-string/jumbo v5, "accs"

    const-string/jumbo v6, "send_fail"

    iget-object v7, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string/jumbo v8, "1"

    const-string/jumbo v9, "data appkey null"

    invoke-static {v5, v6, v7, v8, v9}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v5, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "send data appkey null dataid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 400
    .end local v0    # "appKey":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4

    .line 409
    .restart local v0    # "appKey":Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v4}, Lcom/taobao/accs/net/BaseConnection;->start()V

    .line 410
    iget-object v4, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p1, v5, v0, p2}, Lcom/taobao/accs/data/Message;->buildSendData(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;)Lcom/taobao/accs/data/Message;

    move-result-object v2

    .line 412
    .local v2, "message":Lcom/taobao/accs/data/Message;
    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 413
    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSend()V

    .line 415
    :cond_6
    iget-object v4, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/taobao/accs/net/BaseConnection;->send(Lcom/taobao/accs/data/Message;Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2
.end method

.method public sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "dataId"    # Ljava/lang/String;

    .prologue
    .line 361
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "dataId"    # Ljava/lang/String;
    .param p6, "target"    # Ljava/lang/String;

    .prologue
    .line 367
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "dataId"    # Ljava/lang/String;
    .param p6, "target"    # Ljava/lang/String;
    .param p7, "host"    # Ljava/net/URL;

    .prologue
    .line 372
    new-instance v0, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 373
    .local v0, "dataInfo":Lcom/taobao/accs/ACCSManager$AccsRequest;
    invoke-virtual {p0, p1, v0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendData(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public sendPushResponse(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "response"    # Lcom/taobao/accs/ACCSManager$AccsRequest;
    .param p3, "extraInfo"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 509
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 510
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "sendPushResponse input null"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "context"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "response"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object p2, v8, v9

    const/4 v9, 0x4

    const-string/jumbo v10, "extraInfo"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    aput-object p3, v8, v9

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    const-string/jumbo v6, "accs"

    const-string/jumbo v7, "send_fail"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "1"

    const-string/jumbo v10, "sendPushResponse null"

    invoke-static {v6, v7, v8, v9, v10}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const/4 v6, 0x0

    .line 612
    :goto_0
    return-object v6

    .line 515
    :cond_1
    const-string/jumbo v6, "accs"

    const-string/jumbo v7, "send_fail"

    const-string/jumbo v8, "push response total"

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v1

    .line 518
    .local v1, "disable":Z
    if-eqz v1, :cond_2

    .line 519
    const-string/jumbo v6, "accs"

    const-string/jumbo v7, "send_fail"

    iget-object v8, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string/jumbo v9, "1"

    const-string/jumbo v10, "sendPushResponse accs disable"

    invoke-static {v6, v7, v8, v9, v10}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const/4 v6, 0x0

    goto :goto_0

    .line 523
    :cond_2
    iget-object v6, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v6}, Lcom/taobao/accs/net/BaseConnection;->getAppkey()Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 525
    const-string/jumbo v6, "accs"

    const-string/jumbo v7, "send_fail"

    iget-object v8, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string/jumbo v9, "1"

    const-string/jumbo v10, "sendPushResponse appkey null"

    invoke-static {v6, v7, v8, v9, v10}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v6, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendPushResponse appkey null dataid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 527
    const/4 v6, 0x0

    goto :goto_0

    .line 530
    :cond_3
    iget-object v6, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 531
    const-class v7, Lcom/taobao/accs/internal/ACCSManagerImpl;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :try_start_1
    iget v6, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->baseDataId:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->baseDataId:I

    .line 533
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->baseDataId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    .line 534
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 537
    :cond_4
    if-nez p3, :cond_5

    .line 538
    :try_start_2
    new-instance v2, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    invoke-direct {v2}, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;-><init>()V

    .end local p3    # "extraInfo":Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    .local v2, "extraInfo":Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    move-object p3, v2

    .line 540
    .end local v2    # "extraInfo":Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    .restart local p3    # "extraInfo":Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    :cond_5
    const/4 v6, 0x0

    iput-object v6, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    .line 541
    const/4 v4, 0x1

    .line 550
    .local v4, "sendbyInapp":Z
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    .line 553
    iget v6, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->connType:I

    if-eqz v6, :cond_6

    iget-object v6, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromHost:Ljava/lang/String;

    if-nez v6, :cond_7

    .line 554
    :cond_6
    const/4 v6, 0x0

    iput v6, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->connType:I

    .line 555
    const/4 v4, 0x0

    .line 556
    iget-object v6, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "pushresponse use channel"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "host"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromHost:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    :cond_7
    iget-object v6, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "sendPushResponse"

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "sendbyInapp"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "host"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromHost:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string/jumbo v10, "pkg"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    iget-object v10, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string/jumbo v10, "dataId"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    iget-object v10, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    if-eqz v4, :cond_9

    .line 562
    iget-object v6, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "sendPushResponse inapp by"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "app"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    new-instance v6, Ljava/net/URL;

    iget-object v7, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromHost:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v6, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    .line 564
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 565
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, p1, p2, v6, v7}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 612
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v1    # "disable":Z
    .end local v4    # "sendbyInapp":Z
    :goto_1
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 534
    .restart local v0    # "appKey":Ljava/lang/String;
    .restart local v1    # "disable":Z
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 607
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v1    # "disable":Z
    :catch_0
    move-exception v5

    .line 608
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "accs"

    const-string/jumbo v7, "send_fail"

    iget-object v8, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string/jumbo v9, "1"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "push response "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v6, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendPushResponse dataid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v5, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 567
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v0    # "appKey":Ljava/lang/String;
    .restart local v1    # "disable":Z
    .restart local v4    # "sendbyInapp":Z
    :cond_8
    :try_start_5
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "com.taobao.accs.intent.action.SEND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    .local v3, "intent":Landroid/content/Intent;
    iget-object v6, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    const-string/jumbo v7, "com.taobao.accs.data.MsgDistributeService"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    const-string/jumbo v6, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const-string/jumbo v6, "reqdata"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 571
    const-string/jumbo v6, "appKey"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    const-string/jumbo v6, "configTag"

    iget-object v7, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConfigTag:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 577
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_9
    const/16 v6, 0x64

    invoke-direct {p0, p1, v6}, Lcom/taobao/accs/internal/ACCSManagerImpl;->getIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v3

    .line 578
    .restart local v3    # "intent":Landroid/content/Intent;
    if-nez v3, :cond_a

    .line 579
    const-string/jumbo v6, "accs"

    const-string/jumbo v7, "send_fail"

    iget-object v8, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string/jumbo v9, "1"

    const-string/jumbo v10, "push response intent null"

    invoke-static {v6, v7, v8, v9, v10}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const/16 v6, 0x64

    iget-object v7, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    iget-object v8, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-direct {p0, p1, v6, v7, v8}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendAppNotBind(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v6, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "sendPushResponse input null"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "context"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "response"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object p2, v8, v9

    const/4 v9, 0x4

    const-string/jumbo v10, "extraInfo"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    aput-object p3, v8, v9

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 584
    :cond_a
    iget-object v6, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "sendPushResponse channel by"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "app"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    iget-object v6, p3, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;->fromPackage:Ljava/lang/String;

    const-string/jumbo v7, "com.taobao.accs.ChannelService"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const-string/jumbo v6, "send_type"

    sget-object v7, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 587
    const-string/jumbo v6, "appKey"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const-string/jumbo v6, "userInfo"

    iget-object v7, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->userId:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    const-string/jumbo v6, "serviceId"

    iget-object v7, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    const-string/jumbo v6, "data"

    iget-object v7, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->data:[B

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 591
    const-string/jumbo v6, "dataId"

    iget-object v7, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    const-string/jumbo v6, "configTag"

    iget-object v7, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConfigTag:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    iget-object v6, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 595
    const-string/jumbo v6, "businessId"

    iget-object v7, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    :cond_b
    iget-object v6, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 598
    const-string/jumbo v6, "extTag"

    iget-object v7, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    :cond_c
    iget-object v6, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    if-eqz v6, :cond_d

    .line 601
    const-string/jumbo v6, "target"

    iget-object v7, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    :cond_d
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method

.method public sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/taobao/accs/ACCSManager$AccsRequest;

    .prologue
    .line 490
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/taobao/accs/ACCSManager$AccsRequest;
    .param p3, "sourcePkg"    # Ljava/lang/String;
    .param p4, "autoUnit"    # Z

    .prologue
    .line 439
    if-nez p2, :cond_0

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendRequest request null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    const-string/jumbo v0, "accs"

    const-string/jumbo v1, "send_fail"

    const/4 v4, 0x0

    const-string/jumbo v5, "1"

    const-string/jumbo v9, "request null"

    invoke-static {v0, v1, v4, v5, v9}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const/4 v0, 0x0

    .line 486
    :goto_0
    return-object v0

    .line 445
    :cond_0
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "send data not in mainprocess"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    const/4 v0, 0x0

    goto :goto_0

    .line 450
    :cond_1
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v6

    .line 451
    .local v6, "disable":Z
    if-eqz v6, :cond_2

    .line 452
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendRequest disable"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    const-string/jumbo v0, "accs"

    const-string/jumbo v1, "send_fail"

    iget-object v4, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string/jumbo v5, "1"

    const-string/jumbo v9, "accs disable"

    invoke-static {v0, v1, v4, v5, v9}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const/4 v0, 0x0

    goto :goto_0

    .line 457
    :cond_2
    iget-object v0, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 458
    const-class v1, Lcom/taobao/accs/internal/ACCSManagerImpl;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :try_start_1
    iget v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->baseDataId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->baseDataId:I

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->baseDataId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    .line 461
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v0}, Lcom/taobao/accs/net/BaseConnection;->getAppkey()Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, "appKey":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 466
    const-string/jumbo v0, "accs"

    const-string/jumbo v1, "send_fail"

    iget-object v4, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string/jumbo v5, "1"

    const-string/jumbo v9, "request appkey null"

    invoke-static {v0, v1, v4, v5, v9}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendRequest appkey null dataid:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 468
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 461
    .end local v3    # "appKey":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 478
    .end local v6    # "disable":Z
    :catch_0
    move-exception v8

    .line 479
    .local v8, "t":Ljava/lang/Throwable;
    if-eqz p2, :cond_4

    .line 480
    const-string/jumbo v0, "accs"

    const-string/jumbo v1, "send_fail"

    iget-object v4, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    const-string/jumbo v5, "1"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "request "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v1, v4, v5, v9}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendRequest dataid:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v8, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 486
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_4
    :goto_1
    iget-object v0, p2, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    goto/16 :goto_0

    .line 470
    .restart local v3    # "appKey":Ljava/lang/String;
    .restart local v6    # "disable":Z
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v0}, Lcom/taobao/accs/net/BaseConnection;->start()V

    .line 471
    if-nez p3, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "pkg":Ljava/lang/String;
    :goto_2
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    move-object v1, p1

    move-object v4, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/taobao/accs/data/Message;->buildRequest(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object v7

    .line 474
    .local v7, "message":Lcom/taobao/accs/data/Message;
    invoke-virtual {v7}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 475
    invoke-virtual {v7}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSend()V

    .line 477
    :cond_6
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v7, v1}, Lcom/taobao/accs/net/BaseConnection;->send(Lcom/taobao/accs/data/Message;Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .end local v2    # "pkg":Ljava/lang/String;
    .end local v7    # "message":Lcom/taobao/accs/data/Message;
    :cond_7
    move-object v2, p3

    .line 471
    goto :goto_2
.end method

.method public sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "request"    # [B
    .param p5, "dataId"    # Ljava/lang/String;
    .param p6, "target"    # Ljava/lang/String;

    .prologue
    .line 427
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "request"    # [B
    .param p5, "dataId"    # Ljava/lang/String;
    .param p6, "target"    # Ljava/lang/String;
    .param p7, "host"    # Ljava/net/URL;

    .prologue
    .line 433
    new-instance v0, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 434
    .local v0, "requestInfo":Lcom/taobao/accs/ACCSManager$AccsRequest;
    invoke-virtual {p0, p1, v0}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setLoginInfo(Landroid/content/Context;Lcom/taobao/accs/ILoginInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loginInfoImpl"    # Lcom/taobao/accs/ILoginInfo;

    .prologue
    .line 728
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    iget-object v1, v1, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/taobao/accs/client/GlobalClientInfo;->setLoginInfoImpl(Ljava/lang/String;Lcom/taobao/accs/ILoginInfo;)V

    .line 729
    return-void
.end method

.method public setMode(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 675
    invoke-static {p1, p2}, Lcom/taobao/accs/ACCSClient;->setEnvironment(Landroid/content/Context;I)V

    .line 676
    return-void
.end method

.method public setProxy(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 693
    const-string/jumbo v1, "ACCS_SDK"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 694
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 695
    const-string/jumbo v1, "proxy_host"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 697
    :cond_0
    const-string/jumbo v1, "proxy_port"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 698
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 699
    return-void
.end method

.method public startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "ttid"    # Ljava/lang/String;
    .param p4, "appCallback"    # Lcom/taobao/accs/IAppReceiver;

    .prologue
    .line 704
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/internal/ACCSManagerImpl;->startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    .line 706
    return-void
.end method

.method public startInAppConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "appSecret"    # Ljava/lang/String;
    .param p4, "ttid"    # Ljava/lang/String;
    .param p5, "appCallback"    # Lcom/taobao/accs/IAppReceiver;

    .prologue
    const/4 v3, 0x0

    .line 710
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConfigTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p5}, Lcom/taobao/accs/client/GlobalClientInfo;->setAppReceiver(Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V

    .line 711
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "inapp only init in main process!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startInAppConnection APPKEY:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v0}, Lcom/taobao/accs/net/BaseConnection;->getAppkey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 719
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    iput-object p4, v0, Lcom/taobao/accs/net/BaseConnection;->mTtid:Ljava/lang/String;

    .line 720
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    iput-object p2, v0, Lcom/taobao/accs/net/BaseConnection;->mAppkey:Ljava/lang/String;

    .line 721
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    iget-object v0, v0, Lcom/taobao/accs/net/BaseConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/taobao/accs/utl/UtilityImpl;->saveAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_2
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v0}, Lcom/taobao/accs/net/BaseConnection;->start()V

    goto :goto_0
.end method

.method public unRegisterDataListener(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 855
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/taobao/accs/client/GlobalClientInfo;->unregisterListener(Ljava/lang/String;)V

    .line 856
    return-void
.end method

.method public unRegisterSerivce(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 830
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/taobao/accs/client/GlobalClientInfo;->unRegisterService(Ljava/lang/String;)V

    .line 831
    return-void
.end method

.method public unbindApp(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 202
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unbindApp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4}, Lcom/taobao/accs/utl/UtilityImpl;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-direct {p0, p1, v5}, Lcom/taobao/accs/internal/ACCSManagerImpl;->getIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_2

    .line 209
    invoke-direct {p0, p1, v5, v7, v7}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendAppNotBind(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_2
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-static {v2, p1, v0}, Lcom/taobao/accs/data/Message;->buildUnbindApp(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object v1

    .line 214
    .local v1, "message":Lcom/taobao/accs/data/Message;
    invoke-direct {p0, p1, v1, v5, v6}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendControlMessage(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    goto :goto_0
.end method

.method public unbindService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x6

    .line 334
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-direct {p0, p1, v4}, Lcom/taobao/accs/internal/ACCSManagerImpl;->getIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 338
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_2

    .line 339
    const/4 v3, 0x0

    invoke-direct {p0, p1, v4, p2, v3}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendAppNotBind(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_2
    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v3}, Lcom/taobao/accs/net/BaseConnection;->getAppkey()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 346
    const-string/jumbo v3, "appKey"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string/jumbo v3, "serviceId"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-static {v3, p1, v1}, Lcom/taobao/accs/data/Message;->buildUnbindService(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object v2

    .line 351
    .local v2, "message":Lcom/taobao/accs/data/Message;
    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v4, v3}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendControlMessage(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    goto :goto_0
.end method

.method public unbindUser(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 276
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getFocusDisableStatus(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 282
    invoke-direct {p0, p1, v4}, Lcom/taobao/accs/internal/ACCSManagerImpl;->getIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 283
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_2

    .line 284
    invoke-direct {p0, p1, v4, v5, v5}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendAppNotBind(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v3}, Lcom/taobao/accs/net/BaseConnection;->getAppkey()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    const-string/jumbo v3, "appKey"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    iget-object v3, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    invoke-static {v3, p1, v1}, Lcom/taobao/accs/data/Message;->buildUnbindUser(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;

    move-result-object v2

    .line 295
    .local v2, "message":Lcom/taobao/accs/data/Message;
    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v4, v3}, Lcom/taobao/accs/internal/ACCSManagerImpl;->sendControlMessage(Landroid/content/Context;Lcom/taobao/accs/data/Message;IZ)V

    goto :goto_0
.end method

.method public updateConfig(Lcom/taobao/accs/AccsClientConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/taobao/accs/AccsClientConfig;

    .prologue
    .line 865
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    instance-of v0, v0, Lcom/taobao/accs/net/InAppConnection;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/taobao/accs/internal/ACCSManagerImpl;->mConnection:Lcom/taobao/accs/net/BaseConnection;

    check-cast v0, Lcom/taobao/accs/net/InAppConnection;

    invoke-virtual {v0, p1}, Lcom/taobao/accs/net/InAppConnection;->updateConfig(Lcom/taobao/accs/AccsClientConfig;)V

    .line 868
    :cond_0
    return-void
.end method
