.class public Lc8/RSh;
.super Ljava/lang/Object;
.source "TaobaoYoukuAccountJSBridge.java"

# interfaces
.implements Lc8/Mko;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/SSh;->bindAccount(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Mko",
        "<",
        "Lc8/Oko;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/SSh;

.field final synthetic val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method constructor <init>(Lc8/SSh;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0
    .param p1, "this$0"    # Lc8/SSh;

    .prologue
    .line 83
    iput-object p1, p0, Lc8/RSh;->this$0:Lc8/SSh;

    iput-object p2, p0, Lc8/RSh;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lc8/Oko;)V
    .locals 3
    .param p1, "result"    # Lc8/Oko;

    .prologue
    .line 93
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 94
    .local v0, "o":Lc8/kE;
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "error"

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v1, "code"

    invoke-virtual {p1}, Lc8/Oko;->getResultCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string/jumbo v1, "error"

    invoke-virtual {p1}, Lc8/Oko;->getResultMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lc8/RSh;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 98
    return-void
.end method

.method public onSuccess(Lc8/Oko;)V
    .locals 3
    .param p1, "result"    # Lc8/Oko;

    .prologue
    .line 86
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 87
    .local v0, "o":Lc8/kE;
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "success"

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lc8/RSh;->val$callback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 89
    return-void
.end method
