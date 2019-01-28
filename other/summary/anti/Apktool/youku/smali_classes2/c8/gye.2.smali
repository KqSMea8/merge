.class public Lc8/gye;
.super Landroid/os/Handler;
.source "AidTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mye;
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
            "Lc8/fye;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 85
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 102
    iget-object v1, p0, Lc8/gye;->callBackReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fye;

    .line 103
    .local v0, "callBack":Lc8/fye;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 105
    :pswitch_0
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lc8/eye;

    invoke-virtual {v1}, Lc8/eye;->cloneAidInfo()Lc8/eye;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/fye;->onAidGenSuccessed(Lc8/eye;)V

    goto :goto_0

    .line 110
    :pswitch_1
    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-interface {v0, v1}, Lc8/fye;->onAidGenFailed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCallback(Lc8/fye;)V
    .locals 2
    .param p1, "mCallBack"    # Lc8/fye;

    .prologue
    .line 88
    iget-object v1, p0, Lc8/gye;->callBackReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lc8/gye;->callBackReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fye;

    .line 90
    .local v0, "callback":Lc8/fye;
    if-ne v0, p1, :cond_0

    .line 98
    .end local v0    # "callback":Lc8/fye;
    :goto_0
    return-void

    .line 93
    .restart local v0    # "callback":Lc8/fye;
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lc8/gye;->callBackReference:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 96
    .end local v0    # "callback":Lc8/fye;
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lc8/gye;->callBackReference:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method
