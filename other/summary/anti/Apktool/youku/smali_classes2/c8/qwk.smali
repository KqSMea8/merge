.class public Lc8/qwk;
.super Ljava/lang/Object;
.source "YKFreeFlowWVPlugin.java"

# interfaces
.implements Lc8/Ivk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/rwk;->execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/rwk;

.field final synthetic val$encodeUserId:Ljava/lang/String;

.field final synthetic val$result:Lc8/kE;

.field final synthetic val$wvCallBackContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method constructor <init>(Lc8/rwk;Lc8/kE;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lc8/qwk;->this$0:Lc8/rwk;

    iput-object p2, p0, Lc8/qwk;->val$result:Lc8/kE;

    iput-object p3, p0, Lc8/qwk;->val$encodeUserId:Ljava/lang/String;

    iput-object p4, p0, Lc8/qwk;->val$wvCallBackContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 4
    .param p1, "failInfo"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lc8/qwk;->val$result:Lc8/kE;

    const-string/jumbo v1, "phone"

    iget-object v2, p0, Lc8/qwk;->val$encodeUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lc8/qwk;->val$result:Lc8/kE;

    const-string/jumbo v1, "error"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lc8/qwk;->val$result:Lc8/kE;

    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1, p1}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lc8/qwk;->val$result:Lc8/kE;

    const-string/jumbo v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lc8/qwk;->val$wvCallBackContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    iget-object v1, p0, Lc8/qwk;->val$result:Lc8/kE;

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 64
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "successMessage"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lc8/qwk;->val$result:Lc8/kE;

    const-string/jumbo v1, "phone"

    iget-object v2, p0, Lc8/qwk;->val$encodeUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lc8/qwk;->val$result:Lc8/kE;

    const-string/jumbo v1, "error"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lc8/qwk;->val$result:Lc8/kE;

    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1, p1}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lc8/qwk;->val$result:Lc8/kE;

    const-string/jumbo v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lc8/qwk;->val$wvCallBackContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    iget-object v1, p0, Lc8/qwk;->val$result:Lc8/kE;

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 55
    return-void
.end method
