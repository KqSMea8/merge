.class public final Lc8/NSe;
.super Lc8/ZSe;
.source "MultipartBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/OSe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultipartRequestBody"
.end annotation


# instance fields
.field private final boundary:Lokio/ByteString;

.field private contentLength:J

.field private final contentType:Lc8/MSe;

.field private final partBodies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/ZSe;",
            ">;"
        }
    .end annotation
.end field

.field private final partHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/GSe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/MSe;Lokio/ByteString;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "type"    # Lc8/MSe;
    .param p2, "boundary"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/MSe;",
            "Lokio/ByteString;",
            "Ljava/util/List",
            "<",
            "Lc8/GSe;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lc8/ZSe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p3, "partHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Headers;>;"
    .local p4, "partBodies":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/RequestBody;>;"
    invoke-direct {p0}, Lc8/ZSe;-><init>()V

    .line 201
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc8/NSe;->contentLength:J

    .line 205
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iput-object p2, p0, Lc8/NSe;->boundary:Lokio/ByteString;

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/MSe;->parse(Ljava/lang/String;)Lc8/MSe;

    move-result-object v0

    iput-object v0, p0, Lc8/NSe;->contentType:Lc8/MSe;

    .line 209
    invoke-static {p3}, Lc8/ATe;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/NSe;->partHeaders:Ljava/util/List;

    .line 210
    invoke-static {p4}, Lc8/ATe;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/NSe;->partBodies:Ljava/util/List;

    .line 211
    return-void
.end method

