.class public interface abstract Lc8/XM;
.super Ljava/lang/Object;
.source "RemoteNetwork.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/WM;
    }
.end annotation


# virtual methods
.method public abstract asyncSend(Lanetwork/channel/aidl/ParcelableRequest;Lc8/SM;)Lc8/LM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getConnection(Lanetwork/channel/aidl/ParcelableRequest;)Lc8/yM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract syncSend(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/NetworkResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
