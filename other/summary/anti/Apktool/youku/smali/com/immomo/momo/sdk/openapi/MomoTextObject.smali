.class public Lcom/immomo/momo/sdk/openapi/MomoTextObject;
.super Lcom/immomo/momo/sdk/openapi/MomoBaseObject;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc8/Xsd;

    invoke-direct {v0}, Lc8/Xsd;-><init>()V

    sput-object v0, Lcom/immomo/momo/sdk/openapi/MomoTextObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/immomo/momo/sdk/openapi/MomoBaseObject;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoTextObject;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/immomo/momo/sdk/openapi/MomoBaseObject;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoTextObject;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    iget-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoTextObject;->e:Ljava/lang/String;

    invoke-static {v0}, Lc8/Osd;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TextObject-checkArgs fail, text is invalid"

    invoke-static {v0}, Lc8/atd;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getObjectType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoTextObject;->e:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/immomo/momo/sdk/openapi/MomoTextObject;->e:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/immomo/momo/sdk/openapi/MomoBaseObject;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoTextObject;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
