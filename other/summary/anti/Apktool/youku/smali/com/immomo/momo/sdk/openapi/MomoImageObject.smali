.class public Lcom/immomo/momo/sdk/openapi/MomoImageObject;
.super Lcom/immomo/momo/sdk/openapi/MomoBaseObject;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field protected e:Ljava/lang/String;

.field protected f:[B

.field protected g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc8/Wsd;

    invoke-direct {v0}, Lc8/Wsd;-><init>()V

    sput-object v0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/immomo/momo/sdk/openapi/MomoBaseObject;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->g:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->e:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->f:[B

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-direct {p0}, Lcom/immomo/momo/sdk/openapi/MomoImageObject;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->setImageData([B)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/immomo/momo/sdk/openapi/MomoBaseObject;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->g:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->f:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/immomo/momo/sdk/openapi/MomoBaseObject;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->g:Z

    iput-object p1, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->f:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->f:[B

    array-length v1, v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->e:Ljava/lang/String;

    invoke-static {v1}, Lc8/Osd;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ImageObject-checkArgs fail, all arguments are null"

    invoke-static {v1}, Lc8/atd;->e(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->f:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->f:[B

    array-length v1, v1

    const/high16 v2, 0xa00000

    if-le v1, v2, :cond_2

    const-string/jumbo v1, "ImageObject-checkArgs fail, content is too large"

    invoke-static {v1}, Lc8/atd;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2800

    if-le v1, v2, :cond_3

    const-string/jumbo v1, "ImageObject0checkArgs fail, path is invalid"

    invoke-static {v1}, Lc8/atd;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->e:Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0xa00000

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    :cond_4
    const-string/jumbo v1, "ImageObject-checkArgs fail, image content is too large"

    invoke-static {v1}, Lc8/atd;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getImageData()[B
    .locals 1

    iget-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->f:[B

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getThumbData()[B
    .locals 1

    iget-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->d:[B

    return-object v0
.end method

.method public setImageData([B)V
    .locals 4

    iput-object p1, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->f:[B

    iget-boolean v0, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->g:Z

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/immomo/openapi/image"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "share_img_temp_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->f:[B

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setThumbData([B)V
    .locals 0

    iput-object p1, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->d:[B

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/immomo/momo/sdk/openapi/MomoBaseObject;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->f:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/immomo/momo/sdk/openapi/MomoImageObject;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
