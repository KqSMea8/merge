.class public Lc8/aJb;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ZIb;
    }
.end annotation


# instance fields
.field private final indexMask:I

.field private final symbols:[Lc8/ZIb;


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "tableSize"    # I

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lc8/aJb;->indexMask:I

    .line 30
    new-array v0, p1, [Lc8/ZIb;

    iput-object v0, p0, Lc8/aJb;->symbols:[Lc8/ZIb;

    .line 32
    const-string/jumbo v0, "$ref"

    const/4 v1, 0x4

    const-string/jumbo v2, "$ref"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p0, v0, v3, v1, v2}, Lc8/aJb;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "@type"

    const-string/jumbo v1, "@type"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string/jumbo v2, "@type"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p0, v0, v3, v1, v2}, Lc8/aJb;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    .line 34
    return-void
.end method

.method private static subString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 100
    new-array v0, p2, [C

    .line 101
    .local v0, "chars":[C
    add-int v1, p1, p2

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 102
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;III)Ljava/lang/String;
    .locals 5
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "hash"    # I

    .prologue
    .line 77
    iget v3, p0, Lc8/aJb;->indexMask:I

    and-int v0, p4, v3

    .line 79
    .local v0, "bucket":I
    iget-object v3, p0, Lc8/aJb;->symbols:[Lc8/ZIb;

    aget-object v1, v3, v0

    .line 80
    .local v1, "entry":Lc8/ZIb;
    if-eqz v1, :cond_1

    .line 81
    iget v3, v1, Lc8/ZIb;->hashCode:I

    if-ne p4, v3, :cond_0

    iget-object v3, v1, Lc8/ZIb;->chars:[C

    array-length v3, v3

    if-ne p3, v3, :cond_0

    iget-object v3, v1, Lc8/ZIb;->value:Ljava/lang/String;

    const/4 v4, 0x0

    .line 83
    invoke-virtual {p1, p2, v3, v4, p3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    iget-object v2, v1, Lc8/ZIb;->value:Ljava/lang/String;

    .line 96
    :goto_0
    return-object v2

    .line 87
    :cond_0
    invoke-static {p1, p2, p3}, Lc8/aJb;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne p3, v3, :cond_2

    move-object v2, p1

    .line 93
    .local v2, "symbol":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 95
    iget-object v3, p0, Lc8/aJb;->symbols:[Lc8/ZIb;

    new-instance v4, Lc8/ZIb;

    invoke-direct {v4, v2, p4}, Lc8/ZIb;-><init>(Ljava/lang/String;I)V

    aput-object v4, v3, v0

    goto :goto_0

    .line 92
    .end local v2    # "symbol":Ljava/lang/String;
    :cond_2
    invoke-static {p1, p2, p3}, Lc8/aJb;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public addSymbol([CIII)Ljava/lang/String;
    .locals 7
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "hash"    # I

    .prologue
    .line 46
    iget v5, p0, Lc8/aJb;->indexMask:I

    and-int v0, p4, v5

    .line 48
    .local v0, "bucket":I
    iget-object v5, p0, Lc8/aJb;->symbols:[Lc8/ZIb;

    aget-object v1, v5, v0

    .line 49
    .local v1, "entry":Lc8/ZIb;
    if-eqz v1, :cond_4

    .line 50
    const/4 v2, 0x1

    .line 51
    .local v2, "eq":Z
    iget v5, v1, Lc8/ZIb;->hashCode:I

    if-ne p4, v5, :cond_2

    iget-object v5, v1, Lc8/ZIb;->chars:[C

    array-length v5, v5

    if-ne p3, v5, :cond_2

    .line 53
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_0

    .line 54
    add-int v5, p2, v3

    aget-char v5, p1, v5

    iget-object v6, v1, Lc8/ZIb;->chars:[C

    aget-char v6, v6, v3

    if-eq v5, v6, :cond_1

    .line 55
    const/4 v2, 0x0

    .line 63
    .end local v3    # "i":I
    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    .line 64
    iget-object v4, v1, Lc8/ZIb;->value:Ljava/lang/String;

    .line 73
    .end local v2    # "eq":Z
    :goto_2
    return-object v4

    .line 53
    .restart local v2    # "eq":Z
    .restart local v3    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    .end local v3    # "i":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 66
    :cond_3
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    .line 70
    .end local v2    # "eq":Z
    :cond_4
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "strVal":Ljava/lang/String;
    new-instance v1, Lc8/ZIb;

    .end local v1    # "entry":Lc8/ZIb;
    invoke-direct {v1, v4, p4}, Lc8/ZIb;-><init>(Ljava/lang/String;I)V

    .line 72
    .restart local v1    # "entry":Lc8/ZIb;
    iget-object v5, p0, Lc8/aJb;->symbols:[Lc8/ZIb;

    aput-object v1, v5, v0

    goto :goto_2
.end method
