.class public final Lc8/AN;
.super Ljava/lang/Object;
.source "BodyHandlerEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/entity/BodyHandlerEntry;
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
        "Lanetwork/channel/entity/BodyHandlerEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lanetwork/channel/entity/BodyHandlerEntry;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 65
    new-instance v0, Lanetwork/channel/entity/BodyHandlerEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanetwork/channel/entity/BodyHandlerEntry;-><init>(Lc8/AN;)V

    .line 66
    .local v0, "bodyHandlerEntry":Lanetwork/channel/entity/BodyHandlerEntry;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lc8/cN;->asInterface(Landroid/os/IBinder;)Lc8/IM;

    move-result-object v1

    iput-object v1, v0, Lanetwork/channel/entity/BodyHandlerEntry;->bodyHandler:Lc8/IM;

    .line 67
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lc8/AN;->createFromParcel(Landroid/os/Parcel;)Lanetwork/channel/entity/BodyHandlerEntry;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lanetwork/channel/entity/BodyHandlerEntry;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 72
    new-array v0, p1, [Lanetwork/channel/entity/BodyHandlerEntry;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lc8/AN;->newArray(I)[Lanetwork/channel/entity/BodyHandlerEntry;

    move-result-object v0

    return-object v0
.end method
