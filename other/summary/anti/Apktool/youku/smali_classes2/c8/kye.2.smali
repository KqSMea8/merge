.class public Lc8/kye;
.super Landroid/os/Handler;
.source "AidTask4Plug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/lye;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackHandler"
.end annotation


# instance fields
.field private callBackReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/jye;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 95
    iget-object v1, p0, Lc8/kye;->callBackReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/jye;

    .line 96
    .local v0, "callBack":Lc8/jye;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 98
    :pswitch_0
    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lc8/iye;

    invoke-virtual {v1}, Lc8/iye;->cloneAidInfo()Lc8/iye;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/jye;->onAidGenSuccessed(Lc8/iye;)V

    goto :goto_0

    .line 103
    :pswitch_1
    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-interface {v0, v1}, Lc8/jye;->onAidGenFailed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCallback(Lc8/jye;)V
    .locals 2
    .param p1, "mCallBack"    # Lc8/jye;

    .prologue
    .line 81
    iget-object v1, p0, Lc8/kye;->callBackReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lc8/kye;->callBackReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/jye;

    .line 83
    .local v0, "callback":Lc8/jye;
    if-ne v0, p1, :cond_0

    .line 91
    .end local v0    # "callback":Lc8/jye;
    :goto_0
    return-void

    .line 86
    .restart local v0    # "callback":Lc8/jye;
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lc8/kye;->callBackReference:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 89
    .end local v0    # "callback":Lc8/jye;
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lc8/kye;->callBackReference:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method
