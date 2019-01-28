.class public final Lc8/AId;
.super Lc8/GId;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/yId;,
        Lc8/zId;
    }
.end annotation


# static fields
.field public static final ALTERNATIVE:Lc8/xId;

.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field private static final DASHDASH:[B

.field public static final DIGEST:Lc8/xId;

.field public static final FORM:Lc8/xId;

.field public static final MIXED:Lc8/xId;

.field public static final PARALLEL:Lc8/xId;


# instance fields
.field private final boundary:Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

.field private contentLength:J

.field private final contentType:Lc8/xId;

.field private final originalType:Lc8/xId;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/zId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 23
    const-string/jumbo v0, "multipart/mixed"

    invoke-static {v0}, Lc8/xId;->parse(Ljava/lang/String;)Lc8/xId;

    move-result-object v0

    sput-object v0, Lc8/AId;->MIXED:Lc8/xId;

    .line 30
    const-string/jumbo v0, "multipart/alternative"

    invoke-static {v0}, Lc8/xId;->parse(Ljava/lang/String;)Lc8/xId;

    move-result-object v0

    sput-object v0, Lc8/AId;->ALTERNATIVE:Lc8/xId;

    .line 37
    const-string/jumbo v0, "multipart/digest"

    invoke-static {v0}, Lc8/xId;->parse(Ljava/lang/String;)Lc8/xId;

    move-result-object v0

    sput-object v0, Lc8/AId;->DIGEST:Lc8/xId;

    .line 43
    const-string/jumbo v0, "multipart/parallel"

    invoke-static {v0}, Lc8/xId;->parse(Ljava/lang/String;)Lc8/xId;

    move-result-object v0

    sput-object v0, Lc8/AId;->PARALLEL:Lc8/xId;

    .line 50
    const-string/jumbo v0, "multipart/form-data"

    invoke-static {v0}, Lc8/xId;->parse(Ljava/lang/String;)Lc8/xId;

    move-result-object v0

    sput-object v0, Lc8/AId;->FORM:Lc8/xId;

    .line 52
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lc8/AId;->COLONSPACE:[B

    .line 53
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lc8/AId;->CRLF:[B

    .line 54
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lc8/AId;->DASHDASH:[B

    return-void

    .line 52
    .line 53
    .line 54
    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;Lc8/xId;Ljava/util/List;)V
    .locals 2
    .param p1, "boundary"    # Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .param p2, "type"    # Lc8/xId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;",
            "Lc8/xId;",
            "Ljava/util/List",
            "<",
            "Lc8/zId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Part;>;"
    invoke-direct {p0}, Lc8/GId;-><init>()V

    .line 60
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc8/AId;->contentLength:J

    .line 63
    iput-object p1, p0, Lc8/AId;->boundary:Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    .line 64
    iput-object p2, p0, Lc8/AId;->originalType:Lc8/xId;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/xId;->parse(Ljava/lang/String;)Lc8/xId;

    move-result-object v0

    iput-object v0, p0, Lc8/AId;->contentType:Lc8/xId;

    .line 66
    invoke-static {p3}, Lc8/LId;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/AId;->parts:Ljava/util/List;

    .line 67
    return-void
.end method

.method private writeOrCountBytes(Lc8/zJd;Z)J
    .locals 18
    .param p1, "sink"    # Lc8/zJd;
    .param p2, "countBytes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const-wide/16 v4, 0x0

    .line 114
    .local v4, "byteCount":J
    const/4 v3, 0x0

    .line 115
    .local v3, "byteCountBuffer":Lc8/yJd;
    if-eqz p2, :cond_0

    .line 116
    new-instance v3, Lc8/yJd;

    .end local v3    # "byteCountBuffer":Lc8/yJd;
    invoke-direct {v3}, Lc8/yJd;-><init>()V

    .restart local v3    # "byteCountBuffer":Lc8/yJd;
    move-object/from16 p1, v3

    .line 119
    :cond_0
    const/4 v12, 0x0

    .local v12, "p":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/AId;->parts:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v14

    .local v14, "partCount":I
    :goto_0
    if-ge v12, v14, :cond_6

    .line 120
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/AId;->parts:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lc8/zId;

    .line 121
    .local v13, "part":Lc8/zId;
    invoke-static {v13}, Lc8/zId;->access$000(Lc8/zId;)Lc8/qId;

    move-result-object v11

    .line 122
    .local v11, "headers":Lc8/qId;
    invoke-static {v13}, Lc8/zId;->access$100(Lc8/zId;)Lc8/GId;

    move-result-object v2

    .line 124
    .local v2, "body":Lc8/GId;
    sget-object v15, Lc8/AId;->DASHDASH:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lc8/zJd;->write([B)Lc8/zJd;

    .line 125
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/AId;->boundary:Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lc8/zJd;->write(Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;)Lc8/zJd;

    .line 126
    sget-object v15, Lc8/AId;->CRLF:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lc8/zJd;->write([B)Lc8/zJd;

    .line 128
    if-eqz v11, :cond_1

    .line 129
    const/4 v9, 0x0

    .local v9, "h":I
    invoke-virtual {v11}, Lc8/qId;->size()I

    move-result v10

    .local v10, "headerCount":I
    :goto_1
    if-ge v9, v10, :cond_1

    .line 130
    invoke-virtual {v11, v9}, Lc8/qId;->name(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lc8/zJd;->writeUtf8(Ljava/lang/String;)Lc8/zJd;

    move-result-object v15

    sget-object v16, Lc8/AId;->COLONSPACE:[B

    .line 131
    invoke-interface/range {v15 .. v16}, Lc8/zJd;->write([B)Lc8/zJd;

    move-result-object v15

    .line 132
    invoke-virtual {v11, v9}, Lc8/qId;->value(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lc8/zJd;->writeUtf8(Ljava/lang/String;)Lc8/zJd;

    move-result-object v15

    sget-object v16, Lc8/AId;->CRLF:[B

    .line 133
    invoke-interface/range {v15 .. v16}, Lc8/zJd;->write([B)Lc8/zJd;

    .line 129
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 137
    .end local v9    # "h":I
    .end local v10    # "headerCount":I
    :cond_1
    invoke-virtual {v2}, Lc8/GId;->contentType()Lc8/xId;

    move-result-object v8

    .line 138
    .local v8, "contentType":Lc8/xId;
    if-eqz v8, :cond_2

    .line 139
    const-string/jumbo v15, "Content-Type: "

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lc8/zJd;->writeUtf8(Ljava/lang/String;)Lc8/zJd;

    move-result-object v15

    .line 140
    invoke-virtual {v8}, Lc8/xId;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lc8/zJd;->writeUtf8(Ljava/lang/String;)Lc8/zJd;

    move-result-object v15

    sget-object v16, Lc8/AId;->CRLF:[B

    .line 141
    invoke-interface/range {v15 .. v16}, Lc8/zJd;->write([B)Lc8/zJd;

    .line 144
    :cond_2
    invoke-virtual {v2}, Lc8/GId;->contentLength()J

    move-result-wide v6

    .line 145
    .local v6, "contentLength":J
    const-wide/16 v16, -0x1

    cmp-long v15, v6, v16

    if-eqz v15, :cond_4

    .line 146
    const-string/jumbo v15, "Content-Length: "

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lc8/zJd;->writeUtf8(Ljava/lang/String;)Lc8/zJd;

    move-result-object v15

    .line 147
    invoke-interface {v15, v6, v7}, Lc8/zJd;->writeDecimalLong(J)Lc8/zJd;

    move-result-object v15

    sget-object v16, Lc8/AId;->CRLF:[B

    .line 148
    invoke-interface/range {v15 .. v16}, Lc8/zJd;->write([B)Lc8/zJd;

    .line 155
    :cond_3
    sget-object v15, Lc8/AId;->CRLF:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lc8/zJd;->write([B)Lc8/zJd;

    .line 157
    if-eqz p2, :cond_5

    .line 158
    add-long/2addr v4, v6

    .line 163
    :goto_2
    sget-object v15, Lc8/AId;->CRLF:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lc8/zJd;->write([B)Lc8/zJd;

    .line 119
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 149
    :cond_4
    if-eqz p2, :cond_3

    .line 151
    invoke-virtual {v3}, Lc8/yJd;->clear()V

    .line 152
    const-wide/16 v16, -0x1

    .line 176
    .end local v2    # "body":Lc8/GId;
    .end local v6    # "contentLength":J
    .end local v8    # "contentType":Lc8/xId;
    .end local v11    # "headers":Lc8/qId;
    .end local v13    # "part":Lc8/zId;
    :goto_3
    return-wide v16

    .line 160
    .restart local v2    # "body":Lc8/GId;
    .restart local v6    # "contentLength":J
    .restart local v8    # "contentType":Lc8/xId;
    .restart local v11    # "headers":Lc8/qId;
    .restart local v13    # "part":Lc8/zId;
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lc8/GId;->writeTo(Lc8/zJd;)V

    goto :goto_2

    .line 166
    .end local v2    # "body":Lc8/GId;
    .end local v6    # "contentLength":J
    .end local v8    # "contentType":Lc8/xId;
    .end local v11    # "headers":Lc8/qId;
    .end local v13    # "part":Lc8/zId;
    :cond_6
    sget-object v15, Lc8/AId;->DASHDASH:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lc8/zJd;->write([B)Lc8/zJd;

    .line 167
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/AId;->boundary:Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lc8/zJd;->write(Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;)Lc8/zJd;

    .line 168
    sget-object v15, Lc8/AId;->DASHDASH:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lc8/zJd;->write([B)Lc8/zJd;

    .line 169
    sget-object v15, Lc8/AId;->CRLF:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lc8/zJd;->write([B)Lc8/zJd;

    .line 171
    if-eqz p2, :cond_7

    .line 172
    invoke-virtual {v3}, Lc8/yJd;->size()J

    move-result-wide v16

    add-long v4, v4, v16

    .line 173
    invoke-virtual {v3}, Lc8/yJd;->clear()V

    :cond_7
    move-wide/from16 v16, v4

    .line 176
    goto :goto_3
.end method


# virtual methods
.method public contentLength()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-wide v0, p0, Lc8/AId;->contentLength:J

    .line 97
    .local v0, "result":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 98
    .end local v0    # "result":J
    :goto_0
    return-wide v0

    .restart local v0    # "result":J
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lc8/AId;->writeOrCountBytes(Lc8/zJd;Z)J

    move-result-wide v0

    .end local v0    # "result":J
    iput-wide v0, p0, Lc8/AId;->contentLength:J

    goto :goto_0
.end method

.method public contentType()Lc8/xId;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lc8/AId;->contentType:Lc8/xId;

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
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/AId;->writeOrCountBytes(Lc8/zJd;Z)J

    .line 103
    return-void
.end method
