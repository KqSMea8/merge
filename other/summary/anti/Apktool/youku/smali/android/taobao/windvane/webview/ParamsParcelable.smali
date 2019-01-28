.class public Landroid/taobao/windvane/webview/ParamsParcelable;
.super Ljava/lang/Object;
.source "ParamsParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/taobao/windvane/webview/ParamsParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private jsbridgeEnabled:Z

.field private navBarEnabled:Z

.field private showLoading:Z

.field private supportPullRefresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lc8/oI;

    invoke-direct {v0}, Lc8/oI;-><init>()V

    sput-object v0, Landroid/taobao/windvane/webview/ParamsParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->showLoading:Z

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->supportPullRefresh:Z

    .line 28
    iput-boolean v1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->navBarEnabled:Z

    .line 31
    iput-boolean v1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->jsbridgeEnabled:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->showLoading:Z

    .line 25
    iput-boolean v2, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->supportPullRefresh:Z

    .line 28
    iput-boolean v1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->navBarEnabled:Z

    .line 31
    iput-boolean v1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->jsbridgeEnabled:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->showLoading:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->supportPullRefresh:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->navBarEnabled:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->jsbridgeEnabled:Z

    .line 73
    return-void

    :cond_0
    move v0, v2

    .line 69
    goto :goto_0

    :cond_1
    move v0, v2

    .line 70
    goto :goto_1

    :cond_2
    move v0, v2

    .line 71
    goto :goto_2

    :cond_3
    move v1, v2

    .line 72
    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public isJsbridgeEnabled()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->jsbridgeEnabled:Z

    return v0
.end method

.method public isNavBarEnabled()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->navBarEnabled:Z

    return v0
.end method

.method public isShowLoading()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->showLoading:Z

    return v0
.end method

.method public isSupportPullRefresh()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->supportPullRefresh:Z

    return v0
.end method

.method public setJsbridgeEnabled(Z)V
    .locals 0
    .param p1, "jsbridgeEnabled"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->jsbridgeEnabled:Z

    .line 63
    return-void
.end method

.method public setNavBarEnabled(Z)V
    .locals 0
    .param p1, "navBarEnabled"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->navBarEnabled:Z

    .line 55
    return-void
.end method

.method public setShowLoading(Z)V
    .locals 0
    .param p1, "showLoading"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->showLoading:Z

    .line 39
    return-void
.end method

.method public setSupportPullRefresh(Z)V
    .locals 0
    .param p1, "supportPullRefresh"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->supportPullRefresh:Z

    .line 47
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->showLoading:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->supportPullRefresh:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->navBarEnabled:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/ParamsParcelable;->jsbridgeEnabled:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return-void

    :cond_0
    move v0, v2

    .line 92
    goto :goto_0

    :cond_1
    move v0, v2

    .line 93
    goto :goto_1

    :cond_2
    move v0, v2

    .line 94
    goto :goto_2

    :cond_3
    move v1, v2

    .line 95
    goto :goto_3
.end method
