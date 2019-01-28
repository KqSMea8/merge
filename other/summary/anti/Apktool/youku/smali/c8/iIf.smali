.class public Lc8/iIf;
.super Ljava/lang/Object;
.source "ProfessionLogCache.java"


# static fields
.field private static final DEFAULT_LOG_LENGTH:I = 0x200

.field private static final DEFAULT_NAME:Ljava/lang/String; = "assist_data"

.field private static final EXTDATA_NAME:Ljava/lang/String; = "memory_data"

.field private static FILE_SIZE:J = 0x0L

.field private static INSTANCE:Lc8/iIf; = null

.field private static LOGCOUNT:I = 0x0

.field private static LOGSIZE:I = 0x0

.field private static final SCENE_FILE_COUNT:I = 0xa


# instance fields
.field private header:I

.field private isFull:Z

.field private isInited:Z

.field private mBuffer:Ljava/lang/StringBuilder;

.field private mBufferedOutputStream:Ljava/io/BufferedOutputStream;

.field private mCacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/BHf;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentLogsSize:I

.field private mEndOfToday:J

.field private mFile:Ljava/io/File;

.field private mFormatBuffer:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private mOutputStream:Ljava/io/FileOutputStream;

.field private tail:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lc8/iIf;

    invoke-direct {v0}, Lc8/iIf;-><init>()V

    sput-object v0, Lc8/iIf;->INSTANCE:Lc8/iIf;

    .line 22
    const/16 v0, 0x12c

    sput v0, Lc8/iIf;->LOGCOUNT:I

    .line 23
    const v0, 0x4b000

    sput v0, Lc8/iIf;->LOGSIZE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/16 v2, 0x200

    const/4 v3, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lc8/iIf;->LOGCOUNT:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc8/iIf;->mCacheList:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lc8/iIf;->mBuffer:Ljava/lang/StringBuilder;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lc8/iIf;->mFormatBuffer:Ljava/lang/StringBuilder;

    .line 29
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lc8/iIf;->mFormatBuffer:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lc8/iIf;->mFormatter:Ljava/util/Formatter;

    .line 31
    iput v3, p0, Lc8/iIf;->mCurrentLogsSize:I

    .line 35
    iput-boolean v3, p0, Lc8/iIf;->isFull:Z

    .line 37
    iput v3, p0, Lc8/iIf;->header:I

    .line 38
    iput v3, p0, Lc8/iIf;->tail:I

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc8/iIf;->mEndOfToday:J

    .line 42
    iput-boolean v3, p0, Lc8/iIf;->isInited:Z

    .line 47
    return-void
.end method

