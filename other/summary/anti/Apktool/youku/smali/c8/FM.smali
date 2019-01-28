.class public Lc8/FM;
.super Lc8/CM;
.source "NetworkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/aidl/NetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanetwork/channel/aidl/NetworkService;


# direct methods
.method public constructor <init>(Lanetwork/channel/aidl/NetworkService;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 30
    iput-object p1, p0, Lc8/FM;->this$0:Lanetwork/channel/aidl/NetworkService;

    invoke-direct {p0}, Lc8/CM;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lc8/XM;
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lc8/FM;->this$0:Lanetwork/channel/aidl/NetworkService;

    invoke-static {v0}, Lanetwork/channel/aidl/NetworkService;->access$000(Lanetwork/channel/aidl/NetworkService;)[Lc8/WM;

    move-result-object v0

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 34
    packed-switch p1, :pswitch_data_0

    .line 39
    iget-object v0, p0, Lc8/FM;->this$0:Lanetwork/channel/aidl/NetworkService;

    invoke-static {v0}, Lanetwork/channel/aidl/NetworkService;->access$000(Lanetwork/channel/aidl/NetworkService;)[Lc8/WM;

    move-result-object v0

    new-instance v1, Lc8/LN;

    iget-object v2, p0, Lc8/FM;->this$0:Lanetwork/channel/aidl/NetworkService;

    invoke-static {v2}, Lanetwork/channel/aidl/NetworkService;->access$100(Lanetwork/channel/aidl/NetworkService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/LN;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p1

    .line 43
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/FM;->this$0:Lanetwork/channel/aidl/NetworkService;

    invoke-static {v0}, Lanetwork/channel/aidl/NetworkService;->access$000(Lanetwork/channel/aidl/NetworkService;)[Lc8/WM;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0

    .line 36
    :pswitch_0
    iget-object v0, p0, Lc8/FM;->this$0:Lanetwork/channel/aidl/NetworkService;

    invoke-static {v0}, Lanetwork/channel/aidl/NetworkService;->access$000(Lanetwork/channel/aidl/NetworkService;)[Lc8/WM;

    move-result-object v0

    new-instance v1, Lc8/tN;

    iget-object v2, p0, Lc8/FM;->this$0:Lanetwork/channel/aidl/NetworkService;

    invoke-static {v2}, Lanetwork/channel/aidl/NetworkService;->access$100(Lanetwork/channel/aidl/NetworkService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/tN;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p1

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
