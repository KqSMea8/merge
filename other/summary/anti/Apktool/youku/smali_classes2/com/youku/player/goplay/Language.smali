.class public Lcom/youku/player/goplay/Language;
.super Ljava/lang/Object;
.source "Language.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/player/goplay/Language;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isDisplay:Z

.field public lang:Ljava/lang/String;

.field public langCode:Ljava/lang/String;

.field public vid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lc8/OGm;

    invoke-direct {v0}, Lc8/OGm;-><init>()V

    sput-object v0, Lcom/youku/player/goplay/Language;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/youku/player/goplay/Language;->lang:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/youku/player/goplay/Language;->vid:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/goplay/Language;->isDisplay:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v2, p0, Lcom/youku/player/goplay/Language;->lang:Ljava/lang/String;

    .line 9
    iput-object v2, p0, Lcom/youku/player/goplay/Language;->vid:Ljava/lang/String;

    .line 10
    iput-boolean v1, p0, Lcom/youku/player/goplay/Language;->isDisplay:Z

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/youku/player/goplay/Language;->isDisplay:Z

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/goplay/Language;->lang:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/goplay/Language;->vid:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/goplay/Language;->langCode:Ljava/lang/String;

    .line 35
    return-void

    :cond_0
    move v0, v1

    .line 31
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/youku/player/goplay/Language;->isDisplay:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget-object v0, p0, Lcom/youku/player/goplay/Language;->lang:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/youku/player/goplay/Language;->vid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/youku/player/goplay/Language;->langCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
