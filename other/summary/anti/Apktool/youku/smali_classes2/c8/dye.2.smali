.class public Lc8/dye;
.super Ljava/lang/Object;
.source "AidTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mye;->generateAid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/fye;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/mye;

.field final synthetic val$callback:Lc8/fye;


# direct methods
.method constructor <init>(Lc8/mye;Lc8/fye;)V
    .locals 0
    .param p1, "this$0"    # Lc8/mye;

    .prologue
    .line 308
    iput-object p1, p0, Lc8/dye;->this$0:Lc8/mye;

    iput-object p2, p0, Lc8/dye;->val$callback:Lc8/fye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 311
    iget-object v5, p0, Lc8/dye;->this$0:Lc8/mye;

    invoke-static {v5}, Lc8/mye;->access$100(Lc8/mye;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 313
    iget-object v5, p0, Lc8/dye;->this$0:Lc8/mye;

    invoke-virtual {v5}, Lc8/mye;->loadAidInfoFromCache()Lc8/eye;

    move-result-object v0

    .line 314
    .local v0, "aidInfo":Lc8/eye;
    const/4 v4, 0x0

    .line 315
    .local v4, "throwable":Ljava/lang/Exception;
    if-nez v0, :cond_0

    .line 317
    :try_start_0
    iget-object v5, p0, Lc8/dye;->this$0:Lc8/mye;

    invoke-static {v5}, Lc8/mye;->access$200(Lc8/mye;)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "response":Ljava/lang/String;
    invoke-static {v3}, Lc8/eye;->parseJson(Ljava/lang/String;)Lc8/eye;

    move-result-object v0

    .line 319
    iget-object v5, p0, Lc8/dye;->this$0:Lc8/mye;

    invoke-static {v5, v3}, Lc8/mye;->access$300(Lc8/mye;Ljava/lang/String;)V

    .line 320
    iget-object v5, p0, Lc8/dye;->this$0:Lc8/mye;

    invoke-static {v5, v0}, Lc8/mye;->access$402(Lc8/mye;Lc8/eye;)Lc8/eye;
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v3    # "response":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v5, p0, Lc8/dye;->this$0:Lc8/mye;

    invoke-static {v5}, Lc8/mye;->access$100(Lc8/mye;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 328
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 329
    .local v2, "msg":Landroid/os/Message;
    if-eqz v0, :cond_1

    .line 330
    const/16 v5, 0x3e9

    iput v5, v2, Landroid/os/Message;->what:I

    .line 331
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 336
    :goto_1
    iget-object v5, p0, Lc8/dye;->this$0:Lc8/mye;

    invoke-static {v5}, Lc8/mye;->access$600(Lc8/mye;)Lc8/gye;

    move-result-object v5

    iget-object v6, p0, Lc8/dye;->val$callback:Lc8/fye;

    invoke-virtual {v5, v6}, Lc8/gye;->setCallback(Lc8/fye;)V

    .line 337
    iget-object v5, p0, Lc8/dye;->this$0:Lc8/mye;

    invoke-static {v5}, Lc8/mye;->access$600(Lc8/mye;)Lc8/gye;

    move-result-object v5

    invoke-virtual {v5, v2}, Lc8/gye;->sendMessage(Landroid/os/Message;)Z

    .line 338
    return-void

    .line 321
    .end local v2    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Lcom/sina/weibo/sdk/exception/WeiboException;
    move-object v4, v1

    .line 323
    const-string/jumbo v5, "AidTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AidTaskInit WeiboException Msg : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    .end local v1    # "e":Lcom/sina/weibo/sdk/exception/WeiboException;
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_1
    const/16 v5, 0x3ea

    iput v5, v2, Landroid/os/Message;->what:I

    .line 334
    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method
