.class public Lc8/zrf;
.super Ljava/lang/Object;
.source "MtopBridge.java"

# interfaces
.implements Lc8/AMf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Arf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MtopBridgeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Arf;

.field private wvCallBackContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method public constructor <init>(Lc8/Arf;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0
    .param p2, "wvCallBackContext"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 118
    iput-object p1, p0, Lc8/zrf;->this$0:Lc8/Arf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p2, p0, Lc8/zrf;->wvCallBackContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 120
    return-void
.end method


# virtual methods
.method public onError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 3
    .param p1, "requestType"    # I
    .param p2, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 134
    iget-object v0, p0, Lc8/zrf;->this$0:Lc8/Arf;

    iget-object v1, p0, Lc8/zrf;->this$0:Lc8/Arf;

    iget-object v2, p0, Lc8/zrf;->wvCallBackContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-static {v1, v2, p2}, Lc8/Arf;->access$300(Lc8/Arf;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Lmtopsdk/mtop/domain/MtopResponse;)Lc8/Brf;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Arf;->access$200(Lc8/Arf;Lc8/Brf;)V

    .line 135
    return-void
.end method

.method public onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lc8/cOp;Ljava/lang/Object;)V
    .locals 3
    .param p1, "requestType"    # I
    .param p2, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "pojo"    # Lc8/cOp;
    .param p4, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 129
    iget-object v0, p0, Lc8/zrf;->this$0:Lc8/Arf;

    iget-object v1, p0, Lc8/zrf;->this$0:Lc8/Arf;

    iget-object v2, p0, Lc8/zrf;->wvCallBackContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-static {v1, v2, p2}, Lc8/Arf;->access$300(Lc8/Arf;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Lmtopsdk/mtop/domain/MtopResponse;)Lc8/Brf;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Arf;->access$200(Lc8/Arf;Lc8/Brf;)V

    .line 130
    return-void
.end method

.method public onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V
    .locals 3
    .param p1, "requestType"    # I
    .param p2, "response"    # Lmtopsdk/mtop/domain/MtopResponse;
    .param p3, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 124
    iget-object v0, p0, Lc8/zrf;->this$0:Lc8/Arf;

    iget-object v1, p0, Lc8/zrf;->this$0:Lc8/Arf;

    iget-object v2, p0, Lc8/zrf;->wvCallBackContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-static {v1, v2, p2}, Lc8/Arf;->access$300(Lc8/Arf;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Lmtopsdk/mtop/domain/MtopResponse;)Lc8/Brf;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Arf;->access$200(Lc8/Arf;Lc8/Brf;)V

    .line 125
    return-void
.end method