.method private addTLogEntity(Lc8/BHf;)V
    .locals 3
    .param p1, "entity"    # Lc8/BHf;

    .prologue
    .line 108
    if-nez p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    :try_start_0
    iget v1, p1, Lc8/BHf;->length:I

    sget v2, Lc8/iIf;->LOGSIZE:I

    if-gt v1, v2, :cond_0

    .line 116
    iget-boolean v1, p0, Lc8/iIf;->isFull:Z

    if-nez v1, :cond_3

    iget v1, p0, Lc8/iIf;->mCurrentLogsSize:I

    iget v2, p1, Lc8/BHf;->length:I

    add-int/2addr v1, v2

    sget v2, Lc8/iIf;->LOGSIZE:I

    if-gt v1, v2, :cond_3

    .line 117
    iget v1, p0, Lc8/iIf;->mCurrentLogsSize:I

    iget v2, p1, Lc8/BHf;->length:I

    add-int/2addr v1, v2

    iput v1, p0, Lc8/iIf;->mCurrentLogsSize:I

    .line 118
    iget-object v1, p0, Lc8/iIf;->mCacheList:Ljava/util/List;

    iget v2, p0, Lc8/iIf;->tail:I

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 119
    iget v1, p0, Lc8/iIf;->tail:I

    add-int/lit8 v1, v1, 0x1

    sget v2, Lc8/iIf;->LOGCOUNT:I

    rem-int/2addr v1, v2

    iput v1, p0, Lc8/iIf;->tail:I

    .line 120
    iget v1, p0, Lc8/iIf;->header:I

    iget v2, p0, Lc8/iIf;->tail:I

    if-ne v1, v2, :cond_2

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/iIf;->isFull:Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 123
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/iIf;->isFull:Z

    goto :goto_0

    .line 126
    :cond_3
    iget-object v1, p0, Lc8/iIf;->mCacheList:Ljava/util/List;

    iget v2, p0, Lc8/iIf;->header:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/BHf;

    .line 127
    .local v0, "tmp":Lc8/BHf;
    iget v1, p0, Lc8/iIf;->header:I

    add-int/lit8 v1, v1, 0x1

    sget v2, Lc8/iIf;->LOGCOUNT:I

    rem-int/2addr v1, v2

    iput v1, p0, Lc8/iIf;->header:I

    .line 128
    iget v1, p0, Lc8/iIf;->mCurrentLogsSize:I

    iget v2, v0, Lc8/BHf;->length:I

    sub-int/2addr v1, v2

    iput v1, p0, Lc8/iIf;->mCurrentLogsSize:I

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/iIf;->isFull:Z

    .line 130
    invoke-direct {p0, p1}, Lc8/iIf;->addTLogEntity(Lc8/BHf;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private cleanFiles(Ljava/lang/String;)V
    .locals 6
    .param p1, "fileDir"    # Ljava/lang/String;

    .prologue
    .line 210
    if-nez p1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v2, "recordFileDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 216
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 218
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 219
    .local v0, "childrenFiles":[Ljava/io/File;
    array-length v4, v0

    const/16 v5, 0xa

    if-lt v4, v5, :cond_0

    .line 220
    invoke-direct {p0, v0}, Lc8/iIf;->compareByLastModified([Ljava/io/File;)I

    move-result v1

    .line 221
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 222
    aget-object v3, v0, v1

    .line 223
    .local v3, "removeFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private compareByLastModified([Ljava/io/File;)I
    .locals 10
    .param p1, "files"    # [Ljava/io/File;

    .prologue
    .line 269
    if-eqz p1, :cond_1

    array-length v6, p1

    if-lez v6, :cond_1

    .line 271
    const/4 v6, 0x0

    aget-object v4, p1, v6

    .line 272
    .local v4, "preFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 274
    .local v5, "preIndex":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_2

    .line 276
    aget-object v0, p1, v1

    .line 277
    .local v0, "child":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 278
    .local v2, "diff":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 279
    move-object v4, v0

    .line 280
    move v5, v1

    .line 274
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "child":Ljava/io/File;
    .end local v1    # "i":I
    .end local v2    # "diff":J
    .end local v4    # "preFile":Ljava/io/File;
    .end local v5    # "preIndex":I
    :cond_1
    const/4 v5, -0x1

    :cond_2
    return v5
.end method

.method private formatTLog(Lc8/BHf;)Ljava/lang/String;
    .locals 6
    .param p1, "tLogEntity"    # Lc8/BHf;

    .prologue
    const/4 v1, 0x0

    .line 295
    if-nez p1, :cond_0

    .line 330
    :goto_0
    return-object v1

    .line 298
    :cond_0
    :try_start_0
    iget-object v2, p0, Lc8/iIf;->mBuffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 299
    iget-object v2, p1, Lc8/BHf;->logLevel:Lcom/taobao/tao/log/LogLevel;

    if-eqz v2, :cond_1

    .line 300
    iget-object v2, p0, Lc8/iIf;->mBuffer:Ljava/lang/StringBuilder;

    iget-object v3, p1, Lc8/BHf;->logLevel:Lcom/taobao/tao/log/LogLevel;

    invoke-virtual {v3}, Lcom/taobao/tao/log/LogLevel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_1
    iget-object v2, p0, Lc8/iIf;->mBuffer:Ljava/lang/StringBuilder;

    sget-char v3, Lc8/zHf;->DELIMITER:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    iget-object v2, p0, Lc8/iIf;->mBuffer:Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lc8/BHf;->timestamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 303
    iget-object v2, p0, Lc8/iIf;->mBuffer:Ljava/lang/StringBuilder;

    sget-char v3, Lc8/zHf;->DELIMITER:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    iget-object v2, p0, Lc8/iIf;->mBuffer:Ljava/lang/StringBuilder;

    iget-object v3, p1, Lc8/BHf;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v2, p0, Lc8/iIf;->mBuffer:Ljava/lang/StringBuilder;

    sget-char v3, Lc8/zHf;->DELIMITER:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    iget-object v2, p0, Lc8/iIf;->mBuffer:Ljava/lang/StringBuilder;

    iget-object v3, p1, Lc8/BHf;->clientID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget-object v2, p0, Lc8/iIf;->mBuffer:Ljava/lang/StringBuilder;

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-object v2, p0, Lc8/iIf;->mBuffer:Ljava/lang/StringBuilder;

    iget-object v3, p1, Lc8/BHf;->serverID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-object v2, p0, Lc8/iIf;->mBuffer:Ljava/lang/StringBuilder;

    sget-char v3, Lc8/zHf;->DELIMITER:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    iget-object v2, p0, Lc8/iIf;->mBuffer:Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lc8/BHf;->serialnumber:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 311
    iget-object v2, p0, Lc8/iIf;->mBuffer:Ljava/lang/StringBuilder;

    sget-char v3, Lc8/zHf;->DELIMITER:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    iget-object v2, p0, Lc8/iIf;->mBuffer:Ljava/lang/StringBuilder;

    iget-object v3, p1, Lc8/BHf;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v2, p0, Lc8/iIf;->mBuffer:Ljava/lang/StringBuilder;

    sget-char v3, Lc8/zHf;->DELIMITER:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    iget-object v2, p1, Lc8/BHf;->format:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 316
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p1, Lc8/BHf;->content:[Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lc8/BHf;->content:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 317
    iget-object v2, p0, Lc8/iIf;->mBuffer:Ljava/lang/StringBuilder;

    iget-object v3, p1, Lc8/BHf;->content:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    iget-object v2, p1, Lc8/BHf;->content:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_2

    .line 319
    iget-object v2, p0, Lc8/iIf;->mBuffer:Ljava/lang/StringBuilder;

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 323
    .end local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lc8/iIf;->mBuffer:Ljava/lang/StringBuilder;

    iget-object v3, p1, Lc8/BHf;->format:Ljava/lang/String;

    iget-object v4, p1, Lc8/BHf;->content:[Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget-object v2, p0, Lc8/iIf;->mFormatBuffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 325
    iget-object v2, p0, Lc8/iIf;->mBuffer:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc8/iIf;->mFormatter:Ljava/util/Formatter;

    iget-object v4, p1, Lc8/BHf;->format:Ljava/lang/String;

    iget-object v5, p1, Lc8/BHf;->content:[Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_4
    iget-object v2, p0, Lc8/iIf;->mBuffer:Ljava/lang/StringBuilder;

    sget-object v3, Lc8/zHf;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-object v2, p0, Lc8/iIf;->mBuffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 330
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public static getInstance()Lc8/iIf;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lc8/iIf;->INSTANCE:Lc8/iIf;

    return-object v0
.end method

.method private init()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 54
    iget-boolean v5, p0, Lc8/iIf;->isInited:Z

    if-eqz v5, :cond_0

    .line 86
    :goto_0
    return v3

    .line 59
    :cond_0
    :try_start_0
    invoke-static {}, Lc8/EHf;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lc8/IHf;->getLogFileLength(Landroid/content/Context;)J

    move-result-wide v6

    .line 60
    sput-wide v6, Lc8/iIf;->FILE_SIZE:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_1

    move v3, v4

    .line 61
    goto :goto_0

    .line 63
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "assist_data_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lc8/IHf;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ".tlog"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lc8/EHf;->getAssistPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v2, "parent":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lc8/iIf;->mFile:Ljava/io/File;

    .line 66
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 67
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 69
    :cond_2
    iget-object v3, p0, Lc8/iIf;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 70
    iget-object v3, p0, Lc8/iIf;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 71
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lc8/iIf;->mFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v3, p0, Lc8/iIf;->mOutputStream:Ljava/io/FileOutputStream;

    .line 72
    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lc8/iIf;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lc8/iIf;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    .line 73
    iget-object v3, p0, Lc8/iIf;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    invoke-static {}, Lc8/IHf;->createFileHeader()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 74
    invoke-static {}, Lc8/EHf;->getAssistPath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "assist_data"

    const/4 v6, 0x3

    invoke-static {v3, v5, v6}, Lc8/IHf;->checkFile(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    :goto_1
    invoke-static {}, Lc8/IHf;->getTimesnight()J

    move-result-wide v6

    iput-wide v6, p0, Lc8/iIf;->mEndOfToday:J

    .line 80
    const/4 v3, 0x1

    iput-boolean v3, p0, Lc8/iIf;->isInited:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "parent":Ljava/io/File;
    :goto_2
    iget-boolean v3, p0, Lc8/iIf;->isInited:Z

    goto/16 :goto_0

    .line 76
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v2    # "parent":Ljava/io/File;
    :cond_3
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lc8/iIf;->mFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v3, p0, Lc8/iIf;->mOutputStream:Ljava/io/FileOutputStream;

    .line 77
    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lc8/iIf;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lc8/iIf;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 81
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "parent":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    iput-boolean v4, p0, Lc8/iIf;->isInited:Z

    goto :goto_2
.end method

.method private writeToFile(Lc8/BHf;)V
    .locals 10
    .param p1, "entity"    # Lc8/BHf;

    .prologue
    .line 233
    if-nez p1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc8/EHf;->getExtDataPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, "dir":Ljava/io/File;
    invoke-static {}, Lc8/EHf;->getExtDataPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lc8/iIf;->cleanFiles(Ljava/lang/String;)V

    .line 240
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "memory_data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lc8/IHf;->getDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".tlog"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 241
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 244
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 245
    .local v5, "outputStream":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 246
    .local v0, "buffered":Ljava/io/BufferedOutputStream;
    invoke-static {}, Lc8/IHf;->createFileHeader()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 247
    invoke-direct {p0, p1}, Lc8/iIf;->formatTLog(Lc8/BHf;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 248
    .local v3, "input":[B
    invoke-static {}, Lc8/EHf;->getTLogControler()Lc8/tHf;

    move-result-object v7

    invoke-interface {v7, v3}, Lc8/tHf;->ecrypted([B)[B

    move-result-object v6

    .line 249
    .local v6, "result":[B
    if-eqz v6, :cond_2

    .line 250
    array-length v7, v3

    invoke-static {v7}, Lc8/IHf;->intToByteArray(I)[B

    move-result-object v4

    .line 251
    .local v4, "length":[B
    invoke-virtual {v0, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 252
    invoke-virtual {v0, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 253
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 255
    .end local v4    # "length":[B
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 256
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 260
    .end local v0    # "buffered":Ljava/io/BufferedOutputStream;
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "input":[B
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .end local v6    # "result":[B
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method


# virtual methods
.method public flushBuffer()Z
    .locals 14

    .prologue
    .line 138
    :try_start_0
    iget-boolean v7, p0, Lc8/iIf;->isInited:Z

    if-nez v7, :cond_0

    .line 139
    const/4 v7, 0x0

    .line 200
    :goto_0
    return v7

    .line 141
    :cond_0
    invoke-static {}, Lc8/EHf;->getTLogControler()Lc8/tHf;

    move-result-object v1

    .line 142
    .local v1, "controller":Lc8/tHf;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 143
    .local v8, "timestamp":J
    iget-wide v10, p0, Lc8/iIf;->mEndOfToday:J

    cmp-long v7, v10, v8

    if-gez v7, :cond_2

    .line 144
    iget-object v7, p0, Lc8/iIf;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    if-eqz v7, :cond_1

    .line 145
    iget-object v7, p0, Lc8/iIf;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    .line 146
    iget-object v7, p0, Lc8/iIf;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 149
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "assist_data_"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lc8/IHf;->getDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, ".tlog"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "fileName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-static {}, Lc8/EHf;->getAssistPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lc8/iIf;->mFile:Ljava/io/File;

    .line 151
    iget-object v7, p0, Lc8/iIf;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 152
    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lc8/iIf;->mFile:Ljava/io/File;

    const/4 v11, 0x1

    invoke-direct {v7, v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v7, p0, Lc8/iIf;->mOutputStream:Ljava/io/FileOutputStream;

    .line 153
    new-instance v7, Ljava/io/BufferedOutputStream;

    iget-object v10, p0, Lc8/iIf;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v7, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v7, p0, Lc8/iIf;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    .line 154
    iget-object v7, p0, Lc8/iIf;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    invoke-static {}, Lc8/IHf;->createFileHeader()[B

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 155
    invoke-static {}, Lc8/EHf;->getAssistPath()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "assist_data"

    const/4 v11, 0x3

    invoke-static {v7, v10, v11}, Lc8/IHf;->checkFile(Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    invoke-static {}, Lc8/IHf;->getTimesnight()J

    move-result-wide v10

    iput-wide v10, p0, Lc8/iIf;->mEndOfToday:J

    .line 158
    .end local v3    # "fileName":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v7, p0, Lc8/iIf;->mCacheList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_6

    if-eqz v1, :cond_6

    .line 159
    iget-object v7, p0, Lc8/iIf;->mCacheList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/BHf;

    .line 160
    .local v2, "entity":Lc8/BHf;
    if-eqz v2, :cond_3

    .line 163
    iget-object v7, v2, Lc8/BHf;->type:Ljava/lang/String;

    const-string/jumbo v10, "D"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 164
    iget-object v7, v2, Lc8/BHf;->content:[Ljava/lang/Object;

    if-eqz v7, :cond_3

    .line 167
    invoke-direct {p0, v2}, Lc8/iIf;->writeToFile(Lc8/BHf;)V

    .line 158
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 171
    :cond_4
    invoke-direct {p0, v2}, Lc8/iIf;->formatTLog(Lc8/BHf;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-interface {v1, v7}, Lc8/tHf;->ecrypted([B)[B

    move-result-object v6

    .line 174
    .local v6, "result":[B
    if-eqz v6, :cond_3

    .line 177
    array-length v7, v6

    invoke-static {v7}, Lc8/IHf;->intToByteArray(I)[B

    move-result-object v5

    .line 178
    .local v5, "length":[B
    iget-object v7, p0, Lc8/iIf;->mFile:Ljava/io/File;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lc8/iIf;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    sget-wide v12, Lc8/iIf;->FILE_SIZE:J

    cmp-long v7, v10, v12

    if-ltz v7, :cond_5

    .line 179
    iget-object v7, p0, Lc8/iIf;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    .line 180
    iget-object v7, p0, Lc8/iIf;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 181
    iget-object v7, p0, Lc8/iIf;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 182
    iget-object v7, p0, Lc8/iIf;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 183
    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lc8/iIf;->mFile:Ljava/io/File;

    const/4 v11, 0x1

    invoke-direct {v7, v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v7, p0, Lc8/iIf;->mOutputStream:Ljava/io/FileOutputStream;

    .line 184
    new-instance v7, Ljava/io/BufferedOutputStream;

    iget-object v10, p0, Lc8/iIf;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v7, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v7, p0, Lc8/iIf;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    .line 185
    iget-object v7, p0, Lc8/iIf;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    invoke-static {}, Lc8/IHf;->createFileHeader()[B

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 186
    invoke-static {}, Lc8/EHf;->getAssistPath()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "assist_data"

    const/4 v11, 0x3

    invoke-static {v7, v10, v11}, Lc8/IHf;->checkFile(Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    :cond_5
    iget-object v7, p0, Lc8/iIf;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v7, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 189
    iget-object v7, p0, Lc8/iIf;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v7, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 190
    iget-object v7, p0, Lc8/iIf;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    goto :goto_2

    .line 200
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "controller":Lc8/tHf;
    .end local v2    # "entity":Lc8/BHf;
    .end local v4    # "i":I
    .end local v5    # "length":[B
    .end local v6    # "result":[B
    .end local v8    # "timestamp":J
    :catch_0
    move-exception v7

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 194
    .restart local v1    # "controller":Lc8/tHf;
    .restart local v4    # "i":I
    .restart local v8    # "timestamp":J
    :cond_6
    iget-object v7, p0, Lc8/iIf;->mCacheList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 195
    const/4 v7, 0x0

    iput v7, p0, Lc8/iIf;->mCurrentLogsSize:I

    .line 196
    const/4 v7, 0x0

    iput v7, p0, Lc8/iIf;->tail:I

    iput v7, p0, Lc8/iIf;->header:I

    .line 197
    const/4 v7, 0x0

    iput-boolean v7, p0, Lc8/iIf;->isFull:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public put(Lc8/BHf;)V
    .locals 2
    .param p1, "tlogEntity"    # Lc8/BHf;

    .prologue
    .line 90
    invoke-direct {p0}, Lc8/iIf;->init()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    if-eqz p1, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lc8/iIf;->addTLogEntity(Lc8/BHf;)V

    .line 95
    iget-object v0, p1, Lc8/BHf;->type:Ljava/lang/String;

    const-string/jumbo v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lc8/iIf;->flushBuffer()Z

    goto :goto_0
.end method
