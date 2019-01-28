.class public Lc8/VWb;
.super Ljava/lang/Object;
.source "Base62.java"


# static fields
.field private static ALPHABET:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    sput-object v0, Lc8/VWb;->ALPHABET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decoding(Ljava/lang/String;)J
    .locals 10
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "str must not be empty."

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_0
    const-wide/16 v2, 0x0

    .line 28
    .local v2, "result":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 29
    sget-object v1, Lc8/VWb;->ALPHABET:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    int-to-double v4, v1

    const-wide/high16 v6, 0x404f000000000000L    # 62.0

    int-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-long v4, v4

    add-long/2addr v2, v4

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_1
    return-wide v2
.end method

.method public static encoding(J)Ljava/lang/String;
    .locals 6
    .param p0, "num"    # J

    .prologue
    const-wide/16 v4, 0x3e

    .line 14
    const-wide/16 v2, 0x1

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "num must be greater than 0."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .local v0, "sb":Ljava/lang/StringBuilder;
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-lez v1, :cond_1

    .line 18
    sget-object v1, Lc8/VWb;->ALPHABET:Ljava/lang/String;

    rem-long v2, p0, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    div-long/2addr p0, v4

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
