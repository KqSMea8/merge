.class public Lc8/Kco;
.super Ljava/lang/Object;
.source "UrlQueryExtractor.java"

# interfaces
.implements Lc8/Mco;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nco;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IllegalCharacterValueSanitizer"
.end annotation


# static fields
.field public static final ALL_BUT_NUL_AND_ANGLE_BRACKETS_LEGAL:I = 0x59f

.field public static final ALL_BUT_NUL_LEGAL:I = 0x5ff

.field public static final ALL_BUT_WHITESPACE_LEGAL:I = 0x5fc

.field public static final ALL_ILLEGAL:I = 0x0

.field public static final ALL_OK:I = 0x7ff

.field public static final ALL_WHITESPACE_OK:I = 0x3

.field public static final AMP_AND_SPACE_LEGAL:I = 0x81

.field public static final AMP_LEGAL:I = 0x80

.field public static final AMP_OK:I = 0x80

.field public static final DQUOTE_OK:I = 0x8

.field public static final GT_OK:I = 0x40

.field private static final JAVASCRIPT_PREFIX:Ljava/lang/String; = "javascript:"

.field public static final LT_OK:I = 0x20

.field private static final MIN_SCRIPT_PREFIX_LENGTH:I

.field public static final NON_7_BIT_ASCII_OK:I = 0x4

.field public static final NUL_OK:I = 0x200

.field public static final OTHER_WHITESPACE_OK:I = 0x2

.field public static final PCT_OK:I = 0x100

.field public static final SCRIPT_URL_OK:I = 0x400

.field public static final SPACE_LEGAL:I = 0x1

.field public static final SPACE_OK:I = 0x1

.field public static final SQUOTE_OK:I = 0x10

.field public static final URL_AND_SPACE_LEGAL:I = 0x195

.field public static final URL_LEGAL:I = 0x194

.field private static final VBSCRIPT_PREFIX:Ljava/lang/String; = "vbscript:"


# instance fields
.field private mFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 268
    const-string/jumbo v0, "javascript:"

    .line 269
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "vbscript:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 268
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lc8/Kco;->MIN_SCRIPT_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput p1, p0, Lc8/Kco;->mFlags:I

    .line 280
    return-void
.end method

.method private characterIsLegal(C)Z
    .locals 4
    .param p1, "c"    # C

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 392
    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 393
    .local v0, "ub":Ljava/lang/Character$UnicodeBlock;
    sget-object v3, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v3, :cond_0

    sget-object v3, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v3, :cond_0

    sget-object v3, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v3, :cond_0

    sget-object v3, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v3, :cond_0

    sget-object v3, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v3, :cond_0

    sget-object v3, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v3, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v1

    .line 402
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 426
    const/16 v3, 0x20

    if-lt p1, v3, :cond_2

    const/16 v3, 0x7f

    if-lt p1, v3, :cond_0

    :cond_2
    const/16 v3, 0x80

    if-lt p1, v3, :cond_3

    iget v3, p0, Lc8/Kco;->mFlags:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 404
    :sswitch_0
    iget v3, p0, Lc8/Kco;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 410
    :sswitch_1
    iget v3, p0, Lc8/Kco;->mFlags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 412
    :sswitch_2
    iget v3, p0, Lc8/Kco;->mFlags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 414
    :sswitch_3
    iget v3, p0, Lc8/Kco;->mFlags:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 416
    :sswitch_4
    iget v3, p0, Lc8/Kco;->mFlags:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 418
    :sswitch_5
    iget v3, p0, Lc8/Kco;->mFlags:I

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 420
    :sswitch_6
    iget v3, p0, Lc8/Kco;->mFlags:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 422
    :sswitch_7
    iget v3, p0, Lc8/Kco;->mFlags:I

    and-int/lit16 v3, v3, 0x100

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 424
    :sswitch_8
    iget v3, p0, Lc8/Kco;->mFlags:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 402
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_0
        0x22 -> :sswitch_2
        0x25 -> :sswitch_7
        0x26 -> :sswitch_6
        0x27 -> :sswitch_3
        0x3c -> :sswitch_4
        0x3e -> :sswitch_5
    .end sparse-switch
.end method

.method private isWhitespace(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 370
    sparse-switch p1, :sswitch_data_0

    .line 379
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 377
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 370
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private trimWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 348
    const/4 v2, 0x0

    .line 349
    .local v2, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 350
    .local v1, "last":I
    move v0, v1

    .line 351
    .local v0, "end":I
    :goto_0
    if-gt v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lc8/Kco;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    :cond_0
    :goto_1
    if-lt v0, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lc8/Kco;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 357
    :cond_1
    if-nez v2, :cond_2

    if-ne v0, v1, :cond_2

    .line 360
    .end local p1    # "value":Ljava/lang/String;
    :goto_2
    return-object p1

    .restart local p1    # "value":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method


# virtual methods
.method public sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 301
    const/4 v5, 0x0

    .line 335
    :goto_0
    return-object v5

    .line 303
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 304
    .local v3, "length":I
    iget v5, p0, Lc8/Kco;->mFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_2

    .line 305
    sget v5, Lc8/Kco;->MIN_SCRIPT_PREFIX_LENGTH:I

    if-lt v3, v5, :cond_2

    .line 306
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "asLower":Ljava/lang/String;
    const-string/jumbo v5, "javascript:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "vbscript:"

    .line 308
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 309
    :cond_1
    const-string/jumbo v5, ""

    goto :goto_0

    .line 316
    .end local v0    # "asLower":Ljava/lang/String;
    :cond_2
    iget v5, p0, Lc8/Kco;->mFlags:I

    and-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_3

    .line 317
    invoke-direct {p0, p1}, Lc8/Kco;->trimWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 323
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 324
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 325
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 326
    .local v1, "c":C
    invoke-direct {p0, v1}, Lc8/Kco;->characterIsLegal(C)Z

    move-result v5

    if-nez v5, :cond_4

    .line 327
    iget v5, p0, Lc8/Kco;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    .line 328
    const/16 v1, 0x20

    .line 333
    :cond_4
    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 324
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 330
    :cond_5
    const/16 v1, 0x5f

    goto :goto_2

    .line 335
    .end local v1    # "c":C
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
