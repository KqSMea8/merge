.class public final Lc8/wmg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lc8/wmg;->a:I

    .line 37
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/wmg;-><init>([BI)V

    .line 16
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    iput v0, p0, Lc8/wmg;->a:I

    .line 26
    iget v0, p0, Lc8/wmg;->a:I

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iput v0, p0, Lc8/wmg;->a:I

    .line 27
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 62
    const/4 v1, 0x0

    iget v2, p0, Lc8/wmg;->a:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 63
    const/4 v1, 0x1

    iget v2, p0, Lc8/wmg;->a:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 64
    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lc8/wmg;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 47
    if-eqz p1, :cond_0

    instance-of v1, p1, Lc8/wmg;

    if-nez v1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lc8/wmg;->a:I

    check-cast p1, Lc8/wmg;

    invoke-virtual {p1}, Lc8/wmg;->b()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lc8/wmg;->a:I

    return v0
.end method
