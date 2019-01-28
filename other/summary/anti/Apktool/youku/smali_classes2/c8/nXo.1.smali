.class public Lc8/nXo;
.super Ljava/lang/Object;
.source "HTMLScanner.java"

# interfaces
.implements Lc8/sXo;
.implements Lorg/xml/sax/Locator;


# static fields
.field private static final debug_actionnames:[Ljava/lang/String;

.field private static final debug_statenames:[Ljava/lang/String;

.field private static statetable:[I


# instance fields
.field private theCurrentColumn:I

.field private theCurrentLine:I

.field private theLastColumn:I

.field private theLastLine:I

.field theNextState:I

.field theOutputBuffer:[C

.field private thePublicid:Ljava/lang/String;

.field theSize:I

.field theState:I

.field private theSystemid:Ljava/lang/String;

.field theWinMap:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    const/16 v0, 0x250

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lc8/nXo;->statetable:[I

    .line 253
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "A_ADUP"

    aput-object v1, v0, v4

    const-string/jumbo v1, "A_ADUP_SAVE"

    aput-object v1, v0, v5

    const-string/jumbo v1, "A_ADUP_STAGC"

    aput-object v1, v0, v6

    const-string/jumbo v1, "A_ANAME"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "A_ANAME_ADUP"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "A_ANAME_ADUP_STAGC"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "A_AVAL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "A_AVAL_STAGC"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "A_CDATA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "A_CMNT"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "A_DECL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "A_EMPTYTAG"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "A_ENTITY"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "A_ENTITY_START"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "A_ETAG"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "A_GI"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "A_GI_STAGC"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "A_LT"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "A_LT_PCDATA"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "A_MINUS"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "A_MINUS2"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "A_MINUS3"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "A_PCDATA"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "A_PI"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "A_PITARGET"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "A_PITARGET_PI"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "A_SAVE"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "A_SKIP"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "A_SP"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "A_STAGC"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "A_UNGET"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "A_UNSAVE_PCDATA"

    aput-object v2, v0, v1

    sput-object v0, Lc8/nXo;->debug_actionnames:[Ljava/lang/String;

    .line 254
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "S_ANAME"

    aput-object v1, v0, v4

    const-string/jumbo v1, "S_APOS"

    aput-object v1, v0, v5

    const-string/jumbo v1, "S_AVAL"

    aput-object v1, v0, v6

    const-string/jumbo v1, "S_BB"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "S_BBC"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "S_BBCD"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "S_BBCDA"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "S_BBCDAT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "S_BBCDATA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "S_CDATA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "S_CDATA2"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "S_CDSECT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "S_CDSECT1"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "S_CDSECT2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "S_COM"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "S_COM2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "S_COM3"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "S_COM4"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "S_DECL"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "S_DECL2"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "S_DONE"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "S_EMPTYTAG"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "S_ENT"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "S_EQ"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "S_ETAG"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "S_GI"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "S_NCR"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "S_PCDATA"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "S_PI"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "S_PITARGET"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "S_QUOT"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "S_STAGC"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "S_TAG"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "S_TAGWS"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "S_XNCR"

    aput-object v2, v0, v1

    sput-object v0, Lc8/nXo;->debug_statenames:[Ljava/lang/String;

    return-void

    .line 102
    :array_0
    .array-data 4
        0x1
        0x2f
        0x5
        0x16
        0x1
        0x3d
        0x4
        0x3
        0x1
        0x3e
        0x6
        0x1c
        0x1
        0x0
        0x1b
        0x1
        0x1
        -0x1
        0x6
        0x15
        0x1
        0x20
        0x4
        0x18
        0x1
        0xa
        0x4
        0x18
        0x1
        0x9
        0x4
        0x18
        0x2
        0x27
        0x7
        0x22
        0x2
        0x0
        0x1b
        0x2
        0x2
        -0x1
        0x8
        0x15
        0x2
        0x20
        0x1d
        0x2
        0x2
        0xa
        0x1d
        0x2
        0x2
        0x9
        0x1d
        0x2
        0x3
        0x27
        0x1c
        0x2
        0x3
        0x22
        0x1c
        0x1f
        0x3
        0x3e
        0x8
        0x1c
        0x3
        0x0
        0x1b
        0x20
        0x3
        -0x1
        0x8
        0x15
        0x3
        0x20
        0x1c
        0x3
        0x3
        0xa
        0x1c
        0x3
        0x3
        0x9
        0x1c
        0x3
        0x4
        0x43
        0x1c
        0x5
        0x4
        0x0
        0x1c
        0x13
        0x4
        -0x1
        0x1c
        0x15
        0x5
        0x44
        0x1c
        0x6
        0x5
        0x0
        0x1c
        0x13
        0x5
        -0x1
        0x1c
        0x15
        0x6
        0x41
        0x1c
        0x7
        0x6
        0x0
        0x1c
        0x13
        0x6
        -0x1
        0x1c
        0x15
        0x7
        0x54
        0x1c
        0x8
        0x7
        0x0
        0x1c
        0x13
        0x7
        -0x1
        0x1c
        0x15
        0x8
        0x41
        0x1c
        0x9
        0x8
        0x0
        0x1c
        0x13
        0x8
        -0x1
        0x1c
        0x15
        0x9
        0x5b
        0x1c
        0xc
        0x9
        0x0
        0x1c
        0x13
        0x9
        -0x1
        0x1c
        0x15
        0xa
        0x3c
        0x1b
        0xb
        0xa
        0x0
        0x1b
        0xa
        0xa
        -0x1
        0x17
        0x15
        0xb
        0x2f
        0x20
        0x19
        0xb
        0x0
        0x1b
        0xa
        0xb
        -0x1
        0x20
        0x15
        0xc
        0x5d
        0x1b
        0xd
        0xc
        0x0
        0x1b
        0xc
        0xc
        -0x1
        0x1c
        0x15
        0xd
        0x5d
        0x1b
        0xe
        0xd
        0x0
        0x1b
        0xc
        0xd
        -0x1
        0x1c
        0x15
        0xe
        0x3e
        0x9
        0x1c
        0xe
        0x0
        0x1b
        0xc
        0xe
        -0x1
        0x1c
        0x15
        0xf
        0x2d
        0x1c
        0x10
        0xf
        0x0
        0x1b
        0x10
        0xf
        -0x1
        0xa
        0x15
        0x10
        0x2d
        0x1c
        0x11
        0x10
        0x0
        0x1b
        0x10
        0x10
        -0x1
        0xa
        0x15
        0x11
        0x2d
        0x1c
        0x12
        0x11
        0x0
        0x14
        0x10
        0x11
        -0x1
        0xa
        0x15
        0x12
        0x2d
        0x16
        0x12
        0x12
        0x3e
        0xa
        0x1c
        0x12
        0x0
        0x15
        0x10
        0x12
        -0x1
        0xa
        0x15
        0x13
        0x2d
        0x1c
        0xf
        0x13
        0x5b
        0x1c
        0x4
        0x13
        0x3e
        0x1c
        0x1c
        0x13
        0x0
        0x1b
        0x14
        0x13
        -0x1
        0x1c
        0x15
        0x14
        0x3e
        0xb
        0x1c
        0x14
        0x0
        0x1b
        0x14
        0x14
        -0x1
        0x1c
        0x15
        0x16
        0x3e
        0xc
        0x1c
        0x16
        0x0
        0x1b
        0x1
        0x16
        0x20
        0x1c
        0x22
        0x16
        0xa
        0x1c
        0x22
        0x16
        0x9
        0x1c
        0x22
        0x17
        0x0
        0xd
        0x17
        0x17
        -0x1
        0xd
        0x15
        0x18
        0x3d
        0x1c
        0x3
        0x18
        0x3e
        0x3
        0x1c
        0x18
        0x0
        0x2
        0x1
        0x18
        -0x1
        0x3
        0x15
        0x18
        0x20
        0x1c
        0x18
        0x18
        0xa
        0x1c
        0x18
        0x18
        0x9
        0x1c
        0x18
        0x19
        0x3e
        0xf
        0x1c
        0x19
        0x0
        0x1b
        0x19
        0x19
        -0x1
        0xf
        0x15
        0x19
        0x20
        0x1c
        0x19
        0x19
        0xa
        0x1c
        0x19
        0x19
        0x9
        0x1c
        0x19
        0x1a
        0x2f
        0x1c
        0x16
        0x1a
        0x3e
        0x11
        0x1c
        0x1a
        0x0
        0x1b
        0x1a
        0x1a
        -0x1
        0x1c
        0x15
        0x1a
        0x20
        0x10
        0x22
        0x1a
        0xa
        0x10
        0x22
        0x1a
        0x9
        0x10
        0x22
        0x1b
        0x0
        0xd
        0x1b
        0x1b
        -0x1
        0xd
        0x15
        0x1c
        0x26
        0xe
        0x17
        0x1c
        0x3c
        0x17
        0x21
        0x1c
        0x0
        0x1b
        0x1c
        0x1c
        -0x1
        0x17
        0x15
        0x1d
        0x3e
        0x18
        0x1c
        0x1d
        0x0
        0x1b
        0x1d
        0x1d
        -0x1
        0x18
        0x15
        0x1e
        0x3e
        0x1a
        0x1c
        0x1e
        0x0
        0x1b
        0x1e
        0x1e
        -0x1
        0x1a
        0x15
        0x1e
        0x20
        0x19
        0x1d
        0x1e
        0xa
        0x19
        0x1d
        0x1e
        0x9
        0x19
        0x1d
        0x1f
        0x22
        0x7
        0x22
        0x1f
        0x0
        0x1b
        0x1f
        0x1f
        -0x1
        0x8
        0x15
        0x1f
        0x20
        0x1d
        0x1f
        0x1f
        0xa
        0x1d
        0x1f
        0x1f
        0x9
        0x1d
        0x1f
        0x20
        0x3e
        0x8
        0x1c
        0x20
        0x0
        0x1b
        0x20
        0x20
        -0x1
        0x8
        0x15
        0x20
        0x20
        0x7
        0x22
        0x20
        0xa
        0x7
        0x22
        0x20
        0x9
        0x7
        0x22
        0x21
        0x21
        0x1c
        0x13
        0x21
        0x3f
        0x1c
        0x1e
        0x21
        0x2f
        0x1c
        0x19
        0x21
        0x3c
        0x1b
        0x21
        0x21
        0x0
        0x1b
        0x1a
        0x21
        -0x1
        0x13
        0x15
        0x21
        0x20
        0x12
        0x1c
        0x21
        0xa
        0x12
        0x1c
        0x21
        0x9
        0x12
        0x1c
        0x22
        0x2f
        0x1c
        0x16
        0x22
        0x3e
        0x1e
        0x1c
        0x22
        0x0
        0x1b
        0x1
        0x22
        -0x1
        0x1e
        0x15
        0x22
        0x20
        0x1c
        0x22
        0x22
        0xa
        0x1c
        0x22
        0x22
        0x9
        0x1c
        0x22
        0x23
        0x0
        0xd
        0x23
        0x23
        -0x1
        0xd
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/16 v0, 0xc8

    new-array v0, v0, [C

    iput-object v0, p0, Lc8/nXo;->theOutputBuffer:[C

    .line 270
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lc8/nXo;->theWinMap:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x20ac
        0xfffd
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0xfffd
        0x17d
        0xfffd
        0xfffd
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0xfffd
        0x17e
        0x178
    .end array-data
.end method

.method private mark()V
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lc8/nXo;->theCurrentColumn:I

    iput v0, p0, Lc8/nXo;->theLastColumn:I

    .line 604
    iget v0, p0, Lc8/nXo;->theCurrentLine:I

    iput v0, p0, Lc8/nXo;->theLastLine:I

    .line 605
    return-void
.end method

.method private save(ILc8/rXo;)V
    .locals 4
    .param p1, "ch"    # I
    .param p2, "h"    # Lc8/rXo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 616
    iget v1, p0, Lc8/nXo;->theSize:I

    iget-object v2, p0, Lc8/nXo;->theOutputBuffer:[C

    array-length v2, v2

    add-int/lit8 v2, v2, -0x14

    if-lt v1, v2, :cond_1

    .line 617
    iget v1, p0, Lc8/nXo;->theState:I

    const/16 v2, 0x1c

    if-eq v1, v2, :cond_0

    iget v1, p0, Lc8/nXo;->theState:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 619
    :cond_0
    iget-object v1, p0, Lc8/nXo;->theOutputBuffer:[C

    iget v2, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v1, v3, v2}, Lc8/rXo;->pcdata([CII)V

    .line 620
    iput v3, p0, Lc8/nXo;->theSize:I

    .line 629
    :cond_1
    :goto_0
    iget-object v1, p0, Lc8/nXo;->theOutputBuffer:[C

    iget v2, p0, Lc8/nXo;->theSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc8/nXo;->theSize:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 630
    return-void

    .line 624
    :cond_2
    iget-object v1, p0, Lc8/nXo;->theOutputBuffer:[C

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    new-array v0, v1, [C

    .line 625
    .local v0, "newOutputBuffer":[C
    iget-object v1, p0, Lc8/nXo;->theOutputBuffer:[C

    iget v2, p0, Lc8/nXo;->theSize:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 626
    iput-object v0, p0, Lc8/nXo;->theOutputBuffer:[C

    goto :goto_0
.end method

.method private unread(Ljava/io/PushbackReader;I)V
    .locals 1
    .param p1, "r"    # Ljava/io/PushbackReader;
    .param p2, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PushbackReader;->unread(I)V

    .line 280
    :cond_0
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lc8/nXo;->theLastColumn:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lc8/nXo;->theLastLine:I

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lc8/nXo;->thePublicid:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lc8/nXo;->theSystemid:Ljava/lang/String;

    return-object v0
.end method

.method public resetDocumentLocator(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "publicid"    # Ljava/lang/String;
    .param p2, "systemid"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Lc8/nXo;->thePublicid:Ljava/lang/String;

    .line 308
    iput-object p2, p0, Lc8/nXo;->theSystemid:Ljava/lang/String;

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Lc8/nXo;->theCurrentColumn:I

    iput v0, p0, Lc8/nXo;->theCurrentLine:I

    iput v0, p0, Lc8/nXo;->theLastColumn:I

    iput v0, p0, Lc8/nXo;->theLastLine:I

    .line 310
    return-void
.end method

.method public scan(Ljava/io/Reader;Lc8/rXo;)V
    .locals 10
    .param p1, "r0"    # Ljava/io/Reader;
    .param p2, "h"    # Lc8/rXo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 319
    const/16 v7, 0x1c

    iput v7, p0, Lc8/nXo;->theState:I

    .line 321
    instance-of v7, p1, Ljava/io/PushbackReader;

    if-eqz v7, :cond_5

    move-object v6, p1

    .line 322
    check-cast v6, Ljava/io/PushbackReader;

    .line 331
    .local v6, "r":Ljava/io/PushbackReader;
    :goto_0
    invoke-virtual {v6}, Ljava/io/PushbackReader;->read()I

    move-result v4

    .line 332
    .local v4, "firstChar":I
    const v7, 0xfeff

    if-eq v4, v7, :cond_0

    invoke-direct {p0, v6, v4}, Lc8/nXo;->unread(Ljava/io/PushbackReader;I)V

    .line 334
    :cond_0
    :goto_1
    iget v7, p0, Lc8/nXo;->theState:I

    const/16 v8, 0x15

    if-eq v7, v8, :cond_1b

    .line 335
    invoke-virtual {v6}, Ljava/io/PushbackReader;->read()I

    move-result v1

    .line 338
    .local v1, "ch":I
    const/16 v7, 0x80

    if-lt v1, v7, :cond_1

    const/16 v7, 0x9f

    if-gt v1, v7, :cond_1

    iget-object v7, p0, Lc8/nXo;->theWinMap:[I

    add-int/lit8 v8, v1, -0x80

    aget v1, v7, v8

    .line 340
    :cond_1
    const/16 v7, 0xd

    if-ne v1, v7, :cond_2

    .line 341
    invoke-virtual {v6}, Ljava/io/PushbackReader;->read()I

    move-result v1

    .line 342
    const/16 v7, 0xa

    if-eq v1, v7, :cond_2

    .line 343
    invoke-direct {p0, v6, v1}, Lc8/nXo;->unread(Ljava/io/PushbackReader;I)V

    .line 344
    const/16 v1, 0xa

    .line 348
    :cond_2
    const/16 v7, 0xa

    if-ne v1, v7, :cond_7

    .line 349
    iget v7, p0, Lc8/nXo;->theCurrentLine:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lc8/nXo;->theCurrentLine:I

    .line 350
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theCurrentColumn:I

    .line 356
    :goto_2
    const/16 v7, 0x20

    if-ge v1, v7, :cond_3

    const/16 v7, 0xa

    if-eq v1, v7, :cond_3

    const/16 v7, 0x9

    if-eq v1, v7, :cond_3

    const/4 v7, -0x1

    if-ne v1, v7, :cond_0

    .line 359
    :cond_3
    const/4 v0, 0x0

    .line 360
    .local v0, "action":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    sget-object v7, Lc8/nXo;->statetable:[I

    array-length v7, v7

    if-ge v5, v7, :cond_4

    .line 361
    iget v7, p0, Lc8/nXo;->theState:I

    sget-object v8, Lc8/nXo;->statetable:[I

    aget v8, v8, v5

    if-eq v7, v8, :cond_8

    .line 362
    if-eqz v0, :cond_9

    .line 376
    :cond_4
    :goto_4
    packed-switch v0, :pswitch_data_0

    .line 590
    new-instance v7, Ljava/lang/Error;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can\'t process state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7

    .line 324
    .end local v0    # "action":I
    .end local v1    # "ch":I
    .end local v4    # "firstChar":I
    .end local v5    # "i":I
    .end local v6    # "r":Ljava/io/PushbackReader;
    :cond_5
    instance-of v7, p1, Ljava/io/BufferedReader;

    if-eqz v7, :cond_6

    .line 325
    new-instance v6, Ljava/io/PushbackReader;

    invoke-direct {v6, p1}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;)V

    .restart local v6    # "r":Ljava/io/PushbackReader;
    goto/16 :goto_0

    .line 328
    .end local v6    # "r":Ljava/io/PushbackReader;
    :cond_6
    new-instance v6, Ljava/io/PushbackReader;

    new-instance v7, Ljava/io/BufferedReader;

    const/16 v8, 0xc8

    invoke-direct {v7, p1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-direct {v6, v7}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;)V

    .restart local v6    # "r":Ljava/io/PushbackReader;
    goto/16 :goto_0

    .line 353
    .restart local v1    # "ch":I
    .restart local v4    # "firstChar":I
    :cond_7
    iget v7, p0, Lc8/nXo;->theCurrentColumn:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lc8/nXo;->theCurrentColumn:I

    goto :goto_2

    .line 365
    .restart local v0    # "action":I
    .restart local v5    # "i":I
    :cond_8
    sget-object v7, Lc8/nXo;->statetable:[I

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    if-nez v7, :cond_a

    .line 366
    sget-object v7, Lc8/nXo;->statetable:[I

    add-int/lit8 v8, v5, 0x2

    aget v0, v7, v8

    .line 367
    sget-object v7, Lc8/nXo;->statetable:[I

    add-int/lit8 v8, v5, 0x3

    aget v7, v7, v8

    iput v7, p0, Lc8/nXo;->theNextState:I

    .line 360
    :cond_9
    add-int/lit8 v5, v5, 0x4

    goto :goto_3

    .line 369
    :cond_a
    sget-object v7, Lc8/nXo;->statetable:[I

    add-int/lit8 v8, v5, 0x1

    aget v7, v7, v8

    if-ne v7, v1, :cond_9

    .line 370
    sget-object v7, Lc8/nXo;->statetable:[I

    add-int/lit8 v8, v5, 0x2

    aget v0, v7, v8

    .line 371
    sget-object v7, Lc8/nXo;->statetable:[I

    add-int/lit8 v8, v5, 0x3

    aget v7, v7, v8

    iput v7, p0, Lc8/nXo;->theNextState:I

    goto :goto_4

    .line 378
    :pswitch_0
    new-instance v7, Ljava/lang/Error;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "HTMLScanner can\'t cope with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 379
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " in state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lc8/nXo;->theState:I

    .line 380
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7

    .line 382
    :pswitch_1
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->adup([CII)V

    .line 383
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    .line 592
    :goto_5
    :pswitch_2
    iget v7, p0, Lc8/nXo;->theNextState:I

    iput v7, p0, Lc8/nXo;->theState:I

    goto/16 :goto_1

    .line 386
    :pswitch_3
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->adup([CII)V

    .line 387
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    .line 388
    invoke-direct {p0, v1, p2}, Lc8/nXo;->save(ILc8/rXo;)V

    goto :goto_5

    .line 391
    :pswitch_4
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->adup([CII)V

    .line 392
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    .line 393
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->stagc([CII)V

    goto :goto_5

    .line 396
    :pswitch_5
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->aname([CII)V

    .line 397
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    goto :goto_5

    .line 400
    :pswitch_6
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->aname([CII)V

    .line 401
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    .line 402
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->adup([CII)V

    goto :goto_5

    .line 405
    :pswitch_7
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->aname([CII)V

    .line 406
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    .line 407
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->adup([CII)V

    .line 408
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->stagc([CII)V

    goto :goto_5

    .line 411
    :pswitch_8
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->aval([CII)V

    .line 412
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    goto :goto_5

    .line 415
    :pswitch_9
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->aval([CII)V

    .line 416
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    .line 417
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->stagc([CII)V

    goto/16 :goto_5

    .line 420
    :pswitch_a
    invoke-direct {p0}, Lc8/nXo;->mark()V

    .line 422
    iget v7, p0, Lc8/nXo;->theSize:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_b

    iget v7, p0, Lc8/nXo;->theSize:I

    add-int/lit8 v7, v7, -0x2

    iput v7, p0, Lc8/nXo;->theSize:I

    .line 423
    :cond_b
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->pcdata([CII)V

    .line 424
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    goto/16 :goto_5

    .line 427
    :pswitch_b
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->pcdata([CII)V

    .line 428
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    .line 429
    invoke-direct {p0, v1, p2}, Lc8/nXo;->save(ILc8/rXo;)V

    goto/16 :goto_5

    .line 432
    :pswitch_c
    invoke-direct {p0}, Lc8/nXo;->mark()V

    .line 433
    int-to-char v2, v1

    .line 435
    .local v2, "ch1":C
    iget v7, p0, Lc8/nXo;->theState:I

    const/16 v8, 0x17

    if-ne v7, v8, :cond_c

    const/16 v7, 0x23

    if-ne v2, v7, :cond_c

    .line 436
    const/16 v7, 0x1b

    iput v7, p0, Lc8/nXo;->theNextState:I

    .line 437
    invoke-direct {p0, v1, p2}, Lc8/nXo;->save(ILc8/rXo;)V

    goto/16 :goto_5

    .line 440
    :cond_c
    iget v7, p0, Lc8/nXo;->theState:I

    const/16 v8, 0x1b

    if-ne v7, v8, :cond_e

    const/16 v7, 0x78

    if-eq v2, v7, :cond_d

    const/16 v7, 0x58

    if-ne v2, v7, :cond_e

    .line 441
    :cond_d
    const/16 v7, 0x23

    iput v7, p0, Lc8/nXo;->theNextState:I

    .line 442
    invoke-direct {p0, v1, p2}, Lc8/nXo;->save(ILc8/rXo;)V

    goto/16 :goto_5

    .line 445
    :cond_e
    iget v7, p0, Lc8/nXo;->theState:I

    const/16 v8, 0x17

    if-ne v7, v8, :cond_f

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 446
    invoke-direct {p0, v1, p2}, Lc8/nXo;->save(ILc8/rXo;)V

    goto/16 :goto_5

    .line 449
    :cond_f
    iget v7, p0, Lc8/nXo;->theState:I

    const/16 v8, 0x1b

    if-ne v7, v8, :cond_10

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 450
    invoke-direct {p0, v1, p2}, Lc8/nXo;->save(ILc8/rXo;)V

    goto/16 :goto_5

    .line 453
    :cond_10
    iget v7, p0, Lc8/nXo;->theState:I

    const/16 v8, 0x23

    if-ne v7, v8, :cond_12

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_11

    const-string/jumbo v7, "abcdefABCDEF"

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_12

    .line 454
    :cond_11
    invoke-direct {p0, v1, p2}, Lc8/nXo;->save(ILc8/rXo;)V

    goto/16 :goto_5

    .line 460
    :cond_12
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x1

    iget v9, p0, Lc8/nXo;->theSize:I

    add-int/lit8 v9, v9, -0x1

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->entity([CII)V

    .line 461
    invoke-interface {p2}, Lc8/rXo;->getEntity()I

    move-result v3

    .line 463
    .local v3, "ent":I
    if-eqz v3, :cond_18

    .line 464
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    .line 465
    const/16 v7, 0x80

    if-lt v3, v7, :cond_13

    const/16 v7, 0x9f

    if-gt v3, v7, :cond_13

    .line 466
    iget-object v7, p0, Lc8/nXo;->theWinMap:[I

    add-int/lit8 v8, v3, -0x80

    aget v3, v7, v8

    .line 468
    :cond_13
    const/16 v7, 0x20

    if-lt v3, v7, :cond_15

    .line 472
    const v7, 0xd800

    if-lt v3, v7, :cond_14

    const v7, 0xdfff

    if-le v3, v7, :cond_15

    .line 476
    :cond_14
    const v7, 0xffff

    if-gt v3, v7, :cond_17

    .line 478
    invoke-direct {p0, v3, p2}, Lc8/nXo;->save(ILc8/rXo;)V

    .line 486
    :cond_15
    :goto_6
    const/16 v7, 0x3b

    if-eq v1, v7, :cond_16

    .line 487
    invoke-direct {p0, v6, v1}, Lc8/nXo;->unread(Ljava/io/PushbackReader;I)V

    .line 488
    iget v7, p0, Lc8/nXo;->theCurrentColumn:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lc8/nXo;->theCurrentColumn:I

    .line 495
    :cond_16
    :goto_7
    const/16 v7, 0x1c

    iput v7, p0, Lc8/nXo;->theNextState:I

    goto/16 :goto_5

    .line 482
    :cond_17
    const/high16 v7, 0x10000

    sub-int/2addr v3, v7

    .line 483
    shr-int/lit8 v7, v3, 0xa

    const v8, 0xd800

    add-int/2addr v7, v8

    invoke-direct {p0, v7, p2}, Lc8/nXo;->save(ILc8/rXo;)V

    .line 484
    and-int/lit16 v7, v3, 0x3ff

    const v8, 0xdc00

    add-int/2addr v7, v8

    invoke-direct {p0, v7, p2}, Lc8/nXo;->save(ILc8/rXo;)V

    goto :goto_6

    .line 492
    :cond_18
    invoke-direct {p0, v6, v1}, Lc8/nXo;->unread(Ljava/io/PushbackReader;I)V

    .line 493
    iget v7, p0, Lc8/nXo;->theCurrentColumn:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lc8/nXo;->theCurrentColumn:I

    goto :goto_7

    .line 498
    .end local v2    # "ch1":C
    .end local v3    # "ent":I
    :pswitch_d
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->etag([CII)V

    .line 499
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    goto/16 :goto_5

    .line 502
    :pswitch_e
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->decl([CII)V

    .line 503
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    goto/16 :goto_5

    .line 506
    :pswitch_f
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->gi([CII)V

    .line 507
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    goto/16 :goto_5

    .line 510
    :pswitch_10
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->gi([CII)V

    .line 511
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    .line 512
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->stagc([CII)V

    goto/16 :goto_5

    .line 515
    :pswitch_11
    invoke-direct {p0}, Lc8/nXo;->mark()V

    .line 516
    const/16 v7, 0x3c

    invoke-direct {p0, v7, p2}, Lc8/nXo;->save(ILc8/rXo;)V

    .line 517
    invoke-direct {p0, v1, p2}, Lc8/nXo;->save(ILc8/rXo;)V

    goto/16 :goto_5

    .line 520
    :pswitch_12
    invoke-direct {p0}, Lc8/nXo;->mark()V

    .line 521
    const/16 v7, 0x3c

    invoke-direct {p0, v7, p2}, Lc8/nXo;->save(ILc8/rXo;)V

    .line 522
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->pcdata([CII)V

    .line 523
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    goto/16 :goto_5

    .line 526
    :pswitch_13
    invoke-direct {p0}, Lc8/nXo;->mark()V

    .line 527
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->pcdata([CII)V

    .line 528
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    goto/16 :goto_5

    .line 531
    :pswitch_14
    invoke-direct {p0}, Lc8/nXo;->mark()V

    .line 532
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->cmnt([CII)V

    .line 533
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    goto/16 :goto_5

    .line 536
    :pswitch_15
    const/16 v7, 0x2d

    invoke-direct {p0, v7, p2}, Lc8/nXo;->save(ILc8/rXo;)V

    .line 537
    const/16 v7, 0x20

    invoke-direct {p0, v7, p2}, Lc8/nXo;->save(ILc8/rXo;)V

    goto/16 :goto_5

    .line 540
    :pswitch_16
    const/16 v7, 0x2d

    invoke-direct {p0, v7, p2}, Lc8/nXo;->save(ILc8/rXo;)V

    .line 541
    const/16 v7, 0x20

    invoke-direct {p0, v7, p2}, Lc8/nXo;->save(ILc8/rXo;)V

    .line 544
    :pswitch_17
    const/16 v7, 0x2d

    invoke-direct {p0, v7, p2}, Lc8/nXo;->save(ILc8/rXo;)V

    .line 545
    invoke-direct {p0, v1, p2}, Lc8/nXo;->save(ILc8/rXo;)V

    goto/16 :goto_5

    .line 548
    :pswitch_18
    invoke-direct {p0}, Lc8/nXo;->mark()V

    .line 549
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->pi([CII)V

    .line 550
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    goto/16 :goto_5

    .line 553
    :pswitch_19
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->pitarget([CII)V

    .line 554
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    goto/16 :goto_5

    .line 557
    :pswitch_1a
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->pitarget([CII)V

    .line 558
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    .line 559
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->pi([CII)V

    goto/16 :goto_5

    .line 562
    :pswitch_1b
    invoke-direct {p0, v1, p2}, Lc8/nXo;->save(ILc8/rXo;)V

    goto/16 :goto_5

    .line 567
    :pswitch_1c
    const/16 v7, 0x20

    invoke-direct {p0, v7, p2}, Lc8/nXo;->save(ILc8/rXo;)V

    goto/16 :goto_5

    .line 570
    :pswitch_1d
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->stagc([CII)V

    .line 571
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    goto/16 :goto_5

    .line 574
    :pswitch_1e
    invoke-direct {p0}, Lc8/nXo;->mark()V

    .line 576
    iget v7, p0, Lc8/nXo;->theSize:I

    if-lez v7, :cond_19

    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->gi([CII)V

    .line 577
    :cond_19
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    .line 578
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->stage([CII)V

    goto/16 :goto_5

    .line 581
    :pswitch_1f
    invoke-direct {p0, v6, v1}, Lc8/nXo;->unread(Ljava/io/PushbackReader;I)V

    .line 582
    iget v7, p0, Lc8/nXo;->theCurrentColumn:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lc8/nXo;->theCurrentColumn:I

    goto/16 :goto_5

    .line 585
    :pswitch_20
    iget v7, p0, Lc8/nXo;->theSize:I

    if-lez v7, :cond_1a

    iget v7, p0, Lc8/nXo;->theSize:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lc8/nXo;->theSize:I

    .line 586
    :cond_1a
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    iget v9, p0, Lc8/nXo;->theSize:I

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->pcdata([CII)V

    .line 587
    const/4 v7, 0x0

    iput v7, p0, Lc8/nXo;->theSize:I

    goto/16 :goto_5

    .line 594
    .end local v0    # "action":I
    .end local v1    # "ch":I
    .end local v5    # "i":I
    :cond_1b
    iget-object v7, p0, Lc8/nXo;->theOutputBuffer:[C

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {p2, v7, v8, v9}, Lc8/rXo;->eof([CII)V

    .line 595
    return-void

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_14
        :pswitch_e
        :pswitch_1e
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_13
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_2
        :pswitch_1c
        :pswitch_1d
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method public startCDATA()V
    .locals 1

    .prologue
    .line 613
    const/16 v0, 0xa

    iput v0, p0, Lc8/nXo;->theNextState:I

    return-void
.end method
