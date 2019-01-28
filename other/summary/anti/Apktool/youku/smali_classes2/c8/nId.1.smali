.class public Lc8/nId;
.super Lc8/GId;
.source "FormBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/mId;
    }
.end annotation


# static fields
.field private static final CONTENT_TYPE:Lc8/xId;


# instance fields
.field private final encodedNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final encodedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "application/x-www-form-urlencoded"

    .line 19
    invoke-static {v0}, Lc8/xId;->parse(Ljava/lang/String;)Lc8/xId;

    move-result-object v0

    sput-object v0, Lc8/nId;->CONTENT_TYPE:Lc8/xId;

    .line 18
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "encodedNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "encodedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lc8/GId;-><init>()V

    .line 25
    invoke-static {p1}, Lc8/LId;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/nId;->encodedNames:Ljava/util/List;

    .line 26
    invoke-static {p2}, Lc8/LId;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/nId;->encodedValues:Ljava/util/List;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lc8/lId;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lc8/lId;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lc8/nId;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private writeOrCountBytes(Lc8/zJd;Z)J
    .locals 6
    .param p1, "sink"    # Lc8/zJd;
    .param p2, "countBytes"    # Z

    .prologue
    .line 69
    const-wide/16 v2, 0x0

    .line 72
    .local v2, "byteCount":J
    if-eqz p2, :cond_1

    .line 73
    new-instance v0, Lc8/yJd;

    invoke-direct {v0}, Lc8/yJd;-><init>()V

    .line 78
    .local v0, "buffer":Lc8/yJd;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lc8/nId;->encodedNames:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 79
    if-lez v1, :cond_0

    const/16 v5, 0x26

    invoke-virtual {v0, v5}, Lc8/yJd;->writeByte(I)Lc8/yJd;

    .line 80
    :cond_0
    iget-object v5, p0, Lc8/nId;->encodedNames:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lc8/yJd;->writeUtf8(Ljava/lang/String;)Lc8/yJd;

    .line 81
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Lc8/yJd;->writeByte(I)Lc8/yJd;

    .line 82
    iget-object v5, p0, Lc8/nId;->encodedValues:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lc8/yJd;->writeUtf8(Ljava/lang/String;)Lc8/yJd;

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 75
    .end local v0    # "buffer":Lc8/yJd;
    .end local v1    # "i":I
    .end local v4    # "size":I
    :cond_1
    invoke-interface {p1}, Lc8/zJd;->buffer()Lc8/yJd;

    move-result-object v0

    .restart local v0    # "buffer":Lc8/yJd;
    goto :goto_0

    .line 85
    .restart local v1    # "i":I
    .restart local v4    # "size":I
    :cond_2
    if-eqz p2, :cond_3

    .line 86
    invoke-virtual {v0}, Lc8/yJd;->size()J

    move-result-wide v2

    .line 87
    invoke-virtual {v0}, Lc8/yJd;->clear()V

    .line 89
    :cond_3
    return-wide v2
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lc8/nId;->writeOrCountBytes(Lc8/zJd;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lc8/xId;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lc8/nId;->CONTENT_TYPE:Lc8/xId;

    return-object v0
.end method

.method public writeTo(Lc8/zJd;)V
    .locals 1
    .param p1, "sink"    # Lc8/zJd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/nId;->writeOrCountBytes(Lc8/zJd;Z)J

    .line 60
    return-void
.end method
