.class public final Lc8/nA;
.super Ljava/lang/Object;
.source "ServiceBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sA;->unbindService(Landroid/app/IServiceConnection;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$conn:Landroid/app/IServiceConnection;

.field final synthetic val$processOfRemoteService:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/IServiceConnection;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lc8/nA;->val$processOfRemoteService:Ljava/lang/String;

    iput-object p2, p0, Lc8/nA;->val$conn:Landroid/app/IServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 168
    :try_start_0
    iget-object v1, p0, Lc8/nA;->val$processOfRemoteService:Ljava/lang/String;

    invoke-static {v1}, Lc8/sA;->access$000(Ljava/lang/String;)Lc8/sA;

    move-result-object v1

    invoke-static {v1}, Lc8/sA;->access$100(Lc8/sA;)Lc8/jA;

    move-result-object v1

    iget-object v2, p0, Lc8/nA;->val$conn:Landroid/app/IServiceConnection;

    invoke-interface {v1, v2}, Lc8/jA;->unbindService(Landroid/app/IServiceConnection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
