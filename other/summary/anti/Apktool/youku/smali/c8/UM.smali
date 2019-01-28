.class public final Lc8/UM;
.super Ljava/lang/Object;
.source "ParcelableRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/aidl/ParcelableRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lanetwork/channel/aidl/ParcelableRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableRequest;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 203
    invoke-static {p1}, Lanetwork/channel/aidl/ParcelableRequest;->readFromParcel(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lc8/UM;->createFromParcel(Landroid/os/Parcel;)Lanetwork/channel/aidl/ParcelableRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lanetwork/channel/aidl/ParcelableRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 208
    new-array v0, p1, [Lanetwork/channel/aidl/ParcelableRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lc8/UM;->newArray(I)[Lanetwork/channel/aidl/ParcelableRequest;

    move-result-object v0

    return-object v0
.end method
