.class public Lc8/yKj;
.super Landroid/os/Handler;
.source "MobileSecurePayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/zKj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/zKj;


# direct methods
.method constructor <init>(Lc8/zKj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/zKj;

    .prologue
    .line 399
    iput-object p1, p0, Lc8/yKj;->this$0:Lc8/zKj;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 402
    :try_start_0
    const-string/jumbo v3, "PayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MobileSecurePayHelper.handleMessage...msg ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 407
    :pswitch_0
    iget-object v3, p0, Lc8/yKj;->this$0:Lc8/zKj;

    invoke-virtual {v3}, Lc8/zKj;->closeProgress()V

    .line 409
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 411
    .local v0, "cachePath":Ljava/lang/String;
    iget-object v3, p0, Lc8/yKj;->this$0:Lc8/zKj;

    iget-object v4, p0, Lc8/yKj;->this$0:Lc8/zKj;

    iget-object v4, v4, Lc8/zKj;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v0}, Lc8/zKj;->access$100(Lc8/zKj;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 432
    .end local v0    # "cachePath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 433
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 416
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    invoke-static {}, Lc8/Jbp;->dismiss()V

    .line 418
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 420
    .restart local v0    # "cachePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lc8/yKj;->this$0:Lc8/zKj;

    iget-object v3, v3, Lc8/zKj;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 421
    const-string/jumbo v3, "PayManager"

    const-string/jumbo v4, "MobileSecurePayHelper.handleMessage...RQF_INSTALL"

    invoke-static {v3, v4}, Lc8/RKj;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "application/vnd.android.package-archive"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    iget-object v3, p0, Lc8/yKj;->this$0:Lc8/zKj;

    iget-object v3, v3, Lc8/zKj;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