.method private writeOrCountBytes(Lc8/ZVp;Z)J
    .locals 14
    .param p1, "sink"    # Lc8/ZVp;
    .param p2, "countBytes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    const-wide/16 v2, 0x0

    .line 232
    .local v2, "byteCount":J
    const/4 v1, 0x0

    .line 233
    .local v1, "byteCountBuffer":Lc8/YVp;
    if-eqz p2, :cond_0

    .line 234
    new-instance v1, Lc8/YVp;

    .end local v1    # "byteCountBuffer":Lc8/YVp;
    invoke-direct {v1}, Lc8/YVp;-><init>()V

    .restart local v1    # "byteCountBuffer":Lc8/YVp;
    move-object p1, v1

    .line 237
    :cond_0
    const/4 v10, 0x0

    .local v10, "p":I
    iget-object v12, p0, Lc8/NSe;->partHeaders:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .local v11, "partCount":I
    :goto_0
    if-ge v10, v11, :cond_6

    .line 238
    iget-object v12, p0, Lc8/NSe;->partHeaders:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc8/GSe;

    .line 239
    .local v9, "headers":Lc8/GSe;
    iget-object v12, p0, Lc8/NSe;->partBodies:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/ZSe;

    .line 241
    .local v0, "body":Lc8/ZSe;
    invoke-static {}, Lc8/OSe;->access$000()[B

    move-result-object v12

    invoke-interface {p1, v12}, Lc8/ZVp;->write([B)Lc8/ZVp;

    .line 242
    iget-object v12, p0, Lc8/NSe;->boundary:Lokio/ByteString;

    invoke-interface {p1, v12}, Lc8/ZVp;->write(Lokio/ByteString;)Lc8/ZVp;

    .line 243
    invoke-static {}, Lc8/OSe;->access$100()[B

    move-result-object v12

    invoke-interface {p1, v12}, Lc8/ZVp;->write([B)Lc8/ZVp;

    .line 245
    if-eqz v9, :cond_1

    .line 246
    const/4 v7, 0x0

    .local v7, "h":I
    invoke-virtual {v9}, Lc8/GSe;->size()I

    move-result v8

    .local v8, "headerCount":I
    :goto_1
    if-ge v7, v8, :cond_1

    .line 247
    invoke-virtual {v9, v7}, Lc8/GSe;->name(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v12}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    move-result-object v12

    .line 248
    invoke-static {}, Lc8/OSe;->access$200()[B

    move-result-object v13

    invoke-interface {v12, v13}, Lc8/ZVp;->write([B)Lc8/ZVp;

    move-result-object v12

    .line 249
    invoke-virtual {v9, v7}, Lc8/GSe;->value(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    move-result-object v12

    .line 250
    invoke-static {}, Lc8/OSe;->access$100()[B

    move-result-object v13

    invoke-interface {v12, v13}, Lc8/ZVp;->write([B)Lc8/ZVp;

    .line 246
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 254
    .end local v7    # "h":I
    .end local v8    # "headerCount":I
    :cond_1
    invoke-virtual {v0}, Lc8/ZSe;->contentType()Lc8/MSe;

    move-result-object v6

    .line 255
    .local v6, "contentType":Lc8/MSe;
    if-eqz v6, :cond_2

    .line 256
    const-string/jumbo v12, "Content-Type: "

    invoke-interface {p1, v12}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    move-result-object v12

    .line 257
    invoke-virtual {v6}, Lc8/MSe;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    move-result-object v12

    .line 258
    invoke-static {}, Lc8/OSe;->access$100()[B

    move-result-object v13

    invoke-interface {v12, v13}, Lc8/ZVp;->write([B)Lc8/ZVp;

    .line 261
    :cond_2
    invoke-virtual {v0}, Lc8/ZSe;->contentLength()J

    move-result-wide v4

    .line 262
    .local v4, "contentLength":J
    const-wide/16 v12, -0x1

    cmp-long v12, v4, v12

    if-eqz v12, :cond_4

    .line 263
    const-string/jumbo v12, "Content-Length: "

    invoke-interface {p1, v12}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    move-result-object v12

    .line 264
    invoke-interface {v12, v4, v5}, Lc8/ZVp;->writeDecimalLong(J)Lc8/ZVp;

    move-result-object v12

    .line 265
    invoke-static {}, Lc8/OSe;->access$100()[B

    move-result-object v13

    invoke-interface {v12, v13}, Lc8/ZVp;->write([B)Lc8/ZVp;

    .line 272
    :cond_3
    invoke-static {}, Lc8/OSe;->access$100()[B

    move-result-object v12

    invoke-interface {p1, v12}, Lc8/ZVp;->write([B)Lc8/ZVp;

    .line 274
    if-eqz p2, :cond_5

    .line 275
    add-long/2addr v2, v4

    .line 280
    :goto_2
    invoke-static {}, Lc8/OSe;->access$100()[B

    move-result-object v12

    invoke-interface {p1, v12}, Lc8/ZVp;->write([B)Lc8/ZVp;

    .line 237
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 266
    :cond_4
    if-eqz p2, :cond_3

    .line 268
    invoke-virtual {v1}, Lc8/YVp;->clear()V

    .line 269
    const-wide/16 v12, -0x1

    .line 293
    .end local v0    # "body":Lc8/ZSe;
    .end local v4    # "contentLength":J
    .end local v6    # "contentType":Lc8/MSe;
    .end local v9    # "headers":Lc8/GSe;
    :goto_3
    return-wide v12

    .line 277
    .restart local v0    # "body":Lc8/ZSe;
    .restart local v4    # "contentLength":J
    .restart local v6    # "contentType":Lc8/MSe;
    .restart local v9    # "headers":Lc8/GSe;
    :cond_5
    iget-object v12, p0, Lc8/NSe;->partBodies:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc8/ZSe;

    invoke-virtual {v12, p1}, Lc8/ZSe;->writeTo(Lc8/ZVp;)V

    goto :goto_2

    .line 283
    .end local v0    # "body":Lc8/ZSe;
    .end local v4    # "contentLength":J
    .end local v6    # "contentType":Lc8/MSe;
    .end local v9    # "headers":Lc8/GSe;
    :cond_6
    invoke-static {}, Lc8/OSe;->access$000()[B

    move-result-object v12

    invoke-interface {p1, v12}, Lc8/ZVp;->write([B)Lc8/ZVp;

    .line 284
    iget-object v12, p0, Lc8/NSe;->boundary:Lokio/ByteString;

    invoke-interface {p1, v12}, Lc8/ZVp;->write(Lokio/ByteString;)Lc8/ZVp;

    .line 285
    invoke-static {}, Lc8/OSe;->access$000()[B

    move-result-object v12

    invoke-interface {p1, v12}, Lc8/ZVp;->write([B)Lc8/ZVp;

    .line 286
    invoke-static {}, Lc8/OSe;->access$100()[B

    move-result-object v12

    invoke-interface {p1, v12}, Lc8/ZVp;->write([B)Lc8/ZVp;

    .line 288
    if-eqz p2, :cond_7

    .line 289
    invoke-virtual {v1}, Lc8/YVp;->size()J

    move-result-wide v12

    add-long/2addr v2, v12

    .line 290
    invoke-virtual {v1}, Lc8/YVp;->clear()V

    :cond_7
    move-wide v12, v2

    .line 293
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
    .line 218
    iget-wide v0, p0, Lc8/NSe;->contentLength:J

    .line 219
    .local v0, "result":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 220
    .end local v0    # "result":J
    :goto_0
    return-wide v0

    .restart local v0    # "result":J
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lc8/NSe;->writeOrCountBytes(Lc8/ZVp;Z)J

    move-result-wide v0

    .end local v0    # "result":J
    iput-wide v0, p0, Lc8/NSe;->contentLength:J

    goto :goto_0
.end method

.method public contentType()Lc8/MSe;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lc8/NSe;->contentType:Lc8/MSe;

    return-object v0
.end method

.method public writeTo(Lc8/ZVp;)V
    .locals 1
    .param p1, "sink"    # Lc8/ZVp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/NSe;->writeOrCountBytes(Lc8/ZVp;Z)J

    .line 298
    return-void
.end method
