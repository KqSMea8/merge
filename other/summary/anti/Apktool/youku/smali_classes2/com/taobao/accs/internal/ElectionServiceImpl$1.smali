.class public Lcom/taobao/accs/internal/ElectionServiceImpl$1;
.super Lcom/taobao/accs/base/AccsAbstractDataListener;
.source "ElectionServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/internal/ElectionServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/internal/ElectionServiceImpl;


# direct methods
.method constructor <init>(Lcom/taobao/accs/internal/ElectionServiceImpl;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/taobao/accs/internal/ElectionServiceImpl$1;->this$0:Lcom/taobao/accs/internal/ElectionServiceImpl;

    invoke-direct {p0}, Lcom/taobao/accs/base/AccsAbstractDataListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 393
    return-void
.end method

.method public onData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "dataId"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 388
    return-void
.end method

.method public onResponse(Ljava/lang/String;Ljava/lang/String;I[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 2
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "response"    # [B
    .param p5, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/taobao/accs/internal/ElectionServiceImpl$1;->this$0:Lcom/taobao/accs/internal/ElectionServiceImpl;

    invoke-static {v0, p4, p3}, Lcom/taobao/accs/internal/ElectionServiceImpl;->access$000(Lcom/taobao/accs/internal/ElectionServiceImpl;[BI)V

    .line 408
    iget-object v0, p0, Lcom/taobao/accs/internal/ElectionServiceImpl$1;->this$0:Lcom/taobao/accs/internal/ElectionServiceImpl;

    invoke-static {v0}, Lcom/taobao/accs/internal/ElectionServiceImpl;->access$100(Lcom/taobao/accs/internal/ElectionServiceImpl;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/taobao/accs/internal/ElectionServiceImpl$1;->this$0:Lcom/taobao/accs/internal/ElectionServiceImpl;

    invoke-static {v0}, Lcom/taobao/accs/internal/ElectionServiceImpl;->access$100(Lcom/taobao/accs/internal/ElectionServiceImpl;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 411
    :cond_0
    return-void
.end method

.method public onSendData(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 403
    return-void
.end method

.method public onUnbind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "info"    # Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    .prologue
    .line 398
    return-void
.end method
