.class public final enum Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;
.super Ljava/lang/Enum;
.source "DefaultDiskStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/aqf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

.field public static final enum CONTENT:Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

.field public static final enum TEMP:Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;


# instance fields
.field public final extension:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 421
    new-instance v0, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    const-string/jumbo v1, "CONTENT"

    const-string/jumbo v2, ".cnt"

    invoke-direct {v0, v1, v3, v2}, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;->CONTENT:Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    .line 422
    new-instance v0, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    const-string/jumbo v1, "TEMP"

    const-string/jumbo v2, ".tmp"

    invoke-direct {v0, v1, v4, v2}, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;->TEMP:Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    .line 420
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    sget-object v1, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;->CONTENT:Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;->TEMP:Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;->$VALUES:[Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 426
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 427
    iput-object p3, p0, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;->extension:Ljava/lang/String;

    .line 428
    return-void
.end method

.method public static fromExtension(Ljava/lang/String;)Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 431
    const-string/jumbo v0, ".cnt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    sget-object v0, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;->CONTENT:Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    .line 436
    :goto_0
    return-object v0

    .line 433
    :cond_0
    const-string/jumbo v0, ".tmp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    sget-object v0, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;->TEMP:Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    goto :goto_0

    .line 436
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 420
    const-class v0, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    return-object v0
.end method

.method public static values()[Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;
    .locals 1

    .prologue
    .line 420
    sget-object v0, Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;->$VALUES:[Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    invoke-virtual {v0}, [Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/fresco/disk/storage/DefaultDiskStorage$FileType;

    return-object v0
.end method
