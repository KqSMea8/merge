.class public final Lc8/oI;
.super Ljava/lang/Object;
.source "ParamsParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/webview/ParamsParcelable;
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
        "Landroid/taobao/windvane/webview/ParamsParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/taobao/windvane/webview/ParamsParcelable;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 77
    new-instance v0, Landroid/taobao/windvane/webview/ParamsParcelable;

    invoke-direct {v0, p1}, Landroid/taobao/windvane/webview/ParamsParcelable;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lc8/oI;->createFromParcel(Landroid/os/Parcel;)Landroid/taobao/windvane/webview/ParamsParcelable;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/taobao/windvane/webview/ParamsParcelable;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 81
    new-array v0, p1, [Landroid/taobao/windvane/webview/ParamsParcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lc8/oI;->newArray(I)[Landroid/taobao/windvane/webview/ParamsParcelable;

    move-result-object v0

    return-object v0
.end method
