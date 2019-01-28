.class public Lc8/AAb;
.super Ljava/lang/Object;
.source "UTNetWorkStatusChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/CAb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetWorkStatusCheckerRunnable"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lc8/CAb;


# direct methods
.method public constructor <init>(Lc8/CAb;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lc8/AAb;->this$0:Lc8/CAb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 125
    iget-object v3, p0, Lc8/AAb;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v3, p0, Lc8/AAb;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lc8/yAb;->isConnectInternet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    iget-object v3, p0, Lc8/AAb;->this$0:Lc8/CAb;

    iget-object v4, p0, Lc8/AAb;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lc8/CAb;->getNetworkState(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "connectionInfo":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 134
    iget-object v3, p0, Lc8/AAb;->this$0:Lc8/CAb;

    invoke-static {v3}, Lc8/CAb;->access$300(Lc8/CAb;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lc8/AAb;->this$0:Lc8/CAb;

    invoke-static {v3}, Lc8/CAb;->access$300(Lc8/CAb;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lc8/AAb;->this$0:Lc8/CAb;

    invoke-static {v3}, Lc8/CAb;->access$300(Lc8/CAb;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    if-eqz v3, :cond_2

    iget-object v3, p0, Lc8/AAb;->this$0:Lc8/CAb;

    invoke-static {v3}, Lc8/CAb;->access$300(Lc8/CAb;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lc8/AAb;->this$0:Lc8/CAb;

    invoke-static {v3}, Lc8/CAb;->access$300(Lc8/CAb;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/AAb;->this$0:Lc8/CAb;

    invoke-static {v3}, Lc8/CAb;->access$300(Lc8/CAb;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/AAb;->this$0:Lc8/CAb;

    invoke-static {v3}, Lc8/CAb;->access$300(Lc8/CAb;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    aget-object v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    :cond_3
    iget-object v3, p0, Lc8/AAb;->this$0:Lc8/CAb;

    invoke-static {v3}, Lc8/CAb;->access$400(Lc8/CAb;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 138
    iget-object v3, p0, Lc8/AAb;->this$0:Lc8/CAb;

    invoke-static {v3}, Lc8/CAb;->access$400(Lc8/CAb;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/uAb;

    .line 139
    .local v2, "listener":Lc8/uAb;
    iget-object v3, p0, Lc8/AAb;->mContext:Landroid/content/Context;

    aget-object v4, v0, v6

    aget-object v5, v0, v7

    invoke-interface {v2, v3, v4, v5}, Lc8/uAb;->onConnectionChange(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 142
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lc8/uAb;
    :cond_4
    iget-object v3, p0, Lc8/AAb;->this$0:Lc8/CAb;

    invoke-static {v3, v0}, Lc8/CAb;->access$302(Lc8/CAb;[Ljava/lang/String;)[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 120
    iput-object p1, p0, Lc8/AAb;->mContext:Landroid/content/Context;

    .line 121
    return-void
.end method
