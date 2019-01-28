.class public Lc8/Wuf;
.super Ljava/lang/Object;
.source "DefaultMimeTypes.java"


# static fields
.field public static final ALL_EXTENSION_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Yuf;",
            ">;"
        }
    .end annotation
.end field

.field public static final BMP:Lc8/Yuf;

.field public static final GIF:Lc8/Yuf;

.field public static final JPEG:Lc8/Yuf;

.field public static final PNG:Lc8/Yuf;

.field public static final PNG_A:Lc8/Yuf;

.field public static final WEBP:Lc8/Yuf;

.field public static final WEBP_A:Lc8/Yuf;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 7
    new-instance v0, Lc8/Yuf;

    const-string/jumbo v1, "JPEG"

    const-string/jumbo v2, "JPEG"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v5, "jpg"

    aput-object v5, v3, v7

    const-string/jumbo v5, "jpeg"

    aput-object v5, v3, v4

    new-instance v5, Lc8/Puf;

    invoke-direct {v5}, Lc8/Puf;-><init>()V

    invoke-direct {v0, v1, v2, v3, v5}, Lc8/Yuf;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lc8/Xuf;)V

    sput-object v0, Lc8/Wuf;->JPEG:Lc8/Yuf;

    .line 19
    new-instance v0, Lc8/Yuf;

    const-string/jumbo v1, "WEBP"

    const-string/jumbo v2, "WEBP"

    new-array v3, v4, [Ljava/lang/String;

    const-string/jumbo v5, "webp"

    aput-object v5, v3, v7

    new-instance v5, Lc8/Quf;

    invoke-direct {v5}, Lc8/Quf;-><init>()V

    invoke-direct {v0, v1, v2, v3, v5}, Lc8/Yuf;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lc8/Xuf;)V

    sput-object v0, Lc8/Wuf;->WEBP:Lc8/Yuf;

    .line 31
    new-instance v0, Lc8/Yuf;

    const-string/jumbo v1, "WEBP"

    const-string/jumbo v2, "WEBP_A"

    new-array v3, v4, [Ljava/lang/String;

    const-string/jumbo v5, "webp"

    aput-object v5, v3, v7

    new-instance v5, Lc8/Ruf;

    invoke-direct {v5}, Lc8/Ruf;-><init>()V

    invoke-direct/range {v0 .. v5}, Lc8/Yuf;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLc8/Xuf;)V

    sput-object v0, Lc8/Wuf;->WEBP_A:Lc8/Yuf;

    .line 43
    new-instance v0, Lc8/Yuf;

    const-string/jumbo v1, "PNG"

    const-string/jumbo v2, "PNG"

    new-array v3, v4, [Ljava/lang/String;

    const-string/jumbo v5, "png"

    aput-object v5, v3, v7

    new-instance v5, Lc8/Suf;

    invoke-direct {v5}, Lc8/Suf;-><init>()V

    invoke-direct {v0, v1, v2, v3, v5}, Lc8/Yuf;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lc8/Xuf;)V

    sput-object v0, Lc8/Wuf;->PNG:Lc8/Yuf;

    .line 55
    new-instance v0, Lc8/Yuf;

    const-string/jumbo v1, "PNG"

    const-string/jumbo v2, "PNG_A"

    new-array v3, v4, [Ljava/lang/String;

    const-string/jumbo v5, "png"

    aput-object v5, v3, v7

    new-instance v5, Lc8/Tuf;

    invoke-direct {v5}, Lc8/Tuf;-><init>()V

    invoke-direct/range {v0 .. v5}, Lc8/Yuf;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLc8/Xuf;)V

    sput-object v0, Lc8/Wuf;->PNG_A:Lc8/Yuf;

    .line 67
    new-instance v1, Lc8/Yuf;

    const-string/jumbo v2, "GIF"

    const-string/jumbo v3, "GIF"

    new-array v5, v4, [Ljava/lang/String;

    const-string/jumbo v0, "gif"

    aput-object v0, v5, v7

    new-instance v6, Lc8/Uuf;

    invoke-direct {v6}, Lc8/Uuf;-><init>()V

    invoke-direct/range {v1 .. v6}, Lc8/Yuf;-><init>(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;Lc8/Xuf;)V

    sput-object v1, Lc8/Wuf;->GIF:Lc8/Yuf;

    .line 79
    new-instance v0, Lc8/Yuf;

    const-string/jumbo v1, "BMP"

    const-string/jumbo v2, "BMP"

    new-array v3, v4, [Ljava/lang/String;

    const-string/jumbo v4, "bmp"

    aput-object v4, v3, v7

    new-instance v4, Lc8/Vuf;

    invoke-direct {v4}, Lc8/Vuf;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lc8/Yuf;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lc8/Xuf;)V

    sput-object v0, Lc8/Wuf;->BMP:Lc8/Yuf;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    sput-object v0, Lc8/Wuf;->ALL_EXTENSION_TYPES:Ljava/util/List;

    sget-object v1, Lc8/Wuf;->JPEG:Lc8/Yuf;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lc8/Wuf;->ALL_EXTENSION_TYPES:Ljava/util/List;

    sget-object v1, Lc8/Wuf;->WEBP:Lc8/Yuf;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lc8/Wuf;->ALL_EXTENSION_TYPES:Ljava/util/List;

    sget-object v1, Lc8/Wuf;->PNG:Lc8/Yuf;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lc8/Wuf;->ALL_EXTENSION_TYPES:Ljava/util/List;

    sget-object v1, Lc8/Wuf;->GIF:Lc8/Yuf;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lc8/Wuf;->ALL_EXTENSION_TYPES:Ljava/util/List;

    sget-object v1, Lc8/Wuf;->BMP:Lc8/Yuf;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
