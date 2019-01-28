.class public final Lc8/pAo;
.super Lc8/fAo;
.source "VipPayAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/uAo;->handleIsVip(Lc8/kAo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$vipListener:Lc8/kAo;


# direct methods
.method constructor <init>(Lc8/kAo;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lc8/pAo;->val$vipListener:Lc8/kAo;

    invoke-direct {p0}, Lc8/fAo;-><init>()V

    return-void
.end method


# virtual methods
.method public setVip(Z)V
    .locals 2
    .param p1, "isVip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 218
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lc8/oAo;

    invoke-direct {v1, p0, p1}, Lc8/oAo;-><init>(Lc8/pAo;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 226
    return-void
.end method
