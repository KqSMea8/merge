.class public Lc8/Fdb;
.super Ljava/lang/Object;
.source "FontCharacter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Edb;
    }
.end annotation


# instance fields
.field private final character:C

.field private final fontFamily:Ljava/lang/String;

.field private final shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/ffb;",
            ">;"
        }
    .end annotation
.end field

.field private final size:I

.field private final style:Ljava/lang/String;

.field private final width:D


# direct methods
.method constructor <init>(Ljava/util/List;CIDLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "character"    # C
    .param p3, "size"    # I
    .param p4, "width"    # D
    .param p6, "style"    # Ljava/lang/String;
    .param p7, "fontFamily"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/ffb;",
            ">;CID",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ShapeGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lc8/Fdb;->shapes:Ljava/util/List;

    .line 33
    iput-char p2, p0, Lc8/Fdb;->character:C

    .line 34
    iput p3, p0, Lc8/Fdb;->size:I

    .line 35
    iput-wide p4, p0, Lc8/Fdb;->width:D

    .line 36
    iput-object p6, p0, Lc8/Fdb;->style:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lc8/Fdb;->fontFamily:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static hashFor(CLjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "character"    # C
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, "result":I
    add-int/lit8 v0, p0, 0x0

    .line 18
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 19
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 20
    return v0
.end method


# virtual methods
.method public getShapes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/ffb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lc8/Fdb;->shapes:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()D
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lc8/Fdb;->width:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 83
    iget-char v0, p0, Lc8/Fdb;->character:C

    iget-object v1, p0, Lc8/Fdb;->fontFamily:Ljava/lang/String;

    iget-object v2, p0, Lc8/Fdb;->style:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/Fdb;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
