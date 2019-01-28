.class public final Lc8/cXe;
.super Ljava/lang/Object;
.source "AliyunRegister.java"

# interfaces
.implements Lcom/taobao/accs/IAppReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dXe;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAliyunAppReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$appCallback:Lcom/taobao/accs/IAliyunAppReceiver;


# direct methods
.method constructor <init>(Lcom/taobao/accs/IAliyunAppReceiver;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lc8/cXe;->val$appCallback:Lcom/taobao/accs/IAliyunAppReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllServices()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBindApp(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lc8/cXe;->val$appCallback:Lcom/taobao/accs/IAliyunAppReceiver;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lc8/cXe;->val$appCallback:Lcom/taobao/accs/IAliyunAppReceiver;

    invoke-static {p1}, Lcom/taobao/accs/ErrorCode;->convertError(I)Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/accs/IAliyunAppReceiver;->onBindApp(Lcom/taobao/accs/ErrorCode$INIT_ERROR;)V

    .line 98
    :cond_0
    return-void
.end method

.method public onBindUser(Ljava/lang/String;I)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 89
    return-void
.end method

.method public onData(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 84
    return-void
.end method

.method public onSendData(Ljava/lang/String;I)V
    .locals 0
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 79
    return-void
.end method

.method public onUnbindApp(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 74
    return-void
.end method

.method public onUnbindUser(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 70
    return-void
.end method
