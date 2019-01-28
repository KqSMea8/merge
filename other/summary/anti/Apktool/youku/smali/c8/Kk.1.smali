.class public final Lc8/Kk;
.super Landroid/os/Handler;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Lk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceHandler"
.end annotation


# instance fields
.field private final mServiceBinderImpl:Lc8/Hk;

.field final synthetic this$0:Lc8/Lk;


# direct methods
.method constructor <init>(Lc8/Lk;)V
    .locals 2

    .prologue
    .line 434
    iput-object p1, p0, Lc8/Kk;->this$0:Lc8/Lk;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 432
    new-instance v0, Lc8/Hk;

    iget-object v1, p0, Lc8/Kk;->this$0:Lc8/Lk;

    invoke-direct {v0, v1}, Lc8/Hk;-><init>(Lc8/Lk;)V

    iput-object v0, p0, Lc8/Kk;->mServiceBinderImpl:Lc8/Hk;

    .line 435
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 439
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 440
    .local v0, "data":Landroid/os/Bundle;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n  Service version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n  Client version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    :goto_0
    return-void

    .line 442
    :pswitch_0
    iget-object v1, p0, Lc8/Kk;->mServiceBinderImpl:Lc8/Hk;

    const-string/jumbo v2, "data_package_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "data_calling_uid"

    .line 443
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "data_root_hints"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Lc8/Jk;

    iget-object v6, p0, Lc8/Kk;->this$0:Lc8/Lk;

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v5, v6, v7}, Lc8/Jk;-><init>(Lc8/Lk;Landroid/os/Messenger;)V

    .line 442
    invoke-virtual {v1, v2, v3, v4, v5}, Lc8/Hk;->connect(Ljava/lang/String;ILandroid/os/Bundle;Lc8/Ik;)V

    goto :goto_0

    .line 447
    :pswitch_1
    iget-object v1, p0, Lc8/Kk;->mServiceBinderImpl:Lc8/Hk;

    new-instance v2, Lc8/Jk;

    iget-object v3, p0, Lc8/Kk;->this$0:Lc8/Lk;

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v2, v3, v4}, Lc8/Jk;-><init>(Lc8/Lk;Landroid/os/Messenger;)V

    invoke-virtual {v1, v2}, Lc8/Hk;->disconnect(Lc8/Ik;)V

    goto :goto_0

    .line 450
    :pswitch_2
    iget-object v1, p0, Lc8/Kk;->mServiceBinderImpl:Lc8/Hk;

    const-string/jumbo v2, "data_media_item_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "data_callback_token"

    .line 451
    invoke-static {v0, v3}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    const-string/jumbo v4, "data_options"

    .line 452
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Lc8/Jk;

    iget-object v6, p0, Lc8/Kk;->this$0:Lc8/Lk;

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v5, v6, v7}, Lc8/Jk;-><init>(Lc8/Lk;Landroid/os/Messenger;)V

    .line 450
    invoke-virtual {v1, v2, v3, v4, v5}, Lc8/Hk;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Lc8/Ik;)V

    goto :goto_0

    .line 456
    :pswitch_3
    iget-object v1, p0, Lc8/Kk;->mServiceBinderImpl:Lc8/Hk;

    const-string/jumbo v2, "data_media_item_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "data_callback_token"

    .line 457
    invoke-static {v0, v3}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    new-instance v4, Lc8/Jk;

    iget-object v5, p0, Lc8/Kk;->this$0:Lc8/Lk;

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v4, v5, v6}, Lc8/Jk;-><init>(Lc8/Lk;Landroid/os/Messenger;)V

    .line 456
    invoke-virtual {v1, v2, v3, v4}, Lc8/Hk;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Lc8/Ik;)V

    goto :goto_0

    .line 461
    :pswitch_4
    iget-object v2, p0, Lc8/Kk;->mServiceBinderImpl:Lc8/Hk;

    const-string/jumbo v1, "data_media_item_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "data_result_receiver"

    .line 462
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/support/v4/os/ResultReceiver;

    new-instance v4, Lc8/Jk;

    iget-object v5, p0, Lc8/Kk;->this$0:Lc8/Lk;

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v4, v5, v6}, Lc8/Jk;-><init>(Lc8/Lk;Landroid/os/Messenger;)V

    .line 461
    invoke-virtual {v2, v3, v1, v4}, Lc8/Hk;->getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;Lc8/Ik;)V

    goto/16 :goto_0

    .line 466
    :pswitch_5
    iget-object v1, p0, Lc8/Kk;->mServiceBinderImpl:Lc8/Hk;

    new-instance v2, Lc8/Jk;

    iget-object v3, p0, Lc8/Kk;->this$0:Lc8/Lk;

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v2, v3, v4}, Lc8/Jk;-><init>(Lc8/Lk;Landroid/os/Messenger;)V

    const-string/jumbo v3, "data_root_hints"

    .line 467
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 466
    invoke-virtual {v1, v2, v3}, Lc8/Hk;->registerCallbacks(Lc8/Ik;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 470
    :pswitch_6
    iget-object v1, p0, Lc8/Kk;->mServiceBinderImpl:Lc8/Hk;

    new-instance v2, Lc8/Jk;

    iget-object v3, p0, Lc8/Kk;->this$0:Lc8/Lk;

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v2, v3, v4}, Lc8/Jk;-><init>(Lc8/Lk;Landroid/os/Messenger;)V

    invoke-virtual {v1, v2}, Lc8/Hk;->unregisterCallbacks(Lc8/Ik;)V

    goto/16 :goto_0

    .line 473
    :pswitch_7
    iget-object v2, p0, Lc8/Kk;->mServiceBinderImpl:Lc8/Hk;

    const-string/jumbo v1, "data_search_query"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "data_search_extras"

    .line 474
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v1, "data_result_receiver"

    .line 475
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/support/v4/os/ResultReceiver;

    new-instance v5, Lc8/Jk;

    iget-object v6, p0, Lc8/Kk;->this$0:Lc8/Lk;

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v5, v6, v7}, Lc8/Jk;-><init>(Lc8/Lk;Landroid/os/Messenger;)V

    .line 473
    invoke-virtual {v2, v3, v4, v1, v5}, Lc8/Hk;->search(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Lc8/Ik;)V

    goto/16 :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public postOrRun(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 496
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lc8/Kk;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 497
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 501
    :goto_0
    return-void

    .line 499
    :cond_0
    invoke-virtual {p0, p1}, Lc8/Kk;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "uptimeMillis"    # J

    .prologue
    .line 489
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 490
    .local v0, "data":Landroid/os/Bundle;
    const-class v1, Lc8/Tj;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 491
    const-string/jumbo v1, "data_calling_uid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 492
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v1

    return v1
.end method
