.class public Lcom/taobao/accs/net/BaseConnection$5;
.super Ljava/lang/Object;
.source "BaseConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/net/BaseConnection;->startChannelService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/net/BaseConnection;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/taobao/accs/net/BaseConnection$5;->this$0:Lcom/taobao/accs/net/BaseConnection;

    iput-object p2, p0, Lcom/taobao/accs/net/BaseConnection$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 407
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.taobao.accs.intent.action.START_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .local v1, "startIntent":Landroid/content/Intent;
    const-string/jumbo v2, "appKey"

    iget-object v3, p0, Lcom/taobao/accs/net/BaseConnection$5;->this$0:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v3}, Lcom/taobao/accs/net/BaseConnection;->getAppkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const-string/jumbo v2, "ttid"

    iget-object v3, p0, Lcom/taobao/accs/net/BaseConnection$5;->this$0:Lcom/taobao/accs/net/BaseConnection;

    iget-object v3, v3, Lcom/taobao/accs/net/BaseConnection;->mTtid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const-string/jumbo v2, "packageName"

    iget-object v3, p0, Lcom/taobao/accs/net/BaseConnection$5;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const-string/jumbo v2, "app_sercet"

    iget-object v3, p0, Lcom/taobao/accs/net/BaseConnection$5;->this$0:Lcom/taobao/accs/net/BaseConnection;

    iget-object v3, v3, Lcom/taobao/accs/net/BaseConnection;->mConfig:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v3}, Lcom/taobao/accs/AccsClientConfig;->getAppSecret()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string/jumbo v2, "mode"

    sget v3, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    const-string/jumbo v2, "agoo_app_key"

    iget-object v3, p0, Lcom/taobao/accs/net/BaseConnection$5;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lc8/BWp;->getAgooAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    const-string/jumbo v2, "configTag"

    iget-object v3, p0, Lcom/taobao/accs/net/BaseConnection$5;->this$0:Lcom/taobao/accs/net/BaseConnection;

    iget-object v3, v3, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    iget-object v2, p0, Lcom/taobao/accs/net/BaseConnection$5;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.taobao.accs.ChannelService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    iget-object v2, p0, Lcom/taobao/accs/net/BaseConnection$5;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 418
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 419
    .local v0, "agoointent":Landroid/content/Intent;
    const-string/jumbo v2, "org.agoo.android.intent.action.REPORT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    iget-object v2, p0, Lcom/taobao/accs/net/BaseConnection$5;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    iget-object v2, p0, Lcom/taobao/accs/net/BaseConnection$5;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/net/BaseConnection$5;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->getAgooCustomServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    iget-object v2, p0, Lcom/taobao/accs/net/BaseConnection$5;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 423
    return-void
.end method
