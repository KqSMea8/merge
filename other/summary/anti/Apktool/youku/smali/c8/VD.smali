.class public Lc8/VD;
.super Ljava/lang/Object;
.source "WVAsyncAuthCheckCallBackforJsBridge.java"

# interfaces
.implements Lc8/TD;


# instance fields
.field TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "WVAsyncAuthCheckCallBackforJsBridge"

    iput-object v0, p0, Lc8/VD;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public callBackFail(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallMethodContext;)V
    .locals 2
    .param p1, "pageUrl"    # Ljava/lang/String;
    .param p2, "callmethod"    # Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    .prologue
    .line 47
    const/4 v0, 0x3

    invoke-static {v0, p2}, Lc8/fE;->startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V

    .line 48
    iget-object v0, p0, Lc8/VD;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Async preprocessor callBackSuccess ,"

    invoke-static {v0, v1}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public callBackSuccess(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallMethodContext;)V
    .locals 2
    .param p1, "pageUrl"    # Ljava/lang/String;
    .param p2, "callmethod"    # Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    .prologue
    .line 32
    invoke-static {p2, p1}, Lc8/fE;->aftercallMethod(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lc8/VD;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Async preprocessor callBackSuccess "

    invoke-static {v0, v1}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method
