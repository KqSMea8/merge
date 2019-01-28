.class public Lc8/XLj;
.super Lc8/cMj;
.source "HomePageAidlInterfaceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/YLj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HomePageAidlInterfaceImplStub"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/YLj;


# direct methods
.method public constructor <init>(Lc8/YLj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/YLj;

    .prologue
    .line 36
    iput-object p1, p0, Lc8/XLj;->this$0:Lc8/YLj;

    invoke-direct {p0}, Lc8/cMj;-><init>()V

    return-void
.end method


# virtual methods
.method public hideBubbleTip()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lc8/XLj;->this$0:Lc8/YLj;

    invoke-virtual {v0}, Lc8/YLj;->hideBubbleTip()V

    .line 48
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
    .line 41
    iget-object v0, p0, Lc8/XLj;->this$0:Lc8/YLj;

    invoke-virtual {v0}, Lc8/YLj;->showBubbleTip()V

    .line 42
    return-void
.end method
