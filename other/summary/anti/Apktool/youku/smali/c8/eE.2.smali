.class public Lc8/eE;
.super Landroid/os/AsyncTask;
.source "WVJsBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/fE;->callMethod(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Lc8/PD;Lc8/OD;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/fE;

.field final synthetic val$pageUrl:Ljava/lang/String;

.field final synthetic val$request:Landroid/taobao/windvane/jsbridge/WVCallMethodContext;


# direct methods
.method constructor <init>(Lc8/fE;Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lc8/eE;->this$0:Lc8/fE;

    iput-object p2, p0, Lc8/eE;->val$request:Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    iput-object p3, p0, Lc8/eE;->val$pageUrl:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 153
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/eE;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 156
    iget-object v0, p0, Lc8/eE;->this$0:Lc8/fE;

    iget-object v1, p0, Lc8/eE;->val$request:Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    iget-object v2, p0, Lc8/eE;->val$pageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/fE;->callMethod(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x0

    return-object v0
.end method
