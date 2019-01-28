.class public Lc8/FGd;
.super Ljava/lang/Object;
.source "DefaultLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/HGd;->flush(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/HGd;


# direct methods
.method constructor <init>(Lc8/HGd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/HGd;

    .prologue
    .line 135
    iput-object p1, p0, Lc8/FGd;->this$0:Lc8/HGd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v1, "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;>;"
    iget-object v2, p0, Lc8/FGd;->this$0:Lc8/HGd;

    invoke-static {v2}, Lc8/HGd;->access$000(Lc8/HGd;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 140
    :try_start_0
    iget-object v2, p0, Lc8/FGd;->this$0:Lc8/HGd;

    invoke-static {v2}, Lc8/HGd;->access$100(Lc8/HGd;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 141
    iget-object v2, p0, Lc8/FGd;->this$0:Lc8/HGd;

    invoke-static {v2}, Lc8/HGd;->access$000(Lc8/HGd;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    iget-object v2, p0, Lc8/FGd;->this$0:Lc8/HGd;

    invoke-static {v2}, Lc8/HGd;->access$000(Lc8/HGd;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 143
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :try_start_1
    iget-object v2, p0, Lc8/FGd;->this$0:Lc8/HGd;

    invoke-static {v2}, Lc8/HGd;->access$300(Lc8/HGd;)Lc8/MGd;

    move-result-object v2

    iget-object v3, p0, Lc8/FGd;->this$0:Lc8/HGd;

    invoke-static {v3}, Lc8/HGd;->access$200(Lc8/HGd;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/MGd;->open(Ljava/lang/String;)V

    .line 146
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/GGd;

    .line 147
    .local v0, "logInfo":Lc8/GGd;
    iget-object v3, p0, Lc8/FGd;->this$0:Lc8/HGd;

    invoke-static {v3}, Lc8/HGd;->access$300(Lc8/HGd;)Lc8/MGd;

    move-result-object v3

    iget-object v4, v0, Lc8/GGd;->header:Ljava/lang/String;

    iget-object v5, v0, Lc8/GGd;->tag:Ljava/lang/String;

    iget-object v6, v0, Lc8/GGd;->msg:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lc8/MGd;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .end local v0    # "logInfo":Lc8/GGd;
    :catch_0
    move-exception v2

    .line 153
    :try_start_2
    iget-object v2, p0, Lc8/FGd;->this$0:Lc8/HGd;

    invoke-static {v2}, Lc8/HGd;->access$300(Lc8/HGd;)Lc8/MGd;

    move-result-object v2

    invoke-virtual {v2}, Lc8/MGd;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 157
    :goto_1
    return-void

    .line 143
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 153
    :cond_0
    :try_start_4
    iget-object v2, p0, Lc8/FGd;->this$0:Lc8/HGd;

    invoke-static {v2}, Lc8/HGd;->access$300(Lc8/HGd;)Lc8/MGd;

    move-result-object v2

    invoke-virtual {v2}, Lc8/MGd;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 157
    :catch_1
    move-exception v2

    goto :goto_1

    .line 152
    :catchall_1
    move-exception v2

    .line 153
    :try_start_5
    iget-object v3, p0, Lc8/FGd;->this$0:Lc8/HGd;

    invoke-static {v3}, Lc8/HGd;->access$300(Lc8/HGd;)Lc8/MGd;

    move-result-object v3

    invoke-virtual {v3}, Lc8/MGd;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 156
    :goto_2
    throw v2

    :catch_2
    move-exception v3

    goto :goto_2

    .line 157
    :catch_3
    move-exception v2

    goto :goto_1
.end method
