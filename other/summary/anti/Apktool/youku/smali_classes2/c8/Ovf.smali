.class public Lc8/Ovf;
.super Ljava/lang/Object;
.source "NonOpDiskCache.java"

# interfaces
.implements Lc8/Jvf;


# instance fields
.field private final mPriority:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lc8/Ovf;->mPriority:I

    .line 14
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public close()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;I)Lc8/bxf;
    .locals 1
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "catalog"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/String;I)Lc8/exf;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lc8/Ovf;->get(Ljava/lang/String;I)Lc8/bxf;

    move-result-object v0

    return-object v0
.end method

.method public getCatalogs(Ljava/lang/String;)[I
    .locals 1
    .param p1, "cacheKey"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getLength(Ljava/lang/String;I)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "catalog"    # I

    .prologue
    .line 54
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lc8/Ovf;->mPriority:I

    return v0
.end method

.method public isSupportCatalogs()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public maxSize(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 35
    return-void
.end method

.method public open(Landroid/content/Context;)Z
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public put(Ljava/lang/String;ILjava/io/InputStream;)Z
    .locals 1
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "catalog"    # I
    .param p3, "is"    # Ljava/io/InputStream;

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public put(Ljava/lang/String;I[BII)Z
    .locals 1
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "catalog"    # I
    .param p3, "data"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "catalog"    # I

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method
