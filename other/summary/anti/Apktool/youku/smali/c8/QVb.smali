.class public final Lc8/QVb;
.super Ljava/lang/Object;
.source "DimensionValueSet.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
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
        "Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 163
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->readFromParcel(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lc8/QVb;->createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 168
    new-array v0, p1, [Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lc8/QVb;->newArray(I)[Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    return-object v0
.end method
