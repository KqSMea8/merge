.class public Lc8/YLj;
.super Ljava/lang/Object;
.source "HomePageAidlInterfaceImpl.java"

# interfaces
.implements Lc8/dMj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/XLj;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HomePage.HomePageAidlInterfaceImpl"


# instance fields
.field private binder:Lc8/XLj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lc8/XLj;

    invoke-direct {v0, p0}, Lc8/XLj;-><init>(Lc8/YLj;)V

    iput-object v0, p0, Lc8/YLj;->binder:Lc8/XLj;

    .line 33
    iget-object v0, p0, Lc8/YLj;->binder:Lc8/XLj;

    return-object v0
.end method

.method public hideBubbleTip()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 25
    sget-object v0, Lcom/youku/ui/activity/HomePageActivity;->instance:Lcom/youku/ui/activity/HomePageActivity;

    invoke-virtual {v0}, Lcom/youku/ui/activity/HomePageActivity;->hideBubbleTip()V

    .line 26
    return-void
.end method

.method public showBubbleTip()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 20
    sget-object v0, Lcom/youku/ui/activity/HomePageActivity;->instance:Lcom/youku/ui/activity/HomePageActivity;

    invoke-virtual {v0}, Lcom/youku/ui/activity/HomePageActivity;->showBubbleTip()V

    .line 21
    return-void
.end method
