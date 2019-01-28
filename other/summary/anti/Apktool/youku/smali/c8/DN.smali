.class public Lc8/DN;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/GN;->onResponseCode(ILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/GN;

.field final synthetic val$headers:Ljava/util/Map;

.field final synthetic val$l:Lc8/SM;

.field final synthetic val$responseCode:I


# direct methods
.method constructor <init>(Lc8/GN;Lc8/SM;ILjava/util/Map;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lc8/DN;->this$0:Lc8/GN;

    iput-object p2, p0, Lc8/DN;->val$l:Lc8/SM;

    iput p3, p0, Lc8/DN;->val$responseCode:I

    iput-object p4, p0, Lc8/DN;->val$headers:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lc8/DN;->val$l:Lc8/SM;

    iget v2, p0, Lc8/DN;->val$responseCode:I

    new-instance v3, Lanetwork/channel/aidl/ParcelableHeader;

    iget v4, p0, Lc8/DN;->val$responseCode:I

    iget-object v5, p0, Lc8/DN;->val$headers:Ljava/util/Map;

    invoke-direct {v3, v4, v5}, Lanetwork/channel/aidl/ParcelableHeader;-><init>(ILjava/util/Map;)V

    invoke-interface {v1, v2, v3}, Lc8/SM;->onResponseCode(ILanetwork/channel/aidl/ParcelableHeader;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
