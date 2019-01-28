.class public Lcom/taobao/accs/net/InAppConnection$4;
.super Ljava/lang/Object;
.source "InAppConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/net/InAppConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/net/InAppConnection;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/InAppConnection;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/taobao/accs/net/InAppConnection$4;->this$0:Lcom/taobao/accs/net/InAppConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 344
    :try_start_0
    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$4;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v1, v1, Lcom/taobao/accs/net/InAppConnection;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$4;->this$0:Lcom/taobao/accs/net/InAppConnection;

    invoke-virtual {v1}, Lcom/taobao/accs/net/InAppConnection;->getAppkey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$4;->this$0:Lcom/taobao/accs/net/InAppConnection;

    invoke-virtual {v1}, Lcom/taobao/accs/net/InAppConnection;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mTryStartServiceRunable bindapp"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    iget-object v1, p0, Lcom/taobao/accs/net/InAppConnection$4;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v2, p0, Lcom/taobao/accs/net/InAppConnection$4;->this$0:Lcom/taobao/accs/net/InAppConnection;

    iget-object v2, v2, Lcom/taobao/accs/net/InAppConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/taobao/accs/net/InAppConnection;->startChannelService(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
