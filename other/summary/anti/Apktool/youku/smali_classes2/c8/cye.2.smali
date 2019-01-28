.class public Lc8/cye;
.super Ljava/lang/Object;
.source "AidTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mye;->initAidInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/mye;


# direct methods
.method constructor <init>(Lc8/mye;)V
    .locals 0
    .param p1, "this$0"    # Lc8/mye;

    .prologue
    .line 218
    iput-object p1, p0, Lc8/cye;->this$0:Lc8/mye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 221
    iget-object v4, p0, Lc8/cye;->this$0:Lc8/mye;

    invoke-static {v4}, Lc8/mye;->access$100(Lc8/mye;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v4

    if-nez v4, :cond_0

    .line 222
    const-string/jumbo v4, "AidTask"

    const-string/jumbo v5, "tryLock : false, return"

    invoke-static {v4, v5}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v4, p0, Lc8/cye;->this$0:Lc8/mye;

    invoke-virtual {v4}, Lc8/mye;->loadAidInfoFromCache()Lc8/eye;

    move-result-object v0

    .line 227
    .local v0, "aidInfo":Lc8/eye;
    if-nez v0, :cond_2

    .line 228
    const/4 v3, 0x1

    .line 230
    .local v3, "retry":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 232
    :try_start_0
    iget-object v4, p0, Lc8/cye;->this$0:Lc8/mye;

    invoke-static {v4}, Lc8/mye;->access$200(Lc8/mye;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "response":Ljava/lang/String;
    invoke-static {v2}, Lc8/eye;->parseJson(Ljava/lang/String;)Lc8/eye;

    move-result-object v0

    .line 234
    iget-object v4, p0, Lc8/cye;->this$0:Lc8/mye;

    invoke-static {v4, v2}, Lc8/mye;->access$300(Lc8/mye;Ljava/lang/String;)V

    .line 235
    iget-object v4, p0, Lc8/cye;->this$0:Lc8/mye;

    invoke-static {v4, v0}, Lc8/mye;->access$402(Lc8/mye;Lc8/eye;)Lc8/eye;

    .line 236
    iget-object v4, p0, Lc8/cye;->this$0:Lc8/mye;

    iget-object v5, p0, Lc8/cye;->this$0:Lc8/mye;

    invoke-static {v5}, Lc8/mye;->access$400(Lc8/mye;)Lc8/eye;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/mye;->access$500(Lc8/mye;Lc8/eye;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v2    # "response":Ljava/lang/String;
    .end local v3    # "retry":I
    :goto_1
    iget-object v4, p0, Lc8/cye;->this$0:Lc8/mye;

    invoke-static {v4}, Lc8/mye;->access$100(Lc8/mye;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 238
    .restart local v3    # "retry":I
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Lcom/sina/weibo/sdk/exception/WeiboException;
    const-string/jumbo v4, "AidTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AidTaskInit WeiboException Msg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/exception/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/qye;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    goto :goto_1

    .line 243
    .end local v1    # "e":Lcom/sina/weibo/sdk/exception/WeiboException;
    .end local v3    # "retry":I
    :cond_2
    iget-object v4, p0, Lc8/cye;->this$0:Lc8/mye;

    invoke-static {v4, v0}, Lc8/mye;->access$402(Lc8/mye;Lc8/eye;)Lc8/eye;

    goto :goto_1
.end method
