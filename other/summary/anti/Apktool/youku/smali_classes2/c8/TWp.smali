.class public Lc8/TWp;
.super Ljava/lang/Object;
.source "NotifManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/UWp;->pingApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/UWp;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$pack:Ljava/lang/String;

.field final synthetic val$percent:I

.field final synthetic val$service:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/UWp;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lc8/TWp;->this$0:Lc8/UWp;

    iput p2, p0, Lc8/TWp;->val$percent:I

    iput-object p3, p0, Lc8/TWp;->val$pack:Ljava/lang/String;

    iput-object p4, p0, Lc8/TWp;->val$action:Ljava/lang/String;

    iput-object p5, p0, Lc8/TWp;->val$service:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 314
    :try_start_0
    iget v0, p0, Lc8/TWp;->val$percent:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    .line 315
    invoke-static {}, Lc8/UWp;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 316
    .local v9, "utdId":Ljava/lang/String;
    const-wide/16 v0, 0x64

    invoke-static {v0, v1, v9}, Lc8/EWp;->getRandom(JLjava/lang/String;)I

    move-result v6

    .line 317
    .local v6, "count":I
    iget v0, p0, Lc8/TWp;->val$percent:I

    if-le v6, v0, :cond_1

    .line 339
    .end local v6    # "count":I
    .end local v9    # "utdId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lc8/TWp;->this$0:Lc8/UWp;

    iget-object v1, p0, Lc8/TWp;->val$pack:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/UWp;->access$100(Lc8/UWp;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 323
    .local v7, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lc8/TWp;->val$action:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    iget-object v0, p0, Lc8/TWp;->val$pack:Ljava/lang/String;

    iget-object v1, p0, Lc8/TWp;->val$service:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string/jumbo v0, "source"

    invoke-static {}, Lc8/UWp;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-static {}, Lc8/UWp;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 327
    iget-object v0, p0, Lc8/TWp;->this$0:Lc8/UWp;

    iget-object v1, p0, Lc8/TWp;->val$pack:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/UWp;->access$200(Lc8/UWp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, "appVersion":Ljava/lang/String;
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    const-string/jumbo v0, "NotifManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pingApp [begin],action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/TWp;->val$action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",pack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/TWp;->val$pack:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/TWp;->val$service:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",appVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    :cond_2
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d1

    const-string/jumbo v2, "pingApp"

    invoke-static {}, Lc8/UWp;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lc8/TWp;->val$pack:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 334
    .end local v5    # "appVersion":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 336
    .local v8, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v0

    const v1, 0x101d2

    const-string/jumbo v2, "pingApp"

    invoke-static {}, Lc8/UWp;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 337
    const-string/jumbo v0, "NotifManager"

    const-string/jumbo v1, "pingApp"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v8, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
