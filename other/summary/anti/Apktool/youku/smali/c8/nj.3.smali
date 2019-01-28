.class public Lc8/nj;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Lc8/Uj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StubApi21"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/oj;


# direct methods
.method constructor <init>(Lc8/oj;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lc8/nj;->this$0:Lc8/oj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lc8/nj;->this$0:Lc8/oj;

    iget-object v0, v0, Lc8/oj;->mConnectionCallbackInternal:Lc8/mj;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lc8/nj;->this$0:Lc8/oj;

    iget-object v0, v0, Lc8/oj;->mConnectionCallbackInternal:Lc8/mj;

    invoke-interface {v0}, Lc8/mj;->onConnected()V

    .line 574
    :cond_0
    iget-object v0, p0, Lc8/nj;->this$0:Lc8/oj;

    invoke-virtual {v0}, Lc8/oj;->onConnected()V

    .line 575
    return-void
.end method

.method public onConnectionFailed()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lc8/nj;->this$0:Lc8/oj;

    iget-object v0, v0, Lc8/oj;->mConnectionCallbackInternal:Lc8/mj;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lc8/nj;->this$0:Lc8/oj;

    iget-object v0, v0, Lc8/oj;->mConnectionCallbackInternal:Lc8/mj;

    invoke-interface {v0}, Lc8/mj;->onConnectionFailed()V

    .line 590
    :cond_0
    iget-object v0, p0, Lc8/nj;->this$0:Lc8/oj;

    invoke-virtual {v0}, Lc8/oj;->onConnectionFailed()V

    .line 591
    return-void
.end method

.method public onConnectionSuspended()V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lc8/nj;->this$0:Lc8/oj;

    iget-object v0, v0, Lc8/oj;->mConnectionCallbackInternal:Lc8/mj;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lc8/nj;->this$0:Lc8/oj;

    iget-object v0, v0, Lc8/oj;->mConnectionCallbackInternal:Lc8/mj;

    invoke-interface {v0}, Lc8/mj;->onConnectionSuspended()V

    .line 582
    :cond_0
    iget-object v0, p0, Lc8/nj;->this$0:Lc8/oj;

    invoke-virtual {v0}, Lc8/oj;->onConnectionSuspended()V

    .line 583
    return-void
.end method
