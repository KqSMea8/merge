.class public final Lc8/XPp;
.super Ljava/lang/Object;
.source "ParcelableRequestBodyEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/network/impl/ParcelableRequestBodyEntry;
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
        "Lmtopsdk/network/impl/ParcelableRequestBodyEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lc8/XPp;->createFromParcel(Landroid/os/Parcel;)Lmtopsdk/network/impl/ParcelableRequestBodyEntry;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmtopsdk/network/impl/ParcelableRequestBodyEntry;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 52
    new-instance v0, Lmtopsdk/network/impl/ParcelableRequestBodyEntry;

    invoke-direct {v0, p1}, Lmtopsdk/network/impl/ParcelableRequestBodyEntry;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lc8/XPp;->newArray(I)[Lmtopsdk/network/impl/ParcelableRequestBodyEntry;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmtopsdk/network/impl/ParcelableRequestBodyEntry;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 57
    new-array v0, p1, [Lmtopsdk/network/impl/ParcelableRequestBodyEntry;

    return-object v0
.end method
