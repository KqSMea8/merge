.class public Lc8/tB;
.super Ljava/lang/Object;
.source "WVFileInfo.java"


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "utf-8"

.field private static final DEFAULT_NULL:Ljava/lang/String; = ""

.field private static final DEFAULT_TIME_ZERO:Ljava/lang/String; = "0000000000000"

.field public static final DIVISION:C = '~'

.field private static final PARTITION:C = '_'


# instance fields
.field public encoding:Ljava/lang/String;

.field public etag:Ljava/lang/String;

.field public expireTime:J

.field public fileName:Ljava/lang/String;

.field public lastModified:J

.field public mimeType:Ljava/lang/String;

.field public pos:J

.field public sha256ToHex:Ljava/lang/String;

.field public valid:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/tB;->valid:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lc8/tB;)I
    .locals 4
    .param p1, "another"    # Lc8/tB;

    .prologue
    .line 62
    if-ne p0, p1, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    .line 64
    :cond_0
    iget-wide v0, p0, Lc8/tB;->expireTime:J

    iget-wide v2, p1, Lc8/tB;->expireTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 65
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public composeFileInfoStr()[B
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/16 v5, 0x7e

    const/16 v4, 0x5f

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v1, "filePath":Ljava/lang/StringBuilder;
    iget-wide v2, p0, Lc8/tB;->expireTime:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    .line 77
    iget-wide v2, p0, Lc8/tB;->expireTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    :goto_0
    iget-boolean v2, p0, Lc8/tB;->valid:Z

    if-eqz v2, :cond_2

    .line 82
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    :goto_1
    iget-wide v2, p0, Lc8/tB;->lastModified:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    .line 87
    iget-wide v2, p0, Lc8/tB;->lastModified:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    :goto_2
    iget-boolean v2, p0, Lc8/tB;->valid:Z

    if-eqz v2, :cond_4

    .line 92
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    :goto_3
    iget-object v2, p0, Lc8/tB;->fileName:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 97
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :goto_4
    iget-boolean v2, p0, Lc8/tB;->valid:Z

    if-eqz v2, :cond_6

    .line 102
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    :goto_5
    iget-object v2, p0, Lc8/tB;->sha256ToHex:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 107
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :goto_6
    iget-boolean v2, p0, Lc8/tB;->valid:Z

    if-eqz v2, :cond_8

    .line 112
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    :goto_7
    iget-object v2, p0, Lc8/tB;->mimeType:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 117
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :goto_8
    iget-boolean v2, p0, Lc8/tB;->valid:Z

    if-eqz v2, :cond_a

    .line 122
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    :goto_9
    iget-object v2, p0, Lc8/tB;->etag:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 127
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :goto_a
    iget-boolean v2, p0, Lc8/tB;->valid:Z

    if-eqz v2, :cond_c

    .line 132
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    :goto_b
    iget-object v2, p0, Lc8/tB;->encoding:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 137
    const-string/jumbo v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :goto_c
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    const-string/jumbo v2, "FileInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "composeFileInfoStr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 148
    :goto_d
    return-object v2

    .line 79
    :cond_1
    const-string/jumbo v2, "0000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 84
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 89
    :cond_3
    const-string/jumbo v2, "0000000000000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 94
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 99
    :cond_5
    iget-object v2, p0, Lc8/tB;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 104
    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 109
    :cond_7
    iget-object v2, p0, Lc8/tB;->sha256ToHex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 114
    :cond_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 119
    :cond_9
    iget-object v2, p0, Lc8/tB;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 124
    :cond_a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 129
    :cond_b
    iget-object v2, p0, Lc8/tB;->etag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 134
    :cond_c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 139
    :cond_d
    iget-object v2, p0, Lc8/tB;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 148
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public convertToFileInfo()Lc8/tB;
    .locals 4

    .prologue
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lc8/tB;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    .end local p0    # "this":Lc8/tB;
    :goto_0
    return-object p0

    .line 47
    .restart local p0    # "this":Lc8/tB;
    :cond_0
    new-instance v0, Lc8/tB;

    invoke-direct {v0}, Lc8/tB;-><init>()V

    .line 48
    .local v0, "newInstance":Lc8/tB;
    iget-wide v2, p0, Lc8/tB;->expireTime:J

    iput-wide v2, v0, Lc8/tB;->expireTime:J

    .line 49
    iget-wide v2, p0, Lc8/tB;->lastModified:J

    iput-wide v2, v0, Lc8/tB;->lastModified:J

    .line 50
    iget-object v1, p0, Lc8/tB;->fileName:Ljava/lang/String;

    iput-object v1, v0, Lc8/tB;->fileName:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lc8/tB;->mimeType:Ljava/lang/String;

    iput-object v1, v0, Lc8/tB;->mimeType:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lc8/tB;->sha256ToHex:Ljava/lang/String;

    iput-object v1, v0, Lc8/tB;->sha256ToHex:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lc8/tB;->etag:Ljava/lang/String;

    iput-object v1, v0, Lc8/tB;->etag:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lc8/tB;->encoding:Ljava/lang/String;

    iput-object v1, v0, Lc8/tB;->encoding:Ljava/lang/String;

    .line 55
    iget-wide v2, p0, Lc8/tB;->pos:J

    iput-wide v2, v0, Lc8/tB;->pos:J

    .line 56
    iget-boolean v1, p0, Lc8/tB;->valid:Z

    iput-boolean v1, v0, Lc8/tB;->valid:Z

    move-object p0, v0

    .line 57
    goto :goto_0
.end method
