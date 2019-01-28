.class public final Lc8/APp;
.super Ljava/lang/Object;
.source "ParcelableRequestBodyImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/network/domain/ParcelableRequestBodyImpl;
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
        "Lmtopsdk/network/domain/ParcelableRequestBodyImpl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lc8/APp;->createFromParcel(Landroid/os/Parcel;)Lmtopsdk/network/domain/ParcelableRequestBodyImpl;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmtopsdk/network/domain/ParcelableRequestBodyImpl;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 61
    new-instance v0, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;

    invoke-direct {v0, p1}, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lc8/APp;->newArray(I)[Lmtopsdk/network/domain/ParcelableRequestBodyImpl;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmtopsdk/network/domain/ParcelableRequestBodyImpl;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 66
    new-array v0, p1, [Lmtopsdk/network/domain/ParcelableRequestBodyImpl;

    return-object v0
.end method
