.class public Lc8/bZn;
.super Ljava/lang/Object;
.source "DiskLruCacheManager.java"


# static fields
.field public static CACHE_CONTENT_SIZE:J


# instance fields
.field private hashKey:Z

.field private mDiskLruCache:Lc8/aZn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-wide/32 v0, 0x3200000

    sput-wide v0, Lc8/bZn;->CACHE_CONTENT_SIZE:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    sget-wide v0, Lc8/bZn;->CACHE_CONTENT_SIZE:J

    invoke-direct {p0, p1, v0, v1}, Lc8/bZn;-><init>(Landroid/content/Context;J)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cacheSize"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc8/bZn;->hashKey:Z

    .line 30
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/bZn;->mDiskLruCache:Lc8/aZn;

    .line 38
    :try_start_0
    invoke-static {p1}, Lc8/bZn;->getDiskCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 39
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 42
    :cond_0
    invoke-static {p1}, Lc8/bZn;->getAppVersion(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, p2, p3}, Lc8/aZn;->open(Ljava/io/File;IIJ)Lc8/aZn;

    move-result-object v2

    iput-object v2, p0, Lc8/bZn;->mDiskLruCache:Lc8/aZn;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0    # "cacheDir":Ljava/io/File;
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cacheFolder"    # Ljava/lang/String;
    .param p3, "cacheSize"    # J

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc8/bZn;->hashKey:Z

    .line 30
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/bZn;->mDiskLruCache:Lc8/aZn;

    .line 57
    :try_start_0
    invoke-static {p1, p2}, Lc8/bZn;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 58
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 61
    :cond_0
    invoke-static {p1}, Lc8/bZn;->getAppVersion(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, p3, p4}, Lc8/aZn;->open(Ljava/io/File;IIJ)Lc8/aZn;

    move-result-object v2

    iput-object v2, p0, Lc8/bZn;->mDiskLruCache:Lc8/aZn;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0    # "cacheDir":Ljava/io/File;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 339
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "hex":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 341
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "hex":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static genHashKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 327
    :try_start_0
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 328
    .local v1, "mDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 329
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lc8/bZn;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 333
    .end local v1    # "mDigest":Ljava/security/MessageDigest;
    .local v0, "cacheKey":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 331
    .end local v0    # "cacheKey":Ljava/lang/String;
    :catch_0
    move-exception v2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "cacheKey":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getAppVersion(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 310
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 311
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 315
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getDiskCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 80
    .local v0, "cachePath":Ljava/io/File;
    return-object v0
.end method

.method public static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string/jumbo v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "cachePath":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, ""

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 95
    .end local v0    # "cachePath":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "cachePath":Ljava/lang/String;
    goto :goto_0

    .line 97
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public cacheString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p1}, Lc8/bZn;->writeStreamToCache(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 251
    :try_start_0
    iget-object v1, p0, Lc8/bZn;->mDiskLruCache:Lc8/aZn;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lc8/bZn;->mDiskLruCache:Lc8/aZn;

    invoke-virtual {v1}, Lc8/aZn;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public closeCache()V
    .locals 2

    .prologue
    .line 266
    :try_start_0
    iget-object v1, p0, Lc8/bZn;->mDiskLruCache:Lc8/aZn;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lc8/bZn;->mDiskLruCache:Lc8/aZn;

    invoke-virtual {v1}, Lc8/aZn;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 283
    :try_start_0
    iget-object v1, p0, Lc8/bZn;->mDiskLruCache:Lc8/aZn;

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lc8/bZn;->mDiskLruCache:Lc8/aZn;

    invoke-virtual {v1}, Lc8/aZn;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lc8/bZn;->mDiskLruCache:Lc8/aZn;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lc8/bZn;->mDiskLruCache:Lc8/aZn;

    invoke-virtual {v0}, Lc8/aZn;->getDirectory()Ljava/io/File;

    .line 298
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isHashKey()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lc8/bZn;->hashKey:Z

    return v0
.end method

.method public readStreamfromCache(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "cacheKey"    # Ljava/lang/String;

    .prologue
    .line 195
    :try_start_0
    iget-boolean v3, p0, Lc8/bZn;->hashKey:Z

    if-eqz v3, :cond_0

    .line 196
    invoke-static {p1}, Lc8/bZn;->genHashKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 198
    :cond_0
    iget-object v3, p0, Lc8/bZn;->mDiskLruCache:Lc8/aZn;

    invoke-virtual {v3, p1}, Lc8/aZn;->get(Ljava/lang/String;)Lc8/ZYn;

    move-result-object v2

    .line 199
    .local v2, "snapShot":Lc8/ZYn;
    if-eqz v2, :cond_1

    .line 200
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc8/ZYn;->getInputStream(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 206
    .end local v2    # "snapShot":Lc8/ZYn;
    :goto_0
    return-object v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 206
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readStringfromCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cacheKey"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lc8/bZn;->readStreamfromCache(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 216
    .local v1, "inputStream":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 218
    :try_start_0
    invoke-static {v1}, Lc8/Mao;->toString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 222
    invoke-static {v1}, Lc8/Mao;->closeQuietly(Ljava/io/InputStream;)V

    .line 225
    :goto_0
    return-object v2

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    invoke-static {v1}, Lc8/Mao;->closeQuietly(Ljava/io/InputStream;)V

    .line 225
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lc8/Mao;->closeQuietly(Ljava/io/InputStream;)V

    throw v2
.end method

.method public removeFromCache(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cacheKey"    # Ljava/lang/String;

    .prologue
    .line 236
    :try_start_0
    iget-boolean v1, p0, Lc8/bZn;->hashKey:Z

    if-eqz v1, :cond_0

    .line 237
    invoke-static {p1}, Lc8/bZn;->genHashKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 239
    :cond_0
    iget-object v1, p0, Lc8/bZn;->mDiskLruCache:Lc8/aZn;

    invoke-virtual {v1, p1}, Lc8/aZn;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 243
    :goto_0
    return v1

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHashKey(Z)V
    .locals 0
    .param p1, "hashKey"    # Z

    .prologue
    .line 361
    iput-boolean p1, p0, Lc8/bZn;->hashKey:Z

    .line 362
    return-void
.end method

.method public writeBitmapToCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "cacheKey"    # Ljava/lang/String;

    .prologue
    .line 129
    :try_start_0
    iget-boolean v3, p0, Lc8/bZn;->hashKey:Z

    if-eqz v3, :cond_0

    .line 130
    invoke-static {p2}, Lc8/bZn;->genHashKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 132
    :cond_0
    iget-object v3, p0, Lc8/bZn;->mDiskLruCache:Lc8/aZn;

    invoke-virtual {v3, p2}, Lc8/aZn;->edit(Ljava/lang/String;)Lc8/XYn;

    move-result-object v1

    .line 133
    .local v1, "editor":Lc8/XYn;
    if-eqz v1, :cond_1

    .line 134
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lc8/XYn;->newOutputStream(I)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 137
    .local v2, "output":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {p2}, Lc8/abo;->toUpperCase(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ".PNG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 144
    :goto_0
    invoke-virtual {v1}, Lc8/XYn;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :try_start_2
    invoke-static {v2}, Lc8/Mao;->closeQuietly(Ljava/io/OutputStream;)V

    .line 152
    .end local v2    # "output":Ljava/io/OutputStream;
    :cond_1
    :goto_1
    iget-object v3, p0, Lc8/bZn;->mDiskLruCache:Lc8/aZn;

    invoke-virtual {v3}, Lc8/aZn;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 156
    .end local v1    # "editor":Lc8/XYn;
    :goto_2
    return-void

    .line 139
    .restart local v1    # "editor":Lc8/XYn;
    .restart local v2    # "output":Ljava/io/OutputStream;
    :cond_2
    :try_start_3
    invoke-static {p2}, Lc8/abo;->toUpperCase(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ".WEBP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Lc8/XYn;->abort()V

    .line 147
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 149
    :try_start_5
    invoke-static {v2}, Lc8/Mao;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 153
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "editor":Lc8/XYn;
    .end local v2    # "output":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 154
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 142
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "editor":Lc8/XYn;
    .restart local v2    # "output":Ljava/io/OutputStream;
    :cond_3
    :try_start_6
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v3

    :try_start_7
    invoke-static {v2}, Lc8/Mao;->closeQuietly(Ljava/io/OutputStream;)V

    throw v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
.end method

.method public writeStreamToCache(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "cacheKey"    # Ljava/lang/String;

    .prologue
    .line 166
    :try_start_0
    iget-boolean v3, p0, Lc8/bZn;->hashKey:Z

    if-eqz v3, :cond_0

    .line 167
    invoke-static {p2}, Lc8/bZn;->genHashKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 169
    :cond_0
    iget-object v3, p0, Lc8/bZn;->mDiskLruCache:Lc8/aZn;

    invoke-virtual {v3, p2}, Lc8/aZn;->edit(Ljava/lang/String;)Lc8/XYn;

    move-result-object v1

    .line 170
    .local v1, "editor":Lc8/XYn;
    if-eqz v1, :cond_1

    .line 171
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lc8/XYn;->newOutputStream(I)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 173
    .local v2, "output":Ljava/io/OutputStream;
    :try_start_1
    invoke-static {p1, v2}, Lc8/Mao;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 174
    invoke-virtual {v1}, Lc8/XYn;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :try_start_2
    invoke-static {v2}, Lc8/Mao;->closeQuietly(Ljava/io/OutputStream;)V

    .line 182
    .end local v2    # "output":Ljava/io/OutputStream;
    :cond_1
    :goto_0
    iget-object v3, p0, Lc8/bZn;->mDiskLruCache:Lc8/aZn;

    invoke-virtual {v3}, Lc8/aZn;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 186
    .end local v1    # "editor":Lc8/XYn;
    :goto_1
    return-void

    .line 175
    .restart local v1    # "editor":Lc8/XYn;
    .restart local v2    # "output":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Lc8/XYn;->abort()V

    .line 177
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    :try_start_4
    invoke-static {v2}, Lc8/Mao;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "editor":Lc8/XYn;
    .end local v2    # "output":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 184
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 179
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "editor":Lc8/XYn;
    .restart local v2    # "output":Ljava/io/OutputStream;
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-static {v2}, Lc8/Mao;->closeQuietly(Ljava/io/OutputStream;)V

    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method public writeStringToCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "cacheKey"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lc8/bZn;->writeStreamToCache(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 109
    return-void
.end method
