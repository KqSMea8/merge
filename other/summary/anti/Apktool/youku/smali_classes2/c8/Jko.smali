.class public Lc8/Jko;
.super Ljava/lang/Object;
.source "PassportJSBridge.java"

# interfaces
.implements Lc8/Mko;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Lko;->bindThirdAccount(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
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
.field final synthetic this$0:Lc8/Lko;

.field final synthetic val$aCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method constructor <init>(Lc8/Lko;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Lko;

    .prologue
    .line 132
    iput-object p1, p0, Lc8/Jko;->this$0:Lc8/Lko;

    iput-object p2, p0, Lc8/Jko;->val$aCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lc8/Oko;)V
    .locals 2
    .param p1, "aResult"    # Lc8/Oko;

    .prologue
    .line 142
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 143
    .local v0, "result":Lc8/kE;
    invoke-virtual {p1}, Lc8/Oko;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/kE;->setData(Lorg/json/JSONObject;)V

    .line 144
    iget-object v1, p0, Lc8/Jko;->val$aCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 145
    return-void
.end method

.method public onSuccess(Lc8/Oko;)V
    .locals 2
    .param p1, "aResult"    # Lc8/Oko;

    .prologue
    .line 135
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 136
    .local v0, "result":Lc8/kE;
    invoke-virtual {p1}, Lc8/Oko;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/kE;->setData(Lorg/json/JSONObject;)V

    .line 137
    iget-object v1, p0, Lc8/Jko;->val$aCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 138
    return-void
.end method
