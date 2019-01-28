.class public Lc8/EN;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/GN;->onDataReceiveSize(IILanet/channel/bytes/ByteArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/GN;

.field final synthetic val$byteArray:Lanet/channel/bytes/ByteArray;

.field final synthetic val$index:I

.field final synthetic val$l:Lc8/SM;

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lc8/GN;Lanet/channel/bytes/ByteArray;IILc8/SM;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lc8/EN;->this$0:Lc8/GN;

    iput-object p2, p0, Lc8/EN;->val$byteArray:Lanet/channel/bytes/ByteArray;

    iput p3, p0, Lc8/EN;->val$total:I

    iput p4, p0, Lc8/EN;->val$index:I

    iput-object p5, p0, Lc8/EN;->val$l:Lc8/SM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 67
    iget-object v2, p0, Lc8/EN;->this$0:Lc8/GN;

    invoke-static {v2}, Lc8/GN;->access$000(Lc8/GN;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    new-instance v1, Lanetwork/channel/aidl/DefaultProgressEvent;

    invoke-direct {v1}, Lanetwork/channel/aidl/DefaultProgressEvent;-><init>()V

    .line 69
    .local v1, "progress":Lanetwork/channel/aidl/DefaultProgressEvent;
    iget-object v2, p0, Lc8/EN;->val$byteArray:Lanet/channel/bytes/ByteArray;

    invoke-virtual {v2}, Lanet/channel/bytes/ByteArray;->getDataLength()I

    move-result v2

    invoke-virtual {v1, v2}, Lanetwork/channel/aidl/DefaultProgressEvent;->setSize(I)V

    .line 70
    iget v2, p0, Lc8/EN;->val$total:I

    invoke-virtual {v1, v2}, Lanetwork/channel/aidl/DefaultProgressEvent;->setTotal(I)V

    .line 71
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lanetwork/channel/aidl/DefaultProgressEvent;->setDesc(Ljava/lang/String;)V

    .line 72
    iget v2, p0, Lc8/EN;->val$index:I

    invoke-virtual {v1, v2}, Lanetwork/channel/aidl/DefaultProgressEvent;->setIndex(I)V

    .line 73
    iget-object v2, p0, Lc8/EN;->val$byteArray:Lanet/channel/bytes/ByteArray;

    invoke-virtual {v2}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lanetwork/channel/aidl/DefaultProgressEvent;->setBytedata([B)V

    .line 75
    :try_start_0
    iget-object v2, p0, Lc8/EN;->val$l:Lc8/SM;

    invoke-interface {v2, v1}, Lc8/SM;->onDataReceived(Lanetwork/channel/aidl/DefaultProgressEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1    # "progress":Lanetwork/channel/aidl/DefaultProgressEvent;
    :cond_0
    :goto_0
    return-void

    .line 76
    .restart local v1    # "progress":Lanetwork/channel/aidl/DefaultProgressEvent;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "progress":Lanetwork/channel/aidl/DefaultProgressEvent;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lc8/EN;->this$0:Lc8/GN;

    invoke-static {v2}, Lc8/GN;->access$100(Lc8/GN;)Lc8/eN;

    move-result-object v2

    if-nez v2, :cond_2

    .line 82
    iget-object v2, p0, Lc8/EN;->this$0:Lc8/GN;

    new-instance v3, Lc8/eN;

    invoke-direct {v3}, Lc8/eN;-><init>()V

    invoke-static {v2, v3}, Lc8/GN;->access$102(Lc8/GN;Lc8/eN;)Lc8/eN;

    .line 83
    iget-object v2, p0, Lc8/EN;->this$0:Lc8/GN;

    invoke-static {v2}, Lc8/GN;->access$100(Lc8/GN;)Lc8/eN;

    move-result-object v2

    iget-object v3, p0, Lc8/EN;->this$0:Lc8/GN;

    invoke-static {v3}, Lc8/GN;->access$200(Lc8/GN;)Lc8/HN;

    move-result-object v3

    iget v4, p0, Lc8/EN;->val$total:I

    invoke-virtual {v2, v3, v4}, Lc8/eN;->init(Lc8/HN;I)V

    .line 84
    iget-object v2, p0, Lc8/EN;->this$0:Lc8/GN;

    invoke-static {v2}, Lc8/GN;->access$100(Lc8/GN;)Lc8/eN;

    move-result-object v2

    iget-object v3, p0, Lc8/EN;->val$byteArray:Lanet/channel/bytes/ByteArray;

    invoke-virtual {v2, v3}, Lc8/eN;->write(Lanet/channel/bytes/ByteArray;)V

    .line 85
    iget-object v2, p0, Lc8/EN;->val$l:Lc8/SM;

    iget-object v3, p0, Lc8/EN;->this$0:Lc8/GN;

    invoke-static {v3}, Lc8/GN;->access$100(Lc8/GN;)Lc8/eN;

    move-result-object v3

    invoke-interface {v2, v3}, Lc8/SM;->onInputStreamGet(Lc8/PM;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 90
    :catch_1
    move-exception v2

    iget-object v2, p0, Lc8/EN;->this$0:Lc8/GN;

    invoke-static {v2}, Lc8/GN;->access$100(Lc8/GN;)Lc8/eN;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 91
    :try_start_2
    iget-object v2, p0, Lc8/EN;->this$0:Lc8/GN;

    invoke-static {v2}, Lc8/GN;->access$100(Lc8/GN;)Lc8/eN;

    move-result-object v2

    invoke-virtual {v2}, Lc8/eN;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    .line 87
    :cond_2
    :try_start_3
    iget-object v2, p0, Lc8/EN;->this$0:Lc8/GN;

    invoke-static {v2}, Lc8/GN;->access$100(Lc8/GN;)Lc8/eN;

    move-result-object v2

    iget-object v3, p0, Lc8/EN;->val$byteArray:Lanet/channel/bytes/ByteArray;

    invoke-virtual {v2, v3}, Lc8/eN;->write(Lanet/channel/bytes/ByteArray;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
