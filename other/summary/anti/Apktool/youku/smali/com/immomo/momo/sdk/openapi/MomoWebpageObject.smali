.class public Lcom/immomo/momo/sdk/openapi/MomoWebpageObject;
.super Lcom/immomo/momo/sdk/openapi/MomoBaseObject;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc8/Ysd;

    invoke-direct {v0}, Lc8/Ysd;-><init>()V

    sput-object v0, Lcom/immomo/momo/sdk/openapi/MomoWebpageObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/immomo/momo/sdk/openapi/MomoBaseObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/immomo/momo/sdk/openapi/MomoBaseObject;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoWebpageObject;->c:Ljava/lang/String;

    invoke-static {v0}, Lc8/Osd;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MomoWebpageObject-checkArgs fail, actionUrl is invalid"

    invoke-static {v0}, Lc8/atd;->e(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoWebpageObject;->d:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoWebpageObject;->d:[B

    array-length v0, v0

    const v2, 0x8000

    if-le v0, v2, :cond_3

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "MomoWebpageObject-checkArgs fail, thumbData is invalid,size is "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoWebpageObject;->d:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoWebpageObject;->d:[B

    array-length v0, v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "! more then 32768."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/atd;->e(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoWebpageObject;->a:Ljava/lang/String;

    invoke-static {v0}, Lc8/Osd;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "MomoWebpageObject-checkArgs fail, title is invalid"

    invoke-static {v0}, Lc8/atd;->e(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoWebpageObject;->b:Ljava/lang/String;

    invoke-static {v0}, Lc8/Osd;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "MomoWebpageObject-checkArgs fail, description is invalid"

    invoke-static {v0}, Lc8/atd;->e(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getActionUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoWebpageObject;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoWebpageObject;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getThumbData()[B
    .locals 1

    iget-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoWebpageObject;->d:[B

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoWebpageObject;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setActionUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/immomo/momo/sdk/openapi/MomoWebpageObject;->c:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/immomo/momo/sdk/openapi/MomoWebpageObject;->b:Ljava/lang/String;

    return-void
.end method

.method public setThumbData([B)V
    .locals 0

    iput-object p1, p0, Lcom/immomo/momo/sdk/openapi/MomoWebpageObject;->d:[B

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/immomo/momo/sdk/openapi/MomoWebpageObject;->a:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/immomo/momo/sdk/openapi/MomoBaseObject;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
