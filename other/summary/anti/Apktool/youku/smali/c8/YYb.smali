.class public final Lc8/YYb;
.super Ljava/lang/Object;
.source "InternalDebugger.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ZYb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProxyWVHandlerCB"
.end annotation


# instance fields
.field private final mCore:Landroid/os/Handler$Callback;


# direct methods
.method private constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "core"    # Landroid/os/Handler$Callback;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lc8/YYb;->mCore:Landroid/os/Handler$Callback;

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler$Callback;Lc8/WYb;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler$Callback;
    .param p2, "x1"    # Lc8/WYb;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lc8/YYb;-><init>(Landroid/os/Handler$Callback;)V

    return-void
.end method

.method private agentWVPluginMethod(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;)Z
    .locals 8
    .param p1, "callmethod"    # Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    .prologue
    .line 135
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/alibaba/poplayer/utils/ConsoleLogger;->encodeWindvaneInfo(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lc8/lZb;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    new-instance v0, Lc8/XYb;

    iget-object v2, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    iget-object v3, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->token:Ljava/lang/String;

    iget-object v4, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    iget-object v5, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lc8/XYb;-><init>(Lc8/YYb;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallMethodContext;)V

    .line 151
    .local v0, "callback":Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    iget-object v7, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->classinstance:Ljava/lang/Object;

    .line 152
    .local v7, "object":Ljava/lang/Object;
    check-cast v7, Lc8/RD;

    .end local v7    # "object":Ljava/lang/Object;
    iget-object v2, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    iget-object v1, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "{}"

    :goto_0
    invoke-virtual {v7, v2, v1, v0}, Lc8/RD;->execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    const/4 v1, 0x2

    invoke-static {v1, p1}, Lc8/fE;->startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V

    .line 155
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 152
    :cond_1
    iget-object v1, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 121
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lc8/YYb;->mCore:Landroid/os/Handler$Callback;

    invoke-interface {v1, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    .line 131
    :goto_0
    return v1

    .line 124
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    .line 125
    .local v0, "callmethod":Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    if-nez v0, :cond_1

    .line 126
    const/4 v1, 0x0

    goto :goto_0

    .line 128
    :cond_1
    invoke-static {}, Lc8/ZYb;->access$100()Ljava/util/Set;

    move-result-object v1

    iget-object v2, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lc8/ZYb;->access$100()Ljava/util/Set;

    move-result-object v1

    const-string/jumbo v2, "*"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    :cond_2
    invoke-direct {p0, v0}, Lc8/YYb;->agentWVPluginMethod(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;)Z

    move-result v1

    goto :goto_0

    .line 131
    :cond_3
    iget-object v1, p0, Lc8/YYb;->mCore:Landroid/os/Handler$Callback;

    invoke-interface {v1, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    goto :goto_0
.end method
