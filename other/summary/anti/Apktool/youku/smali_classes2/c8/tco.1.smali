.class public Lc8/tco;
.super Ljava/lang/Object;
.source "ExifUtils.java"


# static fields
.field public static final EXIF_TAGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "FNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "DateTime"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "ExposureTime"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "Flash"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "FocalLength"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "GPSAltitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "GPSAltitudeRef"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "GPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "GPSLatitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "GPSLatitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "GPSLongitude"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "GPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "GPSProcessingMethod"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "GPSTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "ImageLength"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "ImageWidth"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "ISOSpeedRatings"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "Make"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "Model"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "WhiteBalance"

    aput-object v2, v0, v1

    sput-object v0, Lc8/tco;->EXIF_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExifOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    .line 154
    .local v13, "scheme":Ljava/lang/String;
    const/4 v0, 0x0

    .line 156
    .local v0, "provider":Landroid/content/ContentProviderClient;
    if-eqz v13, :cond_0

    :try_start_0
    const-string/jumbo v1, "file"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/tco;->getExifOrientation(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v12

    .line 211
    if-eqz v0, :cond_1

    .line 212
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 213
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    .line 220
    :cond_1
    :goto_0
    return v12

    .line 158
    :cond_2
    :try_start_2
    const-string/jumbo v1, "content"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-eqz v1, :cond_7

    .line 160
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 161
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 166
    if-eqz v0, :cond_7

    .line 169
    const/4 v1, 0x2

    :try_start_4
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "orientation"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v11

    .line 177
    .local v11, "result":Landroid/database/Cursor;
    if-nez v11, :cond_3

    .line 178
    const/4 v12, 0x0

    .line 211
    if-eqz v0, :cond_1

    .line 212
    :try_start_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 213
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 163
    .end local v11    # "result":Landroid/database/Cursor;
    :catch_1
    move-exception v1

    const/4 v12, 0x0

    .line 211
    if-eqz v0, :cond_1

    .line 212
    :try_start_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 213
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    .line 172
    :catch_3
    move-exception v8

    .line 173
    .local v8, "e1":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 174
    const/4 v12, 0x0

    .line 211
    if-eqz v0, :cond_1

    .line 212
    :try_start_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 213
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_0

    .line 181
    .end local v8    # "e1":Ljava/lang/Exception;
    .restart local v11    # "result":Landroid/database/Cursor;
    :cond_3
    :try_start_9
    const-string/jumbo v1, "orientation"

    .line 182
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 183
    .local v9, "orientationColumnIndex":I
    const-string/jumbo v1, "_data"

    .line 184
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v6

    .line 187
    .local v6, "dataColumnIndex":I
    :try_start_a
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 188
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 190
    const/4 v12, 0x0

    .line 192
    .local v12, "rotation":I
    if-ltz v9, :cond_4

    .line 193
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 196
    :cond_4
    if-ltz v6, :cond_5

    .line 197
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 198
    .local v10, "path":Ljava/lang/String;
    invoke-static {v10}, Lc8/tco;->getExifOrientation(Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v1

    or-int/2addr v12, v1

    .line 203
    .end local v10    # "path":Ljava/lang/String;
    :cond_5
    :try_start_b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 211
    if-eqz v0, :cond_1

    .line 212
    :try_start_c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 213
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v1

    goto/16 :goto_0

    .line 203
    .end local v12    # "rotation":I
    :cond_6
    :try_start_d
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 211
    .end local v6    # "dataColumnIndex":I
    .end local v9    # "orientationColumnIndex":I
    .end local v11    # "result":Landroid/database/Cursor;
    :cond_7
    if-eqz v0, :cond_8

    .line 212
    :try_start_e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_8

    .line 213
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    .line 220
    :cond_8
    :goto_1
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 203
    .restart local v6    # "dataColumnIndex":I
    .restart local v9    # "orientationColumnIndex":I
    .restart local v11    # "result":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    :try_start_f
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 207
    .end local v6    # "dataColumnIndex":I
    .end local v9    # "orientationColumnIndex":I
    .end local v11    # "result":Landroid/database/Cursor;
    :catch_6
    move-exception v7

    .line 208
    .local v7, "e":Ljava/lang/Exception;
    :try_start_10
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 211
    if-eqz v0, :cond_8

    .line 212
    :try_start_11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_8

    .line 213
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    goto :goto_1

    .line 219
    :catch_7
    move-exception v1

    goto :goto_1

    .line 210
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    .line 211
    if-eqz v0, :cond_9

    .line 212
    :try_start_12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_9

    .line 213
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    .line 218
    :cond_9
    :goto_2
    throw v1

    :catch_8
    move-exception v2

    goto :goto_2

    .line 219
    :catch_9
    move-exception v1

    goto :goto_1

    :catch_a
    move-exception v1

    goto/16 :goto_0
.end method

.method public static getExifOrientation(Landroid/media/ExifInterface;)I
    .locals 4
    .param p0, "exif"    # Landroid/media/ExifInterface;

    .prologue
    const/4 v3, -0x1

    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "degree":I
    if-eqz p0, :cond_0

    .line 52
    const-string/jumbo v2, "Orientation"

    invoke-virtual {p0, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 54
    .local v1, "orientation":I
    if-eq v1, v3, :cond_0

    .line 55
    packed-switch v1, :pswitch_data_0

    .line 68
    .end local v1    # "orientation":I
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 57
    .restart local v1    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 58
    goto :goto_0

    .line 60
    :pswitch_2
    const/16 v0, 0xb4

    .line 61
    goto :goto_0

    .line 63
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 3
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 38
    if-nez p0, :cond_0

    .line 45
    :goto_0
    return v1

    .line 41
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .local v0, "exif":Landroid/media/ExifInterface;
    invoke-static {v0}, Lc8/tco;->getExifOrientation(Landroid/media/ExifInterface;)I

    move-result v1

    goto :goto_0

    .line 43
    .end local v0    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getExifOrientation(I)Ljava/lang/String;
    .locals 3
    .param p0, "orientation"    # I

    .prologue
    .line 131
    sparse-switch p0, :sswitch_data_0

    .line 141
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 133
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    .line 135
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 137
    :sswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :sswitch_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static loadAttributes(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 7
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 81
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .local v0, "e":Landroid/media/ExifInterface;
    sget-object v4, Lc8/tco;->EXIF_TAGS:[Ljava/lang/String;

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 88
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "e":Landroid/media/ExifInterface;
    .end local v2    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 90
    .end local v1    # "e1":Ljava/io/IOException;
    :goto_1
    return v3

    .restart local v0    # "e":Landroid/media/ExifInterface;
    :cond_0
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static saveAttributes(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 8
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 104
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .local v1, "exif":Landroid/media/ExifInterface;
    sget-object v5, Lc8/tco;->EXIF_TAGS:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v2, v5, v4

    .line 111
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 112
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .end local v2    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 121
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return v3

    .line 116
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    const/4 v3, 0x1

    goto :goto_1

    .line 117
    :catch_1
    move-exception v0

    .line 118
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
