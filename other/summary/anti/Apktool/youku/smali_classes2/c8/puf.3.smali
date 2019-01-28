.class public Lc8/puf;
.super Ljava/lang/Object;
.source "PexodeResult.java"


# instance fields
.field public animated:Lc8/ruf;

.field public bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Landroid/graphics/Bitmap;)Lc8/puf;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 12
    if-nez p0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 17
    :goto_0
    return-object v0

    .line 15
    :cond_0
    new-instance v0, Lc8/puf;

    invoke-direct {v0}, Lc8/puf;-><init>()V

    .line 16
    .local v0, "result":Lc8/puf;
    iput-object p0, v0, Lc8/puf;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public static wrap(Lc8/ruf;)Lc8/puf;
    .locals 1
    .param p0, "animated"    # Lc8/ruf;

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Lc8/puf;

    invoke-direct {v0}, Lc8/puf;-><init>()V

    .line 25
    .local v0, "result":Lc8/puf;
    iput-object p0, v0, Lc8/puf;->animated:Lc8/ruf;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PexodeResult(bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/puf;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", animated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/puf;->animated:Lc8/ruf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
