.class public abstract Lc8/WB;
.super Ljava/lang/Object;
.source "HttpConnectListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    .local p0, "this":Lc8/WB;, "Landroid/taobao/windvane/connect/HttpConnectListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 27
    .local p0, "this":Lc8/WB;, "Landroid/taobao/windvane/connect/HttpConnectListener<TT;>;"
    return-void
.end method

.method public abstract onFinish(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public onProcess(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 22
    .local p0, "this":Lc8/WB;, "Landroid/taobao/windvane/connect/HttpConnectListener<TT;>;"
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 19
    .local p0, "this":Lc8/WB;, "Landroid/taobao/windvane/connect/HttpConnectListener<TT;>;"
    return-void
.end method
