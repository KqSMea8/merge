.class public Landroid/support/v4/os/ResultReceiver;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/El;,
        Lc8/Fl;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/os/ResultReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mHandler:Landroid/os/Handler;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field final mLocal:Z

.field mReceiver:Lc8/Cl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lc8/Dl;

    invoke-direct {v0}, Lc8/Dl;-><init>()V

    sput-object v0, Landroid/support/v4/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/os/ResultReceiver;->mLocal:Z

    .line 82
    iput-object p1, p0, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/os/ResultReceiver;->mLocal:Z

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lc8/Bl;->asInterface(Landroid/os/IBinder;)Lc8/Cl;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/os/ResultReceiver;->mReceiver:Lc8/Cl;

    .line 139
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 118
    return-void
.end method

.method public send(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/support/v4/os/ResultReceiver;->mLocal:Z

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lc8/Fl;

    invoke-direct {v1, p0, p1, p2}, Lc8/Fl;-><init>(Landroid/support/v4/os/ResultReceiver;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Landroid/support/v4/os/ResultReceiver;->mReceiver:Lc8/Cl;

    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/os/ResultReceiver;->mReceiver:Lc8/Cl;

    invoke-interface {v0, p1, p2}, Lc8/Cl;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/os/ResultReceiver;->mReceiver:Lc8/Cl;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lc8/El;

    invoke-direct {v0, p0}, Lc8/El;-><init>(Landroid/support/v4/os/ResultReceiver;)V

    iput-object v0, p0, Landroid/support/v4/os/ResultReceiver;->mReceiver:Lc8/Cl;

    .line 131
    :cond_0
    iget-object v0, p0, Landroid/support/v4/os/ResultReceiver;->mReceiver:Lc8/Cl;

    invoke-interface {v0}, Lc8/Cl;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
