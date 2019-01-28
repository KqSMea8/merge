.class public Lc8/Csf;
.super Ljava/lang/Object;
.source "ConfigCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jsf;->init(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Jsf;

.field final synthetic val$appSecret:Ljava/lang/String;

.field final synthetic val$appkey:Ljava/lang/String;

.field final synthetic val$appversion:Ljava/lang/String;

.field final synthetic val$authCode:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$env:I

.field final synthetic val$indexUpdateMode:I

.field final synthetic val$onlineAckHost:Ljava/lang/String;

.field final synthetic val$onlineHost:Ljava/lang/String;

.field final synthetic val$probeHosts:[Ljava/lang/String;

.field final synthetic val$serverType:I

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Jsf;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Jsf;

    .prologue
    .line 87
    iput-object p1, p0, Lc8/Csf;->this$0:Lc8/Jsf;

    iput-object p2, p0, Lc8/Csf;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lc8/Csf;->val$appkey:Ljava/lang/String;

    iput-object p4, p0, Lc8/Csf;->val$appversion:Ljava/lang/String;

    iput-object p5, p0, Lc8/Csf;->val$userId:Ljava/lang/String;

    iput-object p6, p0, Lc8/Csf;->val$appSecret:Ljava/lang/String;

    iput-object p7, p0, Lc8/Csf;->val$authCode:Ljava/lang/String;

    iput p8, p0, Lc8/Csf;->val$indexUpdateMode:I

    iput p9, p0, Lc8/Csf;->val$env:I

    iput p10, p0, Lc8/Csf;->val$serverType:I

    iput-object p11, p0, Lc8/Csf;->val$probeHosts:[Ljava/lang/String;

    iput-object p12, p0, Lc8/Csf;->val$onlineHost:Ljava/lang/String;

    iput-object p13, p0, Lc8/Csf;->val$onlineAckHost:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 90
    iget-object v1, p0, Lc8/Csf;->this$0:Lc8/Jsf;

    monitor-enter v1

    .line 91
    :try_start_0
    sget-object v0, Lc8/Jsf;->mIsOrangeInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_8

    .line 92
    iget-object v0, p0, Lc8/Csf;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/TI;->setContext(Landroid/content/Context;)V

    .line 94
    iget-object v0, p0, Lc8/Csf;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lc8/Ksf;->mContext:Landroid/content/Context;

    .line 95
    iget-object v0, p0, Lc8/Csf;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Ksf;->mDeviceId:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lc8/Csf;->val$appkey:Ljava/lang/String;

    sput-object v0, Lc8/Ksf;->mAppkey:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lc8/Csf;->val$appversion:Ljava/lang/String;

    sput-object v0, Lc8/Ksf;->mAppVersion:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lc8/Csf;->val$userId:Ljava/lang/String;

    sput-object v0, Lc8/Ksf;->mUserId:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lc8/Csf;->val$appSecret:Ljava/lang/String;

    sput-object v0, Lc8/Ksf;->mAppSecret:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lc8/Csf;->val$authCode:Ljava/lang/String;

    sput-object v0, Lc8/Ksf;->mAuthCode:Ljava/lang/String;

    .line 101
    iget v0, p0, Lc8/Csf;->val$indexUpdateMode:I

    invoke-static {v0}, Lcom/taobao/orange/OConstant$UPDMODE;->valueOf(I)Lcom/taobao/orange/OConstant$UPDMODE;

    move-result-object v0

    sput-object v0, Lc8/Ksf;->mIndexUpdMode:Lcom/taobao/orange/OConstant$UPDMODE;

    .line 102
    iget v0, p0, Lc8/Csf;->val$env:I

    invoke-static {v0}, Lcom/taobao/orange/OConstant$ENV;->valueOf(I)Lcom/taobao/orange/OConstant$ENV;

    move-result-object v0

    sput-object v0, Lc8/Ksf;->mEnv:Lcom/taobao/orange/OConstant$ENV;

    .line 103
    iget v0, p0, Lc8/Csf;->val$serverType:I

    invoke-static {v0}, Lcom/taobao/orange/OConstant$SERVER;->valueOf(I)Lcom/taobao/orange/OConstant$SERVER;

    move-result-object v0

    sput-object v0, Lc8/Ksf;->mServerType:Lcom/taobao/orange/OConstant$SERVER;

    .line 104
    iget-object v0, p0, Lc8/Csf;->val$probeHosts:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc8/Csf;->val$probeHosts:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 105
    sget-object v0, Lc8/Ksf;->mProbeHosts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 106
    sget-object v0, Lc8/Ksf;->mProbeHosts:Ljava/util/Set;

    iget-object v2, p0, Lc8/Csf;->val$probeHosts:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 117
    :cond_0
    :goto_0
    sget-object v0, Lc8/Ksf;->mEnv:Lcom/taobao/orange/OConstant$ENV;

    sget-object v2, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    if-ne v0, v2, :cond_6

    .line 118
    iget-object v0, p0, Lc8/Csf;->this$0:Lc8/Jsf;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lc8/Jsf;->access$002(Lc8/Jsf;Z)Z

    .line 123
    :goto_1
    const-string/jumbo v2, "ConfigCenter"

    const-string/jumbo v3, "init start"

    const/16 v0, 0xe

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v5, "appkey"

    aput-object v5, v4, v0

    const/4 v0, 0x1

    iget-object v5, p0, Lc8/Csf;->val$appkey:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    const-string/jumbo v5, "appversion"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    iget-object v5, p0, Lc8/Csf;->val$appversion:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x4

    const-string/jumbo v5, "env"

    aput-object v5, v4, v0

    const/4 v0, 0x5

    iget v5, p0, Lc8/Csf;->val$env:I

    invoke-static {v5}, Lcom/taobao/orange/OConstant$ENV;->valueOf(I)Lcom/taobao/orange/OConstant$ENV;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x6

    const-string/jumbo v5, "serverType"

    aput-object v5, v4, v0

    const/4 v0, 0x7

    iget v5, p0, Lc8/Csf;->val$serverType:I

    .line 124
    invoke-static {v5}, Lcom/taobao/orange/OConstant$SERVER;->valueOf(I)Lcom/taobao/orange/OConstant$SERVER;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v0, 0x8

    const-string/jumbo v5, "indexUpdateMode"

    aput-object v5, v4, v0

    const/16 v0, 0x9

    iget v5, p0, Lc8/Csf;->val$indexUpdateMode:I

    invoke-static {v5}, Lcom/taobao/orange/OConstant$UPDMODE;->valueOf(I)Lcom/taobao/orange/OConstant$UPDMODE;

    move-result-object v5

    aput-object v5, v4, v0

    const/16 v0, 0xa

    const-string/jumbo v5, "probeHosts"

    aput-object v5, v4, v0

    const/16 v0, 0xb

    sget-object v5, Lc8/Ksf;->mProbeHosts:Ljava/util/Set;

    aput-object v5, v4, v0

    const/16 v0, 0xc

    const-string/jumbo v5, "appSecret"

    aput-object v5, v4, v0

    const/16 v5, 0xd

    iget-object v0, p0, Lc8/Csf;->val$appSecret:Ljava/lang/String;

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, ""

    :goto_2
    aput-object v0, v4, v5

    .line 123
    invoke-static {v2, v3, v4}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lc8/Csf;->val$onlineHost:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    const-string/jumbo v0, "ConfigCenter"

    const-string/jumbo v2, "init start"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "onlineHost"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lc8/Csf;->val$onlineHost:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    sget-object v0, Lc8/Ntf;->update_req_hosts:Ljava/util/Map;

    sget-object v2, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v2}, Lcom/taobao/orange/OConstant$ENV;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/orange/request/ReqStrategy$EnvHost;

    iget-object v2, p0, Lc8/Csf;->val$onlineHost:Ljava/lang/String;

    iput-object v2, v0, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->domain:Ljava/lang/String;

    .line 130
    :cond_1
    iget-object v0, p0, Lc8/Csf;->val$onlineAckHost:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    const-string/jumbo v0, "ConfigCenter"

    const-string/jumbo v2, "init start"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "onlineAckHost"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lc8/Csf;->val$onlineAckHost:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    sget-object v0, Lc8/Ntf;->ack_req_hosts:Ljava/util/Map;

    sget-object v2, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v2}, Lcom/taobao/orange/OConstant$ENV;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/orange/request/ReqStrategy$EnvHost;

    iget-object v2, p0, Lc8/Csf;->val$onlineHost:Ljava/lang/String;

    iput-object v2, v0, Lcom/taobao/orange/request/ReqStrategy$EnvHost;->domain:Ljava/lang/String;

    .line 135
    :cond_2
    iget-object v0, p0, Lc8/Csf;->this$0:Lc8/Jsf;

    invoke-static {v0}, Lc8/Jsf;->access$100(Lc8/Jsf;)V

    .line 136
    iget-object v0, p0, Lc8/Csf;->this$0:Lc8/Jsf;

    iget-object v2, p0, Lc8/Csf;->this$0:Lc8/Jsf;

    const-wide/16 v4, 0xa

    invoke-static {v2, v4, v5}, Lc8/Jsf;->access$300(Lc8/Jsf;J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lc8/Jsf;->access$202(Lc8/Jsf;J)J

    .line 137
    iget-object v0, p0, Lc8/Csf;->this$0:Lc8/Jsf;

    invoke-static {v0}, Lc8/Jsf;->access$500(Lc8/Jsf;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "orange"

    new-instance v3, Lcom/taobao/orange/ConfigCenter$1$1;

    invoke-direct {v3, p0}, Lcom/taobao/orange/ConfigCenter$1$1;-><init>(Lc8/Csf;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lc8/Csf;->this$0:Lc8/Jsf;

    invoke-static {v0}, Lc8/Jsf;->access$600(Lc8/Jsf;)V

    .line 148
    sget-object v0, Lc8/Jsf;->mIsOrangeInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 149
    iget-object v0, p0, Lc8/Csf;->this$0:Lc8/Jsf;

    invoke-virtual {v0}, Lc8/Jsf;->enterForeground()V

    .line 153
    :goto_3
    monitor-exit v1

    return-void

    .line 108
    :cond_3
    sget-object v0, Lc8/Ksf;->mProbeHosts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 109
    sget-object v0, Lc8/Ksf;->mEnv:Lcom/taobao/orange/OConstant$ENV;

    sget-object v2, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    if-ne v0, v2, :cond_4

    .line 110
    sget-object v0, Lc8/Ksf;->mProbeHosts:Ljava/util/Set;

    sget-object v2, Lc8/Psf;->ONLINE:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 111
    :cond_4
    :try_start_1
    sget-object v0, Lc8/Ksf;->mEnv:Lcom/taobao/orange/OConstant$ENV;

    sget-object v2, Lcom/taobao/orange/OConstant$ENV;->PREPARE:Lcom/taobao/orange/OConstant$ENV;

    if-ne v0, v2, :cond_5

    .line 112
    sget-object v0, Lc8/Ksf;->mProbeHosts:Ljava/util/Set;

    sget-object v2, Lc8/Psf;->PREPARE:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 113
    :cond_5
    sget-object v0, Lc8/Ksf;->mEnv:Lcom/taobao/orange/OConstant$ENV;

    sget-object v2, Lcom/taobao/orange/OConstant$ENV;->TEST:Lcom/taobao/orange/OConstant$ENV;

    if-ne v0, v2, :cond_0

    .line 114
    sget-object v0, Lc8/Ksf;->mProbeHosts:Ljava/util/Set;

    sget-object v2, Lc8/Psf;->TEST:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 120
    :cond_6
    iget-object v0, p0, Lc8/Csf;->this$0:Lc8/Jsf;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lc8/Jsf;->access$002(Lc8/Jsf;Z)Z

    goto/16 :goto_1

    .line 125
    :cond_7
    const-string/jumbo v0, "***"

    goto/16 :goto_2

    .line 151
    :cond_8
    const-string/jumbo v0, "ConfigCenter"

    const-string/jumbo v2, "already init"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method
