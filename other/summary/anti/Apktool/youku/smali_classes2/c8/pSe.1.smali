.class public final Lc8/pSe;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qSe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final hostnameToPins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lokio/ByteString;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lc8/pSe;->hostnameToPins:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lc8/pSe;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/pSe;

    .prologue
    .line 234
    iget-object v0, p0, Lc8/pSe;->hostnameToPins:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public build()Lc8/qSe;
    .locals 2

    .prologue
    .line 269
    new-instance v0, Lc8/qSe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/qSe;-><init>(Lc8/pSe;Lc8/oSe;)V

    return-object v0
.end method
